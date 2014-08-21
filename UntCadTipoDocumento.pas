unit UntCadTipoDocumento;

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
  cxPC, cxCheckBox;

type
  TfrmCadTipoDocumento = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListSIGLA: TIBStringField;
    dtListNOME: TIBStringField;
    dtListBLT: TIBStringField;
    dtListCODIGO_FISCAL: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2SIGLA: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2BLT: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO_FISCAL: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditSIGLA: TIBStringField;
    dtEditNOME: TIBStringField;
    dtEditBLT: TIBStringField;
    dtEditCODIGO_FISCAL: TIBStringField;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTipoDocumento: TfrmCadTipoDocumento;

implementation

{$R *.dfm}

end.
