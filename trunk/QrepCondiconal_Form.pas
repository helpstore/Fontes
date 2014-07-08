unit QrepCondiconal_Form;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls;

type
  TQrepCondicional = class(TQuickRep)
    CABECALHO: TQRBand;
    RADAPE: TQRBand;
    QRShape1: TQRShape;
    QRBand1: TQRBand;
    procedure RADAPEBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public
        Total, Total_Quantidade: Real;
  end;

var
  QrepCondicional: TQrepCondicional;

implementation

uses Vendas_Dm, Funcoes, Application_DM;

{$R *.DFM}

procedure TQrepCondicional.RADAPEBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin

     Total := 0;
     Total_Quantidade := 0;
end;

procedure TQrepCondicional.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     With DmVendas do
     begin
         { LblQuantidade.Caption := FormatFloat ('###,##0.00', Consulta_Venda_ItensQUANTIDADE.value );

          LblQuantidade.Caption := FormatFloat ('###,##0.00', Consulta_Venda_ItensQUANTIDADE.value );
          LblUnitario.Caption   := FormatFloat ('###,##0.00', Consulta_Venda_ItensPRC_UNITARIO.value );
          LblTotal.Caption      := FormatFloat ('###,##0.00', Consulta_Venda_ItensPRC_UNITARIO.value * Consulta_Venda_ItensQUANTIDADE.value );

          Total := Total + arredonda( Consulta_Venda_ItensPRC_UNITARIO.value * Consulta_Venda_ItensQUANTIDADE.value,2);

          Total_Quantidade := Total_Quantidade + arredonda( Consulta_Venda_ItensQUANTIDADE.value,2);
     }
     end;
end;

end.

