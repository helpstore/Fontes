 unit ModuloMp20CI;

interface

uses  Classes, Forms, StdCtrls, ComCtrls,SysUtils;

Type

  TThreadLeStatus = class(TThread)
    Tempo : boolean;
    Private
      ThreadMemo : Tmemo;
    Public
          Retorno: Integer;
    Published
       constructor Inicia( Memo : TMemo);
    Protected
      procedure Execute; override;
  end;


function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';
function FechaPorta: integer	;  stdcall; far; external 'Mp2032.dll';
function BematechTX(BufTrans:string):integer; stdcall; far; external 'Mp2032.dll';
function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';
function ComandoTX (BufTrans:string;TamBufTrans:integer):integer; stdcall; far; external 'Mp2032.dll';
function Status_Porta:integer; stdcall; far; external 'Mp2032.dll';
function AutenticaDoc(BufTras:string;Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function Le_Status:integer; stdcall; far; external 'Mp2032.dll';
function Le_Status_Gaveta:integer; stdcall; far; external 'Mp2032.dll';
function DocumentInserted:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraTamanhoExtrato(NumeroLinhas:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaExtratoLongo(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaEsperaImpressao(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function EsperaImpressao:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';

{FUNÇÃO PARA CODIGO DE BARRAS}

//funções para impressão dos códigos de barras
Function ImprimeCodigoBarrasUPCA(Codigo : String) :Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasUPCE(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN13(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN8(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE39(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE93(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE128(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasITF(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODABAR(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasISBN(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasMSI(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPLESSEY(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros , Altura , Largura , Colunas : Integer; Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ConfiguraCodigoBarras(Altura, Largura, PosicaoCaracteres, Fonte, Margem : Integer) : Integer; stdcall; far; external 'Mp2032.dll';

//Função para bitmaps
function ImprimeBmpEspecial(Nome: string; xScale : integer; yScale : integer; angle : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimeBitmap(Nome: string; mode : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function SelectDithering (DitherType :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimePrn (nome : string; sleep :  integer) : Integer; stdcall; far; external 'Mp2032.dll';

implementation

uses windows;


{ TThread_Le_Status }

procedure TThreadLeStatus.Execute;
var i : integer;
begin
     i := 1;
     While Tempo do
     Begin
          Sleep(500);

          ThreadMemo.Clear;

          Retorno := Le_Status;

          case retorno of
               0 : // imp. desligada ou cabo desc. na LPT
                   ThreadMemo.Text := 'Desligada ou cabo desconectado';

               32 : // pouco papel e off-line na LPT
                   ThreadMemo.Text :='Pouco papel e off-line';

               4 : // pouco papel e off-line na serial
                   ThreadMemo.Text :='Pouco papel e off-line';

               5,  48 : // 5 = pouco papel serial e 48 na LPT
                   ThreadMemo.Text := 'Pouco papel e on-line';

               79 : // off-line na LPT
                   ThreadMemo.Text := 'Off-line';

               9, 128 : // 9 = head-up na serial e 128 na LPT
                   ThreadMemo.Text := 'Head Up';

               24, 144 : // 24 = on-line na serial e 144 na LPT
                   ThreadMemo.Text := 'Impressora ok'; // 24 (COM) e 144 (LPT)

               65:
                   ThreadMemo.Text := 'erro no corte'; // 24 (COM) e 144 (LPT)

               66:
                   ThreadMemo.Text := 'Temperatura da cabeça'; // 24 (COM) e 144 (LPT);

               67:
                   ThreadMemo.Text := 'papel enrroscado' ;// 24 (COM) e 144 (LPT)

               68:
                   ThreadMemo.Text := 'desligada ou cabo desconectada'; // 24 (COM) e 144 (LPT)

               69:
                   ThreadMemo.Text := 'erro no presenter'; // 24 (COM) e 144 (LPT)

               70:
                   ThreadMemo.Text := 'Em Impressão'; // 24 (COM) e 144 (LPT)

               Else //Se não for nenhum dos status acima
                    ThreadMemo.Text := 'Status desconhecido: ' + IntToStr(Retorno);
          End;
     end;
end;

constructor TThreadLeStatus.Inicia(Memo: TMemo);
begin
  inherited Create(true);      // Create thread suspended
  Priority := TThreadPriority(1); // Set Priority Level
  ThreadMemo := Memo;
  Tempo := true;
  FreeOnTerminate := true; // Thread Free Itself when terminated
  Suspended := false;         // Continue the thread
end;

end.
