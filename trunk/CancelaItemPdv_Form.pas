 unit CancelaItemPdv_Form;

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
  TFrmCancelaItemPdv = class(TForm)
    PnTotal: TPanel;
    ActLista: TActionList;
    ActFechar: TAction;
    ActCancelar: TAction;
    RxLabel1: TcxLabel;
    pncodigo: TPanel;
    Edt: TEdit;
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdtExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCancelaItemPdv: TFrmCancelaItemPdv;

implementation

uses Funcoes, Pdv_Frm, Pdv_DM, Application_DM;

{$R *.DFM}

procedure TFrmCancelaItemPdv.FormShow(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnTotal.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          pncodigo.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          RxLabel1.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          Edt.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     Edt.SetFocus ;
end;

procedure TFrmCancelaItemPdv.ActCancelarExecute(Sender: TObject);
begin
     EDT.Clear ;
     ModalResult := MrCANCEL ;
end;

procedure TFrmCancelaItemPdv.ActFecharExecute(Sender: TObject);
begin
     If (Edt.text) = ''
     then begin
          mensagempdv('DIGITE UM PRODUTO VALIDO');
          Edt.SetFocus ;
     end
     ELSE BEGIN
          MODALRESULT := MROK ;
     END;
end;

procedure TFrmCancelaItemPdv.EdtExit(Sender: TObject);
begin
     If (Edt.text) = ''
     then begin
          ActFechar.Execute ;          
     END;
end;

end.
