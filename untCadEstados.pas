unit untCadEstados;

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
  cxGridDBBandedTableView, cxGrid, cxPC;

type
  TfrmCadEstados = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListSIGLA: TIBStringField;
    dtListNOME: TIBStringField;
    dtListMASCARA_IE: TIBStringField;
    dtListCOD_IBGE: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2SIGLA: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2MASCARA_IE: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_IBGE: TcxGridDBBandedColumn;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadEstados: TfrmCadEstados;

implementation

{$R *.dfm}

end.
