unit UntCadAdministradoras;

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
  cxPC, cxMaskEdit, cxDropDownEdit, cxCalc;

type
  TfrmCadAdministradoras = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListDIASREEMBOLSO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListTAXA: TFloatField;
    dtListTAXA_PARCELADO: TFloatField;
    dtListTAXA_DEBITO: TFloatField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DIASREEMBOLSO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2TAXA: TcxGridDBBandedColumn;
    GridDBBandedTableView2TAXA_PARCELADO: TcxGridDBBandedColumn;
    GridDBBandedTableView2TAXA_DEBITO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditDIASREEMBOLSO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditTAXA: TFloatField;
    dtEditTAXA_PARCELADO: TFloatField;
    dtEditTAXA_DEBITO: TFloatField;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel5: TcxLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxLabel6: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAdministradoras: TfrmCadAdministradoras;

implementation

{$R *.dfm}

end.
