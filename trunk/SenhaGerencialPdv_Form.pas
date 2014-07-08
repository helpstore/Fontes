 unit SenhaGerencialPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmSenhaGerencial = class(TForm)
    PnTotal: TPanel;
    ActLista: TActionList;
    ActFechar: TAction;
    ActCancelar: TAction;
    VALOR: TEdit;
    RxLabel1: TcxLabel;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSenhaGerencial: TFrmSenhaGerencial;

implementation

uses Funcoes, Pdv_Frm, Pdv_DM;

{$R *.DFM}

procedure TFrmSenhaGerencial.ActFecharExecute(Sender: TObject);
begin
     Try
        if trim(valor.text) <> ''
        then
            ModalResult := MrOk
        else
            ModalResult := MrCancel ;

     except
           Valor.SelectAll ;
           Valor.SetFocus ;
           ModalResult := MrCancel ;
     end
end;

procedure TFrmSenhaGerencial.FormShow(Sender: TObject);
begin
     FrmSenhaGerencial.Top  := FrmPdv.PNUNITARIO.Top  ;
     FrmSenhaGerencial.Left := FrmPdv.PNUNITARIO.Left ;
     Valor.SetFocus ;
end;

procedure TFrmSenhaGerencial.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := Mrcancel ;
end;

procedure TFrmSenhaGerencial.VALORKeyPress(Sender: TObject; var Key: Char);
begin
     //TROCA A TECLA 191 POR 46 = "."

     IF KEY = ';'
     THEN BEGIN
          KEY := ',' ;             
     END;

     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;
end;

end.
