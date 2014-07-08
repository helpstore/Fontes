unit untCadPaises;

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
  cxGridDBBandedTableView, cxGrid, cxPC, cxButtonEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox;

type
  TfrmCadPaises = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListSISCOMEX: TIBStringField;
    dtListNACIONALIDADE: TIBStringField;
    dtListCOD_MOEDA: TIntegerField;
    dtListSIGLA: TIBStringField;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditSISCOMEX: TIBStringField;
    dtEditNACIONALIDADE: TIBStringField;
    dtEditCOD_MOEDA: TIntegerField;
    dtEditSIGLA: TIBStringField;
    dtListMOEDA: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2SISCOMEX: TcxGridDBBandedColumn;
    GridDBBandedTableView2NACIONALIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_MOEDA: TcxGridDBBandedColumn;
    GridDBBandedTableView2SIGLA: TcxGridDBBandedColumn;
    GridDBBandedTableView2MOEDA: TcxGridDBBandedColumn;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cbMoeda: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    btnMoeda: TcxButtonEdit;
    dsMoeda: TDataSource;
    qryMoedas: TIBQuery;
    qryMoedasCODIGO: TIntegerField;
    qryMoedasSIGLA: TIBStringField;
    qryMoedasNOME: TIBStringField;
    qryMoedasUTILIZA_INDEXADOR: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure btnMoedaClick(Sender: TObject);
    procedure ActCadLookupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadPaises: TfrmCadPaises;

implementation

uses untCadMoedas;

{$R *.dfm}

procedure TfrmCadPaises.FormShow(Sender: TObject);
begin
  inherited;
  qryMoedas.Close;
  qryMoedas.Open;
end;

procedure TfrmCadPaises.btnMoedaClick(Sender: TObject);
begin
  inherited;
  frmCadMoedas := TfrmCadMoedas.Create(Self);
  frmCadMoedas.ShowMODAL ;

  qryMoedas.Close;
  qryMoedas.Open;

  dtEditCOD_MOEDA.Value := frmCadMoedas.Codigo;

  frmCadMoedas.Free;
  frmCadMoedas := nil;
end;

procedure TfrmCadPaises.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if cbMoeda.Focused then
     btnMoeda.OnClick(btnMoeda);
end;

end.
