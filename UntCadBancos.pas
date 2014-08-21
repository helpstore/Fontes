unit UntCadBancos;

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
  TfrmCadBancos = class(TfrmCadPadrao)
    dtListCODIGO: TIBStringField;
    dtListNOME: TIBStringField;
    dtListBOLETO: TIntegerField;
    dtListGERA_ARQUIVO_MAGNETICO: TIBStringField;
    dtListPADRAO_BOLETO: TIBStringField;
    dtListCONFIG_CH: TBlobField;
    dtListCONFIG_CHEQUE: TMemoField;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2BOLETO: TcxGridDBBandedColumn;
    GridDBBandedTableView2GERA_ARQUIVO_MAGNETICO: TcxGridDBBandedColumn;
    GridDBBandedTableView2PADRAO_BOLETO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONFIG_CH: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONFIG_CHEQUE: TcxGridDBBandedColumn;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBancos: TfrmCadBancos;

implementation

{$R *.dfm}

end.
