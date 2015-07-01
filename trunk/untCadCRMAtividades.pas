unit untCadCRMAtividades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadraoMaster, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, DB, cxDBData, cxContainer,
  dxSkinsdxBarPainter, cxCalendar, Menus, StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, IBCustomDataSet, dxmdaset, cxIntlBase, cxintl,
  cxPropertiesStore, cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav,
  ImgList, ActnList, dxBar, cxClasses, IBQuery, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGrid, cxPC,
  cxSpinEdit, cxTimeEdit, cxGroupBox;

type
  TfrmCadCRMAtividades = class(TfrmCadPadraoMaster)
    dtListCODIGO: TIntegerField;
    dtListCNPJ: TIBStringField;
    dtListCOD_STATUS: TIntegerField;
    dtListCOD_CLIENTE: TIntegerField;
    dtListCOD_VENDEDOR: TIntegerField;
    dtListDESCRICAO: TIBStringField;
    dtListDT_LANCTO: TDateTimeField;
    dtListPRIORIDADE: TIntegerField;
    dtListDT_AGENDA: TDateField;
    dtListHR_AGENDA: TTimeField;
    dtListCLIENTE: TIBStringField;
    dtListVENDEDOR: TIBStringField;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroCOD_STATUS: TcxGridDBBandedColumn;
    TVRegistroCOD_CLIENTE: TcxGridDBBandedColumn;
    TVRegistroCOD_VENDEDOR: TcxGridDBBandedColumn;
    TVRegistroDESCRICAO: TcxGridDBBandedColumn;
    TVRegistroDT_LANCTO: TcxGridDBBandedColumn;
    TVRegistroPRIORIDADE: TcxGridDBBandedColumn;
    TVRegistroDT_AGENDA: TcxGridDBBandedColumn;
    TVRegistroHR_AGENDA: TcxGridDBBandedColumn;
    TVRegistroCLIENTE: TcxGridDBBandedColumn;
    TVRegistroVENDEDOR: TcxGridDBBandedColumn;
    dtListSTATUS: TIBStringField;
    dtListCOR: TIntegerField;
    TVRegistroSTATUS: TcxGridDBBandedColumn;
    TVRegistroCOR: TcxGridDBBandedColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dtEditCODIGO: TIntegerField;
    dtEditCNPJ: TIBStringField;
    dtEditCOD_STATUS: TIntegerField;
    dtEditCOD_CLIENTE: TIntegerField;
    dtEditCOD_VENDEDOR: TIntegerField;
    dtEditDESCRICAO: TIBStringField;
    dtEditDT_LANCTO: TDateTimeField;
    dtEditPRIORIDADE: TIntegerField;
    dtEditDT_AGENDA: TDateField;
    dtEditHR_AGENDA: TTimeField;
    aTfrmCadClientes: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    btnCliente: TcxButton;
    aTfrmCadCRMStatus: TcxDBLookupComboBox;
    cxLabel13: TcxLabel;
    btnStatus: TcxButton;
    btnTecnico: TcxButton;
    aTfrmCadTecnicos: TcxDBLookupComboBox;
    cxLabel15: TcxLabel;
    QryClientes: TIBQuery;
    QryClientesCODIGO: TIntegerField;
    QryClientesNOME_RAZAO: TIBStringField;
    QryClientesTECNICO: TIntegerField;
    QryClientesEMAIL: TIBStringField;
    QryClientesCIDADE: TIBStringField;
    dsClientes: TDataSource;
    QryStatusCRM: TIBQuery;
    QryStatusCRMCNPJ: TIBStringField;
    QryStatusCRMCODIGO: TIntegerField;
    QryStatusCRMNOME: TIBStringField;
    QryStatusCRMCOR: TIntegerField;
    QryStatusCRMFECHADO: TIBStringField;
    QryStatusCRMPADRAO_ABERTURA: TIBStringField;
    dsStatus: TDataSource;
    QryVendedor: TIBQuery;
    QryVendedorCNPJ: TIBStringField;
    QryVendedorPESSOA_FJ: TIntegerField;
    QryVendedorNOME: TIBStringField;
    QryVendedorCODIGO: TIntegerField;
    dsVendedor: TDataSource;
    edSolicitante: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel23: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBTimeEdit1: TcxDBTimeEdit;
    cxLabel11: TcxLabel;
    cxLabel25: TcxLabel;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxLabel14: TcxLabel;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1COD_ATIVIDADE: TIntegerField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1DT_LANCTO: TDateTimeField;
    dtListDet1DESCRICAO: TIBStringField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1COD_ATIVIDADE: TcxGridDBBandedColumn;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1DT_LANCTO: TcxGridDBBandedColumn;
    TVDet1DESCRICAO: TcxGridDBBandedColumn;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1COD_ATIVIDADE: TIntegerField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1DT_LANCTO: TDateTimeField;
    dtEditDet1DESCRICAO: TIBStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel17: TcxLabel;
    procedure btnStatusClick(Sender: TObject);
    procedure btnTecnicoClick(Sender: TObject);
    procedure TVRegistroSTATUSCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCRMAtividades: TfrmCadCRMAtividades;

implementation

uses untCadCRMStatus, untCadVendedor2, Application_DM;

{$R *.dfm}

procedure TfrmCadCRMAtividades.btnStatusClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadCRMStatus,dtEdit,'COD_STATUS',QryStatusCRM);
end;

procedure TfrmCadCRMAtividades.btnTecnicoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadVendedor2,dtEdit,'COD_VENDEDOR',QryVendedor)
end;

procedure TfrmCadCRMAtividades.TVRegistroSTATUSCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
   if not (AViewInfo.GridRecord as TcxCustomGridRow).IsFilterRow then
  begin
    ACanvas.Canvas.Brush.Style := bsSolid;
    if not VarIsNull(TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroCOR.Index]) then
     ACanvas.Canvas.Brush.Color := VarAsType(TVRegistro.ViewData.Records[AViewInfo.GridRecord.Index].Values[TVRegistroCOR.Index], varInteger);
  end;
end;

end.
