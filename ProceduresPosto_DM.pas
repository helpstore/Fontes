 unit ProceduresPosto_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBStoredProc;

type
  TDMProcsPosto = class(TDataModule)
    Emitir_Faturas: TIBStoredProc;
    Fechamento_Diario: TIBStoredProc;
    EMITIR_FATURAS_CLIENTE: TIBStoredProc;
    EXCLUIR_FECHAMENTO_DIARIO: TIBStoredProc;
    Verifica_Preco_Especial: TIBStoredProc;
    INCIA_LEITURA_TANQUE: TIBStoredProc;
    ULTIMA_DATA_CAIXA: TIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMProcsPosto: TDMProcsPosto;

implementation

uses Application_DM;

{$R *.DFM}

end.
