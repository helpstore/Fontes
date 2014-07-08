 unit Procedures3_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBStoredProc;

type
  TDMProcs3 = class(TDataModule)
    ULTIMA_DUPLICATA: TIBStoredProc;
    CANCELA_PEDIDO: TIBStoredProc;
    SALDO_VENDAS_VISTA: TIBStoredProc;
    SALDO_VENDAS_PRAZO: TIBStoredProc;
    LANCA_HAVER_CAIXA: TIBStoredProc;
    LANCA_BAIXA_HAVER_CAIXA: TIBStoredProc;
    LANCA_NOTAS_CAIXA: TIBStoredProc;
    LANCA_MOEDAS_CAIXA: TIBStoredProc;
    LANCA_CARTAO_CAIXA: TIBStoredProc;
    LANCA_CHQ_PRAZO_CAIXA: TIBStoredProc;
    LANCA_DINHEIRO_CAIXA: TIBStoredProc;
    SEQUENCIA_ETIQUETA: TIBStoredProc;
    SOMA_CHEQUES_ABERTOS: TIBStoredProc;
    SOMA_CHEQUE_CONCILIADOS_DATA: TIBStoredProc;
    ULTIMO_CAIXA_FECHADO: TIBStoredProc;
    EXTORNA_CAIXA: TIBStoredProc;
    LANCA_CONTABILIDADE_ESTOQUE: TIBStoredProc;
    APAGA_PARCELAS_ORDEM: TIBStoredProc;
    MARCA_RECEBER_BAIXA: TIBStoredProc;
    VER_PESSOA_CONTA: TIBStoredProc;
    VER_CPF_CNPJ: TIBStoredProc;
    CONFERE_DOCTO_RECEBER: TIBStoredProc;
    BAIXA_RECEBER_SELECAO_LOJA: TIBStoredProc;
    TROCA_CENTRO_PAGAR: TIBStoredProc;
    RESPONDER_MENSAGEM: TIBStoredProc;
    CANCELA_TROCA: TIBStoredProc;
    EXCLUI_TROCA: TIBStoredProc;
    CRIA_SIS_MENU: TIBStoredProc;
    CRIA_SIS_MENU_ITEM: TIBStoredProc;
    MIGRAR_FAT_CUPOM: TIBStoredProc;
    DATA_SERVIDOR: TIBStoredProc;
    VERIFICA_IE_RG: TIBStoredProc;
    ANALISE_CUSTOS: TIBStoredProc;
    ULTIMO_TURNO_BOMBA: TIBStoredProc;
    FECHAMENTO_MES: TIBStoredProc;
    AGENDAR_COBRANCAS_PESSOA: TIBStoredProc;
    INSERIR_NUMERO_GRADE: TIBStoredProc;
    PROMOCAO: TIBStoredProc;
    CORRIGE_VENDAS_ITENS_PROMOCAO: TIBStoredProc;
    VER_NFCF_VENDA: TIBStoredProc;
    VER_VENDA_CF: TIBStoredProc;
    FECHAR_CAIXA_GERAL: TIBStoredProc;
    VER_FAT_VENDAS_COR: TIBStoredProc;
    TRANSFERE_NOTAFATURA: TIBStoredProc;
    INSERE_SANGRIAS: TIBStoredProc;
    TRANSFERE_CADASTROS: TIBStoredProc;
    Lanca_Pagar_Pdv: TIBStoredProc;
    LANCA_MOVIMENTO_CAIXA: TIBStoredProc;
    CONCILIA_CARTAO: TIBStoredProc;
    BAIXA_RECEBER_SELECAO_PDV: TIBStoredProc;
    SEQUENCIA_ETIQUETA_IMP: TIBStoredProc;
    BAIXA_RECEBER_SELECAO_LOJA_ADM: TIBStoredProc;
    BAIXA_RECEBER_SELECAO_ADM: TIBStoredProc;
    TRANSFERE_PROPRIEDADE: TIBStoredProc;
  private
    { Private declarations }
  public                 
    { Public declarations }
  end;

var
  DMProcs3: TDMProcs3;

implementation

uses Application_DM;

{$R *.DFM}

end.


