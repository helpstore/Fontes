unit QuantidadePdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib, DBCtrls;

type
  TFrmQuantidadePdv = class(TForm)
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
  FrmQuantidadePdv: TFrmQuantidadePdv;

implementation

uses Funcoes, Pdv_Frm, Pdv_DM;

{$R *.DFM}

procedure TFrmQuantidadePdv.ActFecharExecute(Sender: TObject);
begin
     Try
        Vlr := arredonda(StrToFloat ( Valor.Text ), 3);

        If Vlr < 0
        then begin
             MensagemPdv('Valor Inválido!');
             Valor.SelectAll ;
             Valor.SetFocus ;
        end
        else
            ModalResult := MrOk ;
     except
           Valor.SelectAll ;
           Valor.SetFocus ;
           ModalResult := MrCancel ;
     end
end;

procedure TFrmQuantidadePdv.FormShow(Sender: TObject);
begin
     FrmQuantidadePdv.Top  := FrmPdv.PNQNTDE.Top  ;
     FrmQuantidadePdv.Left := FrmPdv.PNQNTDE.Left ;
     Valor.SetFocus ;
end;

procedure TFrmQuantidadePdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrOk ;

end;

procedure TFrmQuantidadePdv.VALORKeyPress(Sender: TObject; var Key: Char);
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
