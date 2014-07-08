 unit Calculadora_Pdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCalc, dxCntner, ActnList, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  ExtCtrls ;


type
  TFrmCalculadora_Pdv = class(TForm)
    dxCalculator1: TdxCalculator;
    EdValor: TdxCalcDisplay;
    Act: TActionList;
    ActRetorno: TAction;
    ActCancelar: TAction;
    procedure ActRetornoExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculadora_Pdv: TFrmCalculadora_Pdv;

implementation

uses Funcoes, Application_DM, Pdv_Frm;

{$R *.DFM}

procedure TFrmCalculadora_Pdv.ActRetornoExecute(Sender: TObject);
begin
     modalresult := MrOk ;
end;

procedure TFrmCalculadora_Pdv.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrCancel ;
end;

procedure TFrmCalculadora_Pdv.FormShow(Sender: TObject);
begin
  FrmCalculadora_Pdv.Top  := FrmPdv.Lista.Top  ;
  FrmCalculadora_Pdv.Left := FrmPdv.Lista.Left ;

  //TROCANDO COR DE FUNDO
  IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
  THEN BEGIN
       FrmCalculadora_Pdv.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
  END;

  IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
  THEN BEGIN
       EdValor.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
  end;
end;

end.
