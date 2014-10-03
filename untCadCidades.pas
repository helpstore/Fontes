unit untCadCidades;

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
  TfrmCadCidades = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListUF: TIBStringField;
    dtListCOD_IBGE: TIBStringField;
    dtListCOD_IAGRO: TIntegerField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2UF: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_IBGE: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_IAGRO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditUF: TIBStringField;
    dtEditCOD_IBGE: TIBStringField;
    dtEditCOD_IAGRO: TIntegerField;
    cbUF: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    QryUFs: TIBQuery;
    QryUFsSIGLA: TIBStringField;
    QryUFsNOME: TIBStringField;
    dsUFs: TDataSource;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    btnProduto: TcxButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure btnProdutoClick(Sender: TObject);
    procedure ActCadLookupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadCidades: TfrmCadCidades;

implementation

{$R *.dfm}

procedure TfrmCadCidades.FormShow(Sender: TObject);
begin
  inherited;
  qryUFs.Close;
  qryUFs.Open;
end;

procedure TfrmCadCidades.btnProdutoClick(Sender: TObject);
begin
  inherited;
{   FrmCadEstados := TFrmCadEstados.Create(Self);
   FrmCadEstados.ShowMODAL ;;

  QryUFs.Close;
  QryUFs.Open;

  dtEditSTATUS.Value := frmCadStatus.Codigo;

  frmCadStatus.Free;
  frmCadStatus := nil;}
end;

procedure TfrmCadCidades.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if cbUF.Focused then
    cbUF.OnClick(cbUF);
end;


initialization
 RegisterClass(TfrmCadCidades);

end.
