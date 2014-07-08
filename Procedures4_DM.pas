 unit Procedures4_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBStoredProc, IBQuery;

type
  TDMProcs4 = class(TDataModule)
    SOMA_CONCILIACAO_CARTAO: TIBStoredProc;
    PROCESSA_CONCILIACAO_CARTAO: TIBStoredProc;
    IMPORTA_ORDEM_SERVICO: TIBStoredProc;
    VALIDA_CONVENIO: TIBStoredProc;
    VERIFICA_FIN_CHEQUES: TIBStoredProc;
    MARCA_NUMNOTA_AGRUPADA: TIBStoredProc;
    Seleciona_Venda_Agrupada: TIBStoredProc;
    Seleciona_Venda: TIBStoredProc;
    Soma_Venda_Selecionada: TIBQuery;
    Soma_Venda_SelecionadaSOMA: TIBBCDField;
    Soma_Venda_SelecionadaNUMERO: TIntegerField;
    VERIFICA_IE_RG_AGRUPADA: TIBStoredProc;
    VERIFICA_EST_FISCAL_AGRUPADA: TIBStoredProc;
    QUANTIDADE_PRODUTO: TIBStoredProc;
    TROCA_PRODUTO_FISCAL: TIBStoredProc;
    INDEXA_CUSTOS: TIBStoredProc;
    COTACAO_DOLAR: TIBStoredProc;
    SOMA_ENTRADA_PAG_REC_CAIXA: TIBStoredProc;
    SALDO_INICIAL_ESTOQUE_CAIXA: TIBStoredProc;
    EXCLUI_ORDEM: TIBStoredProc;
    APAGA_PARCELAS_GARANTIAS: TIBStoredProc;
    ENVIA_GARANTIA_CAIXA: TIBStoredProc;
    ENCERRA_GARANTIA: TIBStoredProc;
    SOMAS_FLUXO: TIBStoredProc;
    PROCESSA_CONCILIACAO_CHEQUE: TIBStoredProc;
    SALDO_DRE: TIBStoredProc;
    EXTORNA_NOTA_CANCELADA: TIBStoredProc;
    TRANSFERE_NOTA_ENTRE_CLIENTE: TIBStoredProc;
    MARCA_NUMNOTA_OS: TIBStoredProc;
    ATUALIZA_ORCAMENTOS: TIBStoredProc;
    DESVINCULA_RECEBER_FATURA: TIBStoredProc;
    Lanca_Contabilidade_Movtos_Geral: TIBStoredProc;
    Lanca_Contabilidade_Prod_Caixa_Geral: TIBStoredProc;
    LANCA_RECEBER_CAIXA_GERAL: TIBStoredProc;
    LANCA_NOTAS_CAIXA_GERAL: TIBStoredProc;
    LANCA_CARTAO_CAIXA_GERAL: TIBStoredProc;
    LANCA_DINHEIRO_CAIXA_GERAL: TIBStoredProc;
    LANCA_MOEDAS_CAIXA_GERAL: TIBStoredProc;
    LANCA_CHQ_PRAZO_CAIXA_GERAL: TIBStoredProc;
    LANCA_HAVER_CAIXA_GERAL: TIBStoredProc;
    LANCA_BAIXA_HAVER_CAIXA_GERAL: TIBStoredProc;
    LANCA_CONTA_RECEBER_CAIXA_GERAL: TIBStoredProc;
    APAGA_ETIQUETAS_IMPRESSAS: TIBStoredProc;
    APAGA_ETIQUETAS_MATRIZ: TIBStoredProc;
    INSERE_ETIQUETA_PRODUTO: TIBStoredProc;
    FATURA_OFC_ORDEM: TIBStoredProc;
    EXCLUI_ORDEM_ORC: TIBStoredProc;
    SALDO_ANTERIOR_CAIXA: TIBStoredProc;
    POSSUI_GRADE: TIBStoredProc;
    IMPORTA_ORDEM_SERVICO_EXISTENTE: TIBStoredProc;
    BAIXA_ABASTECIMENTOS_AVULSOS: TIBStoredProc;
    CRIA_LOG_TRANSACOES: TIBStoredProc;
    PCD_OS_GERA_VENDA: TIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProcs4: TDMProcs4;

implementation

uses Application_DM;

{$R *.DFM}

end.
