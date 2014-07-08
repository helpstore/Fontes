unit Dados_Baixa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,  dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Mask,  cxGraphics,
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
  cxButtons, cxLabel,   cxTextEdit;

type
  TFrmDadosBaixa = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Data: TdxDateEdit;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Valor: TdxCurrencyEdit;
    Desconto: TdxCurrencyEdit;
    Juros: TdxCurrencyEdit;
    Label1: TcxLabel;
    Total: TdxCurrencyEdit;
    Label6: TcxLabel;
    HISTORICO: TdxEdit;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    Label7: TcxLabel;
    EdNome: TdxEdit;
    Label8: TcxLabel;
    EdDocumento: TdxEdit;
    Label9: TcxLabel;
    EdParcela: TdxEdit;
    edvencto: TdxEdit;
    Label10: TcxLabel;
    Label11: TcxLabel;
    pago: TdxCurrencyEdit;
    Panel1: TPanel;
    RzBitBtn1: TcxButton;
    DsConta: TDataSource;
    cmbConta: TdxLookupEdit;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Cheque: TdxCurrencyEdit;
    Dinheiro: TdxCurrencyEdit;
    Label15: TcxLabel;
    Label16: TcxLabel;
    TROCO: TdxCurrencyEdit;
    Label17: TcxLabel;
    SaldoDescto: TcxTextEdit;
    Label18: TcxLabel;
    Cartao: TdxCurrencyEdit;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ValorExit(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagoEnter(Sender: TObject);
    procedure pagoExit(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DataExit(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
    procedure ChequeExit(Sender: TObject);
    procedure DescontoEnter(Sender: TObject);
    procedure cmbContaEnter(Sender: TObject);
    procedure JurosExit(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure CartaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor_Total: Extended ;
    Juros_Calculados: Extended ;
  end;

var
  FrmDadosBaixa: TFrmDadosBaixa;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
  Cheque_Venda_Form, Vendas_Dm, SelFin_Cheques_Form, Receber_Form,
  Pagar_Form;

{$R *.DFM}

procedure TFrmDadosBaixa.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmDadosBaixa.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosBaixa.ActOkExecute(Sender: TObject);
var
  ftroco : real;
begin
  if ((Data.date <= 0)) then
  begin
    Application.messagebox('Digite a data!','Aviso',mb_iconinformation+mb_ok);
    Data.SetFocus;
    exit;
  end;

  if ((Total.Value <= 0) and (not(DmApp.DESC_BX_PARCIAL = 'S'))) then
  begin
    Application.messagebox('O valor digitado não pode ser 0!','Aviso',mb_iconinformation+mb_ok);
    Data.SetFocus;
    exit;
  end;

  if (TROCO.value > 0) then
    ftroco := troco.value
  else
    ftroco := 0;

  if(Arredonda(Total.Value,2) <> Arredonda(Dinheiro.Value + Cartao.value + Cheque.Value - ftroco, 2)) then
  begin
    Application.Messagebox('O Valor digitado não confere','Aviso',mb_iconerror + mb_ok);
    Dinheiro.SetFocus;
    Abort;
  end;

  Modalresult := mrok ;
end;

procedure TFrmDadosBaixa.ValorExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
  Total.Value    := ARREDONDA(Valor.Value - Desconto.Value + Juros.Value,2) ;
  Dinheiro.Value := Total.Value ;
end;

procedure TFrmDadosBaixa.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmDadosBaixa.ActiveControl = Desconto
     Then begin
          Desconto.Value := Calculadora ;
     end;
     If FrmDadosBaixa.ActiveControl = Juros
     Then begin
          Juros.Value := Calculadora ;
     end;      
end;

procedure TFrmDadosBaixa.FormShow(Sender: TObject);
begin
     if Juros.value = 0 then
       Juros.value := juros_calculados ;

     pago.Value := arredonda(Valor.Value+JUROS.VALUE,2) ;

     IniciaComponentes ( Self as TForm );

     Valor_Total := arredonda(Total.Value,2) ;

     DsConta.DataSet.Open ;

     If DmApp.PAGAR_CAIXA = 'S'
     THEN BEGIN
          Data.Enabled := FALSE ;
          Desconto.SetFocus;
     END
     ELSE
     BEGIN
          Data.Enabled := TRUE ;
          Data.SetFocus ;
     END;


end;

procedure TFrmDadosBaixa.pagoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
     JUROS.Value     := Juros_Calculados ;
     DESCONTO.Value  := 0 ;
end;

procedure TFrmDadosBaixa.pagoExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );

     If Arredonda ( Pago.Value, 2 ) > arredonda(Valor.Value+JUROS.VALUE-DESCONTO.VALUE,2)
     then begin
          Juros.Value := ARREDONDA(Pago.Value - Valor.Value, 2);
     end ;

     DESCONTO.Value := ARREDONDA((valor.Value +JUROS.VALUE) - (Pago.Value), 2);
     if not dmapp.VerificaDescontoReceber((Valor.value+Juros.value),Desconto.value) then
     begin
       if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
       begin
          DESCONTO.VALUE := 0;
          Pago.setfocus;
          abort;
          exit;
       end;
     end;

     IF ARREDONDA(JUROS.VALUE,2) < ARREDONDA ( JUROS_CALCULADOS, 2 )
     THEN BEGIN
          IF ( NOT PedirSenha ('JUROS ABAIXO DO VALOR', 'MINIMO, CONFIRME!','') )
          THEN
              JUROS.VALUE := JUROS_CALCULADOS ;
     END;

     Total.Value    := ARREDONDA(Valor.Value - Desconto.Value + Juros.Value,2) ;
     Pago.Value     := Total.value ;
     Dinheiro.Value := Total.Value ;
end;

procedure TFrmDadosBaixa.HISTORICOExit(Sender: TObject);
begin

     TIRACORFUNDO( SENDER );
end;

procedure TFrmDadosBaixa.DataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmDadosBaixa.DinheiroExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
     Cheque.Value := Total.Value - Dinheiro.Value - Cartao.value;
     troco.value  := 0;
end;

procedure TFrmDadosBaixa.ChequeExit(Sender: TObject);
begin
  TiraCorFundo( Sender );
  Cartao.Value := Total.Value - Dinheiro.Value - Cheque.value;
end;

procedure TFrmDadosBaixa.DescontoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmDadosBaixa.cmbContaEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmDadosBaixa.JurosExit(Sender: TObject);
begin
     IF ARREDONDA(JUROS.VALUE,2) < ARREDONDA ( JUROS_CALCULADOS, 2 )
     THEN BEGIN
          IF ( NOT PedirSenha ('JUROS ABAIXO DO VALOR', 'MINIMO, CONFIRME!','') )
          THEN
              JUROS.VALUE := JUROS_CALCULADOS ;
     END;

     TIRACORFUNDO( SENDER );
     Total.Value    := ARREDONDA(Valor.Value - Desconto.Value + Juros.Value,2) ;
     Dinheiro.Value := Total.Value ;
end;

procedure TFrmDadosBaixa.DescontoExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
     if not dmapp.VerificaDescontoReceber((Valor.value+Juros.value),Desconto.value) then
     begin
       if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
       begin
          Desconto.setfocus;
          abort;
          exit;
       end;
     end;

     Total.Value    := ARREDONDA(Valor.Value - Desconto.Value + Juros.Value,2) ;
     pago.value     := Total.Value ;

     Dinheiro.Value := Total.Value ;
end;

procedure TFrmDadosBaixa.CartaoExit(Sender: TObject);
begin
  TiraCorFundo( Sender );
  TROCO.Value := Total.Value - Dinheiro.Value - Cartao.value - Cheque.value ;
end;

end.

