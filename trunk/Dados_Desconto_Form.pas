unit Dados_Desconto_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
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
  TFrmDadosDesconto = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Valor: TdxCurrencyEdit;
    Desconto: TdxCurrencyEdit;
    DescontoPorc: TdxCurrencyEdit;
    Label1: TcxLabel;
    Total: TdxCurrencyEdit;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    Label7: TcxLabel;
    EdNome: TdxEdit;
    Label8: TcxLabel;
    EdDocumento: TdxEdit;
    Label11: TcxLabel;
    Panel1: TPanel;
    BtnOk: TcxButton;
    Label2: TcxLabel;
    Acrescimo: TdxCurrencyEdit;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DataExit(Sender: TObject);
    procedure DescontoPorcExit(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure TotalExit(Sender: TObject);
    procedure AcrescimoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor_Total: Extended ;
  end;

var
  FrmDadosDesconto: TFrmDadosDesconto;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm;

{$R *.DFM}

procedure TFrmDadosDesconto.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmDadosDesconto.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosDesconto.ActOkExecute(Sender: TObject);
begin
     IF ARREDONDA(Total.Value,2) <> 0
     THEN BEGIN
          Modalresult := mrok ;
     END
     ELSE BEGIN
          MessageDlg('O VAlor Digitado Não Pode Ser Zero!',MtError,[MbOk],0);
          Abort;
     END;
end;

procedure TFrmDadosDesconto.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmDadosDesconto.ActiveControl = Desconto
     Then begin
          Desconto.Value := Calculadora ;
     end;

     If FrmDadosDesconto.ActiveControl = DescontoPorc
     Then begin
          DescontoPorc.Value := Calculadora ;
     end;

     If FrmDadosDesconto.ActiveControl = Total
     Then begin
          Total.Value := Calculadora ;
     end;
end;

procedure TFrmDadosDesconto.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     Valor_Total := Total.Value ;
end;

procedure TFrmDadosDesconto.pagoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmDadosDesconto.HISTORICOExit(Sender: TObject);
begin

     TIRACORFUNDO( SENDER );
end;

procedure TFrmDadosDesconto.DataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmDadosDesconto.DescontoPorcExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );

     Desconto.Value := (Valor.Value * DescontoPorc.Value) / 100 ;

     Total.Value := ARREDONDA(Valor.Value - Desconto.Value,2) ;
end;

procedure TFrmDadosDesconto.DescontoExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );

     DescontoPorc.Value := ( Desconto.Value * 100 ) / valor.value ;

     Total.Value := ARREDONDA(Valor.Value - Desconto.Value + Acrescimo.Value ,2) ;
end;

procedure TFrmDadosDesconto.TotalExit(Sender: TObject);
Var
   V: REAL ;
begin
     TIRACORFUNDO( SENDER );
     If total.value <= Valor.Value
     then begin
          Desconto.Value     := Valor.Value - Total.Value ;
          DescontoPorc.Value := ( Desconto.Value * 100 ) / Valor.Value ;
          Acrescimo.Value    := 0 ;
     end
     else begin
          Acrescimo.Value    := Total.Value - Valor.Value ;
          DescontoPorc.Value := 0 ;
          Desconto.Value     := 0 ;
     end;
end;

procedure TFrmDadosDesconto.AcrescimoExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );

     If Acrescimo.Value > 0
     then
         Total.Value := ARREDONDA(Valor.Value + Acrescimo.Value - Desconto.value ,2) ;
end;

end.
