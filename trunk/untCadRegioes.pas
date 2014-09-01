unit untCadRegioes;

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
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore, ACBrBase,
  ACBrEnterTab, cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav,
  ImgList, ActnList, dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel,
  cxTextEdit, cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCadRegiao = class(TfrmCadPadrao)
    cbVendedor: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    btnVendedor: TcxButtonEdit;
    btnTecnico: TcxButtonEdit;
    cbTecnico: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cbTerceiro: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    btnTerceiro: TcxButtonEdit;
    cxLabel7: TcxLabel;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditVENDEDOR: TIntegerField;
    dtEditTERCEIRO: TIntegerField;
    dtEditDESCRICAO: TIBStringField;
    dtEditTECNICO: TIntegerField;
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListVENDEDOR: TIntegerField;
    dtListTERCEIRO: TIntegerField;
    dtListDESCRICAO: TIBStringField;
    dtListTECNICO: TIntegerField;
    dtListNOME_VENDEDOR: TIBStringField;
    dtListNOME_TERCEIRO: TIBStringField;
    dtListNOME_TECNICO: TIBStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2VENDEDOR: TcxGridDBBandedColumn;
    GridDBBandedTableView2TERCEIRO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DESCRICAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2TECNICO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_VENDEDOR: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_TERCEIRO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_TECNICO: TcxGridDBBandedColumn;
    QryVendedor: TIBQuery;
    QryVendedorCNPJ: TIBStringField;
    QryVendedorPESSOA_FJ: TIntegerField;
    QryVendedorNOME: TIBStringField;
    QryVendedorCODIGO: TIntegerField;
    dsVendedor: TDataSource;
    QryTerceiro: TIBQuery;
    dsTerceiro: TDataSource;
    dsTecnico: TDataSource;
    QryTecnico: TIBQuery;
    QryTecnicoCNPJ: TIBStringField;
    QryTecnicoCODIGO: TIntegerField;
    QryTecnicoNOME: TIBStringField;
    QryTerceiroCNPJ: TIBStringField;
    QryTerceiroCODIGO: TIntegerField;
    QryTerceiroCOM_PRAZO: TFloatField;
    QryTerceiroCOM_VISTA: TFloatField;
    QryTerceiroNOME: TIBStringField;
    QryTerceiroPESSOA_FJ: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadRegiao: TfrmCadRegiao;

implementation

{$R *.dfm}

end.
