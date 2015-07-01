unit untCadCRMStatus;

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
  dxSkinsdxBarPainter, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, IBCustomDataSet,
  cxIntlBase, cxintl, cxPropertiesStore, cxGridCustomPopupMenu,
  cxGridPopupMenu, dxBarDBNav, ImgList, ActnList, dxBar, cxClasses,
  IBQuery, cxLabel, cxTextEdit, cxDBEdit, ExtCtrls, cxGridLevel,
  cxGridCustomView, cxGrid, cxPC, cxCheckBox, cxGroupBox, cxMaskEdit,
  cxDropDownEdit, cxColorComboBox, cxDBColorComboBox;

type
  TfrmCadCRMStatus = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListCOR: TIntegerField;
    dtListFECHADO: TIBStringField;
    dtListPADRAO_ABERTURA: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2COR: TcxGridDBBandedColumn;
    GridDBBandedTableView2FECHADO: TcxGridDBBandedColumn;
    GridDBBandedTableView2PADRAO_ABERTURA: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditCOR: TIntegerField;
    dtEditFECHADO: TIBStringField;
    dtEditPADRAO_ABERTURA: TIBStringField;
    cxDBColorComboBox1: TcxDBColorComboBox;
    cxLabel3: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxLabel4: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCRMStatus: TfrmCadCRMStatus;

implementation

{$R *.dfm}
initialization
 RegisterClass(TfrmCadCRMStatus);
end.
