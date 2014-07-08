unit AcrDescPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmAcrescimoDescontoPdv = class(TForm)
    PnTotal: TPanel;
    ActLista: TActionList;
    ActFechar: TAction;
    ActCancelar: TAction;
    VALOR: TdxCurrencyEdit;
    RxLabel1: TcxLabel;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAcrescimoDescontoPdv: TFrmAcrescimoDescontoPdv;

implementation

uses Funcoes, Pdv_Frm, Pdv_DM;

{$R *.DFM}

procedure TFrmAcrescimoDescontoPdv.ActFecharExecute(Sender: TObject);
Var
   V: Extended ;
begin
     V := Valor.Value ;

     IF V < 0
     THEN
         V := V * -1 ;

     If arredonda(V,2) > arredonda(DmPdv.TotalCupom,2)
     then begin
          Beep;
          MensagemPdv('O Valor Inválido!');
          Valor.SelectAll ;
          Valor.SetFocus ;
     end
     else begin
          If arredonda(V,2) = 0
          then begin
               ModalResult := MrCancel ;
          end
          else begin
               ModalResult := MrOk ;
          end;
     end;
end;

procedure TFrmAcrescimoDescontoPdv.FormShow(Sender: TObject);
begin
     Valor.SetFocus ;
end;

procedure TFrmAcrescimoDescontoPdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrOk ;

end;

end.
