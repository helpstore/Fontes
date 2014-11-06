unit UntCadContratoCopias;

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
  cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, Menus, StdCtrls, cxButtons, cxCalendar, cxCalc,
  cxSpinEdit, cxCheckBox, cxMemo;

type
  TfrmCadContratoCopias = class(TfrmCadPadraoMaster)
    dtListCODIGO: TIntegerField;
    dtListCLIENTE: TIBStringField;
    dtListTIPO_CONTRATO: TIBStringField;
    dtListNUM_CONTRATO: TIBStringField;
    dtListDT_INICIO: TDateTimeField;
    dtListDT_FIM: TDateTimeField;
    dtListATIVO: TIBStringField;
    dtListINFORMACOES: TMemoField;
    dtListVALOR_CONTRATO: TFloatField;
    dtListFRANQUIA_COPIAS: TIntegerField;
    dtListVALOR_COPIA_EXCEDENTE: TFloatField;
    dtListDATA: TDateField;
    dtListGERA_FATURAMENTO: TIBStringField;
    dtListGERA_LEITURA: TIBStringField;
    dtListDIA_BASE: TSmallintField;
    dtListGERA_MENSALIDADE: TIBStringField;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroCLIENTE: TcxGridDBBandedColumn;
    TVRegistroTIPO_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroNUM_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroDT_INICIO: TcxGridDBBandedColumn;
    TVRegistroDT_FIM: TcxGridDBBandedColumn;
    TVRegistroATIVO: TcxGridDBBandedColumn;
    TVRegistroINFORMACOES: TcxGridDBBandedColumn;
    TVRegistroVALOR_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroFRANQUIA_COPIAS: TcxGridDBBandedColumn;
    TVRegistroVALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn;
    TVRegistroDATA: TcxGridDBBandedColumn;
    TVRegistroGERA_FATURAMENTO: TcxGridDBBandedColumn;
    TVRegistroGERA_LEITURA: TcxGridDBBandedColumn;
    TVRegistroDIA_BASE: TcxGridDBBandedColumn;
    TVRegistroGERA_MENSALIDADE: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditCOD_CLIENTE: TIntegerField;
    dtEditCOD_CONTRATO: TIntegerField;
    dtEditNUM_CONTRATO: TIBStringField;
    dtEditDT_INICIO: TDateTimeField;
    dtEditDT_FIM: TDateTimeField;
    dtEditATIVO: TIBStringField;
    dtEditINFORMACOES: TMemoField;
    dtEditVALOR_CONTRATO: TFloatField;
    dtEditVALOR_COPIA_EXCEDENTE: TFloatField;
    dtEditDATA: TDateField;
    dtEditGERA_FATURAMENTO: TIBStringField;
    dtEditGERA_LEITURA: TIBStringField;
    dtEditFRANQUIA_COPIAS: TIntegerField;
    dtEditDIA_BASE: TSmallintField;
    dtEditGERA_MENSALIDADE: TIBStringField;
    cxLabel10: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    QryCliente: TIBQuery;
    dsCliente: TDataSource;
    QryClienteCODIGO: TIntegerField;
    QryClienteNOME_RAZAO: TIBStringField;
    QryClienteTECNICO: TIntegerField;
    QryClienteEMAIL: TIBStringField;
    QryClienteCIDADE: TIBStringField;
    cxDBDateEdit1: TcxDBDateEdit;
    btnDefeitoReclamado: TcxButton;
    cxLabel12: TcxLabel;
    cxButton1: TcxButton;
    cxLabel13: TcxLabel;
    QryTipoContrato: TIBQuery;
    dsTipoContrato: TDataSource;
    QryTipoContratoCNPJ: TIBStringField;
    QryTipoContratoCODIGO: TIntegerField;
    QryTipoContratoNOME: TIBStringField;
    cxLabel14: TcxLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel15: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    CmbCliente: TcxDBLookupComboBox;
    cxLabel18: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxLabel19: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBMemo1: TcxDBMemo;
    cxLabel20: TcxLabel;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1COD_GRUPO: TIntegerField;
    dtListDet1DATA: TDateTimeField;
    dtListDet1ATIVO: TIBStringField;
    dtListDet1PESSOA_FJ: TIntegerField;
    dtListDet1NOME_RAZAO: TIBStringField;
    dtListDet1CPF_CGC: TIBStringField;
    dtListDet1CIDADE: TIBStringField;
    dtListDet1CDD_UF: TIBStringField;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1COD_GRUPO: TcxGridDBBandedColumn;
    TVDet1DATA: TcxGridDBBandedColumn;
    TVDet1ATIVO: TcxGridDBBandedColumn;
    TVDet1PESSOA_FJ: TcxGridDBBandedColumn;
    TVDet1NOME_RAZAO: TcxGridDBBandedColumn;
    TVDet1CPF_CGC: TcxGridDBBandedColumn;
    TVDet1CIDADE: TcxGridDBBandedColumn;
    TVDet1CDD_UF: TcxGridDBBandedColumn;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1COD_GRUPO: TIntegerField;
    dtEditDet1DATA: TDateTimeField;
    dtEditDet1ATIVO: TIBStringField;
    dtEditDet1PESSOA_FJ: TIntegerField;
    cxLabel21: TcxLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel23: TcxLabel;
    cxButton2: TcxButton;
    cxDBCheckBox5: TcxDBCheckBox;
    QryDet1Cliente: TIBQuery;
    dsDet1Cliente: TDataSource;
    dtListDet1CNPJ: TIBStringField;
    dtListCNPJ: TIBStringField;
    QryDet1ClienteCODIGO: TIntegerField;
    QryDet1ClienteNOME_RAZAO: TIBStringField;
    QryDet1ClienteTECNICO: TIntegerField;
    QryDet1ClienteEMAIL: TIBStringField;
    QryDet1ClienteCIDADE: TIBStringField;
    procedure dtEditBeforePost(DataSet: TDataSet);
    procedure dtEditNewRecord(DataSet: TDataSet);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContratoCopias: TfrmCadContratoCopias;

implementation

uses Application_DM;

{$R *.dfm}

procedure TfrmCadContratoCopias.dtEditBeforePost(DataSet: TDataSet);
begin
  inherited;

  if dtEditCOD_CLIENTE.asinteger = 0 then
  begin
    Application.MessageBox('Impossível salvar. Campo Cliente não preenchido.','Aviso',mb_iconerror + mb_ok);
    CmbCliente.setfocus;
    abort;
    exit;
  end;

end;

procedure TfrmCadContratoCopias.dtEditNewRecord(DataSet: TDataSet);
var
  DataHora : TDateTime;
begin
  inherited;
  DataHora := dmApp.DataServidor;
  dtEditDATA.Value := DataHora;
  dtEditDT_INICIO.Value := DataHora;
  dtEditATIVO.value := 'S';
end;

procedure TfrmCadContratoCopias.dtEditDet1NewRecord(DataSet: TDataSet);
begin
  inherited;
  dtEditDet1DATA.Value := dmApp.DataServidor;
  dtEditDet1COD_GRUPO.value := dtEditCODIGO.value;
  dtEditDet1ATIVO.value := 'S';
end;

end.
