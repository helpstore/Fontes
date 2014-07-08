unit Dados_Baixa_Loja_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmDadosBaixaLoja = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Label2: TcxLabel;
    Valor: TdxCurrencyEdit;
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
    Label1: TcxLabel;
    JUROS: TdxCurrencyEdit;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagoEnter(Sender: TObject);
    procedure pagoExit(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure JUROSEnter(Sender: TObject);
    procedure JUROSExit(Sender: TObject);
  private
    { Private declarations }
    function verificavalor:boolean;
  public
    { Public declarations }
    Juros_Calculados, Valor_Total: Extended ;

  end;

var
  FrmDadosBaixaLoja: TFrmDadosBaixaLoja;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm;

{$R *.DFM}

procedure TFrmDadosBaixaLoja.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmDadosBaixaLoja.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosBaixaLoja.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmDadosBaixaLoja.ActiveControl = pago
     Then begin
          pago.Value := Calculadora ;
     end;
end;

procedure TFrmDadosBaixaLoja.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     IF ARREDONDA(JUROS_CALCULADOS,2) > 0
     THEN BEGIN
          JUROS.VALUE := ARREDONDA(JUROS_CALCULADOS,2) ;

          PAGO.Value  := Valor.Value + Juros.Value ;
     END;
end;

procedure TFrmDadosBaixaLoja.pagoEnter(Sender: TObject);
begin
     pago.VALUE := Arredonda(Valor.VALUE + JUROS.VALUE,2) ;

     CORFUNDO( SENDER );
end;

procedure TFrmDadosBaixaLoja.pagoExit(Sender: TObject);
begin
  if (verificavalor) then
    juros.VALUE := Arredonda(PAGO.VALUE - Valor.VALUE,2);

  if ARREDONDA(JUROS.VALUE,2) < ARREDONDA (JUROS_CALCULADOS,2)  then
  begin
    if (not PedirSenha ('JUROS ABAIXO DO VALOR', 'MINIMO, CONFIRME!','') ) then
       JUROS.VALUE := JUROS_CALCULADOS ;
  end;

  pago.VALUE := Arredonda(Valor.VALUE + JUROS.VALUE,2) ;

  TIRACORFUNDO( SENDER );
end;

procedure TFrmDadosBaixaLoja.ActOkExecute(Sender: TObject);
begin
     ModalResult := MrOk
end;

procedure TFrmDadosBaixaLoja.JUROSEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );

     IF ARREDONDA(JUROS_CALCULADOS,2) > 0
     THEN BEGIN
          JUROS.VALUE := ARREDONDA(JUROS_CALCULADOS,2) ;
     END
     ELSE
         Juros.Value := 0;

     pago.VALUE := Arredonda(Valor.VALUE + JUROS.VALUE,2) ;
end;

procedure TFrmDadosBaixaLoja.JUROSExit(Sender: TObject);
begin
     if not (verificavalor) then
     begin
       juros.value := JUROS_CALCULADOS;
       exit;
     end;

     IF ARREDONDA(JUROS.VALUE,2) < ARREDONDA ( JUROS_CALCULADOS, 2 )
     THEN BEGIN
          IF ( NOT PedirSenha ('JUROS ABAIXO DO VALOR', 'MINIMO, CONFIRME!','') )
          THEN
              JUROS.VALUE := JUROS_CALCULADOS
          ELSE
              JUROS_CALCULADOS := JUROS.VALUE ;
     END;

     TIRACORFUNDO ( Sender );

     pago.VALUE := Arredonda(Valor.VALUE + JUROS.VALUE,2) ;
end;

function TFrmDadosBaixaLoja.verificavalor: boolean;
begin
  if ((pago.value < Valor.value) or (juros.value < 0))then
  begin
    Application.messagebox('Valor à pagar não pode ser inferior ao saldo da conta','Aviso',mb_ok+mb_iconerror);
    result := false;
  end
  else
    result := true;
end;

end.
