unit untCadContratoAtendimento;

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
  cxDBEdit, cxGridDBTableView, ExtCtrls, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGrid, cxPC, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, Menus,
  cxMemo, cxCheckBox, cxGroupBox, StdCtrls, cxButtons, cxCalc, Buttons,
  cxSpinEdit, DBCtrls, cxGridExportLink;

type
  TfrmCadContratoAtendimento = class(TfrmCadPadraoMaster)
    dtListCNPJ: TIBStringField;
    dtListCODIGO: TIntegerField;
    dtListCOD_CLIENTE: TIntegerField;
    dtListCOD_CONTRATO: TIntegerField;
    dtListNUM_CONTRATO: TIBStringField;
    dtListDT_INICIO: TDateTimeField;
    dtListDT_FIM: TDateTimeField;
    dtListATIVO: TIBStringField;
    dtListINFORMACOES: TMemoField;
    dtListVALOR_CONTRATO: TFloatField;
    dtListDATA: TDateField;
    dtListDIA_BASE: TSmallintField;
    TVRegistroCNPJ: TcxGridDBBandedColumn;
    TVRegistroCODIGO: TcxGridDBBandedColumn;
    TVRegistroCOD_CLIENTE: TcxGridDBBandedColumn;
    TVRegistroCOD_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroNUM_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroDT_INICIO: TcxGridDBBandedColumn;
    TVRegistroDT_FIM: TcxGridDBBandedColumn;
    TVRegistroATIVO: TcxGridDBBandedColumn;
    TVRegistroINFORMACOES: TcxGridDBBandedColumn;
    TVRegistroVALOR_CONTRATO: TcxGridDBBandedColumn;
    TVRegistroDATA: TcxGridDBBandedColumn;
    TVRegistroDIA_BASE: TcxGridDBBandedColumn;
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
    dtEditFRANQUIA_COPIAS: TIntegerField;
    dtEditVALOR_COPIA_EXCEDENTE: TFloatField;
    dtEditDATA: TDateField;
    dtEditGERA_FATURAMENTO: TIBStringField;
    dtEditGERA_LEITURA: TIBStringField;
    dtEditDIA_BASE: TSmallintField;
    dtEditGERA_MENSALIDADE: TIBStringField;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel10: TcxLabel;
    QryCliente: TIBQuery;
    dsCliente: TDataSource;
    QryClienteCODIGO: TIntegerField;
    QryClienteNOME_RAZAO: TIBStringField;
    QryClienteTECNICO: TIntegerField;
    QryClienteEMAIL: TIBStringField;
    QryClienteCIDADE: TIBStringField;
    aTfrmCadTipoContrato: TcxDBLookupComboBox;
    cxLabel12: TcxLabel;
    QryTipoContrato: TIBQuery;
    dsTipoContrato: TDataSource;
    QryTipoContratoCNPJ: TIBStringField;
    QryTipoContratoCODIGO: TIntegerField;
    QryTipoContratoNOME: TIBStringField;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel13: TcxLabel;
    btnTipoContrato: TcxButton;
    cxButton1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    edtDtInicio: TcxDBDateEdit;
    cxLabel14: TcxLabel;
    edtDtFinal: TcxDBDateEdit;
    Label2: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxLabel11: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBMemo2: TcxDBMemo;
    dtListDet1CNPJ: TIBStringField;
    dtListDet1CODIGO: TIntegerField;
    dtListDet1COD_PRODUTO: TIBStringField;
    dtListDet1CONTRATO: TIntegerField;
    dtListDet1DT_ADICAO: TDateTimeField;
    dtListDet1DT_RETIRADA: TDateField;
    dtListDet1DATA: TDateTimeField;
    dtListDet1ATIVO: TIBStringField;
    dtListDet1VALOR: TFloatField;
    dtListDet1QTDE_COPIAS_PREVENTIVA: TIntegerField;
    dtListDet1DIAS_RECHAMADO: TIntegerField;
    dtListDet1MEDIA_COPIAS: TIntegerField;
    dtListDet1TEMPO_RESPOSTA: TIntegerField;
    dtListDet1INFORMACOES_ITENS: TMemoField;
    dtListDet1COD_INDEXADOR: TIntegerField;
    dtListDet1DT_VIGENCIA_INICIAL: TDateField;
    dtListDet1DT_VIGENCIA_FINAL: TDateField;
    dtListDet1GERA_LEITURA: TIBStringField;
    dtListDet1DECONTINUADO: TIBStringField;
    dtListDet1VMC_DATA_UPD: TDateTimeField;
    dtListDet1VMC_TIPO_UPD: TIBStringField;
    dtListDet1VMC_COD_UPD: TIntegerField;
    dtListDet1PRODUTO: TIBStringField;
    dtListDet1MODELO_EQUIPAMENTO: TIBStringField;
    dtListDet1TIPO_PRODUTO: TIBStringField;
    dtListDet1SERIE: TIBStringField;
    dtListDet1COD_CLIENTE: TIntegerField;
    TVDet1CNPJ: TcxGridDBBandedColumn;
    TVDet1CODIGO: TcxGridDBBandedColumn;
    TVDet1COD_PRODUTO: TcxGridDBBandedColumn;
    TVDet1CONTRATO: TcxGridDBBandedColumn;
    TVDet1DT_ADICAO: TcxGridDBBandedColumn;
    TVDet1DT_RETIRADA: TcxGridDBBandedColumn;
    TVDet1DATA: TcxGridDBBandedColumn;
    TVDet1ATIVO: TcxGridDBBandedColumn;
    TVDet1VALOR: TcxGridDBBandedColumn;
    TVDet1QTDE_COPIAS_PREVENTIVA: TcxGridDBBandedColumn;
    TVDet1DIAS_RECHAMADO: TcxGridDBBandedColumn;
    TVDet1MEDIA_COPIAS: TcxGridDBBandedColumn;
    TVDet1TEMPO_RESPOSTA: TcxGridDBBandedColumn;
    TVDet1INFORMACOES_ITENS: TcxGridDBBandedColumn;
    TVDet1DT_VIGENCIA_INICIAL: TcxGridDBBandedColumn;
    TVDet1DT_VIGENCIA_FINAL: TcxGridDBBandedColumn;
    TVDet1VMC_DATA_UPD: TcxGridDBBandedColumn;
    TVDet1VMC_TIPO_UPD: TcxGridDBBandedColumn;
    TVDet1VMC_COD_UPD: TcxGridDBBandedColumn;
    TVDet1PRODUTO: TcxGridDBBandedColumn;
    TVDet1MODELO_EQUIPAMENTO: TcxGridDBBandedColumn;
    TVDet1TIPO_PRODUTO: TcxGridDBBandedColumn;
    TVDet1SERIE: TcxGridDBBandedColumn;
    cxButton2: TcxButton;
    cmbEquipamento: TcxDBLookupComboBox;
    cxLabel15: TcxLabel;
    edtValor: TcxDBCalcEdit;
    cxLabel16: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel17: TcxLabel;
    cxDBDateEdit3: TcxDBDateEdit;
    cxLabel18: TcxLabel;
    cxDBDateEdit4: TcxDBDateEdit;
    cxLabel19: TcxLabel;
    cxDBDateEdit5: TcxDBDateEdit;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    cxDBDateEdit6: TcxDBDateEdit;
    cxGroupBox3: TcxGroupBox;
    cxDBSpinEdit3: TcxDBSpinEdit;
    cxDBSpinEdit2: TcxDBSpinEdit;
    cxDBSpinEdit1: TcxDBSpinEdit;
    Label4: TcxLabel;
    Label13: TcxLabel;
    Label5: TcxLabel;
    GridHistorico: TcxGrid;
    GridHistoricoDBBandedTableView1: TcxGridDBBandedTableView;
    TVHistorico: TcxGridDBBandedTableView;
    TVHistoricoCODIGO: TcxGridDBBandedColumn;
    TVHistoricoCONT_LEITURA: TcxGridDBBandedColumn;
    TVHistoricoDATA: TcxGridDBBandedColumn;
    TVHistoricoSALDO_DIAS: TcxGridDBBandedColumn;
    TVHistoricoSALDO_COPIAS: TcxGridDBBandedColumn;
    LVHistorico: TcxGridLevel;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    Panel1: TPanel;
    cxGroupBox4: TcxGroupBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel24: TcxLabel;
    cxDBDateEdit7: TcxDBDateEdit;
    cxLabel25: TcxLabel;
    cxDBCheckBox2: TcxDBCheckBox;
    dtEditDet1CNPJ: TIBStringField;
    dtEditDet1CODIGO: TIntegerField;
    dtEditDet1COD_PRODUTO: TIBStringField;
    dtEditDet1CONTRATO: TIntegerField;
    dtEditDet1DT_ADICAO: TDateTimeField;
    dtEditDet1DT_RETIRADA: TDateField;
    dtEditDet1DATA: TDateTimeField;
    dtEditDet1ATIVO: TIBStringField;
    dtEditDet1VALOR: TFloatField;
    dtEditDet1QTDE_COPIAS_PREVENTIVA: TIntegerField;
    dtEditDet1DIAS_RECHAMADO: TIntegerField;
    dtEditDet1MEDIA_COPIAS: TIntegerField;
    dtEditDet1TEMPO_RESPOSTA: TIntegerField;
    dtEditDet1INFORMACOES_ITENS: TMemoField;
    dtEditDet1COD_INDEXADOR: TIntegerField;
    dtEditDet1DT_VIGENCIA_INICIAL: TDateField;
    dtEditDet1DT_VIGENCIA_FINAL: TDateField;
    dtEditDet1GERA_LEITURA: TIBStringField;
    dtEditDet1DECONTINUADO: TIBStringField;
    dtEditDet1VMC_DATA_UPD: TDateTimeField;
    dtEditDet1VMC_TIPO_UPD: TIBStringField;
    dtEditDet1VMC_COD_UPD: TIntegerField;
    dtEditRESPOSTA: TIBStringField;
    DBText1: TDBText;
    dsHistorico: TDataSource;
    QryHistorico: TIBQuery;
    QryHistoricoCODIGO: TIntegerField;
    QryHistoricoCONT_LEITURA: TIntegerField;
    QryHistoricoDATA: TDateField;
    QryHistoricoSALDO_DIAS: TIntegerField;
    QryHistoricoSALDO_COPIAS: TIntegerField;
    cxGridPopupMenu1: TcxGridPopupMenu;
    dsProduto: TDataSource;
    QryProduto: TIBQuery;
    QryProdutoCODIGO: TIBStringField;
    QryProdutoSERIE: TIBStringField;
    dtListNOME_RAZAO: TIBStringField;
    dtListCPF_CGC: TIBStringField;
    dtListNOME_CONTRATO: TIBStringField;
    TVRegistroNOME_RAZAO: TcxGridDBBandedColumn;
    TVRegistroCPF_CGC: TcxGridDBBandedColumn;
    TVRegistroNOME_CONTRATO: TcxGridDBBandedColumn;
    QryProdutoNOME: TIBStringField;
    cxLabel26: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel27: TcxLabel;
    procedure btnTipoContratoClick(Sender: TObject);
    procedure dtEditNewRecord(DataSet: TDataSet);
    procedure dtEditDet1BeforePost(DataSet: TDataSet);
    procedure dtEditDet1NewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadContratoAtendimento: TfrmCadContratoAtendimento;

implementation

uses UntCadTipoContrato, Application_DM;

{$R *.dfm}

procedure TfrmCadContratoAtendimento.btnTipoContratoClick(Sender: TObject);
begin
  inherited;
  CadastroLookup(TfrmCadTipoContrato,dtEdit,'COD_CONTRATO',QryTipoContrato);
end;

procedure TfrmCadContratoAtendimento.dtEditNewRecord(DataSet: TDataSet);
var
  DataAtual: TDate;
begin
  inherited;
  DataAtual := dmApp.DataServidor;
  dtEditDATA.value := DataAtual;
  dtEditDT_INICIO.value := DataAtual;
  dtEditATIVO.value := 'S';
end;

procedure TfrmCadContratoAtendimento.dtEditDet1BeforePost(
  DataSet: TDataSet);
var
  OldValue,NewValue:String;
begin
  OldValue := dtEditDet1COD_PRODUTO.OldValue;
  NewValue := dtEditDet1COD_PRODUTO.NewValue;
  if (( OldValue <> '') and (OldValue <> NewValue)) then
  begin
    Application.MessageBox(Pchar('Alteração Indevida: Equipamento anterior '+OldValue+' modificado para '+NewValue),'Aviso',mb_ok+mb_iconerror);
    abort;
    exit;
  end;

  inherited;

end;

procedure TfrmCadContratoAtendimento.dtEditDet1NewRecord(
  DataSet: TDataSet);
  var
    DataAtual: TDate;
begin
  inherited;
  DataAtual := dmApp.DataServidor;
  dtEditDet1DATA.value := DataAtual;
  dtEditDet1ATIVO.value := 'S';
  dtEditDet1DT_ADICAO.value := DataAtual;
  dtEditDet1DT_VIGENCIA_INICIAL.value := DataAtual;

  dtEditDet1CONTRATO.value := dtEditCODIGO.value;
end;

procedure TfrmCadContratoAtendimento.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with SaveDialog do
  begin
    DefaultExt := 'xls';
    Filter := '*.xls';
    FileName := 'Histórico VMC';
    if Execute then
      ExportGridToExcel(FileName,GridHistorico);
  end;
end;

end.
