unit UntCadPerfilGrades;

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
  dxSkinsdxBarPainter, dxmdaset, cxIntlBase, cxintl, cxPropertiesStore,
  cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav, ImgList, ActnList,
  dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel, cxTextEdit,
  cxDBEdit, ExtCtrls, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView, cxGrid,
  cxPC;

type
  TFrmCadPerfilGrades = class(TfrmCadPadraoMaster)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListINICIAL: TIntegerField;
    dtListFINAL: TIntegerField;
    dtListINTERVALO: TIntegerField;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroNOME: TcxGridDBBandedColumn;
    TVRegistroINICIAL: TcxGridDBBandedColumn;
    TVRegistroFINAL: TcxGridDBBandedColumn;
    TVRegistroINTERVALO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditINICIAL: TIntegerField;
    dtEditFINAL: TIntegerField;
    dtEditINTERVALO: TIntegerField;
    cxLabel11: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIBStringField;
    dtListDet1GRADE: TIntegerField;
    dtListDet1ORDEM: TIntegerField;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1ORDEM: TcxGridDBBandedColumn;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIBStringField;
    dtEditDet1GRADE: TIntegerField;
    dtEditDet1ORDEM: TIntegerField;
    cxLabel14: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPerfilGrades: TFrmCadPerfilGrades;

implementation

{$R *.dfm}

end.
