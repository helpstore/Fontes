 unit SerieCustomizaveis_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBQuery;

type
  TDmSerie_Customizaveis = class(TDataModule)
    edtLayoutCartaSCPC: TIBDataSet;
    edtLayoutCartaSCPCCNPJ: TIBStringField;
    dsLayoutCartaSCPC: TDataSource;
    edtLayoutCartaSCPCCONFIG_CARTA_SCPC: TMemoField;
    edtLayoutConvenio: TIBDataSet;
    dsLayoutConvenio: TDataSource;
    edtLayoutConvenioCNPJ: TIBStringField;
    edtLayoutConvenioCONFIG_CONVENIO_PDV: TMemoField;
    dsLayoutRecibo: TDataSource;
    EdtRecibo: TIBDataSet;
    EdtReciboCONFIG_RECIBO: TMemoField;
    EdtReciboCNPJ: TIBStringField;
    edtLayoutOS: TIBDataSet;
    dsLayoutOS: TDataSource;
    edtLayoutOSCONFIG_OS: TMemoField;
    edtLayoutOSCNPJ: TIBStringField;
    edtLayoutReceita: TIBDataSet;
    dsLayoutReceita: TDataSource;
    edtLayoutReceitaCNPJ: TIBStringField;
    edtLayoutReceitaCONFIG_AGR_RECEITA: TMemoField;
    edtLayoutActRecibo: TIBDataSet;
    dsLayoutActRecibo: TDataSource;
    edtLayoutActReciboCONFIG_ACERTO_1: TMemoField;
    edtLayoutActReciboCNPJ: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmSerie_Customizaveis: TDmSerie_Customizaveis;

implementation

{$R *.DFM}

{ TDmSerie_Customizaveis }



end.
