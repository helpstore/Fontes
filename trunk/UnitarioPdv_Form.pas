 unit UnitarioPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib, DBCtrls;

type
  TFrmUnitarioPdv = class(TForm)
    PnTotal: TPanel;
    ActLista: TActionList;
    ActFechar: TAction;
    ActCancelar: TAction;
    VALOR: TEdit;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    Vlr : Extended ;
  end;

var
  FrmUnitarioPdv: TFrmUnitarioPdv;

implementation

uses Funcoes, Pdv_Frm, Pdv_DM, Application_DM;

{$R *.DFM}

procedure TFrmUnitarioPdv.ActFecharExecute(Sender: TObject);
begin
     Try
        Vlr := arredonda(StrToFloat ( Valor.Text ), 2);

        If Vlr <= 0
        then begin
             MensagemPdv('Valor Inválido!');
             Valor.SelectAll ;
             Valor.SetFocus ;
        end
        else begin
             IF arredonda(Vlr,2) > Arredonda(dmapp.PDV_UNITARIO,2)
             THEN BEGIN
                  MensagemPdv('Valor Inválido!');
                  Valor.SelectAll ;
                  Valor.SetFocus ;
             END
             ELSE
                 ModalResult := MrOk ;
        end
     except
           Valor.SelectAll ;
           Valor.SetFocus ;
           ModalResult := MrCancel ;
     end
end;

procedure TFrmUnitarioPdv.FormShow(Sender: TObject);
begin
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnTotal.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          VALOR.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     FrmUnitarioPdv.Top  := FrmPdv.PNUNITARIO.Top  ;
     FrmUnitarioPdv.Left := FrmPdv.PNUNITARIO.Left ;
     Valor.SetFocus ;
end;

procedure TFrmUnitarioPdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrOk ;
end;

procedure TFrmUnitarioPdv.VALORKeyPress(Sender: TObject; var Key: Char);
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
