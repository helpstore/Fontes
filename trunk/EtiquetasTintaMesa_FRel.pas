unit EtiquetasTintaMesa_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls;

type
  TFRelEtiquetasTintaMesa = class(TForm)
    Qrep: TQuickRep;
    DetailBand1: TQRBand;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelEtiquetasTintaMesa: TFRelEtiquetasTintaMesa;

implementation

uses Estoque_Dm;

{$R *.DFM}

end.
