unit untCadFornecedores;

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
  cxPC, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxMaskEdit, cxButtonEdit, cxGroupBox, cxCheckBox;

type
  TfrmCadFornecedores = class(TfrmCadPadrao)
    dtListNOME_RAZAO: TIBStringField;
    dtListCPF_CGC: TIBStringField;
    dtListCNPJ: TIBStringField;
    dtListVENDEDOR: TIBStringField;
    dtListFONE_VEN: TIBStringField;
    dtListFINANCEIRO: TIBStringField;
    dtListFONE_FIN: TIBStringField;
    dtListREPRESENTANTE: TIBStringField;
    dtListFONE_REP: TIBStringField;
    dtListBANCO_C1: TIBStringField;
    dtListAGENCIA_C1: TIBStringField;
    dtListCC_C1: TIBStringField;
    dtListBANCO_C2: TIBStringField;
    dtListAGENCIA_C2: TIBStringField;
    dtListCC_C2: TIBStringField;
    dtListFORMA_PAGTO: TIntegerField;
    dtListCONTABILIDADE: TIntegerField;
    dtListSINCRONIZA_FILIAIS: TIBStringField;
    GridDBBandedTableView2NOME_RAZAO: TcxGridDBBandedColumn;
    GridDBBandedTableView2CPF_CGC: TcxGridDBBandedColumn;
    GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn;
    GridDBBandedTableView2VENDEDOR: TcxGridDBBandedColumn;
    GridDBBandedTableView2FONE_VEN: TcxGridDBBandedColumn;
    GridDBBandedTableView2FINANCEIRO: TcxGridDBBandedColumn;
    GridDBBandedTableView2FONE_FIN: TcxGridDBBandedColumn;
    GridDBBandedTableView2REPRESENTANTE: TcxGridDBBandedColumn;
    GridDBBandedTableView2FONE_REP: TcxGridDBBandedColumn;
    GridDBBandedTableView2BANCO_C1: TcxGridDBBandedColumn;
    GridDBBandedTableView2AGENCIA_C1: TcxGridDBBandedColumn;
    GridDBBandedTableView2CC_C1: TcxGridDBBandedColumn;
    GridDBBandedTableView2BANCO_C2: TcxGridDBBandedColumn;
    GridDBBandedTableView2AGENCIA_C2: TcxGridDBBandedColumn;
    GridDBBandedTableView2CC_C2: TcxGridDBBandedColumn;
    GridDBBandedTableView2FORMA_PAGTO: TcxGridDBBandedColumn;
    dtListCODIGO: TIntegerField;
    dtListPESSOA_FJ: TIntegerField;
    GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn;
    QryPessoa: TIBQuery;
    QryPessoaCODIGO: TIntegerField;
    QryPessoaNOME_RAZAO: TIBStringField;
    dsPessoa: TDataSource;
    btnLogradouro: TcxButtonEdit;
    cbPessoaFJ: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    dtEditCNPJ: TIBStringField;
    dtEditPESSOA_FJ: TIntegerField;
    dtEditVENDEDOR: TIBStringField;
    dtEditFONE_VEN: TIBStringField;
    dtEditFINANCEIRO: TIBStringField;
    dtEditFONE_FIN: TIBStringField;
    dtEditREPRESENTANTE: TIBStringField;
    dtEditFONE_REP: TIBStringField;
    dtEditBANCO_C1: TIBStringField;
    dtEditAGENCIA_C1: TIBStringField;
    dtEditCC_C1: TIBStringField;
    dtEditBANCO_C2: TIBStringField;
    dtEditAGENCIA_C2: TIBStringField;
    dtEditCC_C2: TIBStringField;
    dtEditFORMA_PAGTO: TIntegerField;
    dtEditCONTABILIDADE: TIntegerField;
    dtEditSINCRONIZA_FILIAIS: TIBStringField;
    cxGroupBox1: TcxGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    edtConta1: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel13: TcxLabel;
    dsBanco1: TDataSource;
    QryBanco1: TIBQuery;
    QryBanco1CODIGO: TIBStringField;
    QryBanco1NOME: TIBStringField;
    QryBanco1BOLETO: TIntegerField;
    QryBanco1GERA_ARQUIVO_MAGNETICO: TIBStringField;
    QryBanco1PADRAO_BOLETO: TIBStringField;
    QryBanco1CONFIG_CH: TBlobField;
    QryBanco1CONFIG_CHEQUE: TMemoField;
    dsBanco2: TDataSource;
    QryBanco2: TIBQuery;
    QryBanco2CODIGO: TIBStringField;
    QryBanco2NOME: TIBStringField;
    QryBanco2BOLETO: TIntegerField;
    QryBanco2GERA_ARQUIVO_MAGNETICO: TIBStringField;
    QryBanco2PADRAO_BOLETO: TIBStringField;
    QryBanco2CONFIG_CH: TBlobField;
    QryBanco2CONFIG_CHEQUE: TMemoField;
    cbBanco1: TcxDBLookupComboBox;
    btnBanco1: TcxButtonEdit;
    edtconta2: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    btnBanco2: TcxButtonEdit;
    cbBanco2: TcxDBLookupComboBox;
    cxLabel11: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    btnFormaPagto: TcxButtonEdit;
    cbFormaPagto: TcxDBLookupComboBox;
    cxLabel16: TcxLabel;
    ckCompartilha: TcxDBCheckBox;
    QryFormaPagto: TIBQuery;
    dsFromaPagto: TDataSource;
    QryFormaPagtoCNPJ: TIBStringField;
    QryFormaPagtoCODIGO: TIntegerField;
    QryFormaPagtoNOME: TIBStringField;
    QryFormaPagtoACRESCIMO: TFloatField;
    QryFormaPagtoDESCONTO: TFloatField;
    QryFormaPagtoNPARCELAS: TIntegerField;
    QryFormaPagtoCOMENTRADA: TIBStringField;
    QryFormaPagtoINTERVALO: TIntegerField;
    QryFormaPagtoAVISTA: TIBStringField;
    QryFormaPagtoFATURA_FUTURA: TIBStringField;
    QryFormaPagtoFORMA_ECF: TIBStringField;
    QryFormaPagtoTIPO_PAGAMENTO: TIBStringField;
    QryFormaPagtoATIVO: TIBStringField;
    QryFormaPagtoINTERVALO_PRE_DEFINIDO: TIBStringField;
    QryFormaPagtoVENCTO_FIXO: TIBStringField;
    QryFormaPagtoDT_VENCTO_FIXO: TDateField;
    QryFormaPagtoOUTROS: TIBStringField;
    procedure FormShow(Sender: TObject);
    procedure btnBanco1Click(Sender: TObject);
    procedure btnBanco2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadFornecedores: TfrmCadFornecedores;

implementation

uses Bancos_Form;

{$R *.dfm}

procedure TfrmCadFornecedores.FormShow(Sender: TObject);
begin
  inherited;
  QryPessoa.Close;
  QryPessoa.Open;
end;

procedure TfrmCadFornecedores.btnBanco1Click(Sender: TObject);
begin
  inherited;
  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowMODAL ;

  AbreDataSet(TDataSet(QryBanco1));

//  dtEditBANCO_C1.Value := FrmBancos.Codigo;

  FrmBancos.Free;
  FrmBancos := nil;
end;

procedure TfrmCadFornecedores.btnBanco2Click(Sender: TObject);
begin
  inherited;
  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowMODAL ;

  AbreDataSet(TDataSet(QryBanco2));

 // dtEditBANCO_C2.Value := FrmBancos.Codigo;

  FrmBancos.Free;
  FrmBancos := nil;
end;

end.
