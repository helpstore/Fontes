unit UntCadTecnicos;

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
  cxDBLookupComboBox, cxCalc, cxMemo, cxButtonEdit;

type
  TfrmCadTecnicos = class(TfrmCadPadrao)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListCOM_PRAZO: TFloatField;
    dtListCOM_VISTA: TFloatField;
    dtListNOME: TIBStringField;
    dtListPESSOA_FJ: TIntegerField;
    dtListSENHA: TIBStringField;
    dtListCREA: TIBStringField;
    dtListCTPS: TIBStringField;
    dtListEMAIL: TIBStringField;
    dtListCOD_USUARIO: TIntegerField;
    dtListCUSTO_HORA: TFloatField;
    dtListASSINATURA: TMemoField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COM_PRAZO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COM_VISTA: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME: TcxGridDBBandedColumn;
    GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2SENHA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CREA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CTPS: TcxGridDBBandedColumn;
    GridDBBandedTableView2EMAIL: TcxGridDBBandedColumn;
    GridDBBandedTableView2COD_USUARIO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CUSTO_HORA: TcxGridDBBandedColumn;
    GridDBBandedTableView2ASSINATURA: TcxGridDBBandedColumn;
    cbPessoa: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    QryPessoaFJ: TIBQuery;
    DsPessoaFJ: TDataSource;
    cxDBCalcEdit1: TcxDBCalcEdit;
    cxLabel6: TcxLabel;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditCOM_PRAZO: TFloatField;
    dtEditCOM_VISTA: TFloatField;
    dtEditNOME: TIBStringField;
    dtEditPESSOA_FJ: TIntegerField;
    dtEditSENHA: TIBStringField;
    dtEditCREA: TIBStringField;
    dtEditCTPS: TIBStringField;
    dtEditEMAIL: TIBStringField;
    dtEditCOD_USUARIO: TIntegerField;
    dtEditCUSTO_HORA: TFloatField;
    dtEditASSINATURA: TMemoField;
    cxTextEdit1: TcxTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBLookupComboBox2: TcxDBLookupComboBox;
    DsUsuario: TDataSource;
    QryUsuario: TIBQuery;
    QryUsuarioCODIGO: TIntegerField;
    QryUsuarioLOGIN: TIBStringField;
    QryUsuarioNOME: TIBStringField;
    QryUsuarioPERFIL: TIntegerField;
    QryUsuarioSENHA: TIBStringField;
    cxDBMemo1: TcxDBMemo;
    cxLabel13: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBCalcEdit2: TcxDBCalcEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel12: TcxLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    QryPessoaFJCNPJ: TIBStringField;
    QryPessoaFJCODIGO: TIntegerField;
    QryPessoaFJREGIAO: TIntegerField;
    QryPessoaFJNOME_RAZAO: TIBStringField;
    QryPessoaFJFANTASIA: TIBStringField;
    QryPessoaFJATIVIDADE: TIntegerField;
    QryPessoaFJENDERECO: TIntegerField;
    QryPessoaFJNUMERO: TIBStringField;
    QryPessoaFJCOMPLEMENTO: TIBStringField;
    QryPessoaFJBAIRRO: TIntegerField;
    QryPessoaFJCIDADE: TIntegerField;
    QryPessoaFJUF: TIBStringField;
    QryPessoaFJCEP: TIBStringField;
    QryPessoaFJFONE: TIBStringField;
    QryPessoaFJFAX: TIBStringField;
    QryPessoaFJCELULAR: TIBStringField;
    QryPessoaFJPESSOA: TIBStringField;
    QryPessoaFJCPF_CGC: TIBStringField;
    QryPessoaFJRG_IE: TIBStringField;
    QryPessoaFJCONTATO: TIBStringField;
    QryPessoaFJDT_NASCIMENTO: TDateTimeField;
    QryPessoaFJDT_CADASTRO: TDateTimeField;
    QryPessoaFJEMAIL: TIBStringField;
    QryPessoaFJOBS: TBlobField;
    QryPessoaFJINSC_MUNIC: TIBStringField;
    QryPessoaFJCONVENIO: TIntegerField;
    QryPessoaFJEMISSOR: TIBStringField;
    QryPessoaFJORDEM: TIntegerField;
    QryPessoaFJID_CLIENTE: TIntegerField;
    QryPessoaFJMAP_LAT: TIBStringField;
    QryPessoaFJMAP_LONG: TIBStringField;
    btnPessoa: TcxButtonEdit;
    procedure FormShow(Sender: TObject);
    procedure btnPessoaClick(Sender: TObject);
    procedure ActCadLookupExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadTecnicos: TfrmCadTecnicos;

implementation

uses untCadPessoas;

{$R *.dfm}

procedure TfrmCadTecnicos.FormShow(Sender: TObject);
begin
  inherited;
  QryPessoaFJ.Close;
  QryPessoaFJ.Open;

  QryUsuario.Close;
  QryUsuario.Open;
end;

procedure TfrmCadTecnicos.btnPessoaClick(Sender: TObject);
begin
  inherited;
  frmCadPessoas := TfrmCadPessoas.Create(Self);
  frmCadPessoas.ShowMODAL ;

  AbreDataSet(TDataSet(QryPessoaFJ));

  dtEditPESSOA_FJ.Value := frmCadPessoas.Codigo;

  frmCadPessoas.Free;
  frmCadPessoas := nil;
end;

procedure TfrmCadTecnicos.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if cbPessoa.Focused then
    btnPessoa.OnClick(Self)
end;

end.
