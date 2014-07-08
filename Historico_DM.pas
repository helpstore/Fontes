unit Historico_DM;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  RDprint, Db, IBCustomDataSet, IBQuery;

type
  TDMHistorico = class(TDataModule)
    Vendas: TIBQuery;
    print: TRDprint;
    VendasCODIGO: TIntegerField;
    VendasDATA: TDateTimeField;
    VendasFECHADA: TIBStringField;
    VendasHISTORICO: TIBStringField;
    VendasPESSOA_FJ: TIntegerField;
    VendasPESSOA_RAZAO: TIBStringField;
    VendasUSUARIO: TIntegerField;
    VendasNATUREZA: TIntegerField;
    VendasNOME_NATUREZA: TIBStringField;
    VendasENVIADA_CX: TIBStringField;
    VendasFORMA_PGTO: TIntegerField;
    VendasNUM_NF: TIntegerField;
    VendasNUM_CUPOM: TIntegerField;
    VendasPROPRIEDADE: TIntegerField;
    VendasCONVENIADO: TIntegerField;
    VendasTIPO_DOCTO: TIBStringField;
    VendasLOCAL_COBRANCA: TIntegerField;
    VendasDESC_ACRES: TIBBCDField;
    VendasENTRADA: TIBBCDField;
    VendasDINHEIRO: TIBBCDField;
    VendasCHEQUE: TIBBCDField;
    VendasCARTAO: TIBBCDField;
    VendasTICKET: TIBBCDField;
    VendasTOTAL: TIBBCDField;
    VendasVLRLIQUIDO: TIBBCDField;
    VendasVLR_PARC_LC: TIBBCDField;
    VendasTERCEIRO: TIntegerField;
    VendasCARGA: TIntegerField;
    VendasVOLUME: TIBBCDField;
    VendasPESO: TIBBCDField;
    VendasREQUISICAO: TIBStringField;
    VendasDESCRICAO: TBlobField;
    VendasTIPO_VENDA: TIBStringField;
    VendasNOME_CONSUMIDOR: TIBStringField;
    VendasORCAMENTO: TIntegerField;
    VendasVENDEDO: TIntegerField;
    VendasNOME_VENDEDOR: TIBStringField;
    SelPessoas: TIBQuery;
    SelPessoasCODIGO: TIntegerField;
    SelPessoasNOME_RAZAO: TIBStringField;
    SelPessoasFONE: TIBStringField;
    SelPessoasPESSOA_FJ: TIntegerField;
    SelPessoasFANTASIA: TIBStringField;
    SelPessoasCPF_CGC: TIBStringField;
    SelPessoasBLOQUEADO: TIBStringField;
    SelPessoasCLASSIFICACAO: TIBStringField;
    SelPessoasUF: TIBStringField;
    SelPessoasEMPRESA: TIBStringField;
    VendasCPF_CGC: TIBStringField;
    VendasDATA_CAIXA: TDateTimeField;
    Fat_VendasItens: TIBQuery;
    Fat_VendasItensPRODUTO: TIBStringField;
    Fat_VendasItensSEQUENCIA: TSmallintField;
    Fat_VendasItensQUANTIDADE: TIBBCDField;
    Fat_VendasItensNOME: TIBStringField;
    Fat_VendasItensPRC_UNITARIO: TIBBCDField;
    Fat_VendasItensPRC_CUSTO: TIBBCDField;
    Fat_VendasItensICM: TIBBCDField;
    Fat_VendasItensICM_SUBS: TIBBCDField;
    Fat_VendasItensIPI: TIBBCDField;
    Fat_VendasItensVOLUME: TIBBCDField;
    Fat_VendasItensPESO: TIBBCDField;
    Fat_VendasItensDESCONTO: TIBBCDField;
    Fat_VendasItensPORC_DESC: TIBBCDField;
    Fat_VendasItensUNIDADE: TIBStringField;
    Fat_VendasItensPRC_UNIT_ORIGINAL: TIBBCDField;
    Fat_VendasItensNOME_PRODUTO: TIBStringField;
    Fat_VendasItensALIQUOTA: TIBStringField;
    Fat_VendasItensPRODUTOFIS: TIBStringField;
    Fat_VendasItensNOME_FIS: TIBStringField;
    Fat_VendasItensCTE: TIntegerField;
    Fat_VendasItensCTIE: TIntegerField;
    Fat_VendasItensORIGEM: TIntegerField;
    Fat_VendasItensREDUCAO: TIntegerField;
    Fat_VendasItensSUBUNIDADE: TIntegerField;
    VendasOBSERVACAO: TIBStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure SelPessoasBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMHistorico: TDMHistorico;

implementation

uses Application_DM, Funcoes;

{$R *.DFM}

procedure TDMHistorico.DataModuleCreate(Sender: TObject);
begin
     IniciaComponentesDm ( Sender as TDataModule );
end;

procedure TDMHistorico.SelPessoasBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

end.
