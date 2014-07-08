 unit Rel_GraficoVendas_Form;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DBChart, QrTee;

type
  TQrp = class(TQuickRep)
    QRDBChart1: TQRDBChart;
    GRAFICO: TQRChart;
    Series1: TPieSeries;
    TitleBand1: TQRBand;
    Series2: TBarSeries;
  private

  public

  end;

var
  Qrp: TQrp;

implementation

uses Relatorios_DM, Application_DM, GraficoVendas_Form;

{$R *.DFM}

end.
