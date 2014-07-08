 unit Calculadora_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCalc, dxCntner, ActnList, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  ExtCtrls ;


type
  TFrmCalculadora = class(TForm)
    dxCalculator1: TdxCalculator;
    EdValor: TdxCalcDisplay;
    Act: TActionList;
    ActRetorno: TAction;
    ActCancelar: TAction;
    Image1: TImage;
    procedure ActRetornoExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

uses Funcoes;

{$R *.DFM}

procedure TFrmCalculadora.ActRetornoExecute(Sender: TObject);
begin
     modalresult := MrOk ;
end;

procedure TFrmCalculadora.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrCancel ;
end;

procedure TFrmCalculadora.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

end.
