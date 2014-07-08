 unit Procedures5_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBStoredProc;

type
  TDMProcs5 = class(TDataModule)
    LANCA_DESC_JUR_VND_CAIXA_GERAL: TIBStoredProc;
    LANCA_DIFERENCA_CAIXA_GERAL: TIBStoredProc;
    SOMA_CHEQUE_VISTA_VENDA: TIBStoredProc;
    SOMA_CARTAO_FLUXO: TIBStoredProc;
    ULTIMA_GRADE: TIBStoredProc;
    VER_VENDAS_VENDEDOR_ABERTAS: TIBStoredProc;
    VERIFICA_CAIXA_ABERTO: TIBStoredProc;
    ANALISA_CLIENTE: TIBStoredProc;
    VER_EST_PRODUTOS_TRIBUT_REVENDA: TIBStoredProc;
    SETAR_IMP_NF_SERVICO: TIBStoredProc;
    VER_DADOS_BAIXA_VENDA: TIBStoredProc;
    VERIFICA_CPF: TIBStoredProc;
    SELECIONA_COBRANCA: TIBStoredProc;
    AGENDAR_COBRANCAS_AGRUPADA: TIBStoredProc;
    INSERE_PRODUTO_PDV: TIBStoredProc;
    Insere_Nota_Fatura: TIBStoredProc;
    FECHA_ENTRADA_MANUAL: TIBStoredProc;
    SOMA_CHEQUE_DEVOLVIDOS_PESSOA: TIBStoredProc;
    SOMA_CARTAO_VISTA_VENDA: TIBStoredProc;
    TRANSFERE_PRODUTOS: TIBStoredProc;
    CONFERE_DOCTO_PAGAR: TIBStoredProc;
    VER_VENDAS_MESAS_ABERTAS: TIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProcs5: TDMProcs5;

implementation

uses Application_DM;

{$R *.DFM}

end.
