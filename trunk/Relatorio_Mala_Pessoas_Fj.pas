 unit Relatorio_Mala_Pessoas_Fj;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQrepMalaPessoaFj = class(TQuickRep)
    Banda: TQRBand;
  private

  public

  end;

var
  QrepMalaPessoaFj: TQrepMalaPessoaFj;

implementation

uses Relatorios_DM,Consulta_Pessoas_Form;

{$R *.DFM}

end.
