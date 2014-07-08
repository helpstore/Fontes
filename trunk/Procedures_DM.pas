 unit Procedures_DM;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, IBCustomDataSet, IBStoredProc, IBQuery;

type
  TDMProcs = class(TDataModule)
    GeraCodigo: TIBStoredProc;
    VerificaModulo: TIBStoredProc;      
    VerificaDireito: TIBStoredProc;
    Relacs: TIBStoredProc;
    CodigoSubGrupo: TIBStoredProc;
    CodigoPropriedade: TIBStoredProc;
    NomeSimilar: TIBStoredProc;
    VerifSimilares: TIBStoredProc;
    Baixa_Receber: TIBStoredProc;
    Extorna_Receber_Parcial: TIBStoredProc;
    Baixa_Receber_Parcial: TIBStoredProc;
    Soma_SelecionadoRec: TIBStoredProc;
    Seleciona_Receber: TIBStoredProc;
    Baixa_Receber_Selecao: TIBStoredProc;
    Soma_Receber_3Meses: TIBStoredProc;
    Soma_Receber_2Meses: TIBStoredProc;
    Soma_Receber: TIBStoredProc;
    DataHora: TIBStoredProc;
    Cria_Recibo: TIBStoredProc;
    Baixa_Pagar_Parcial: TIBStoredProc;
    Baixa_Pagar: TIBStoredProc;
    Extorna_Pagar: TIBStoredProc;
    Baixa_Pagar_Selecao: TIBStoredProc;
    Soma_Pagar: TIBStoredProc;
    Seleciona_Pagar: TIBStoredProc;
    Soma_SelecionadoPgr: TIBStoredProc;
    Extorna_Pagar_Parcial: TIBStoredProc;
    Concilia_Banco: TIBStoredProc;
    Ultima_Conta: TIBStoredProc;
    SaldoAntContabilidade: TIBStoredProc;
    Fecha_Alteracao: TIBStoredProc;
    Fecha_Contagem: TIBStoredProc;
    Fatura_Receber: TIBStoredProc;
    AtNfEntQtd: TIBStoredProc;
    AtNfEntCus: TIBStoredProc;
    AtNfEntFin: TIBStoredProc;
    SOMA_RECEBER_CLIENTE: TIBStoredProc;
    Envia_Caixa: TIBStoredProc;
    Devolve_Balcao: TIBStoredProc;
    Encerra_Venda: TIBStoredProc;
    Extorna_Venda: TIBStoredProc;
    Apaga_Parcelas_Venda: TIBStoredProc;
    Exclui_Venda: TIBStoredProc;
    CalcQtdProd: TIBStoredProc;
    Cheque_Venda: TIBStoredProc;
    Exclui_Orcamento: TIBStoredProc;
    Importa_Orcamento: TIBStoredProc;
    Importa_OrcamentoVENDA: TIntegerField;
    Marca_NumNota: TIBStoredProc;
    Marca_NumCupom: TIBStoredProc;
    Nome_Produto: TIBStoredProc;
    Quantidade_Fiscal: TIBStoredProc;
    Arredonda: TIBStoredProc;
    ExtNfEntQtd: TIBStoredProc;
    ExtNfEntFin: TIBStoredProc;
    Carregar: TIBStoredProc;
    Atualiza_Boleto: TIBStoredProc;
    Lanca_Convenio_Pdv: TIBStoredProc;
    Verifica_Caixa: TIBStoredProc;
    Agrupador: TIBStoredProc;
    Cancela_Notas: TIBStoredProc;
    CodigoVeiculo: TIBStoredProc;
    CodigoDpl: TIBStoredProc;
    Dia_Pref_Faturamento: TIBStoredProc;
    NomeUsuario: TIBStoredProc;
    Excluir_mensagem: TIBStoredProc;
    Exclui_Entrada: TIBStoredProc;
    ExtNfEntCusto: TIBStoredProc;
    Soma_SelecionadoRecLoja: TIBStoredProc;
    Extorna_Receber_Integral: TIBStoredProc;
    VerificaLimite: TIBStoredProc;
    PCD_SET_NF_AGRUPADA: TIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProcs: TDMProcs;

implementation

uses Application_DM;

{$R *.DFM}

end.
