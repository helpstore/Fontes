unit ArredondaTruncaPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib, DBCtrls;

type
  TFrmArredondaTruncaPdv = class(TForm)
    PnTotal: TPanel;
    ActLista: TActionList;
    ActFechar: TAction;
    ActCancelar: TAction;
    CkArredonda: TRadioButton;
    RadioButton2: TRadioButton;
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure VALORKeyPress(Sender: TObject; var Key: Char);
    procedure CkArredondaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmArredondaTruncaPdv: TFrmArredondaTruncaPdv;

implementation

uses Funcoes, Pdv_Frm, Pdv_DM;

{$R *.DFM}

procedure TFrmArredondaTruncaPdv.FormShow(Sender: TObject);
begin
     FrmArredondaTruncaPdv.Top  := FrmPdv.PNUNITARIO.Top  ;
     FrmArredondaTruncaPdv.Left := FrmPdv.PNUNITARIO.Left ;
     CkArredonda.SetFocus ;
end;

procedure TFrmArredondaTruncaPdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrOk ;
end;

procedure TFrmArredondaTruncaPdv.VALORKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmArredondaTruncaPdv.CkArredondaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then
         Modalresult := MrOk ;
end;

end.
