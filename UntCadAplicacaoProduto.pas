unit UntCadAplicacaoProduto;

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
  TfrmCadAplicacaoProduto = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListPRODUTO: TIBStringField;
    dtListAPLICACAO: TIntegerField;
    dtListLOCAL: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2PRODUTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2APLICACAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2LOCAL: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditPRODUTO: TIBStringField;
    dtEditAPLICACAO: TIntegerField;
    dtEditLOCAL: TIBStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    QryAplicacao: TIBQuery;
    dsQryAplicacao: TDataSource;
    QryAplicacaoCNPJ: TIBStringField;
    QryAplicacaoCODIGO: TIntegerField;
    QryAplicacaoNOME: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAplicacaoProduto: TfrmCadAplicacaoProduto;

implementation

{$R *.dfm}

end.
