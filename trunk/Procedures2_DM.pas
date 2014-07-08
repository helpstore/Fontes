 unit Procedures2_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBStoredProc, IBQuery,  Menus;

type
  TDMProcs2 = class(TDataModule)
    Fecha_Alteracao_Marca: TIBStoredProc;
    Fecha_Alteracao_Grupo: TIBStoredProc;
    Seleciona_Venda: TIBStoredProc;
    Soma_Venda_Selecionada: TIBQuery;
    Soma_Venda_SelecionadaSOMA: TIBBCDField;
    Soma_Venda_SelecionadaNUMERO: TIntegerField;
    Fatura_Futura: TIBStoredProc;
    Verifica_Estoque: TIBStoredProc;
    PAGAR_ABERTO: TIBStoredProc;
    RECEBER_ABERTO: TIBStoredProc;
    FATURA_ABERTO: TIBStoredProc;
    CARTAO_VENDA: TIBStoredProc;
    Concilia_Cheque: TIBStoredProc;
    MascaraIe: TIBStoredProc;
    Exclui_Nota: TIBStoredProc;
    Exclui_Notas_Aberto: TIBStoredProc;
    INSERE_CHEQUES: TIBStoredProc;
    CHEQUE_PLANILHA: TIBStoredProc;
    Valor_Adiconal_Fatura: TIBStoredProc;
    Insere_Formas_Venda: TIBStoredProc;
    Apaga_Formas: TIBStoredProc;
    Agrupa_Fatura: TIBStoredProc;
    Extorna_Faturas: TIBStoredProc;
    Recalcula_Fatura: TIBStoredProc;
    Extorna_NotaFatura: TIBStoredProc;
    SELECIONA_REC_CONVENIO_PERIODO: TIBStoredProc;
    VALIDA_CPF_CNPJ: TIBStoredProc;
    Encerra_Venda: TIBStoredProc;
    Extorna_Fatura: TIBStoredProc;
    Insere_Indicacoes: TIBStoredProc;
    Apaga_Indicacoes: TIBStoredProc;
    Descarrega: TIBStoredProc;
    Saldo_Haver: TIBStoredProc;
    Seleciona_Receber_Loja: TIBStoredProc;
    Ultimo_Cheque: TIBStoredProc;
    Seta_Ultimo_Cheque: TIBStoredProc;
    Insere_Cheque: TIBStoredProc;
    Insere_Mov_Contabil: TIBStoredProc;
    Exclui_Cheque_Planilha: TIBStoredProc;
    Devolve_Cheque: TIBStoredProc;
    Baixa_Estoque_Bomba: TIBStoredProc;
    Lanca_Contabilidade_Bomba: TIBStoredProc;
    Lanca_Contabilidade_Movtos: TIBStoredProc;
    Lanca_Contabilidade_Prod_Caixa: TIBStoredProc;
    VERIFICA_PRECO_ESPECIAL: TIBStoredProc;
    VALIDA_PRODUTO_BOMBA: TIBStoredProc;
    ACERTA_CHEQUE: TIBStoredProc;
    LANCA_RECEBER_CAIXA: TIBStoredProc;
    Confere_Planilha: TIBStoredProc;
    Saldo_RestantePlanilha: TIBStoredProc;
    SALDO_PLANILHA: TIBStoredProc;
    PROCESSA_DESDOBRAMENTO_CONTABIL: TIBStoredProc;
    AUTENTICA_USUARIO: TIBStoredProc;
    Exclui_Cotacao: TIBStoredProc;
    APAGA_PARCELAS_TROCA: TIBStoredProc;
    ENVIA_TROCA_CAIXA: TIBStoredProc;
    ENCERRA_TROCA: TIBStoredProc;
    DEVOLVE_TROCA_BALCAO: TIBStoredProc;
    EXTORNA_TROCA: TIBStoredProc;
    CRIA_TABELA_EXTERNA: TIBStoredProc;
    INSERE_MOVIMENTO_CAIXA: TIBStoredProc;
    RETIRADAS_VENDA: TIBStoredProc;
    RETIRADA_DIARIA: TIBStoredProc;
    DesConcilia_Banco: TIBStoredProc;
    EXTORNA_PLANILHA: TIBStoredProc;
    EXCLUIR_MOVIMENTO_CONTABIL: TIBStoredProc;
    MARCA_MOVIMENTO_CONTABIL: TIBStoredProc;
    PopupMenu1: TPopupMenu;
    cheque_aberto: TIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProcs2: TDMProcs2;

implementation

uses Application_DM;

{$R *.DFM}


end.

