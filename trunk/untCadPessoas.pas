unit untCadPessoas;

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
  cxGridDBBandedTableView, cxGrid, cxPC, cxButtonEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMemo, cxMaskEdit,
  cxGroupBox, cxRadioGroup, StdCtrls;

type
  TfrmCadPessoas = class(TfrmCadPadrao)
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    edtCPF: TcxDBMaskEdit;
    lblCPF: TcxLabel;
    edtRG: TcxDBTextEdit;
    lblRG: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel7: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cbLogradouro: TcxDBLookupComboBox;
    cxLabel9: TcxLabel;
    btnLogradouro: TcxButtonEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxLabel13: TcxLabel;
    btnBairro: TcxButtonEdit;
    cbBairro: TcxDBLookupComboBox;
    cxLabel11: TcxLabel;
    btnCidade: TcxButtonEdit;
    cbCidade: TcxDBLookupComboBox;
    cxLabel14: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListREGIAO: TIntegerField;
    dtListNOME_RAZAO: TIBStringField;
    dtListFANTASIA: TIBStringField;
    dtListATIVIDADE: TIntegerField;
    dtListENDERECO: TIntegerField;
    dtListNUMERO: TIBStringField;
    dtListCOMPLEMENTO: TIBStringField;
    dtListBAIRRO: TIntegerField;
    dtListCIDADE: TIntegerField;
    dtListUF: TIBStringField;
    dtListCEP: TIBStringField;
    dtListFONE: TIBStringField;
    dtListFAX: TIBStringField;
    dtListCELULAR: TIBStringField;
    dtListPESSOA: TIBStringField;
    dtListCPF_CGC: TIBStringField;
    dtListRG_IE: TIBStringField;
    dtListCONTATO: TIBStringField;
    dtListDT_NASCIMENTO: TDateTimeField;
    dtListDT_CADASTRO: TDateTimeField;
    dtListEMAIL: TIBStringField;
    dtListOBS: TBlobField;
    dtListINSC_MUNIC: TIBStringField;
    dtListCONVENIO: TIntegerField;
    dtListEMISSOR: TIBStringField;
    dtListORDEM: TIntegerField;
    dtListMAP_LAT: TIBStringField;
    dtListMAP_LONG: TIBStringField;
    dtListNOME_ATIVIDADE: TIBStringField;
    dtListNOME_BAIRRO: TIBStringField;
    dtListNOME_LOGRADOURO: TIBStringField;
    dtListNOME_CIDADE: TIBStringField;
    dtListNOME_REGIAO: TIBStringField;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn;
    GridDBBandedTableView2REGIAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_RAZAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2FANTASIA: TcxGridDBBandedColumn;
    GridDBBandedTableView2ATIVIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2ENDERECO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NUMERO: TcxGridDBBandedColumn;
    GridDBBandedTableView2COMPLEMENTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2BAIRRO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2UF: TcxGridDBBandedColumn;
    GridDBBandedTableView2CEP: TcxGridDBBandedColumn;
    GridDBBandedTableView2FONE: TcxGridDBBandedColumn;
    GridDBBandedTableView2FAX: TcxGridDBBandedColumn;
    GridDBBandedTableView2CELULAR: TcxGridDBBandedColumn;
    GridDBBandedTableView2PESSOA: TcxGridDBBandedColumn;
    GridDBBandedTableView2CPF_CGC: TcxGridDBBandedColumn;
    GridDBBandedTableView2RG_IE: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONTATO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DT_NASCIMENTO: TcxGridDBBandedColumn;
    GridDBBandedTableView2DT_CADASTRO: TcxGridDBBandedColumn;
    GridDBBandedTableView2EMAIL: TcxGridDBBandedColumn;
    GridDBBandedTableView2OBS: TcxGridDBBandedColumn;
    GridDBBandedTableView2INSC_MUNIC: TcxGridDBBandedColumn;
    GridDBBandedTableView2CONVENIO: TcxGridDBBandedColumn;
    GridDBBandedTableView2EMISSOR: TcxGridDBBandedColumn;
    GridDBBandedTableView2ORDEM: TcxGridDBBandedColumn;
    GridDBBandedTableView2MAP_LAT: TcxGridDBBandedColumn;
    GridDBBandedTableView2MAP_LONG: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_ATIVIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_BAIRRO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_LOGRADOURO: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_CIDADE: TcxGridDBBandedColumn;
    GridDBBandedTableView2NOME_REGIAO: TcxGridDBBandedColumn;
    dtEditCNPJ: TIBStringField;
    dtEditCODIGO: TIntegerField;
    dtEditNOME_RAZAO: TIBStringField;
    dtEditFANTASIA: TIBStringField;
    dtEditATIVIDADE: TIntegerField;
    dtEditENDERECO: TIntegerField;
    dtEditNUMERO: TIBStringField;
    dtEditCOMPLEMENTO: TIBStringField;
    dtEditBAIRRO: TIntegerField;
    dtEditCIDADE: TIntegerField;
    dtEditUF: TIBStringField;
    dtEditCEP: TIBStringField;
    dtEditFONE: TIBStringField;
    dtEditFAX: TIBStringField;
    dtEditCELULAR: TIBStringField;
    dtEditPESSOA: TIBStringField;
    dtEditCPF_CGC: TIBStringField;
    dtEditRG_IE: TIBStringField;
    dtEditCONTATO: TIBStringField;
    dtEditDT_NASCIMENTO: TDateTimeField;
    dtEditDT_CADASTRO: TDateTimeField;
    dtEditEMAIL: TIBStringField;
    dtEditOBS: TBlobField;
    dtEditINSC_MUNIC: TIBStringField;
    dtEditCONVENIO: TIntegerField;
    dtEditEMISSOR: TIBStringField;
    dtEditCONTATO1: TIBStringField;
    dtEditCONTATO2: TIBStringField;
    dtEditCONTATO3: TIBStringField;
    dtEditORDEM: TIntegerField;
    dtEditREGIAO: TIntegerField;
    dtEditNFE_EXP: TIBStringField;
    dtEditSELECIONADO: TIBStringField;
    dtEditCODIGO_2: TIntegerField;
    dtEditMAP_LAT: TIBStringField;
    dtEditMAP_LONG: TIBStringField;
    btnRegiao: TcxButtonEdit;
    cbRegiao: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    cbAtividade: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    btnAtividade: TcxButtonEdit;
    cbConvenio: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    dsBairros: TDataSource;
    QryBairro: TIBQuery;
    dsCidades: TDataSource;
    QryCidades: TIBQuery;
    QryCidadesCNPJ: TIBStringField;
    QryCidadesCODIGO: TIntegerField;
    QryCidadesNOME: TIBStringField;
    QryCidadesUF: TIBStringField;
    QryCidadesCOD_IBGE: TIBStringField;
    QryCidadesCOD_IAGRO: TIntegerField;
    dsRegiao: TDataSource;
    qryRegiao: TIBQuery;
    qryRegiaoCNPJ: TIBStringField;
    qryRegiaoCODIGO: TIntegerField;
    qryRegiaoNOME: TIBStringField;
    qryRegiaoVENDEDOR: TIntegerField;
    qryRegiaoTERCEIRO: TIntegerField;
    qryRegiaoDESCRICAO: TIBStringField;
    qryRegiaoTECNICO: TIntegerField;
    dsAtividade: TDataSource;
    qryAtividade: TIBQuery;
    qryAtividadeCNPJ: TIBStringField;
    qryAtividadeCODIGO: TIntegerField;
    qryAtividadeNOME: TIBStringField;
    QryConvenio: TIBQuery;
    dsConvenio: TDataSource;
    QryConvenioCNPJ: TIBStringField;
    QryConvenioNOME_RAZAO: TIBStringField;
    qryLogradouro: TIBQuery;
    dsLogradouro: TDataSource;
    qryLogradouroCNPJ: TIBStringField;
    qryLogradouroCODIGO: TIntegerField;
    qryLogradouroNOME: TIBStringField;
    QryBairroCNPJ: TIBStringField;
    QryBairroCODIGO: TIntegerField;
    QryBairroNOME: TIBStringField;
    dtEditFJ: TIBStringField;
    QryConvenioCODIGO: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btnLogradouroClick(Sender: TObject);
    procedure btnBairroClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure btnAtividadeClick(Sender: TObject);
    procedure dtEditBeforePost(DataSet: TDataSet);
    procedure ActCadLookupExecute(Sender: TObject);
    procedure dtEditPESSOAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure dtEditPESSOAValidate(Sender: TField);
    procedure pgcCadastroChange(Sender: TObject);
    procedure dtEditAfterInsert(DataSet: TDataSet);
    procedure dtEditAfterEdit(DataSet: TDataSet);
    procedure btnRegiaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaPessoa(tipo:string);
  public
    { Public declarations }
  end;

var
  frmCadPessoas: TfrmCadPessoas;

implementation

uses untCadLogradouro, untCadBairros, untCadCidades, untCadAtividades,
  Funcoes, untCadRegioes;

{$R *.dfm}

procedure TfrmCadPessoas.FormShow(Sender: TObject);
begin
  inherited;
  AbreDataSet(TDataSet(QryBairro));
  AbreDataSet(TDataSet(QryCidades));
  AbreDataSet(TDataSet(QryRegiao));
  AbreDataSet(TDataSet(QryAtividade));
  AbreDataSet(TDataSet(QryConvenio));
  AbreDataSet(TDataSet(QryLogradouro));

end;

procedure TfrmCadPessoas.btnLogradouroClick(Sender: TObject);
begin
  inherited;
  frmCadLogradouro := TfrmCadLogradouro.Create(Self);
  frmCadLogradouro.ShowMODAL ;

  AbreDataSet(TDataSet(QryLogradouro));

  dtEditENDERECO.Value := frmCadLogradouro.Codigo;

  frmCadLogradouro.Free;
  frmCadLogradouro := nil;
end;

procedure TfrmCadPessoas.btnBairroClick(Sender: TObject);
begin
  inherited;
  frmCadBairros := TfrmCadBairros.Create(Self);
  frmCadBairros.ShowMODAL ;

  AbreDataSet(TDataSet(QryBairro));

  dtEditBAIRRO.Value := frmCadBairros.Codigo;

  frmCadBairros.Free;
  frmCadBairros := nil;
end;

procedure TfrmCadPessoas.btnCidadeClick(Sender: TObject);
begin
  inherited;
  frmCadCidades := TfrmCadCidades.Create(Self);
  frmCadCidades.ShowMODAL ;

  AbreDataSet(TDataSet(QryCidades));

  dtEditCIDADE.Value := frmCadCidades.Codigo;

  frmCadCidades.Free;
  frmCadCidades := nil;
end;

procedure TfrmCadPessoas.btnAtividadeClick(Sender: TObject);
begin
  inherited;
  frmCadAtividades := TfrmCadAtividades.Create(Self);
  frmCadAtividades.ShowMODAL ;

  AbreDataSet(TDataSet(qryAtividade));

  dtEditATIVIDADE.Value := frmCadAtividades.Codigo;

  frmCadAtividades.Free;
  frmCadAtividades := nil;
end;

procedure TfrmCadPessoas.VerificaPessoa(tipo: string);
begin
   if (tipo = 'J') then
     edtCPF.Properties.EditMask := '00.000.000/0000-00;0;_'
   else
     edtCPF.Properties.EditMask := '000\.000\.000\-00;0;_';
end;

procedure TfrmCadPessoas.dtEditBeforePost(DataSet: TDataSet);
var
  cpf : string;
begin

  inherited;
  if (dtEditPESSOA.value = 'J') then
  begin
    cpf := StringReplace(dtEditCPF_CGC.AsString,'.','',[rfReplaceAll]);
    cpf := StringReplace(dtEditCPF_CGC.AsString,'.','/',[rfReplaceAll]);
    cpf := StringReplace(cpf,'-','',[rfReplaceAll]);

    if (cpf = '') then
      exit;

    if (not CGC_Valido(cpf)) then
       Application.MessageBox('Campo CNPJ Inválido','Atenção',mb_ok + MB_ICONERROR);
 end
 else
 begin
    cpf := StringReplace(dtEditCPF_CGC.AsString,'.','',[rfReplaceAll]);
    cpf := StringReplace(cpf,'-','',[rfReplaceAll]);

    if (cpf = '') then
      exit;

    if (not CPF_Valido(cpf)) then
       Application.MessageBox('Campo CPF Inválido','Atenção',mb_ok + MB_ICONERROR);
 end
end;

procedure TfrmCadPessoas.ActCadLookupExecute(Sender: TObject);
begin
  inherited;
  if cbLogradouro.Focused then
    btnLogradouro.OnClick(Self)
  else if cbBairro.Focused then
    btnBairro.OnClick(Self)
  else if cbCidade.Focused then
    btnCidade.OnClick(Self)
 else if cbRegiao.Focused then
    btnRegiao.OnClick(Self)
 else if cbAtividade.Focused then
    btnAtividade.OnClick(Self);
end;

procedure TfrmCadPessoas.dtEditPESSOAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Trim(Sender.Value) = 'M' then
    Text := 'F';
end;

procedure TfrmCadPessoas.dtEditPESSOAValidate(Sender: TField);
begin
  inherited;
  VerificaPessoa(dtEditPESSOA.asString);
end;

procedure TfrmCadPessoas.pgcCadastroChange(Sender: TObject);
begin
  inherited;
  if pgcCadastro.ActivePageIndex = 1 then
    VerificaPessoa(dtEditPESSOA.asString);
end;

procedure TfrmCadPessoas.dtEditAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dtEditPESSOA.value := 'F';
end;

procedure TfrmCadPessoas.dtEditAfterEdit(DataSet: TDataSet);
begin
  inherited;
  //necessario para corrigir os cadastros antigos do 'manager'
  if dtEditPESSOA.value = 'M' then
     dtEditPESSOA.value := 'F';
end;

procedure TfrmCadPessoas.btnRegiaoClick(Sender: TObject);
begin
  inherited;
  frmCadRegiao := TfrmCadRegiao.Create(Self);
  frmCadRegiao.ShowMODAL ;

  AbreDataSet(TDataSet(qryRegiao));

  dtEditREGIAO.Value := frmCadRegiao.Codigo;

  frmCadRegiao.Free;
  frmCadRegiao := nil;
end;

end.
