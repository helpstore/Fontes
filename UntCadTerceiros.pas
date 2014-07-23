unit UntCadTerceiros;

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
  cxDBLookupComboBox, cxCalc;

type
  TFrmCadTerceiro = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListCOM_PRAZO: TFloatField;
    dtListCOM_VISTA: TFloatField;
    dtListNOME: TIBStringField;
    dtListPESSOA_FJ: TIntegerField;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditCOM_PRAZO: TFloatField;
    dtEditCOM_VISTA: TFloatField;
    dtEditNOME: TIBStringField;
    dtEditPESSOA_FJ: TIntegerField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    dsPessoasFJ: TDataSource;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel4: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel5: TcxLabel;
    QryPessoa: TIBQuery;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COM_PRAZO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COM_VISTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn;
    QryPessoaCNPJ: TIBStringField;
    QryPessoaCODIGO: TIntegerField;
    QryPessoaREGIAO: TIntegerField;
    QryPessoaNOME_RAZAO: TIBStringField;
    QryPessoaFANTASIA: TIBStringField;
    QryPessoaATIVIDADE: TIntegerField;
    QryPessoaENDERECO: TIntegerField;
    QryPessoaNUMERO: TIBStringField;
    QryPessoaCOMPLEMENTO: TIBStringField;
    QryPessoaBAIRRO: TIntegerField;
    QryPessoaCIDADE: TIntegerField;
    QryPessoaUF: TIBStringField;
    QryPessoaCEP: TIBStringField;
    QryPessoaFONE: TIBStringField;
    QryPessoaFAX: TIBStringField;
    QryPessoaCELULAR: TIBStringField;
    QryPessoaPESSOA: TIBStringField;
    QryPessoaCPF_CGC: TIBStringField;
    QryPessoaRG_IE: TIBStringField;
    QryPessoaCONTATO: TIBStringField;
    QryPessoaDT_NASCIMENTO: TDateTimeField;
    QryPessoaDT_CADASTRO: TDateTimeField;
    QryPessoaEMAIL: TIBStringField;
    QryPessoaOBS: TBlobField;
    QryPessoaINSC_MUNIC: TIBStringField;
    QryPessoaCONVENIO: TIntegerField;
    QryPessoaEMISSOR: TIBStringField;
    QryPessoaORDEM: TIntegerField;
    QryPessoaID_CLIENTE: TIntegerField;
    QryPessoaMAP_LAT: TIBStringField;
    QryPessoaMAP_LONG: TIBStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadTerceiro: TFrmCadTerceiro;

implementation

{$R *.dfm}

procedure TFrmCadTerceiro.FormShow(Sender: TObject);
begin
  inherited;
  AbreDataSet(QryPessoa);
end;

end.
