unit Help_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib,  cxGraphics, cxControls, cxLookAndFeels,
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
  TfrmHelpPDV = class(TForm)
    ActLista: TActionList;
    ActSair: TAction;
    ActLeituraX: TAction;
    ActCancelaIUltimotem: TAction;
    ActCancelaItem: TAction;
    ActCancelaCupom: TAction;
    ActAbreGaveta: TAction;
    ActAcrescimoDesconto: TAction;
    ActLeituraZ: TAction;
    PnFuncoes: TPanel;
    ActConsultaProd: TAction;
    ActArredondaTrunca: TAction;
    ActNominal: TAction;
    ActExtrato: TAction;
    ActModoInsercao: TAction;
    ActSetaPedido: TAction;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label25: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHelpPDV: TfrmHelpPDV;

implementation

uses Funcoes,
     Pdv_Frm,
     Pdv_DM,
     Application_DM,
     ConsultaProdPdv_Form,
     SenhaGerencialPdv_Form,
     ArredondaTruncaPdv_Form,
     CancelaItemPdv_Form, SetaNumPedidodv_Form;

{$R *.DFM}

procedure TfrmHelpPDV.FormShow(Sender: TObject);
var
  x : integer;
begin
    frmHelpPDV.Top  := FrmPdv.Lista.Top  ;
    frmHelpPDV.Left := FrmPdv.Lista.Left ;

    //TROCANDO COR DE FUNDO
    IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0')) then
      PnFuncoes.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));

    if ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0')) then
    begin
      for x:= 0 to ComponentCount -1 do
      begin
        if Components[x] is TcxLabel then
          TcxLabel(Components[x]).Style.Font.Color :=  STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
      end;
    end;

end;

procedure TfrmHelpPDV.ActSairExecute(Sender: TObject);
begin
     ModalResult := MrOk ;
end;

end.
