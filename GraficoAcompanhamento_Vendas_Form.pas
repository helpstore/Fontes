unit GraficoAcompanhamento_Vendas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart;

type
  TFrmAcompanhamentoVendas = class(TForm)
    GRAFICO: TDBChart;
    Series2: TBarSeries;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAcompanhamentoVendas: TFrmAcompanhamentoVendas;

implementation

uses Caixa_Dm;

{$R *.DFM}

end.
