unit Gerar_FatSaida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib,  cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel, IBCustomDataSet, IBQuery;

type
  TFrmGeraFatSaida = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    CFOP: TcxLabel;
    CmbOP: TdxLookupEdit;
    dsContrato: TDataSource;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    cxLabel2: TcxLabel;
    cmbContrato: TdxLookupEdit;
    cxLabel1: TcxLabel;
    cmbVendedor: TdxLookupEdit;
    QryOperacao: TIBQuery;
    dsOperacoes: TDataSource;
    QryVendedor: TIBQuery;
    dsVendedor: TDataSource;
    QryVendedorCNPJ: TIBStringField;
    QryVendedorCODIGO: TIntegerField;
    QryVendedorNOME: TIBStringField;
    QryVendedorCOM_VISTA: TFloatField;
    QryVendedorCOM_PRAZO: TFloatField;
    QryVendedorPESSOA_FJ: TIntegerField;
    QryVendedorSENHA: TIBStringField;
    QryVendedorATIVO: TIBStringField;
    QryVendedorCOD_PERFIL: TIntegerField;
    QryVendedorCOD_PERFIL_PAGTO: TIntegerField;
    QryOperacaoCNPJ: TIBStringField;
    QryOperacaoCODIGO: TIntegerField;
    QryOperacaoNOME: TIBStringField;
    QryOperacaoES: TIBStringField;
    QryOperacaoPERC_ICMS: TFloatField;
    QryOperacaoPERC_ICMS_REV: TFloatField;
    QryOperacaoPERC_ISS: TFloatField;
    QryOperacaoMOV_CAIXA: TIBStringField;
    QryOperacaoMOV_ESTOQUE: TIBStringField;
    QryOperacaoPAGA_COMISSAO: TIBStringField;
    QryOperacaoCOMPUTA_VENDA: TIBStringField;
    QryOperacaoRESUMO_CONTABIL: TIBStringField;
    QryOperacaoALTERA_CUSTO: TIBStringField;
    QryOperacaoCONSIGNACAO: TIBStringField;
    QryOperacaoMENSAGEM_1: TIBStringField;
    QryOperacaoMENSAGEM_2: TIBStringField;
    QryOperacaoATIVA: TIBStringField;
    QryOperacaoTTL_RES_DIVERSOS: TIBStringField;
    QryOperacaoTTL_RES_BONIFICACAO: TIBStringField;
    QryOperacaoDEVOLUCAO: TIBStringField;
    QryOperacaoREMESSA: TIBStringField;
    QryOperacaoENTREGA_FUTURA: TIBStringField;
    QryOperacaoINTERESTADUAL: TIBStringField;
    QryOperacaoGERA_FINANCEIRO: TIBStringField;
    QryOperacaoMSG_FISCAL: TMemoField;
    QryOperacaoCALC_ICMS: TIBStringField;
    QryOperacaoCALC_INSS: TIBStringField;
    QryOperacaoCALC_ISSQN: TIBStringField;
    QryOperacaoCALC_SEST_SENAT: TIBStringField;
    QryOperacaoCALC_PIS: TIBStringField;
    QryOperacaoCALC_COFINS: TIBStringField;
    QryOperacaoCALC_IPI: TIBStringField;
    QryOperacaoCALC_IRRF: TIBStringField;
    QryOperacaoCFOP: TIntegerField;
    QryOperacaoCFOP_DESCRICAO: TIBStringField;
    QryOperacaoMOV_ESTOQUE_FISCAL: TIBStringField;
    QryOperacaoIMP_PEDIDO: TIBStringField;
    QryOperacaoREL_GERENCIAL: TIBStringField;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdDataEnter(Sender: TObject);
    procedure EdDataExit(Sender: TObject);
    procedure QryVendedorBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmGeraFatSaida: TFrmGeraFatSaida;

implementation

uses Cadastros_DM, Financeiro_Dm, Application_DM, Funcoes, Receber_Form;

{$R *.DFM}

procedure TFrmGeraFatSaida.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmGeraFatSaida.EdDataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmGeraFatSaida.ActOkExecute(Sender: TObject);
begin
  If CmbOP.Text = '' then
  begin
    messagedlg('Selecione a Operação Interna', mterror, [mbok], 0 );
    CmbOP.setfocus;
    Exit;
  end;

  If Trim(cmbContrato.Text) = '' then
  begin
    messagedlg('Selecione o Contrato', mterror, [mbok], 0 );
    cmbContrato.setfocus;
    Exit;
  end;

  If Trim(cmbVendedor.Text) = '' then
  begin
    messagedlg('Selecione o Vendedor', mterror, [mbok], 0 );
    cmbVendedor.setfocus;
    Exit;
  end;


  Modalresult := mrok ;
end;

procedure TFrmGeraFatSaida.FormShow(Sender: TObject);
begin
  qryContratos.Close;
  qryContratos.Open;

  QryOperacao.Close;
  QryOperacao.Open;

  QryVendedor.Close;
  QryVendedor.Open;



  IniciaComponentes ( Self as TForm );
end;

procedure TFrmGeraFatSaida.EdDataEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmGeraFatSaida.EdDataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmGeraFatSaida.QryVendedorBeforeOpen(DataSet: TDataSet);
begin
 TIbQuery(DataSet).parambyname('cnpj').value := dmApp.cnpj;
end;

end.
