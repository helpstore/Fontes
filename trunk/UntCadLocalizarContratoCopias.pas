unit UntCadLocalizarContratoCopias;

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
  cxPC;

type
  TFrmCadLocalizarContratoCopias = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListCOD_CLIENTE: TIntegerField;
    dtListCOD_CONTRATO: TIntegerField;
    dtListNUM_CONTRATO: TIBStringField;
    dtListDT_INICIO: TDateTimeField;
    dtListDT_FIM: TDateTimeField;
    dtListATIVO: TIBStringField;
    dtListINFORMACOES: TMemoField;
    dtListVALOR_CONTRATO: TFloatField;
    dtListFRANQUIA_COPIAS: TIntegerField;
    dtListVALOR_COPIA_EXCEDENTE: TFloatField;
    dtListDATA: TDateField;
    dtListGERA_FATURAMENTO: TIBStringField;
    dtListGERA_LEITURA: TIBStringField;
    dtListNOME_RAZAO: TIBStringField;
    dtListFANTASIA: TIBStringField;
    dtListTIPO_CONTRATO: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadLocalizarContratoCopias: TFrmCadLocalizarContratoCopias;

implementation

{$R *.dfm}

end.
