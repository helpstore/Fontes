unit untCadPadraoMaster;

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
  dxSkinsForm, dxLayoutControl, cxLabel, cxTextEdit, cxDBEdit,
  untFormPadrao, dxLayoutcxEditAdapters, dxmdaset,
  Ordens_ServicosItens_Form;

type
  TfrmCadPadraoMaster = class(TFormPadrao)
    pgcCadastro: TcxPageControl;
    tbsLista: TcxTabSheet;
    tbsEdita: TcxTabSheet;
    LVPesquisa: TcxGridLevel;
    Grid: TcxGrid;
    pnlFiltro: TPanel;
    dsPesquisa: TDataSource;
    dsRegistro: TDataSource;
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
    ActImprimir: TAction;
    TVRegistro: TcxGridDBBandedTableView;
    ActLayout: TAction;
    cxIntl1: TcxIntl;
    cxIntl2: TcxIntl;
    Panel2: TPanel;
    pnlSubCad: TPanel;
    PgcDetalhe: TcxPageControl;
    tbsDetalhe1: TcxTabSheet;
    PGCSub1: TcxPageControl;
    tbsListaSub1: TcxTabSheet;
    tbsEditaSub1: TcxTabSheet;
    tbsDetalhe2: TcxTabSheet;
    PGCSub2: TcxPageControl;
    tbsListaSub2: TcxTabSheet;
    tbsEditaSub2: TcxTabSheet;
    pnlMaster: TPanel;
    PgcMaster: TcxPageControl;
    tbsMaster1: TcxTabSheet;
    tbsDetalhe3: TcxTabSheet;
    tbsDetalhe4: TcxTabSheet;
    tbsDetalhe5: TcxTabSheet;
    tbsDetalhe6: TcxTabSheet;
    tbsDetalhe7: TcxTabSheet;
    tbsDetalhe8: TcxTabSheet;
    PGCSub3: TcxPageControl;
    tbsListaSub3: TcxTabSheet;
    tbsEditaSub3: TcxTabSheet;
    PGCSub4: TcxPageControl;
    tbsListaSub4: TcxTabSheet;
    tbsEditaSub4: TcxTabSheet;
    PGCSub5: TcxPageControl;
    tbsListaSub5: TcxTabSheet;
    tbsEditaSub5: TcxTabSheet;
    PGCSub6: TcxPageControl;
    tbsListaSub6: TcxTabSheet;
    tbsEditaSub6: TcxTabSheet;
    PGCSub7: TcxPageControl;
    tbsListaSub7: TcxTabSheet;
    tbsEditaSub7: TcxTabSheet;
    PGCSub8: TcxPageControl;
    tbsListaSub8: TcxTabSheet;
    tbsEditaSub8: TcxTabSheet;
    LVDet1: TcxGridLevel;
    dsRegistroDet2: TDataSource;
    dsPesquisaDet2: TDataSource;
    dsRegistroDet1: TDataSource;
    dsPesquisaDet1: TDataSource;
    dtListDet1: TIBQuery;
    dtEditDet1: TIBDataSet;
    dsLinkDet2: TDataSource;
    dsLinkDet1: TDataSource;
    dtEditDet2: TIBDataSet;
    dtListDet2: TIBQuery;
    dsRegistroDet3: TDataSource;
    dtEditDet3: TIBDataSet;
    dsLinkDet3: TDataSource;
    dtListDet3: TIBQuery;
    dsPesquisaDet3: TDataSource;
    dsRegistroDet4: TDataSource;
    dtEditDet4: TIBDataSet;
    dsLinkDet4: TDataSource;
    dtListDet4: TIBQuery;
    dsPesquisaDet4: TDataSource;
    dsRegistroDet5: TDataSource;
    dtEditDet5: TIBDataSet;
    dsLinkDet5: TDataSource;
    dtListDet5: TIBQuery;
    dsPesquisaDet5: TDataSource;
    dsRegistroDet6: TDataSource;
    dtEditDet6: TIBDataSet;
    dsLinkDet6: TDataSource;
    dtListDet6: TIBQuery;
    dsPesquisaDet6: TDataSource;
    dsRegistroDet7: TDataSource;
    dtEditDet7: TIBDataSet;
    dsLinkDet7: TDataSource;
    dtListDet7: TIBQuery;
    dsPesquisaDet7: TDataSource;
    dsRegistroDet8: TDataSource;
    dtEditDet8: TIBDataSet;
    dsLinkDet8: TDataSource;
    dtListDet8: TIBQuery;
    dsPesquisaDet8: TDataSource;
    edtCodDet1: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    edtCodDet2: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    edtCodDet3: TcxDBTextEdit;
    edtCodDet4: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    edtCodDet5: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    edtCodDet6: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    edtCodDet7: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    edtCodDet8: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    edtCodigo: TcxDBTextEdit;
    mtbFiltro: TdxMemData;
    dsFiltro: TDataSource;
    TVDet1: TcxGridDBBandedTableView;
    GridDet2: TcxGrid;
    TVDet2: TcxGridDBBandedTableView;
    LVDet2: TcxGridLevel;
    GridDet3: TcxGrid;
    TVDet3: TcxGridDBBandedTableView;
    LVDet3: TcxGridLevel;
    GridDet4: TcxGrid;
    TVDet4: TcxGridDBBandedTableView;
    LVDet4: TcxGridLevel;
    GridDet5: TcxGrid;
    TVDet5: TcxGridDBBandedTableView;
    LVDet5: TcxGridLevel;
    GridDet6: TcxGrid;
    TVDet6: TcxGridDBBandedTableView;
    LVDet6: TcxGridLevel;
    GridDet7: TcxGrid;
    TVDet7: TcxGridDBBandedTableView;
    LVDet7: TcxGridLevel;
    GridDet8: TcxGrid;
    TVDet8: TcxGridDBBandedTableView;
    LVDet8: TcxGridLevel;
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
    procedure TVRegistroKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActLayoutExecute(Sender: TObject);
    procedure dtListBeforeOpen(DataSet: TDataSet);
    procedure dtEditBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnlMasterEnter(Sender: TObject);
    procedure tbsDetalhe1Enter(Sender: TObject);
    procedure tbsDetalhe2Enter(Sender: TObject);
    procedure tbsDetalhe3Enter(Sender: TObject);
    procedure tbsDetalhe4Enter(Sender: TObject);
    procedure tbsDetalhe5Enter(Sender: TObject);
    procedure tbsDetalhe6Enter(Sender: TObject);
    procedure tbsDetalhe7Enter(Sender: TObject);
    procedure tbsDetalhe8Enter(Sender: TObject);
    procedure tbsEditaShow(Sender: TObject);
    procedure dtEditDet1BeforeInsert(DataSet: TDataSet);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridEnter(Sender: TObject);
    procedure PGCSub1Change(Sender: TObject);
    procedure ActFilterExecute(Sender: TObject);
    procedure pnlFiltroExit(Sender: TObject);
    procedure pnlFiltroEnter(Sender: TObject);
    procedure ActCadLookupExecute(Sender: TObject);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
    procedure dtEditDet2NewRecord(DataSet: TDataSet);
    procedure dtEditDet3NewRecord(DataSet: TDataSet);
    procedure dtEditDet4NewRecord(DataSet: TDataSet);
    procedure dtEditDet5NewRecord(DataSet: TDataSet);
    procedure dtEditDet6NewRecord(DataSet: TDataSet);
    procedure dtEditDet7NewRecord(DataSet: TDataSet);
    procedure dtEditDet8NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    procedure Alterar;
    procedure LiberaActList(master:boolean=false);
    procedure LiberaActEdit(master:boolean=false);
    procedure ConfiguraSubTabs;
  protected    
    Foco : string;
    sqlOriginal : string;
    procedure CancelarAction;
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
    procedure VerificaStatus(iDataSource :TDataSource;Master:boolean=false);
    procedure AbreDataSet(DataSet : TDataSet);
  public
  end;

var
  frmCadPadraoMaster: TfrmCadPadraoMaster;

implementation

uses  Application_DM;

{$R *.dfm}

procedure TfrmCadPadraoMaster.FormShow(Sender: TObject);
var
  i : integer;
begin
  inherited;
  ActFilter.execute;

  ConfiguraSubTabs;

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

  if tbsDetalhe1.TabVisible then
  begin
    dtListDet1.Close;
    dtListDet1.Open;
  end;

  if tbsDetalhe2.TabVisible then
  begin
    dtListDet2.Close;
    dtListDet2.Open;
  end;

  if tbsDetalhe3.TabVisible then
  begin
    dtListDet3.Close;
    dtListDet3.Open;
  end;

  if tbsDetalhe4.TabVisible then
  begin
    dtListDet4.Close;
    dtListDet4.Open;
  end;

  if tbsDetalhe5.TabVisible then
  begin
    dtListDet5.Close;
    dtListDet5.Open;
  end;

  if tbsDetalhe6.TabVisible then
  begin
    dtListDet6.Close;
    dtListDet6.Open;
  end;

  if tbsDetalhe7.TabVisible then
  begin
    dtListDet7.Close;
    dtListDet7.Open;
  end;

  if tbsDetalhe8.TabVisible then
  begin
    dtListDet8.Close;
    dtListDet8.Open;
  end;

  //posicinando o item da listagem caso ele tenha sido chamado através de um 'f4'
  if Not VarIsNull(CodigoImput) then
    dsPesquisa.DataSet.Locate(campochave,CodigoImput,[loCaseInsensitive]);
end;


procedure TfrmCadPadraoMaster.pgcCadastroChange(Sender: TObject);
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
    ConfiguraSubTabs;
  end;
end;

procedure TfrmCadPadraoMaster.ActFirstExecute(Sender: TObject);
begin
  if (PgcCadastro.ActivePageIndex = 0) then
    First(dsPesquisa)
  else
  begin
    case PgcDetalhe.ActivePageIndex of
      0 : begin
           if PGCSub1.ActivePageIndex = 0 then
             First(dsPesquisaDet1);
          end;
      1  : begin
           if PGCSub2.ActivePageIndex = 0 then
             First(dsPesquisaDet2);
          end;

      2  : begin
            if PGCSub3.ActivePageIndex = 0 then
              First(dsPesquisaDet3);
           end;

      3  : begin
            if PGCSub4.ActivePageIndex = 0 then
              First(dsPesquisaDet4);
           end;

      4  : begin
             if PGCSub5.ActivePageIndex = 0 then
               First(dsPesquisaDet5);
           end;

      5  : begin
             if PGCSub6.ActivePageIndex = 0 then
               First(dsPesquisaDet6);
            end;

      6  : begin
             if PGCSub7.ActivePageIndex = 0 then
               First(dsPesquisaDet7);
           end;

      7  : begin
             if PGCSub8.ActivePageIndex = 0 then
               First(dsPesquisaDet8);
           end;


    end;
  end;
end;

procedure TfrmCadPadraoMaster.ActPriorExecute(Sender: TObject);
begin
  if (PgcCadastro.ActivePageIndex = 0) then
    Prior(dsPesquisa)
  else
  begin
    case PgcDetalhe.ActivePageIndex of
      0 : begin
           if PGCSub1.ActivePageIndex = 0 then
             Prior(dsPesquisaDet1);
          end;
      1  : begin
           if PGCSub2.ActivePageIndex = 0 then
             Prior(dsPesquisaDet2);
          end;

      2  : begin
            if PGCSub3.ActivePageIndex = 0 then
              Prior(dsPesquisaDet3);
           end;

      3  : begin
            if PGCSub4.ActivePageIndex = 0 then
              Prior(dsPesquisaDet4);
           end;

      4  : begin
             if PGCSub5.ActivePageIndex = 0 then
               Prior(dsPesquisaDet5);
           end;

      5  : begin
             if PGCSub6.ActivePageIndex = 0 then
               Prior(dsPesquisaDet6);
            end;

      6  : begin
             if PGCSub7.ActivePageIndex = 0 then
               Prior(dsPesquisaDet7);
           end;

      7  : begin
             if PGCSub8.ActivePageIndex = 0 then
               Prior(dsPesquisaDet8);
           end;


    end;
  end;

end;

procedure TfrmCadPadraoMaster.ActNextExecute(Sender: TObject);
begin
  if (PgcCadastro.ActivePageIndex = 0) then
   Next(dsPesquisa)
  else
  begin
    case PgcDetalhe.ActivePageIndex of
      0 : begin
           if PGCSub1.ActivePageIndex = 0 then
            Next(dsPesquisaDet1);
          end;
      1  : begin
           if PGCSub2.ActivePageIndex = 0 then
            Next(dsPesquisaDet2);
          end;

      2  : begin
            if PGCSub3.ActivePageIndex = 0 then
             Next(dsPesquisaDet3);
           end;

      3  : begin
            if PGCSub4.ActivePageIndex = 0 then
             Next(dsPesquisaDet4);
           end;

      4  : begin
             if PGCSub5.ActivePageIndex = 0 then
              Next(dsPesquisaDet5);
           end;

      5  : begin
             if PGCSub6.ActivePageIndex = 0 then
              Next(dsPesquisaDet6);
            end;

      6  : begin
             if PGCSub7.ActivePageIndex = 0 then
              Next(dsPesquisaDet7);
           end;

      7  : begin
             if PGCSub8.ActivePageIndex = 0 then
              Next(dsPesquisaDet8);
           end;

    end;
  end;
end;

procedure TfrmCadPadraoMaster.ActLastExecute(Sender: TObject);
begin
  if (PgcCadastro.ActivePageIndex = 0) then
    First(dsPesquisa)
  else
  begin
    case PgcDetalhe.ActivePageIndex of
      0 : begin
           if PGCSub1.ActivePageIndex = 0 then
             Last(dsPesquisaDet1);
          end;
      1  : begin
           if PGCSub2.ActivePageIndex = 0 then
             Last(dsPesquisaDet2);
          end;

      2  : begin
            if PGCSub3.ActivePageIndex = 0 then
              Last(dsPesquisaDet3);
           end;

      3  : begin
            if PGCSub4.ActivePageIndex = 0 then
              Last(dsPesquisaDet4);
           end;

      4  : begin
             if PGCSub5.ActivePageIndex = 0 then
               Last(dsPesquisaDet5);
           end;

      5  : begin
             if PGCSub6.ActivePageIndex = 0 then
               Last(dsPesquisaDet6);
            end;

      6  : begin
             if PGCSub7.ActivePageIndex = 0 then
               Last(dsPesquisaDet7);
           end;

      7  : begin
             if PGCSub8.ActivePageIndex = 0 then
               Last(dsPesquisaDet8);
           end;


    end;
  end;
end;

procedure TfrmCadPadraoMaster.ActRefreshExecute(Sender: TObject);
begin
  if (pgcCadastro.ActivePageIndex = 0) then
    Refresh(dsPesquisa)
  else
  begin
    case PgcDetalhe.ActivePageIndex of
      0 : begin
           if PGCSub1.ActivePageIndex = 0 then
            Refresh(dsPesquisaDet1);
          end;
      1  : begin
           if PGCSub2.ActivePageIndex = 0 then
            Refresh(dsPesquisaDet2);
          end;

      2  : begin
            if PGCSub3.ActivePageIndex = 0 then
             Refresh(dsPesquisaDet3);
           end;

      3  : begin
            if PGCSub4.ActivePageIndex = 0 then
             Refresh(dsPesquisaDet4);
           end;

      4  : begin
             if PGCSub5.ActivePageIndex = 0 then
              Refresh(dsPesquisaDet5);
           end;

      5  : begin
             if PGCSub6.ActivePageIndex = 0 then
              Refresh(dsPesquisaDet6);
            end;

      6  : begin
             if PGCSub7.ActivePageIndex = 0 then
              Refresh(dsPesquisaDet7);
           end;

      7  : begin
             if PGCSub8.ActivePageIndex = 0 then
              Refresh(dsPesquisaDet8);
           end;
    end;
  end;
end;

procedure TfrmCadPadraoMaster.LiberaActList(master:boolean=false);
begin
  if master then
  begin
    ActExportar.Enabled := true;
    ActConfigurar.Enabled := true;
    ActContrair.Enabled := true;
    ActExpandir.Enabled := true;
  end;

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
  TVRegistro.ViewData.Expand(True);
end;

procedure TfrmCadPadraoMaster.LiberaActEdit;
begin
  if (master) then
  begin
    ActExportar.Enabled := false;
    ActConfigurar.Enabled := false;
    ActContrair.Enabled := false;
    ActExpandir.Enabled := false;
  end;

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

procedure TfrmCadPadraoMaster.ActFecharExecute(Sender: TObject);
begin
   if (Application.MessageBox('Deseja realmente sair do cadastro?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
      exit;

    close;
end;

procedure TfrmCadPadraoMaster.ActESCExecute(Sender: TObject);
begin
  if (pgcCadastro.ActivePageIndex = 0) then
    ActFechar.Execute
  else if ActCancel.Enabled then
    ActCancel.Execute
  else
  begin
    //Apenas para permitir que ao se clicar em ESC na grid sub, o form volte para grilist principal
    Foco := 'Master';
    dtEdit.Edit;
    CancelarAction;
  end;

end;

procedure TfrmCadPadraoMaster.ActContrairExecute(Sender: TObject);
begin
  TVRegistro.ViewData.Collapse(True);
end;

procedure TfrmCadPadraoMaster.ActExpandirExecute(Sender: TObject);
begin
  TVRegistro.ViewData.Expand(True);
end;

procedure TfrmCadPadraoMaster.ActConfigurarExecute(Sender: TObject);
begin
 TcxGridTableController(Grid.FocusedView.Controller).Customization := True;
end;

procedure TfrmCadPadraoMaster.ActExportarExecute(Sender: TObject);
begin
   with SaveDialog do
  begin
    DefaultExt := 'xls';
    Filter := '*.xls';
    FileName := 'Cadastros de '+TfrmCadPadraoMaster(owner).Caption;
    if Execute then
      ExportGridToExcel(FileName,Grid);
  end;
end;


procedure TfrmCadPadraoMaster.Inserir(DtsEdit: TDataSource; tbEdit: TcxTabSheet);
begin
  dtsEdit.Dataset.Close;
  dtsEdit.Dataset.Open;
  dtsEdit.Dataset.Insert;
  tbEdit.Show;
end;

procedure TfrmCadPadraoMaster.Editar(DtsEdit: TDataSource; tbEdit: TcxTabSheet);
begin
  dtsEdit.Dataset.Close;
  dtsEdit.Dataset.Open;
  dtsEdit.Dataset.Edit;
  tbEdit.Show;

end;

procedure TfrmCadPadraoMaster.Cancelar(DtsEdit: TDataSource;DtsList : TDataSource;
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

procedure TfrmCadPadraoMaster.Salvar(DtsEdit: TDataSource;DtsList : TDataSource; tbList: TcxTabSheet);
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

procedure TfrmCadPadraoMaster.Alterar;
begin
  //
end;

procedure TfrmCadPadraoMaster.Excluir(DtsEdit, DtsList: TDataSource;
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

procedure TfrmCadPadraoMaster.First(DtsList: TDataSource);
begin
 DtsList.DataSet.First;
end;

procedure TfrmCadPadraoMaster.Next(DtsList: TDataSource);
begin
  DtsList.DataSet.Next;
end;

procedure TfrmCadPadraoMaster.Last(DtsList: TDataSource);
begin
 DtsList.DataSet.Last;
end;

procedure TfrmCadPadraoMaster.Prior(DtsList: TDataSource);
begin
  DtsList.DataSet.Prior;
end;

procedure TfrmCadPadraoMaster.Refresh(DtsList: TDataSource);
begin
  DtsList.DataSet.Close;
  DtsList.DataSet.Open;
end;

procedure TfrmCadPadraoMaster.ActInsertExecute(Sender: TObject);
begin
  if (pgcCadastro.ActivePageIndex = 0) then
    Inserir(dsRegistro,tbsEdita)
  else
  begin
    if PgcDetalhe.ActivePage = tbsDetalhe1 then
    begin
      if ((PGCSub1.ActivePageIndex = 0) and (Foco = 'Sub1')) then
        Inserir(dsRegistroDet1,tbsEditaSub1);
    end else
    begin
      if PgcDetalhe.ActivePage = tbsDetalhe2 then
      begin
        if ((PGCSub2.ActivePageIndex = 0) and (Foco = 'Sub2')) then
          Inserir(dsRegistroDet2,tbsEditaSub2);
      end else
      begin
        if PgcDetalhe.ActivePage = tbsDetalhe3 then
        begin
          if ((PGCSub3.ActivePageIndex = 0) and (Foco = 'Sub3')) then
            Inserir(dsRegistroDet3,tbsEditaSub3);
        end else
        begin
          if PgcDetalhe.ActivePage = tbsDetalhe4 then
          begin
            if ((PGCSub4.ActivePageIndex = 0) and (Foco = 'Sub4')) then
              Inserir(dsRegistroDet4,tbsEditaSub4);
          end else
          begin
            if PgcDetalhe.ActivePage = tbsDetalhe5 then
            begin
              if ((PGCSub5.ActivePageIndex = 0) and (Foco = 'Sub5')) then
                Inserir(dsRegistroDet5,tbsEditaSub5);
            end else
            begin
              if PgcDetalhe.ActivePage = tbsDetalhe6 then
              begin
                if ((PGCSub6.ActivePageIndex = 0) and (Foco = 'Sub6')) then
                  Inserir(dsRegistroDet6,tbsEditaSub6);
              end else
              begin
                if PgcDetalhe.ActivePage = tbsDetalhe7 then
                begin
                  if ((PGCSub7.ActivePageIndex = 0) and (Foco = 'Sub7')) then
                    Inserir(dsRegistroDet7,tbsEditaSub7);
                end else
                begin
                  if PgcDetalhe.ActivePage = tbsDetalhe8 then
                  begin
                    if ((PGCSub8.ActivePageIndex = 0) and (Foco = 'Sub8')) then
                      Inserir(dsRegistroDet8,tbsEditaSub8);
                  end;
                end;
              end; 
            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmCadPadraoMaster.ActDeleteExecute(Sender: TObject);
begin

  if (pgcCadastro.ActivePageIndex = 0) then
  begin
    Excluir(dsRegistro,dsPesquisa,tbsLista);
  end
  else
  begin
     case PgcDetalhe.ActivePageIndex of
        0 : begin
              if (PGCSub1.ActivePageIndex = 0) then
                Excluir(dsRegistroDet1,dsPesquisaDet1,tbsListaSub1);
            end;
        1 : begin
              if (PGCSub2.ActivePageIndex = 0) then
                Excluir(dsRegistroDet2,dsPesquisaDet2,tbsListaSub2);
            end;
        2 : begin
              if (PGCSub3.ActivePageIndex = 0) then
                Excluir(dsRegistroDet3,dsPesquisaDet3,tbsListaSub3);
            end;
        3 : begin
              if (PGCSub4.ActivePageIndex = 0) then
                Excluir(dsRegistroDet4,dsPesquisaDet4,tbsListaSub4);
            end;
        4 : begin
              if (PGCSub5.ActivePageIndex = 0) then
                Excluir(dsRegistroDet5,dsPesquisaDet5,tbsListaSub5);
            end;
        5 : begin
              if (PGCSub6.ActivePageIndex = 0) then
                Excluir(dsRegistroDet6,dsPesquisaDet6,tbsListaSub6);
            end;
        6 : begin
              if (PGCSub7.ActivePageIndex = 0) then
                Excluir(dsRegistroDet7,dsPesquisaDet7,tbsListaSub7);
            end;
        7 : begin
              if (PGCSub8.ActivePageIndex = 0) then
                Excluir(dsRegistroDet8,dsPesquisaDet8,tbsListaSub8);
            end;
     end;
  end;
end;

procedure TfrmCadPadraoMaster.ActSaveExecute(Sender: TObject);
var
  Posicao :TBookmark;
begin
  if ((dsRegistro.DataSet.State in [DSINSERT,DSEDIT] ) and (Foco = 'Master')) then
  begin
    Salvar(dsRegistro,dsPesquisa,tbsLista);
    VerificaStatus(dsRegistro,true);
  end
  else
  begin
    if ((dsRegistroDet1.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub1')) then
    begin
      Salvar(dsRegistroDet1,dsPesquisaDet1,tbsListaSub1);
      VerificaStatus(dsRegistroDet1);
    end
    else if ((dsRegistroDet2.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub2')) then
    begin
      Salvar(dsRegistroDet2,dsPesquisaDet2,tbsListaSub2);
      VerificaStatus(dsRegistroDet2);
    end
    else if ((dsRegistroDet3.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub3')) then
    begin
      Salvar(dsRegistroDet3,dsPesquisaDet3,tbsListaSub3);
      VerificaStatus(dsRegistroDet3);
    end
    else if ((dsRegistroDet4.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub4')) then
    begin
      Salvar(dsRegistroDet4,dsPesquisaDet4,tbsListaSub4);
    VerificaStatus(dsRegistroDet4);
    end
    else if ((dsRegistroDet5.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub5')) then
    begin
      Salvar(dsRegistroDet5,dsPesquisaDet5,tbsListaSub5);
      VerificaStatus(dsRegistroDet5);
    end
    else if ((dsRegistroDet6.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub6')) then
    begin
      Salvar(dsRegistroDet6,dsPesquisaDet6,tbsListaSub6);
      VerificaStatus(dsRegistroDet6);
    end
    else if ((dsRegistroDet7.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub7')) then
    begin
      Salvar(dsRegistroDet7,dsPesquisaDet7,tbsListaSub7);
      VerificaStatus(dsRegistroDet7);
    end
    else if ((dsRegistroDet8.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub8')) then
    begin
      Salvar(dsRegistroDet8,dsPesquisaDet8,tbsListaSub8);
      VerificaStatus(dsRegistroDet8);
    end
  end;
end;

procedure TfrmCadPadraoMaster.ActCancelExecute(Sender: TObject);
begin
  CancelarAction;
end;

procedure TfrmCadPadraoMaster.FormCreate(Sender: TObject);
var
  FMyStream: TMemoryStream;
  DirUser, Diretorio, filtro : String;
  AFilterControl: TcxFilterControl;
begin
  mtbFiltro.Open;
  mtbFiltro.Edit;

  sqlOriginal := dtList.sql.text;
  cxPropertiesStore.StorageName := TfrmCadPadraoMaster(Sender).Name;
  cxPropertiesStore.StorageType := stStream;
  FmyStream := TMemoryStream.Create;
  cxPropertiesStore.StorageStream := FMyStream;

  if FileExists('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName) then
  begin
    FMyStream.LoadFromFile('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName);
    FMyStream.Position := 0;
    cxPropertiesStore.RestoreFrom;
  end;

  filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmCadPadraoMaster(Sender).Caption+'.flt';
  if (FileExists(filtro)) then
  begin
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := TVRegistro;
   AFilterControl.LoadFromFile(filtro);
   AFilterControl.ApplyFilter;
   TVRegistro.DataController.Filter.Active := True;
   AFilterControl.Free;
  end;


  TfrmCadPadraoMaster(Sender).Visible := false;
end;

procedure TfrmCadPadraoMaster.VerificaStatus(iDataSource: TDataSource;Master:boolean=false);
begin
  if iDataSource.State in dsEditModes Then
    LiberaActEdit(master)
  else
    LiberaActList(master);
end;

procedure TfrmCadPadraoMaster.ActEditExecute(Sender: TObject);
var f : integer;
begin
  if (pgcCadastro.ActivePageIndex = 0) then
  begin
    PgcMaster.activepageindex := 0;
    Editar(dsRegistro,tbsEdita);
    //edtCodigo.SetFocus;
  end
  else
  begin
    if ((PgcDetalhe.ActivePage = tbsDetalhe1)  and (Foco = 'Sub1')) then
    begin
      Editar(dsRegistroDet1,tbsEditaSub1);
      for f := 0 to (TFormPadrao(Sender).ComponentCount -1) do
      begin
        if (TFormPadrao(Sender).Components[f] is TcxCustomTextEdit) and (TFormPadrao(Sender).Components[f].Tag = 1) then
          (TFormPadrao(Sender).Components[f]as TcxCustomTextEdit).SetFocus;
      end;
      //edtCodDet1.SetFocus;
    end
    else if ((PgcDetalhe.ActivePage = tbsDetalhe2)  and (Foco = 'Sub2')) then
    begin
      Editar(dsRegistroDet2,tbsEditaSub2);
      edtCodDet2.SetFocus;
    end
    else if ((PgcDetalhe.ActivePage = tbsDetalhe3)  and (Foco = 'Sub3')) then
    begin
      Editar(dsRegistroDet3,tbsEditaSub3);
      edtCodDet3.SetFocus;
    end
    else if ((PgcDetalhe.ActivePage = tbsDetalhe4)  and (Foco = 'Sub4')) then
    begin
      Editar(dsRegistroDet4,tbsEditaSub4);
      edtCodDet4.SetFocus;
    end
    else if ((PgcDetalhe.ActivePage = tbsDetalhe5)  and (Foco = 'Sub5')) then
    begin
      Editar(dsRegistroDet5,tbsEditaSub5);
      edtCodDet5.SetFocus;
    end
    else if ((PgcDetalhe.ActivePage = tbsDetalhe6)  and (Foco = 'Sub6')) then
    begin
      Editar(dsRegistroDet6,tbsEditaSub6);
      edtCodDet6.SetFocus;
    end
    else if ((PgcDetalhe.ActivePage = tbsDetalhe7)  and (Foco = 'Sub7')) then
    begin
      Editar(dsRegistroDet7,tbsEditaSub7);
      edtCodDet7.SetFocus;
    end
    else if ((PgcDetalhe.ActivePage = tbsDetalhe8)  and (Foco = 'Sub8')) then
    begin
      Editar(dsRegistroDet8,tbsEditaSub8);
      edtCodDet8.SetFocus;
    end;
  end;
end;

procedure TfrmCadPadraoMaster.dsRegistroStateChange(Sender: TObject);
begin
  VerificaStatus(TDataSource(Sender),true);
end;

procedure TfrmCadPadraoMaster.TVRegistroKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key = 13) then
    ActEdit.Execute;
end;

procedure TfrmCadPadraoMaster.ActLayoutExecute(Sender: TObject);
begin
  //lcmain.Customization := true;
end;

procedure TfrmCadPadraoMaster.dtListBeforeOpen(DataSet: TDataSet);
begin
    TIBQuery(DataSet).ParamByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditBeforePost(DataSet: TDataSet);
begin
  dtEdit.FieldByName('cnpj').value := dmapp.cnpj;
end;

procedure TfrmCadPadraoMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  Diretorio :string;
  DirUser, filtro : String;
  AFilterControl: TcxFilterControl;
begin
  if (TVRegistro.DataController.Filter.Active) then
  begin

   filtro := 'C:\Sistemas\HelpStore\filtros\'+TfrmCadPadraoMaster(Sender).Caption+'.flt';

   // FileCreate(filtro);
   AFilterControl := TcxFilterControl.Create(Self);
   AFilterControl.LinkComponent := TVRegistro;
   AFilterControl.SaveToFile(filtro);
   AFilterControl.Free;
 end;
          (cxPropertiesStore.StorageStream as TMemoryStream).Position := 0;
           cxPropertiesStore.StoreTo(true);
          (cxPropertiesStore.StorageStream as TMemoryStream).SaveToFile(('C:\Sistemas\HelpStore\filtros\'+cxPropertiesStore.StorageName));

  //lcMain.Store;
  if TfrmCadPadraoMaster(Sender).Tag = 0 then
  begin
    if dtList.fieldbyname(campochave).asString <> '' then
      Codigo := dtList.fieldbyname(campochave).value;
  end;
end;

procedure TfrmCadPadraoMaster.AbreDataSet(DataSet: TDataSet);
begin
  TDataset(DataSet).Close;
  TDataset(DataSet).Open;
end;

procedure TfrmCadPadraoMaster.pnlMasterEnter(Sender: TObject);
begin
   Foco := 'Master';
   if not (dtEdit.state in [dsInsert,dsEdit]) then
      dtEdit.Edit;
   VerificaStatus(dsRegistro,true);
end;

procedure TfrmCadPadraoMaster.tbsDetalhe1Enter(Sender: TObject);
begin
  if (foco <> 'Sub1') then
  begin
    VerificaStatus(dsPesquisaDet1);
    Foco := 'Sub1';
  end;
end;

procedure TfrmCadPadraoMaster.tbsDetalhe2Enter(Sender: TObject);
begin
  if (foco <> 'Sub2') then
  begin
    VerificaStatus(dsPesquisaDet2);
    Foco := 'Sub2';
  end;
end;

procedure TfrmCadPadraoMaster.tbsDetalhe3Enter(Sender: TObject);
begin
  if (foco <> 'Sub3') then
  begin
    VerificaStatus(dsPesquisaDet3);
    Foco := 'Sub3';
  end;
end;

procedure TfrmCadPadraoMaster.tbsDetalhe4Enter(Sender: TObject);
begin
  if (foco <> 'Sub4') then
  begin
    VerificaStatus(dsPesquisaDet4);
    Foco := 'Sub4';
  end;
end;

procedure TfrmCadPadraoMaster.tbsDetalhe5Enter(Sender: TObject);
begin
  if (foco <> 'Sub5') then
  begin
    VerificaStatus(dsPesquisaDet5);
    Foco := 'Sub5';
  end;
end;

procedure TfrmCadPadraoMaster.tbsDetalhe6Enter(Sender: TObject);
begin
  if (foco <> 'Sub6') then
  begin
    VerificaStatus(dsPesquisaDet6);
    Foco := 'Sub6';
  end;
end;

procedure TfrmCadPadraoMaster.tbsDetalhe7Enter(Sender: TObject);
begin
  if (foco <> 'Sub7') then
  begin
    VerificaStatus(dsPesquisaDet7);
    Foco := 'Sub7';
  end;
end;

procedure TfrmCadPadraoMaster.tbsDetalhe8Enter(Sender: TObject);
begin
  if (foco <> 'Sub8') then
  begin
    VerificaStatus(dsPesquisaDet8);
    Foco := 'Sub8';
  end;
end;

procedure TfrmCadPadraoMaster.tbsEditaShow(Sender: TObject);
begin
  PgcDetalhe.ActivePageIndex := 0;
end;

procedure TfrmCadPadraoMaster.dtEditDet1BeforeInsert(DataSet: TDataSet);
begin
  if (dtEdit.state in [dsInsert,dsEdit]) then
    dtEdit.Post;
end;


procedure TfrmCadPadraoMaster.CancelarAction;
begin
   if ((dsRegistro.DataSet.State in [DSINSERT,DSEDIT] ) and (Foco = 'Master')) then
  begin
    Cancelar(dsRegistro,dsPesquisa,tbsLista);
    VerificaStatus(dsRegistro,true);
//    Grid.SetFocus;
  end
  else
  begin
    if ((dsRegistroDet1.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub1')) then
      Cancelar(dsRegistroDet1,dsPesquisaDet1,tbsListaSub1)
    else if ((dsRegistroDet2.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub2')) then
      Cancelar(dsRegistroDet2,dsPesquisaDet2,tbsListaSub2)
    else if ((dsRegistroDet3.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub3')) then
      Cancelar(dsRegistroDet3,dsPesquisaDet3,tbsListaSub3)
    else if ((dsRegistroDet4.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub4')) then
      Cancelar(dsRegistroDet4,dsPesquisaDet4,tbsListaSub4)
    else if ((dsRegistroDet5.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub5')) then
      Cancelar(dsRegistroDet5,dsPesquisaDet5,tbsListaSub5)
    else if ((dsRegistroDet6.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub6')) then
      Cancelar(dsRegistroDet6,dsPesquisaDet6,tbsListaSub6)
    else if ((dsRegistroDet7.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub7')) then
      Cancelar(dsRegistroDet7,dsPesquisaDet7,tbsListaSub7)
    else if ((dsRegistroDet8.DataSet.State in [DSINSERT,DSEDIT]) and (Foco = 'Sub8')) then
      Cancelar(dsRegistroDet8,dsPesquisaDet8,tbsListaSub8);
  end;
end;

procedure TfrmCadPadraoMaster.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //fui obrigado a retirar a propriedade shortcut pois ocorria o fechamento da tela
  // na ocorrencia de erro e posterior tratamento do madshi.
  if key = vk_return then
    SelectNext(ActiveControl,True,True)
  else  if Key = VK_DELETE then
    ActDelete.execute;
end;

procedure TfrmCadPadraoMaster.GridEnter(Sender: TObject);
begin
   GridPopupMenu.Grid := TcxGrid(Sender);
end;

procedure TfrmCadPadraoMaster.PGCSub1Change(Sender: TObject);
begin
//  if TCxPageControl(Sender).ActivePageIndex = 0 then
//    ACBrEnterTab.EnterAsTab :=  False;
end;

procedure TfrmCadPadraoMaster.ConfiguraSubTabs;
begin
  PGCSub1.ActivePageIndex := 0;
  PGCSub2.ActivePageIndex := 0;
  PGCSub3.ActivePageIndex := 0;
  PGCSub4.ActivePageIndex := 0;
  PGCSub5.ActivePageIndex := 0;
  PGCSub6.ActivePageIndex := 0;
  PGCSub7.ActivePageIndex := 0;
  PGCSub8.ActivePageIndex := 0;

  PGCSub1.HideTabs := true;
  PGCSub2.HideTabs := true;
  PGCSub3.HideTabs := true;
  PGCSub4.HideTabs := true;
  PGCSub5.HideTabs := true;
  PGCSub6.HideTabs := true;
  PGCSub7.HideTabs := true;
  PGCSub8.HideTabs := true;
end;

procedure TfrmCadPadraoMaster.ActFilterExecute(Sender: TObject);
begin
  inherited;
   //Filtro a ser implementado no fomulario descentente
  dtList.Open;
  TVRegistro.ViewData.Expand(True);
end;

procedure TfrmCadPadraoMaster.pnlFiltroExit(Sender: TObject);
begin
  inherited;
  ActFilter.Execute;
  ActDelete.enabled := true;
end;

procedure TfrmCadPadraoMaster.pnlFiltroEnter(Sender: TObject);
begin
  inherited;
  ActDelete.enabled := false;
end;

procedure TfrmCadPadraoMaster.ActCadLookupExecute(Sender: TObject);
var
  campo,classe : string;
  Formulario: TFormClass;
begin
  inherited;
  {Para que o lookup funcione corretamente são necessários os seguintes passos:
   1 - Colocar o nome do componente de controle (dblookup) letra+NOME DO FORM A SER CRIADO
       ex: no cadastro de fornecedores de tem o dblookup de bancos, logo o nome do dblookup precisa ser
       aTfrmCadBancos.

   2 - Em todo formulario que for instanciado por lookup (como é o caso de FrmCadbancos) é necessário
       colocar a clausula inicialization da classe

   3 - Já para que o botão funcione, basta manter o mesmo padrao do que já é utilzado
   ex: colocar no onclick do botao ---> CadastroLookup(TfrmCadBancos,dtEdit,'BANCO_C1',QryBanco1);
  }
  if (TcxDBLookupComboBox(Screen.ActiveControl).Parent is TcxDBLookupComboBox) then
  begin
    //'extraindo' a classe do nome do controle
    Classe := copy(TcxDBLookupComboBox(TcxDBLookupComboBox(Screen.ActiveControl).Parent).name,2,50);

    //capturando a classe, so ira funcionar se ela estiver inicializada, por isso a necessidade do inicialization
    Formulario := TFormClass(GetClass(Classe));

    //pegando o nome do field no controle
    campo := TcxDBLookupComboBox(TcxDBLookupComboBox(Screen.ActiveControl).Parent).DataBinding.DataField;

    if not Assigned(Formulario) then
      exit;
      
    //chamando a rotina de lookup
    CadastroLookup(Formulario,TIbDataSet(TcxDBLookupComboBox(TcxDBLookupComboBox(Screen.ActiveControl).Parent).DataBinding.DataSource.DataSet)
    ,campo,TIBQuery(TcxDBLookupComboBox(TcxDBLookupComboBox(Screen.ActiveControl).Parent).Properties.listsource.dataset));
  end;

end;

procedure TfrmCadPadraoMaster.dtEditDet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditDet2NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditDet3NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditDet4NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditDet5NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditDet6NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditDet7NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

procedure TfrmCadPadraoMaster.dtEditDet8NewRecord(DataSet: TDataSet);
begin
  inherited;
  TIBDataSet(DataSet).FieldByName('cnpj').value := dmApp.cnpj;
end;

end.
