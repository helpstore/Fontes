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
  cxDBLookupComboBox, cxButtonEdit;

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
    cmbAplicacao: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    QryAplicacao: TIBQuery;
    dsQryAplicacao: TDataSource;
    QryAplicacaoCNPJ: TIBStringField;
    QryAplicacaoCODIGO: TIntegerField;
    QryAplicacaoNOME: TIBStringField;
    btnAplicacao: TcxButtonEdit;
    procedure ActCadLookupExecute(Sender: TObject);
    procedure btnAplicacaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadAplicacaoProduto: TfrmCadAplicacaoProduto;

implementation

uses UntCadAplicacao;

{$R *.dfm}

procedure TfrmCadAplicacaoProduto.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if cmbAplicacao.Focused then
    btnAplicacao.OnClick(self);
end;

procedure TfrmCadAplicacaoProduto.btnAplicacaoClick(Sender: TObject);
begin
  inherited;
  frmCadAplicacao := tFrmCadAplicacao.Create(Self);
  frmCadAplicacao.ShowModal;
  frmCadAplicacao.Release;
  frmCadAplicacao:= nil;
end;

end.
