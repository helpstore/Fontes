unit untCadVendedor2;

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
  dxSkinsdxBarPainter, cxIntlBase, cxintl, cxPropertiesStore, ACBrBase,
  ACBrEnterTab, cxGridCustomPopupMenu, cxGridPopupMenu, dxBarDBNav,
  ImgList, ActnList, dxBar, cxClasses, IBQuery, IBCustomDataSet, cxLabel,
  cxTextEdit, cxDBEdit, cxGridDBTableView, ExtCtrls, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGrid, cxPC,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxButtonEdit, cxMaskEdit, cxCalc, dxmdaset;

type
  TfrmCadVendedor2 = class(TfrmCadPadraoMaster)
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBCalcEdit1: TcxDBCalcEdit;
    btnLogradouro: TcxButtonEdit;
    aTfrmCadPessoas: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    edtNome: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListNOME: TIBStringField;
    dtListCOM_VISTA: TFloatField;
    dtListCOM_PRAZO: TFloatField;
    dtListPESSOA_FJ: TIntegerField;
    dtListSENHA: TIBStringField;
    dtListATIVO: TIBStringField;
    dtListCOD_PERFIL: TIntegerField;
    dtListCOD_PERFIL_PAGTO: TIntegerField;
    dtListNOME_PESSOA: TIBStringField;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroNOME: TcxGridDBBandedColumn;
    TVRegistroCOM_VISTA: TcxGridDBBandedColumn;
    TVRegistroCOM_PRAZO: TcxGridDBBandedColumn;
    TVRegistroPESSOA_FJ: TcxGridDBBandedColumn;
    TVRegistroSENHA: TcxGridDBBandedColumn;
    TVRegistroATIVO: TcxGridDBBandedColumn;
    TVRegistroCOD_PERFIL: TcxGridDBBandedColumn;
    TVRegistroCOD_PERFIL_PAGTO: TcxGridDBBandedColumn;
    TVRegistroNOME_PESSOA: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME: TIBStringField;
    dtEditCOM_VISTA: TFloatField;
    dtEditCOM_PRAZO: TFloatField;
    dtEditPESSOA_FJ: TIntegerField;
    dtEditSENHA: TIBStringField;
    dtEditATIVO: TIBStringField;
    dtEditCOD_PERFIL: TIntegerField;
    dtEditCOD_PERFIL_PAGTO: TIntegerField;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1PRAZO: TFloatField;
    dtListDet1VALOR: TFloatField;
    dtListDet1VISTA: TFloatField;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1PRAZO: TFloatField;
    dtEditDet1VALOR: TFloatField;
    dtEditDet1VISTA: TFloatField;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxLabel14: TcxLabel;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxLabel15: TcxLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxLabel16: TcxLabel;
    dtEditDet1ID: TIntegerField;
    dtListDet1ID: TIntegerField;
    dsPessoa: TDataSource;
    QryPessoa: TIBQuery;
    QryPessoaCODIGO: TIntegerField;
    QryPessoaNOME_RAZAO: TIBStringField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1VALOR: TcxGridDBBandedColumn;
    TVDet1PRAZO: TcxGridDBBandedColumn;
    TVDet1VISTA: TcxGridDBBandedColumn;
    TVDet1ID: TcxGridDBBandedColumn;
    procedure dtEditDet1BeforePost(DataSet: TDataSet);
    procedure cxDBCalcEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnLogradouroClick(Sender: TObject);
    procedure dtEditBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadVendedor2: TfrmCadVendedor2;

implementation

uses untCadPessoas;

{$R *.dfm}

procedure TfrmCadVendedor2.dtEditDet1BeforePost(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1CODIGO.Value := dtEditCODIGO.value;
end;

procedure TfrmCadVendedor2.cxDBCalcEdit5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = 13 then
    edtCodDet1.SetFocus;

end;

procedure TfrmCadVendedor2.btnLogradouroClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadPessoas,dtEdit,'PESSOA_FJ',QryPessoa);
end;

procedure TfrmCadVendedor2.dtEditBeforePost(DataSet: TDataSet);
begin
  inherited;

  if dtEditPESSOA_FJ.asinteger = 0 then
  begin
    Application.MessageBox('Impossível salvar alterações. Campo Pessoa, não preenchido.','Aviso',mb_iconerror + mb_ok);
    aTfrmCadPessoas.setfocus;
    abort;
    exit;
  end;
end;

initialization
 RegisterClass(TfrmCadVendedor2);

end.
