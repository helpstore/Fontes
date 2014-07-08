 unit Dados_Baixa_Parcial_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib,  Mask, DBCtrls,
    cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmDadosBaixaParcial = class(TForm)
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
    Label1: TcxLabel;
    Total: TdxCurrencyEdit;
    Label6: TcxLabel;
    HISTORICO: TdxEdit;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    Label7: TcxLabel;
    BAIXA: TdxCurrencyEdit;
    Label8: TcxLabel;
    EdNome: TdxEdit;
    EdDocumento: TdxEdit;
    Label9: TcxLabel;
    Label10: TcxLabel;
    edvencto: TdxEdit;
    Label11: TcxLabel;
    EdParcela: TdxEdit;
    DsConta: TDataSource;
    Panel1: TPanel;
    Label12: TcxLabel;
    RzBitBtn1: TcxButton;
    cmbConta: TdxLookupEdit;
    Label15: TcxLabel;
    Dinheiro: TdxCurrencyEdit;
    Label13: TcxLabel;
    Cheque: TdxCurrencyEdit;
    Label14: TcxLabel;
    troco: TdxCurrencyEdit;
    Label16: TcxLabel;
    RESTANTE: TdxCurrencyEdit;
    pnlAgrupada: TPanel;
    Juros: TdxCurrencyEdit;
    Label17: TcxLabel;
    Cartao: TdxCurrencyEdit;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ValorExit(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure BAIXAExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DescontoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
    procedure ChequeExit(Sender: TObject);
    procedure DataEnter(Sender: TObject);
    procedure DataExit(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JurosExit(Sender: TObject);
    procedure CartaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Juros_Cobrar, Juros_Calculados: Extended ;

  end;

var
  FrmDadosBaixaParcial: TFrmDadosBaixaParcial;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
  Baixa_Receber_Multiplos_Parc_Form;

{$R *.DFM}

procedure TFrmDadosBaixaParcial.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmDadosBaixaParcial.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosBaixaParcial.ActOkExecute(Sender: TObject);
begin
     IF ((Data.Text <> '  /  /  ') and (Data.Text <> '  /  /    ')) THEN
     BEGIN
          if baixa.Value > 0  then
          begin
            If Arredonda(BAIXA.Value,2) <> Arredonda( Dinheiro.Value + Cheque.Value + Troco.value + Cartao.value, 2) then
            begin
              MessageDlg('O Valor Digitado Não Confere!',MtError,[MbOk],0);
              Dinheiro.SetFocus ;
              Abort;
            end
            else
              Modalresult := mrok ;
          end
          else if not (Desconto.enabled) then //Liberando pra américa a possibilidade de dar desconto com '0';
          begin
            messageDlg('O Valor Digitado Não Pode Ser Zero!',MtError,[MbOk],0);
            Abort;
          end;
     END
     ELSE
     BEGIN
       messageDlg('Digite a Data!', MtInformation,[MbOk],0);
       Data.SetFocus ;
       Abort;
     END;
     Modalresult := mrok ;
end;

procedure TFrmDadosBaixaParcial.ValorExit(Sender: TObject);
begin
     TIRACORFUNDO ( Sender );
     Total.Value := Valor.Value - Desconto.Value + Juros.Value ;
end;

procedure TFrmDadosBaixaParcial.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmDadosBaixaParcial.ActiveControl = Desconto
     Then begin
          Desconto.Value := Calculadora ;
     end;

     If FrmDadosBaixaParcial.ActiveControl = Juros
     Then begin
          Juros.Value := Calculadora ;
     end;

     If FrmDadosBaixaParcial.ActiveControl = Baixa
     Then begin
          Baixa.Value := Calculadora ;
     end;
end;

procedure TFrmDadosBaixaParcial.BAIXAExit(Sender: TObject);
var
  Valor1, Valor2: Real;
begin
     //TROCA A COR PARA A COR SELECIONADA

     TIRACORFUNDO ( Sender );
     Valor1 := ARREDONDA(BAIXA.Value,2);
     Valor2 := ARREDONDA(VALOR.VALUE+JUROS.VALUE-Desconto.value,2);
     IF (Valor1 >= Valor2) THEN
     BEGIN
      messageDlg('O Valor Baixado deve ser inferior ao Valor Total',MtError,[MbOk],0);
      Baixa.Setfocus ;
      Abort;
     END
     ELSE BEGIN
       RESTANTE.VALUE := ( TOTAL.VALUE ) - BAIXA.Value;
       Dinheiro.Value := BAIXA.Value ;
     END;

end;

procedure TFrmDadosBaixaParcial.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  DsConta.DataSet.open ;
  

  IF ARREDONDA(JUROS_CALCULADOS,2) > 0
  THEN BEGIN
       JUROS.VALUE := ARREDONDA(JUROS_CALCULADOS,2) ;
       Total.Value := Valor.Value - Desconto.Value + Juros.Value ;
  END;

  If DmApp.PAGAR_CAIXA = 'S' THEN
     Data.Enabled := FALSE
  ELSE BEGIN
       Data.Enabled := TRUE ;
       Data.SetFocus ;
  END;

end;

procedure TFrmDadosBaixaParcial.DescontoEnter(Sender: TObject);
begin
     CORFUNDO ( Sender );
end;

procedure TFrmDadosBaixaParcial.HISTORICOExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( Sender );
end;

procedure TFrmDadosBaixaParcial.DinheiroExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
     Cheque.Value := BAIXA.Value - Dinheiro.Value ;
end;

procedure TFrmDadosBaixaParcial.ChequeExit(Sender: TObject);
begin
     TiraCorFundo( Sender );
     Cartao.Value := BAIXA.Value - Dinheiro.Value - Cheque.value;
end;

procedure TFrmDadosBaixaParcial.DataEnter(Sender: TObject);
begin
     CORFUNDO ( Sender );
end;

procedure TFrmDadosBaixaParcial.DataExit(Sender: TObject);
begin
     TIRACORFUNDO ( Sender );
end;

procedure TFrmDadosBaixaParcial.DescontoExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
     if not dmapp.VerificaDescontoReceber((Valor.value+Juros.value),Desconto.value) then
     begin
       if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
       begin
          abort;
          exit;
       end;
     end;

     Total.Value    := ARREDONDA(Valor.Value - Desconto.Value + Juros.Value,2) ;

     baixa.value     := Total.Value ;

     RESTANTE.VALUE := ( TOTAL.VALUE ) - BAIXA.Value;

     Dinheiro.Value := Total.Value ;
end;

procedure TFrmDadosBaixaParcial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Juros_Cobrar := juros.value;
end;

procedure TFrmDadosBaixaParcial.JurosExit(Sender: TObject);
begin
  IF ARREDONDA(JUROS.VALUE,2) < ARREDONDA ( JUROS_CALCULADOS, 2 )
     THEN BEGIN
          IF ( NOT PedirSenha ('JUROS ABAIXO DO VALOR', 'MINIMO, CONFIRME!','') )
          THEN
              JUROS.VALUE := JUROS_CALCULADOS ;
     END;

     TIRACORFUNDO ( Sender );

     Total.Value := Valor.Value - Desconto.Value + Juros.Value ;

     baixa.value     := Total.Value ;

     RESTANTE.VALUE := ( TOTAL.VALUE ) - BAIXA.Value;
end;

procedure TFrmDadosBaixaParcial.CartaoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
  Troco.value := BAIXA.Value - Dinheiro.Value - Cheque.value - Cartao.value;
end;

end.
