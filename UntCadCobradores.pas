unit UntCadCobradores;

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
  TFrmCadCobradores = class(TfrmCadPadrao)
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditINTERNO: TIBStringField;
    dtEditATIVO: TIBStringField;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListINTERNO: TIBStringField;
    dtListATIVO: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2INTERNO: TcxGridDBBandedColumn;
    GridDBBandedTableView2ATIVO: TcxGridDBBandedColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCobradores: TFrmCadCobradores;

implementation

{$R *.dfm}

end.
