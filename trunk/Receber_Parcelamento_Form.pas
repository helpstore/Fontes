 unit Receber_Parcelamento_Form;

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
  TFrmReceberParcelamento = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    EdData: TdxDateEdit;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    dsPessoas: TDataSource;
    Label4: TcxLabel;
    CmbPessoa: TdxLookupEdit;
    EdDocumento: TdxEdit;
    Label6: TcxLabel;
    Parcelas: TdxCurrencyEdit;
    Label1: TcxLabel;
    Label2: TcxLabel;
    EdHistorico: TdxEdit;
    Label11: TcxLabel;
    EdValor: TdxCurrencyEdit;
    EdIntervalo: TdxCurrencyEdit;
    Label5: TcxLabel;
    Label7: TcxLabel;
    CmbCentro_Custo: TdxLookupEdit;
    DsCentro: TDataSource;
    Label8: TcxLabel;
    CmbTipo: TdxLookupEdit;
    ParcelasFim: TdxCurrencyEdit;
    Label9: TcxLabel;
    Label10: TcxLabel;
    dsContrato: TDataSource;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    cxLabel2: TcxLabel;
    cmbContrato: TdxLookupEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdDataEnter(Sender: TObject);
    procedure EdDataExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReceberParcelamento: TFrmReceberParcelamento;

implementation

uses Cadastros_DM, Financeiro_Dm, Application_DM, Funcoes, Receber_Form;

{$R *.DFM}

procedure TFrmReceberParcelamento.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmReceberParcelamento.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmReceberParcelamento.EdDataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmReceberParcelamento.ActOkExecute(Sender: TObject);
begin
  if (EdData.date <= 0) then
  begin
    messagedlg('Digite a Data Inicial!', mterror, [mbok], 0 );
    EdData.setfocus;
    Exit;
  end;

  If CmbPessoa.Text = '' then
  begin
    messagedlg('Selecione um Cliente!', mterror, [mbok], 0 );
    CmbPessoa.setfocus;
    Exit;
  end;

  If Trim(CmbTipo.Text) = '' then
  begin
    messagedlg('Digite um tipo de docto!', mterror, [mbok], 0 );
    CmbTipo.setfocus;
    Exit;
  end;

  If Trim(eddocumento.Text) = '' then
  begin
    messagedlg('Digite um Documento!', mterror, [mbok], 0 );
    eddocumento.setfocus;
    Exit;
  end;

  If (parcelas.Value)  <= 0 then
  begin
    messagedlg('Digite o Número da Parcela Inicial!', mterror, [mbok], 0 );
    parcelas.setfocus;
    Exit;
  end;

  If (ParcelasFim.Value)  <= 0 then
  begin
    messagedlg('Digite o Número da Parcela Final!', mterror, [mbok], 0 );
    ParcelasFim.setfocus;
    Exit;
  end;

  If (ParcelasFim.Value) < (parcelas.Value) then
  begin
    messagedlg('Parcela Inicial deverá ser <= Parcela Final!', mterror, [mbok], 0 );
    parcelas.setfocus;
    Exit;
  end;

  If (EdValor.Value)  <= 0 then
  begin
    messagedlg('Digite o Valor das Parcelas!', mterror, [mbok], 0 );
    EdValor.setfocus;
    Exit;
  end;

  Modalresult := mrok ;
end;

procedure TFrmReceberParcelamento.FormShow(Sender: TObject);
begin
  qryContratos.Close;
  qryContratos.Open;
  cmbContrato.enabled := (dmApp.EXIBE_CTR_OBRAS = 'S');

  IniciaComponentes ( Self as TForm );
end;

procedure TFrmReceberParcelamento.EdDataEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmReceberParcelamento.EdDataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

end.
