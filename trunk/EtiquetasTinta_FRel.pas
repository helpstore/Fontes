unit EtiquetasTinta_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFRelEtiquetasTinta = class(TForm)
    Qrep: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEtiquetasTinta: TFRelEtiquetasTinta;

implementation

uses Estoque_Dm;

{$R *.DFM}

end.
