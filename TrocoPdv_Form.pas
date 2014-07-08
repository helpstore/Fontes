 unit TrocoPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, ActnList, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel;

type
  TFrmTroco = class(TForm)
    PnTotal: TPanel;
    lbl1: TcxLabel;
    ActLista: TActionList;
    ActFechar: TAction;
    lbl2: TcxLabel;
    lbl3: TcxLabel;
    lbl4: TcxLabel;
    lbl5: TcxLabel;
    lbl6: TcxLabel;
    lbl7: TcxLabel;
    lbl8: TcxLabel;
    lbl9: TcxLabel;
    ActCancelar: TAction;
    RxLabel1: TcxLabel;
    RxLabel2: TcxLabel;
    RxLabel3: TcxLabel;
    RxLabel4: TcxLabel;
    RxLabel5: TcxLabel;
    RxLabel6: TcxLabel;
    RxLabel7: TcxLabel;
    RxLabel8: TcxLabel;
    RxLabel9: TcxLabel;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure SobeLabel ;

  private
    { Private declarations }
  public
    { Public declarations }
    Valor: Extended ;
  end;

var
  FrmTroco: TFrmTroco;
  Vezes   : Integer;
  Nota100, Nota50, Nota10, Nota5, Nota1, Moeda50, Moeda10, Moeda5, Moeda1: Integer;

implementation

uses Funcoes, Application_DM;

{$R *.DFM}

procedure TFrmTroco.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmTroco.FormShow(Sender: TObject);
Var
   Resto: Extended ;
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnTotal.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          RxLabel1.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel2.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel3.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel4.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel5.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel6.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel7.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel8.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel9.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));

          Lbl1.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl2.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl3.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl4.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl5.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl6.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl7.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl8.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Lbl9.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     FrmTroco.Top  := 65 ;
     FrmTroco.Left := 38 ;
     Nota100  := 0;
     Nota50   := 0;
     Nota10   := 0;
     Nota5    := 0;
     Nota1    := 0;
     Moeda50  := 0;
     Moeda10  := 0;
     Moeda5   := 0;
     Moeda1   := 0;

     If Valor < 0
     then
         Valor := Valor  * - 1 ;

     Resto := Valor - ((Trunc(Valor / 100))*100) ;

     if (Arredonda(Resto,2) > 0) or (((Trunc(Valor / 100))*100) = valor )
     then
         Nota100 := Trunc(Valor / 100) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((Trunc(Valor / 50))*50) ;

     if (Arredonda(Resto,2) > 0 ) or (Arredonda(Valor,2) = 50) or (((Trunc(Valor / 50))*50) = valor )
     then
         Nota50 := Trunc(Valor / 50) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((Trunc(Valor / 10))*10) ;

     if ( Arredonda(Resto,2) > 0) or (Arredonda(Valor,2) = 10) or (((Trunc(Valor / 10))*10) = valor )
     then
         Nota10 := Trunc(Valor / 10) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((Trunc(Valor / 5))*5) ;

     if (Arredonda(Resto,2) > 0) or (Arredonda(Valor,2) = 5) or (((Trunc(Valor / 5))*5) = valor )
     then
         Nota5 := Trunc(Valor / 5) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((Trunc(Valor / 1))*1) ;

     if (Arredonda(Resto,2) > 0) or (Arredonda(Valor,2) = 1) or (((Trunc(Valor / 1))*1) = valor )
     then
         Nota1 := Trunc(Valor / 1) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((Trunc(Valor / 0.5))*0.5) ;

     if (Arredonda(Resto,1) > 0) or (Arredonda(Valor,1) = 0.5) or (((Trunc(Valor / 0.5))*0.5) = valor )
     then
         Moeda50 := Trunc(Valor / 0.5) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((Trunc(Valor / 0.1))*0.1) ;

     if (Arredonda(Resto,1) > 0) or (Arredonda(Valor,1) = 0.1) or (((Trunc(Valor / 0.1))*0.1) = valor )
     then
         Moeda10 := Trunc(Valor / 0.1) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((int(Valor / 0.05))* 0.05) ;

     if (Arredonda(Resto,2) > 0) or (Arredonda(Valor,2) = 0.05) or (((Trunc(Valor / 0.05))*0.05) = valor )
     then
         Moeda5 := Trunc(Valor / 0.05) ;

     Valor := Arredonda(Resto,2) ;

     Resto := Valor - ((int(Valor / 0.01))*0.01) ;

     if (Arredonda(Resto,2) >= 0) or (Arredonda(Valor,2) = 0.01) or (((Trunc(Valor / 0.01))*0.01) = valor )
     then
         Moeda1 := Trunc(Valor / 0.01) ;

     if nota100 > 0
     then begin
          lbl1.caption := IntToStr(Nota100) ;
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if nota50 > 0
     then begin
         lbl2.caption := IntToStr(Nota50) ;
         Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if nota10 > 0
     then begin
          lbl3.caption := IntToStr(Nota10);
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if nota5 > 0
     then begin
          lbl4.caption := IntToStr(Nota5) ;
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if nota1 > 0
     then begin
          lbl5.caption := IntToStr(Nota1) ;
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if moeda50 > 0
     then begin
          lbl6.caption := IntToStr(moeda50) ;
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if moeda10 > 0
     then begin
          lbl7.caption := IntToStr(moeda10) ;
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if moeda5 > 0
     then begin
          lbl8.caption := IntToStr(moeda5) ;
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

     if moeda1 > 0
     then begin
          lbl9.caption := IntToStr(moeda1) ;
          Vezes := Vezes + 1;
     end
     else
         SobeLabel ;

end;

procedure TFrmTroco.ActCancelarExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmTroco.SobeLabel ;
begin
     //Sobe os Labels e o Form;
     If ( Nota100 = 0 ) and ( Lbl1.Visible )
     then begin
          Lbl1.Visible := False ;
          RxLabel1.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl2.Top := Lbl2.Top - 30 ;
          Lbl3.Top := Lbl3.Top - 30 ;
          Lbl4.Top := Lbl4.Top - 30 ;
          Lbl5.Top := Lbl5.Top - 30 ;
          Lbl6.Top := Lbl6.Top - 30 ;
          Lbl7.Top := Lbl7.Top - 30 ;
          Lbl8.Top := Lbl8.Top - 30 ;
          Lbl9.Top := Lbl9.Top - 30 ;

          RxLabel2.Top := RxLabel2.Top - 30 ;
          RxLabel3.Top := RxLabel3.Top - 30 ;
          RxLabel4.Top := RxLabel4.Top - 30 ;
          RxLabel5.Top := RxLabel5.Top - 30 ;
          RxLabel6.Top := RxLabel6.Top - 30 ;
          RxLabel7.Top := RxLabel7.Top - 30 ;
          RxLabel8.Top := RxLabel8.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Nota50 = 0 ) and ( Lbl2.Visible )
     then begin
          Lbl2.Visible := False ;
          RxLabel2.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl3.Top := Lbl3.Top - 30 ;
          Lbl4.Top := Lbl4.Top - 30 ;
          Lbl5.Top := Lbl5.Top - 30 ;
          Lbl6.Top := Lbl6.Top - 30 ;
          Lbl7.Top := Lbl7.Top - 30 ;
          Lbl8.Top := Lbl8.Top - 30 ;
          Lbl9.Top := Lbl9.Top - 30 ;

          RxLabel3.Top := RxLabel3.Top - 30 ;
          RxLabel4.Top := RxLabel4.Top - 30 ;
          RxLabel5.Top := RxLabel5.Top - 30 ;
          RxLabel6.Top := RxLabel6.Top - 30 ;
          RxLabel7.Top := RxLabel7.Top - 30 ;
          RxLabel8.Top := RxLabel8.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Nota10 = 0 ) and ( Lbl3.Visible )
     then begin
          Lbl3.Visible := False ;
          RxLabel3.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl4.Top := Lbl4.Top - 30 ;
          Lbl5.Top := Lbl5.Top - 30 ;
          Lbl6.Top := Lbl6.Top - 30 ;
          Lbl7.Top := Lbl7.Top - 30 ;
          Lbl8.Top := Lbl8.Top - 30 ;
          Lbl9.Top := Lbl9.Top - 30 ;

          RxLabel4.Top := RxLabel4.Top - 30 ;
          RxLabel5.Top := RxLabel5.Top - 30 ;
          RxLabel6.Top := RxLabel6.Top - 30 ;
          RxLabel7.Top := RxLabel7.Top - 30 ;
          RxLabel8.Top := RxLabel8.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Nota5 = 0 ) and ( Lbl4.Visible )
     then begin
          Lbl4.Visible := False ;
          RxLabel4.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl5.Top := Lbl5.Top - 30 ;
          Lbl6.Top := Lbl6.Top - 30 ;
          Lbl7.Top := Lbl7.Top - 30 ;
          Lbl8.Top := Lbl8.Top - 30 ;
          Lbl9.Top := Lbl9.Top - 30 ;

          RxLabel5.Top := RxLabel5.Top - 30 ;
          RxLabel6.Top := RxLabel6.Top - 30 ;
          RxLabel7.Top := RxLabel7.Top - 30 ;
          RxLabel8.Top := RxLabel8.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Nota1 = 0 ) and ( Lbl5.Visible )
     then begin
          Lbl5.Visible := False ;
          RxLabel5.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl6.Top := Lbl6.Top - 30 ;
          Lbl7.Top := Lbl7.Top - 30 ;
          Lbl8.Top := Lbl8.Top - 30 ;
          Lbl9.Top := Lbl9.Top - 30 ;

          RxLabel6.Top := RxLabel6.Top - 30 ;
          RxLabel7.Top := RxLabel7.Top - 30 ;
          RxLabel8.Top := RxLabel8.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Moeda50 = 0 ) and ( Lbl6.Visible )
     then begin
          Lbl6.Visible := False ;
          RxLabel6.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl7.Top := Lbl7.Top - 30 ;
          Lbl8.Top := Lbl8.Top - 30 ;
          Lbl9.Top := Lbl9.Top - 30 ;

          RxLabel7.Top := RxLabel7.Top - 30 ;
          RxLabel8.Top := RxLabel8.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Moeda10 = 0 ) and ( Lbl7.Visible )
     then begin
          Lbl7.Visible := False ;
          RxLabel7.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl8.Top := Lbl8.Top - 30 ;
          Lbl9.Top := Lbl9.Top - 30 ;

          RxLabel8.Top := RxLabel8.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Moeda5 = 0 ) and ( Lbl8.Visible )
     then begin
          Lbl8.Visible := False ;
          RxLabel8.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;

          Lbl9.Top := Lbl9.Top - 30 ;
          RxLabel9.Top := RxLabel9.Top - 30 ;
     end;

     If ( Moeda1 = 0 ) and ( Lbl9.Visible )
     then begin
          Lbl9.Visible := False ;
          RxLabel9.Visible := False ;

          FrmTroco.Height := FrmTroco.Height - 30 ;
     end;
end;
end.
