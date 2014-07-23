unit UntCadUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, untCadPadrao, cxGraphics, cxControls, cxLookAndFeels,
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
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox;

type
  TfrmCadUsuarios = class(TfrmCadPadrao)
    dtListCODIGO: TIntegerField;
    dtListLOGIN: TIBStringField;
    dtListNOME: TIBStringField;
    dtListPERFIL: TIntegerField;
    dtListSENHA: TIBStringField;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2LOGIN: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2PERFIL: TcxGridDBBandedColumn;
    GridDBBandedTableView2SENHA: TcxGridDBBandedColumn;
    dtEditCODIGO: TIntegerField;
    dtEditLOGIN: TIBStringField;
    dtEditNOME: TIBStringField;
    dtEditPERFIL: TIntegerField;
    dtEditSENHA: TIBStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    dsPerfil: TDataSource;
    QryPerfil: TIBQuery;
    dtVendedor: TIBDataSet;
    dsCaixa: TDataSource;
    dtVendedorCNPJ: TIBStringField;
    dtVendedorCODIGO: TIntegerField;
    dtVendedorCONTA_DESCONTOS: TIntegerField;
    dtVendedorCONTA_DIFERENCA: TIntegerField;
    dtVendedorVENDEDOR: TIntegerField;
    QryVendedor: TIBQuery;
    dsVendedor: TDataSource;
    cxLabel5: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    QryVendedorCNPJ: TIBStringField;
    QryVendedorCODIGO: TIntegerField;
    QryVendedorNOME: TIBStringField;
    QryVendedorCOM_VISTA: TFloatField;
    QryVendedorCOM_PRAZO: TFloatField;
    QryVendedorPESSOA_FJ: TIntegerField;
    QryVendedorSENHA: TIBStringField;
    QryVendedorATIVO: TIBStringField;
    QryVendedorCOD_PERFIL: TIntegerField;
    QryVendedorCOD_PERFIL_PAGTO: TIntegerField;
    QryPerfilCODIGO: TIntegerField;
    QryPerfilDESCRICAO: TIBStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadUsuarios: TfrmCadUsuarios;

implementation

{$R *.dfm}

procedure TfrmCadUsuarios.FormShow(Sender: TObject);
begin
  inherited;
  QryPerfil.Close;
  QryPerfilOpen;

  dtVendedor.Close;
  dtVendedor.Open;
  dtVendedor.Edit;

  QryVendedor.Close;
  QryVendedor.Open;
end;

end.
