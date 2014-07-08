 unit Rel_GraficoVendasProd_Form;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, TeEngine, Series, TeeProcs,
  Chart, DBChart, QrTee;

type
  TQrp2 = class(TQuickRep)
    QRDBChart1: TQRDBChart;
    GRAFICO: TQRChart;
    Series1: TPieSeries;
    TitleBand1: TQRBand;
    Series2: TBarSeries;
  private

  public

  end;

var
  Qrp2: TQrp2;

implementation

uses Relatorios_DM, Application_DM, GraficoVendas_Form,
  GraficoVendasGrupoProdutos_Form;

{$R *.DFM}

end.
