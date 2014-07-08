unit Entrada_Parcelamento_Form;

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
  cxButtons, cxLabel;

type
  TFrmEntradaParcelamento = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    EdData: TdxDateEdit;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsPessoas: TDataSource;
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
    Label8: TcxLabel;
    CmbTipo: TdxLookupEdit;
    ParcelasFim: TdxCurrencyEdit;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
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
  FrmEntradaParcelamento: TFrmEntradaParcelamento;

implementation

uses Cadastros_DM, Financeiro_Dm, Application_DM, Funcoes, Receber_Form;

{$R *.DFM}

procedure TFrmEntradaParcelamento.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntradaParcelamento.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntradaParcelamento.EdDataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntradaParcelamento.ActOkExecute(Sender: TObject);
begin
  if (EdData.date <= 0) then
  begin
    application.messagebox('Digite a Data Inicial!','Aviso',mb_iconerror + mb_ok);
    edData.setfocus;
    exit;
  end;

  If Trim(CmbTipo.Text) = '' then
  begin
    application.messagebox('Digite um tipo de docto!','Aviso',mb_iconerror + mb_ok);
    CmbTipo.setfocus;
    Exit;
  end;

  If Trim(eddocumento.Text) = '' then
  begin
    application.messagebox('Digite um Documento!','Aviso',mb_iconerror + mb_ok);
    eddocumento.setfocus;
    Exit;
  end;

  If (parcelas.Value)  <= 0 then
  begin
    application.messagebox('Digite o Número da Parcela Inicial!','Aviso',mb_iconerror + mb_ok);
    parcelas.setfocus;
    Exit;
  end;

  If (ParcelasFim.Value)  <= 0 then
  begin
    application.messagebox('Digite o Número da Parcela Final!','Aviso',mb_iconerror + mb_ok);
    ParcelasFim.setfocus;
    Exit;
  end;

  If ((ParcelasFim.Value) < (parcelas.Value)) then
  begin
    application.messagebox('Parcela Inicial deverá ser <= Parcela Final!','Aviso',mb_iconerror + mb_ok);
    parcelas.setfocus;
    Exit;
  end;

  If (EdValor.Value)  <= 0 then
  begin
    application.messagebox('Digite o Valor das Parcelas!','Aviso',mb_iconerror + mb_ok);
    EdValor.setfocus;
    Exit;
  end;

  Modalresult := mrok ;
end;

procedure TFrmEntradaParcelamento.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

procedure TFrmEntradaParcelamento.EdDataEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmEntradaParcelamento.EdDataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

end.
