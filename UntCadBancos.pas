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
  cxPC, cxCheckBox, ppParameter, ppBands, ppCache, ppClass, ppProd,
  ppReport, ppDB, ppRelatv, ppDBPipe, ppComm, ppEndUsr;

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
    dtEditCODIGO: TIBStringField;
    dtEditNOME: TIBStringField;
    dtEditBOLETO: TIntegerField;
    dtEditGERA_ARQUIVO_MAGNETICO: TIBStringField;
    dtEditPADRAO_BOLETO: TIBStringField;
    dtEditCONFIG_CH: TBlobField;
    dtEditCONFIG_CHEQUE: TMemoField;
    ActConfigCheque: TAction;
    Designer: TppDesigner;
    ppLayout: TppDBPipeline;
    ppLayoutppField1: TppField;
    ppLayoutppField2: TppField;
    ppLayoutppField3: TppField;
    ppLayoutppField4: TppField;
    ppLayoutppField5: TppField;
    ppLayoutppField6: TppField;
    ppLayoutppField7: TppField;
    ppLayoutppField8: TppField;
    ppLayoutppField9: TppField;
    ppLayoutppField10: TppField;
    ppLayoutppField11: TppField;
    rptConfigCheque: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppParameterList1: TppParameterList;
    dtEditValor: TFloatField;
    dtEditExtenso: TStringField;
    dtEditNominal: TStringField;
    dtEditCidade: TStringField;
    procedure ActConfigChequeExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadBancos: TfrmCadBancos;

implementation

{$R *.dfm}

procedure TfrmCadBancos.ActConfigChequeExecute(Sender: TObject);
begin
  inherited;
  rptConfigCheque.Template.DatabaseSettings.name := dtEditCODIGO.asstring;
  rptConfigCheque.Template.LoadFromDatabase;
  Designer.Show;
  if not(dtEdit.state in [dsedit,dsedit]) then
    dtEdit.Edit;
end;

initialization
 RegisterClass(TfrmCadBancos);

end.
