unit UntCadGrupos;

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
  cxPC, cxMaskEdit, cxDropDownEdit, cxCalc, cxMemo;

type
  TFrmCadGrupos = class(TfrmCadPadraoMaster)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListBASE: TSmallintField;
    dtListMINIMO: TSmallintField;
    dtListMAXIMO: TSmallintField;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroNOME: TcxGridDBBandedColumn;
    TVRegistroBASE: TcxGridDBBandedColumn;
    TVRegistroMINIMO: TcxGridDBBandedColumn;
    TVRegistroMAXIMO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditBASE: TSmallintField;
    dtEditMINIMO: TSmallintField;
    dtEditMAXIMO: TSmallintField;
    cxLabel10: TcxLabel;
    edtSerie: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel13: TcxLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1GRUPO: TIntegerField;
    dtListDet1SUBGRUPO: TIntegerField;
    dtListDet1NOME: TIBStringField;
    dtListDet1DESCONTO_MAX: TFloatField;
    dtListDet1DIGITA_PRC: TIBStringField;
    dtListDet1COMPRAS_C: TIntegerField;
    dtListDet1COMPRAS_D: TIntegerField;
    dtListDet1TRANSFERENCIA_C: TIntegerField;
    dtListDet1TRANSFERENCIA_D: TIntegerField;
    dtListDet1VENDAS_C: TIntegerField;
    dtListDet1VENDAS_D: TIntegerField;
    dtListDet1ESTOQUE: TIntegerField;
    dtListDet1ESTOQUE_INI: TIntegerField;
    dtListDet1ESTOQUE_FIM: TIntegerField;
    dtListDet1OBS: TMemoField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1GRUPO: TcxGridDBBandedColumn;
    TVDet1SUBGRUPO: TcxGridDBBandedColumn;
    TVDet1NOME: TcxGridDBBandedColumn;
    TVDet1DESCONTO_MAX: TcxGridDBBandedColumn;
    TVDet1DIGITA_PRC: TcxGridDBBandedColumn;
    TVDet1COMPRAS_C: TcxGridDBBandedColumn;
    TVDet1COMPRAS_D: TcxGridDBBandedColumn;
    TVDet1TRANSFERENCIA_C: TcxGridDBBandedColumn;
    TVDet1TRANSFERENCIA_D: TcxGridDBBandedColumn;
    TVDet1VENDAS_C: TcxGridDBBandedColumn;
    TVDet1VENDAS_D: TcxGridDBBandedColumn;
    TVDet1ESTOQUE: TcxGridDBBandedColumn;
    TVDet1ESTOQUE_INI: TcxGridDBBandedColumn;
    TVDet1ESTOQUE_FIM: TcxGridDBBandedColumn;
    TVDet1OBS: TcxGridDBBandedColumn;
    cxLabel14: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxDBMemo1: TcxDBMemo;
    cxLabel16: TcxLabel;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1GRUPO: TIntegerField;
    dtEditDet1SUBGRUPO: TIntegerField;
    dtEditDet1NOME: TIBStringField;
    dtEditDet1DESCONTO_MAX: TFloatField;
    dtEditDet1DIGITA_PRC: TIBStringField;
    dtEditDet1COMPRAS_C: TIntegerField;
    dtEditDet1COMPRAS_D: TIntegerField;
    dtEditDet1TRANSFERENCIA_C: TIntegerField;
    dtEditDet1TRANSFERENCIA_D: TIntegerField;
    dtEditDet1VENDAS_C: TIntegerField;
    dtEditDet1VENDAS_D: TIntegerField;
    dtEditDet1ESTOQUE: TIntegerField;
    dtEditDet1ESTOQUE_INI: TIntegerField;
    dtEditDet1ESTOQUE_FIM: TIntegerField;
    dtEditDet1OBS: TMemoField;
    procedure dtEditDet1AfterInsert(DataSet: TDataSet);
    procedure dtEditDet1BeforePost(DataSet: TDataSet);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadGrupos: TFrmCadGrupos;

implementation

{$R *.dfm}

procedure TFrmCadGrupos.dtEditDet1AfterInsert(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1CNPJ.Value       := DMApp.Cnpj;
  dtEditDet1GRUPO.Value      := dtEditCODIGO.Value;
  dtEditDet1SUBGRUPO.Value   := DMApp.GerarCodigoSubGrupo(DMApp.Cnpj, dtEditCODIGO.Value);
end;

procedure TFrmCadGrupos.dtEditDet1BeforePost(DataSet: TDataSet);
begin
  inherited;
  If dtEditDet1.State = dsInsert Then
     dtEditDet1SUBGRUPO.Value := DMApp.GerarCodigoSubGrupo(DMApp.Cnpj, dtEditDet1GRUPO.Value);
end;

procedure TFrmCadGrupos.dtEditDet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1DIGITA_PRC.Value   := 'N';
  dtEditDet1DESCONTO_MAX.Value := 0  ;
end;

end.
