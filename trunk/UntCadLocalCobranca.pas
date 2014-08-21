unit UntCadLocalCobranca;

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
  TfrmCadLocalCobranca = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListENDERECO: TIBStringField;
    dtListFONE: TIBStringField;
    dtListCIDADE: TIBStringField;
    dtListUF: TIBStringField;
    dtListCODIGO_SCPC: TIBStringField;
    dtListBAIRRO: TIBStringField;
    dtListBANCO: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2ENDERECO: TcxGridDBBandedColumn;
    GridDBBandedTableView2FONE: TcxGridDBBandedColumn;
    GridDBBandedTableView2CIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2UF: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO_SCPC: TcxGridDBBandedColumn;
    GridDBBandedTableView2BAIRRO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BANCO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditENDERECO: TIBStringField;
    dtEditFONE: TIBStringField;
    dtEditCIDADE: TIBStringField;
    dtEditUF: TIBStringField;
    dtEditCODIGO_SCPC: TIBStringField;
    dtEditBAIRRO: TIBStringField;
    dtEditBANCO: TIBStringField;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    QryBanco: TIBQuery;
    dsQryBanco: TDataSource;
    QryBancoBOLETO: TIntegerField;
    QryBancoCODIGO: TIBStringField;
    QryBancoNOME: TIBStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadLocalCobranca: TfrmCadLocalCobranca;

implementation

{$R *.dfm}

procedure TfrmCadLocalCobranca.FormShow(Sender: TObject);
begin
  inherited;
  QryBanco.Close;
  QryBanco.Open;
end;

end.
