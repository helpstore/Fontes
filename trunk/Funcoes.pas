unit Funcoes;

interface

uses Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs, Menus,
     ExtCtrls, IniFiles, Buttons, StdCtrls, Db, DBGrids, DBTables, quickrpt, Qrctrls, DBCtrls, Mask,
     ActnList, RDprint, dxBarExtItems, dxsbar,    Printers,
     DxDBELib, dxCntner, dxEdLib, dxDBGrid, dxDBTLCl,  dxGrClms, dxTL, dxDBCtrl,
     SbrCupomFiscal, IBDatabase, IBQuery,IBSQL,  ShellApi, Math,
     FileCtrl,cxButtons,cxLabel;


Type
  ModoExtData = (exdSemana,exdDMA,exdSemanaDMA);
  TOpenClose = procedure( intCont:Integer; strTableName:String ) of Object;
  TLevels = array[1..10] of integer;

{procedimentos e funções devexpress }
function SalvaFiltroGrid:boolean;

procedure TraduzException(Msg: string; DataSet: TDataSet);

{ Janela para quetionamento }
function  Pergunta( Texto: string ): string;
function  PerguntaPdv( Texto: string ): string;
Procedure MensagemPdv( Texto: string );
Function  FormataMP20CI ( Str : String ) : String;

Function RetiraZeros ( Str: String ): String;
Function Replicate(s:String;n:Integer):String;
Function Substituir(S, Achar, Substituirpor:String):String;
Function Preenche (s:String;P: String; n:Integer):String;
function LFIll(aString: string; aCaracter: Char; aTamanho: integer): string; //preenche com valores a esquerda
Function Completa (s:String;P: String; n:Integer):String;
Function Completaesq (s:String;P: String; n:Integer):String;
procedure SetDefaultPrinter(PrinterName: String);
Function CalculaTempo(DataInicial:TDate;DAtaFinal:TDate):string;
Function StrDs300 ( Str, Substituir: String): String;

Function PadL( s:String;n:Integer;c:Char ):String;
Function PadR( s:String;n:Integer;c:Char ):String;
Function LeftStr( s:String;n:Integer ):String;
Function RightStr( s:String;n:Integer): String;
Function StrZero( nInt,nTam:Integer ):String;
Function StrZeroR( rInt:Real;nTam:Integer ):String;
Function Parce(strString:String;chCharParce:Char;intPos:Integer):String;
Function RightPos( s:String;n:Integer): String;
function RPos( sFind, sSource: String ): LongInt;
Function LMascara( sVlr:String;nTam:Integer ):String;
Function MascaraCnpj( Cnpj:String ):String;
Function MascaraCpf ( Cnpj:String ):String;
Function MascaraCEP ( Cnpj:String ):String;
Function FormatS( sExp:String;nTam:Integer ):String;
Function Remove(s, ss: String ):String;

Function AScan( aVetor: array of integer; uValue: integer ): Integer;
Procedure ASort( var aVetor: array of integer );

Function Year( dData:TDateTime ): Integer;
Function Month( dData:TDateTime ): Integer;
Function Day( dData:TDateTime ): Integer;
Function CDoW( dData:TDateTime;Modo:ModoExtData ):String;
Function SecondsD( dTime:TDateTime ): Real;
Function Seconds: Word;
procedure Delay( Secs: LongInt );

procedure OpenTables( dmTables:TDataModule;OnOpenTable:TOpenClose );
procedure CloseTables( dmTables:TDataModule;OnCloseTable:TOpenClose );
Function GetFieldType( oField:TField ):String;
Function IndexOptionsToStr( indOptions:TIndexOptions ):String;
Function StrToIndexOptions( sIndOptions:String ):TIndexOptions;

function CGC_Valido(s: string): boolean;
function CPF_Valido(s: string): boolean;
Function Extenso( rValor:Extended ):String;

function ASC(InString: string): byte;
function Substr(InString: string; Inicio, Quantos: integer): string;
function Encrypt( Dado: String ): String;
function Decrypt( Dado: String ): String;

function IIFString( bCond: Boolean; sTrue, sFalse: String): String;
function IIFReal( bCond: Boolean; rTrue, rFalse: Real): Real;
function IIFLongInt( bCond: Boolean; liTrue, liFalse: LongInt): LongInt;
function IIFInteger( bCond: Boolean; iTrue, iFalse: Integer): Integer;
function IIFExtended( bCond: Boolean; eTrue, eFalse: Extended ): Extended;
function IIFDate( bCond: Boolean; dTrue, dFalse: TDateTime): TDateTime;
function IIFBoolean( bCond, bTrue, bFalse: Boolean): Boolean;

procedure EnableMenu(oMenu:TMainMenu;blEnabled:Boolean);
procedure EnableItem(oMenuItem:TMenuItem;blEnabled:Boolean);

procedure MontaIndices( Table:TTable;oLabelItems,oIndexNames: TStrings );
procedure Destaca(Sender: TObject; V: Boolean);

Function Aviso(mensagem:string):word;

Function Cumprimento(): String; { Monta String para cumprimento ao Usuário }

Function FileName(FN: String): String; { Retorna apenas o nome do executavel da aplicacao, sem o path }
Function ListaActions(Actions: TActionList): String; { Monta a Lista de Actions de uma ActionList, desde que o Tag da action seja = 1 }
Procedure AtivaActions(Actions: TActionList; Lista: String); { Habilita as Actions que estiverem contidas na lista }
Function AllUpperCase(S: String): Boolean;

Function NomeComputador: String;

{CALCULA O JURO DO RECEBIMENTO}
function CalculaJuros(VENCIMENTO, BAIXA: TDate; Valor: REAL; TAXAPASSADA: REAL):Real;
function CalculaMulta (VENCIMENTO, BAIXA: TDateTime; Valor: REAL; TAXAPASSADA: REAL ):Real;
function CalculaJurosSozinho( VENCIMENTO, BAIXA: TDateTime; Valor: REAL; TAXAPASSADA: REAL ):Real;

function Calculadora :Real;
Function MesExtenso( Mes: Integer ):String;
function NomeConta( Conta: String ):String;
Function NovaConta ( Nivel1, Nivel2, Nivel3, Nivel4, Nivel5: Real ):String;
Function IncrementaConta ( Nivel: String; Conta: String ):String;
function Replace ( Valor, Original, Substituir: String ): String;

function NFe_RetiraCaracEspecial(Original: String ): String;
function Maps_RetiraCaracEspecial(Original: String ): String;
function NomeContaCod( Conta: String ):String ;
function TrataConta( Conta: String ):String;
function NomeContaSTR( Conta: String ):String ;

Function  sBreakApart(BaseString, BreakString: string; StringList: TStringList): TStringList;
Function  Dict_Actions(Palavra: String): String;
Function  ArredondaCurrValor(eValor:Extended;iNumCasasDecimais:Integer):String;
function  ChecaCEP(cCep:String ; cEstado:String): Boolean;
function  Arredonda(Valor : Real ; Decimais : Byte) : Extended;
Procedure IniciaComponentes ( Form: TForm );
Procedure IniciaComponentesDm ( Form: TDataModule );
procedure ExecutaApp(Nome,State,NomeExec,Path:Pchar;Estado:Integer);
function  udf_TrDec(var X: Real; var Decimal: Byte): double;
function  TBPosValue(const AbsValue, Base, Position: byte): integer;
procedure CorFundo ( Sender: TObject );
procedure TiraCorFundo ( Sender: TObject );
function  IsPrinter : Boolean;
function  ResolucaoVideo(X, Y: word): Boolean;
procedure AjustaForm ( Formulario: TForm ) ;
procedure FreeAndNil(var Obj);
function  UltimoDiaMes(Mdt: TDateTime) : TDateTime;
function  PrimeiroDiaMes (Data : TDateTime; lSabDom : Boolean) : TDateTime;
function Modulo11(Valor: string; Base: Integer = 9; Resto: boolean = false): string;

//validacoes
function  NomeDoCampo( DisplayLabel: String; DataSource: TDataSource ): String;
function  CampoObrigatorio ( Campo: String; DataSource: TDataSource ): Boolean;
function  DisplayDoCampo( Campo: String; DataSource: TDataSource ): String;
Procedure VerificaNulo  ( Sender: TObject );
function  NaoPreenchido( Campo: String; DataSource: TDataSource ): Boolean;
procedure SetaFoco ( Sender : TObject );
Function  FieldName ( Sender: TObject ): String;
Function  DataSourceName ( Sender: TObject ): TDataSource;
function  PedirSenha( Mensagem, Mensagem1, Mensagem2: String ) :Boolean ;

//IMPRESSORA FISCAL
Procedure Analisa_iRetorno(iRetorno: Integer);
Procedure Retorno_Impressora ( iRetorno: Integer );
Function  ImpressoraLigada: Boolean ;
Function  AbrePorta: Boolean ;
procedure LeituraX ;
procedure ProgramaAliquota (Aliq: String);
procedure ProgramaForma (Forma: String);
procedure ReducaoZ ;
procedure MemoriaFiscal ;
procedure FechaPortaSerial ;
procedure AbreGaveta ;
procedure Sangria ( Data: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer );
procedure CancelaCupom ;
procedure AbreCupomFiscal ;
procedure VendeItem ( Codigo, Produto, Incid, sTipoQtde, Quantidade: String; IDecimal: Integer; Unitario, sTipoDesconto, Desc: String )  ;
procedure IniciaFechamentoCupom (sAcreDesc, sTipoAcreDesc, Valor: String );
procedure FormaPagamento ( Nome, Valor: String );
procedure FechaCupom ( Texto: String );
function  LinhaCupom( Linha: String ): String;
Function  NumeroUltimoCupom: Integer ;
Function  SubtotalCupom: String;
Procedure CancelaItemAterior ;
procedure CancelaItemGenerico ( Item: Integer );
function  SetarDataSistema(Data: TDateTime; Hora, Minutos: Word ): Boolean;

function Bematech_FI_RetornoImpressora(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaImpressoraLigada:Integer; StdCall; External 'BemaFI32.dll' Name 'Bematech_FI_VerificaImpressoraLigada';
function Bematech_FI_AbrePortaSerial:Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_LeituraX:Integer; StdCall; External 'BemaFI32.dll' ;
function Bematech_FI_FechaPortaSerial:Integer; StdCall; External 'BemaFI32.dll' Name 'Bematech_FI_FechaPortaSerial';
function Bematech_FI_ReducaoZ(Data: String; Hora: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BemaFI32.dll' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_AbreCupom(CGC_CPF: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_VendeItem(Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_IniciaFechamentoCupom(AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_EfetuaFormaPagamento(FormaPagamento: String; ValorFormaPagamento: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_TerminaFechamentoCupom(Mensagem: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_NumeroCupom(NumeroCupom: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_Sangria(Valor: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_Suprimento(Valor: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_LeituraMemoriaFiscalData(DataInicial: String; DataFinal: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_SubTotal(SubTotal: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_CancelaItemGenerico(NumeroItem: String): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_ProgramaAliquota(Aliquota: String; Vinculo: Integer): Integer; StdCall; External 'BemaFI32.dll';

function Bematech_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'BemaFI32.dll';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'BemaFI32.dll'
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BemaFI32.dll';

function Daruma_FI_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaFormasPagamento( Descricao_das_Formas_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaVinculados( Descricao_das_Formas_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_RetornoImpressora(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer): Integer; StdCall; External 'Daruma32.DLL';
function Daruma_FI_VerificaImpressoraLigada:Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_VerificaImpressoraLigada';
function Daruma_FI_AbrePortaSerial:Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraX:Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_FechaPortaSerial:Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_FechaPortaSerial';
function Daruma_FI_ReducaoZ(Data: String; Hora: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AcionaGaveta:Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_AcionaGaveta';
function Daruma_FI_AbreCupom(CGC_CPF: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItem(Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IniciaFechamentoCupom(AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamento(FormaPagamento: String; ValorFormaPagamento: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TerminaFechamentoCupom(Mensagem: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCupom(NumeroCupom: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Sangria(Valor: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Suprimento(Valor: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SubTotal(SubTotal: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemAnterior: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemGenerico(NumeroItem: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaAliquota(Aliquota: String; Vinculo: Integer): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';


// Funções Fabiano
function RetornaValor(sSql: string;Trans: TIBTransaction=nil;db :TIBDatabase=nil):Variant;
procedure ExecSql(ValorSql :String;txn :TIBTransaction);
procedure ExecSql2(ValorSql :String;db :TIBDatabase; txn :TIBTransaction);
function  ExtraiDigitos( Texto: string ):string;
function PlnCtaFormat(Cta, Fmt: PChar): PChar;
function InternalFormat(const Levels, MaxValues: TLevels): string;
function InternalDecode(S: PChar): TLevels;
function InternalPadZero(Value: LongInt; const Count: byte): ShortString;
function StrOfChr(Ch: Char; Count: integer): string;
function PlnCtaMain(Cta: PChar): PChar;
function InternalClear(Cta: PChar): PChar;
Function ChkInscEstadual(const ie, uf : string) : Boolean;


//Funções tiradas da Net, para manipulação de arquivos / Paulo


function fileSize(const FileName: String): LongInt;
function GetFileDate(TheFileName: string): string;
function FileDate(Arquivo: String): String;
function FillDir(Const AMask: string): TStringList;
function WinExecAndWait32(FileName:String; Visibility : integer):integer;
Function RecycleBin(sFileName : string ) : boolean;
function NumLinhasArq(Arqtexto:String): integer;
function FileCopy(source,dest: String): Boolean;
function ExtractName(const Filename: String): String;
function FileTypeName(const aFile: String): String;
Procedure CopyFile( Const sourcefilename, targetfilename: String );
Procedure ZapFiles(vMasc:String);
function PrintImage(Origem: String):Boolean;
function SoNumeros(Const Texto:String):String;

Var
   NextCtl: Integer;
   DataSource : TDataSource;
   iRetorno: Integer ;

implementation

USES
    Application_Dm,
    Calculadora_Form,
    Perguntas,
    PerguntasPdv,
    Plano_Dm,
    Retorno_Bematech,
    Main,
    Pdv_Dm,
    Pdv_Frm,
    Vendas_Dm,
    Vendas_Dm2,
    Entra_Valor_Form,
    Procedures2_Dm,
    Procedures3_Dm,
    MensagemClassificacao_Form,
    Empresas_Dm,Entra_Periodo_Form;

const
    OrdZero =  Ord('0');
    C1 = 52845;
    C2 = 22719;
    NULL_STRING = '';



function SoNumeros(Const Texto:String):String;
//
// Remove caracteres de uma string deixando apenas numeros
//
var
  I: integer;
  S: string;
  begin
  S := '';
  for I := 1 To Length(Texto) Do
  begin
  if (Texto[I] in ['0'..'9']) then
  begin
  S := S + Copy(Texto, I, 1);
  end;
  end;
  result := S;
end;
// Retorna data do primeiro dia do mês, ou primeiro dia útil
// ===================================================================
function PrimeiroDiaMes (Data : TDateTime; lSabDom : Boolean) : TDateTime;
var
  Ano, Mes, Dia : word;
  DiaDaSemana : Integer;
begin
  DecodeDate (Data, Ano, Mes, Dia);
  Dia := 1;
  if lSabDom then
  begin
    DiaDaSemana := DayOfWeek (Data);
    if DiaDaSemana = 1 then
      Dia := 2
    else if DiaDaSemana = 7 then
      Dia := 3;
  end;
  Result := EncodeDate (Ano, Mes, Dia);
end;

function Modulo11(Valor: string; Base: Integer = 9; Resto: boolean = false): string;
{
   Rotina muito usada para calcular dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se pela seqüência de pesos 2, 3, 4 ... até BASE.
   Por exemplo: se a base for 9, os pesos serão 2,3,4,5,6,7,8,9,2,3,4,5...
   Se a base for 7, os pesos serão 2,3,4,5,6,7,2,3,4...
   Soma-se cada um dos subprodutos.
   Divide-se a soma por 11.
   Faz-se a operação 11-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo11.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
  Soma: integer;
  Contador, Peso, Digito: integer;
begin
  Soma := 0;
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
    if Peso < Base then
      Peso := Peso + 1
    else
      Peso := 2;
  end;

  if Resto then
    Result := IntToStr(Soma mod 11)
  else
  begin
    Digito := 11 - (Soma mod 11);
    if (Digito > 9) then
      Digito := 0;
    Result := IntToStr(Digito);
  end
end;

Function Substituir(S, Achar, Substituirpor:String):String;
Var
   Len, I: Integer;
   Aux: String;
Begin
     Len := Length(s);

     i := 1;

     Aux := '';

     While I <= Len do
     begin
          If Copy(S, I,1) = (Achar)
          then
              Aux := Aux + Substituirpor
          Else
              Aux := Aux + Copy(S, I,1);

          i := i + 1;
     end;

     Result := Aux ;
end;

function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
//retorna o ultimo dia o mes, de uma data fornecida
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
   mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;

Function StrDs300 ( Str, Substituir: String): String;
begin
     if ( trim( str ) = '')
     then
         result := '.'
     else
         result := str ;

     while Length(Result) < DmApp.PDV_LINHA_RECIBO do
     begin
          Result := Result + Substituir;
     end ;
end;

function SetarDataSistema(Data: TDateTime; Hora, Minutos: Word ): Boolean;
var
st:TSYSTEMTIME;
Ano, Mes, Dia: Word ;
begin
     GetLocalTime(st);

     st.wYear   := Ano;
     st.wMonth  := Mes;
     st.wDay    := Dia;
     st.wHour   := hora;
     st.wMinute := minutos;

     if not SetLocalTime(st)
     then
         Result := False
     else
         Result := True;
end;

function LFIll(aString: string; aCaracter: Char; aTamanho: integer): string;
var
  Dado: String;
begin
  if Length(aString) > aTamanho then
    Dado := Copy(aString, 0, aTamanho)
  else
    Dado := aString;

  Result := StringOfChar(aCaracter, aTamanho - length(Dado)) + Dado;
end;

Procedure CriarArquivoTEF( Venda: Integer; Valor: Real );
Begin
end;

Function CalculaTempo(DataInicial:TDate;DAtaFinal:TDate):string;
var Intervalo:integer;
    anos,
    ianos,
    meses,
    imeses,
    dias:integer;
    a1,a2,m1,m2,d1,d2:word;
begin
     result := '';
//     Intervalo := trunc(DataFinal - DataInicial);
{     ianos := Intervalo / 365.25;
     anos := Int(ianos);
     result := concat(FloattoStr(anos),' ano(s)/');
     imeses := (ianos - anos) * 12;
     meses := Int(imeses);
     dias := int((imeses - meses)*10);
     result := concat(result, FloattoStr(meses),' mes(es)/');
     result := concat(result, FloattoStr(dias),' dia(s)');
}//     result := concat(result,InttoStr((Intervalo mod 365)mod 30),' dia(s)');

     DecodeDate(DataInicial, a1, m1, d1);
     DecodeDate(DataFinal, a2, m2, d2);
     anos := a2 - a1;

     if (m2 > m1) then
     begin
        meses := m2 - m1;
        if (d2 > d1) then
           dias := d2 - d1
        else
        if (d2 < d1) then
        begin
             dec(meses);
             dias := 30-(d1 - d2);
        end
        else
        if (d2 = d1) then
           dias := 0;
     end
     else
     if (m2 < m1) then
     begin
        meses := (12 - m1) + m2;
        anos := anos -1;
        if (d2 > d1) then
        begin
             dias := d2 - d1;
        end
        else
        if (d2 < d1) then
        begin
             dec(meses);
             dias := 30 - (d1 - d2);
        end
        else
        if (d2 = d1) then
           dias := 0;
     end
     else
     if (m2 = m1) then
     begin
          if (d2 > d1) then
          begin
               meses := 0;
               dias := (d2 - d1);
          end
          else
          if (d2 < d1) then
          begin
               anos := anos - 1;
               meses := 11;
               dias := 30-(d1 - d2);
          end
          else
          if (d2 = d1) then
          begin
               meses := 0;
               dias := 0;
          end;
     end;

     if anos > 0 then
        result :=concat(IntToStr(Anos),' anos');
     if meses > 0 then
        result := concat(result,intToStr(meses),' meses');
     if dias >0 then
        result := concat(result,intToStr(dias),' dias');

{     if (Intervalo div 365) > 0 then
        result := concat(InttoStr(Intervalo div 365),' ano(s)/');
     if ((Intervalo mod 365) div 30) >0 then
        result := concat(result,InttoStr((Intervalo mod 365)div 30),' mes(es)/');
     if ((Intervalo mod 365) mod 30) >0 then
        result := concat(result,InttoStr((Intervalo mod 365)mod 30),' dia(s)');
}
end;

procedure SetDefaultPrinter(PrinterName: String);
var
I: Integer;
Device : PChar;
Driver : Pchar;
Port : Pchar;
HdeviceMode: Thandle;
aPrinter : TPrinter;
begin
  Printer.PrinterIndex := -1;
  getmem(Device, 255);
  getmem(Driver, 255);
  getmem(Port, 255);
  aPrinter := TPrinter.create;
  for I := 0 to Printer.printers.Count-1 do
  begin
    if Uppercase(Printer.printers[i]) = UpperCase(PrinterName) then
    begin
      aprinter.printerindex := i;
      aPrinter.getprinter
      (device, driver, port, HdeviceMode);
      StrCat(Device, ',');
      StrCat(Device, Driver );
      StrCat(Device, Port );
      WriteProfileString('windows', 'device', Device);
      StrCopy( Device, 'windows' );
      SendMessage(HWND_BROADCAST, WM_WININICHANGE, 0, Longint(@Device));
    end;
  end;
  Freemem(Device, 255);
  Freemem(Driver, 255);
  Freemem(Port, 255);
  aPrinter.Free;
end;

function Maps_RetiraCaracEspecial(Original: String ): String;
begin
  Original := StringReplace(Original,'Ç','C',[rfReplaceAll]);
  Original := StringReplace(Original,'Ã','A',[rfReplaceAll]);
  Original := StringReplace(Original,'Â','A',[rfReplaceAll]);
  Original := StringReplace(Original,'Á','A',[rfReplaceAll]);
  Original := StringReplace(Original,'Õ','O',[rfReplaceAll]);
  Original := StringReplace(Original,'Ô','O',[rfReplaceAll]);
  Original := StringReplace(Original,'Ó','O',[rfReplaceAll]);
  Original := StringReplace(Original,'É','E',[rfReplaceAll]);
  Original := StringReplace(Original,'Ê','E',[rfReplaceAll]);
  Original := StringReplace(Original,'Í','I',[rfReplaceAll]);
  Original := StringReplace(Original,'Ú','U',[rfReplaceAll]);
  Original := StringReplace(Original,'"','',[rfReplaceAll]);
  Original := StringReplace(Original,'´','',[rfReplaceAll]);
  Original := StringReplace(Original,'°',' ',[rfReplaceAll]);
  Original := StringReplace(Original,'1º',' 1 ',[rfReplaceAll]);
  Original := StringReplace(Original,'2º',' 2 ',[rfReplaceAll]);
  Original := StringReplace(Original,'3º',' 3 ',[rfReplaceAll]);
  Original := StringReplace(Original,'4º',' 4 ',[rfReplaceAll]);
  Original := StringReplace(Original,'5º',' 5 ',[rfReplaceAll]);
  Original := StringReplace(Original,'ª',' ',[rfReplaceAll]);
  Original := StringReplace(Original,'`','',[rfReplaceAll]);
  Original := StringReplace(Original,'(','',[rfReplaceAll]);
  Original := StringReplace(Original,')','',[rfReplaceAll]);
  Original := StringReplace(Original,'/','',[rfReplaceAll]);
  Original := StringReplace(Original,'\','',[rfReplaceAll]);
  Original := StringReplace(Original,'<','',[rfReplaceAll]);
  Original := StringReplace(Original,'>','',[rfReplaceAll]);
  Original := StringReplace(Original,'&','&amp;',[rfReplaceAll]);
  Original := StringReplace(QuotedStr(Original),'"','&quot;',[rfReplaceAll]);
  Original := copy(Original,2,length(Original)-2); //retirando os dois apóstrofos adiconados ao final por conta do quoted
  result := Original;
end;

function NFe_RetiraCaracEspecial(Original: String ): String;
begin
  Original := StringReplace(Original,'Ç','C',[rfReplaceAll]);
  Original := StringReplace(Original,'Ã','A',[rfReplaceAll]);
  Original := StringReplace(Original,'Â','A',[rfReplaceAll]);
  Original := StringReplace(Original,'Á','A',[rfReplaceAll]);
  Original := StringReplace(Original,'Õ','O',[rfReplaceAll]);
  Original := StringReplace(Original,'Ô','O',[rfReplaceAll]);
  Original := StringReplace(Original,'Ó','O',[rfReplaceAll]);
  Original := StringReplace(Original,'É','E',[rfReplaceAll]);
  Original := StringReplace(Original,'Ê','E',[rfReplaceAll]);
  Original := StringReplace(Original,'Í','I',[rfReplaceAll]);
  Original := StringReplace(Original,'Ú','U',[rfReplaceAll]);
  Original := StringReplace(Original,'"','',[rfReplaceAll]);
  Original := StringReplace(Original,'´','',[rfReplaceAll]);
  Original := StringReplace(Original,'°',' ',[rfReplaceAll]);
  Original := StringReplace(Original,'1º',' 1 ',[rfReplaceAll]);
  Original := StringReplace(Original,'2º',' 2 ',[rfReplaceAll]);
  Original := StringReplace(Original,'3º',' 3 ',[rfReplaceAll]);
  Original := StringReplace(Original,'4º',' 4 ',[rfReplaceAll]);
  Original := StringReplace(Original,'5º',' 5 ',[rfReplaceAll]);
  Original := StringReplace(Original,'ª',' ',[rfReplaceAll]);
  Original := StringReplace(Original,'`','',[rfReplaceAll]);
  Original := StringReplace(Original,',',' ',[rfReplaceAll]);
  Original := StringReplace(Original,'+',' ',[rfReplaceAll]);
  Original := StringReplace(Original,'(','',[rfReplaceAll]);
  Original := StringReplace(Original,')','',[rfReplaceAll]);
  Original := StringReplace(Original,'.','',[rfReplaceAll]);
  Original := StringReplace(Original,'-','',[rfReplaceAll]);
  Original := StringReplace(Original,'/','',[rfReplaceAll]);
  Original := StringReplace(Original,'\','',[rfReplaceAll]);
  Original := StringReplace(Original,'<','',[rfReplaceAll]);
  Original := StringReplace(Original,'>','',[rfReplaceAll]);
  Original := StringReplace(Original,'&','&amp;',[rfReplaceAll]);
  Original := StringReplace(QuotedStr(Original),'"','&quot;',[rfReplaceAll]);
  Original := copy(Original,2,length(Original)-2); //retirando os dois apóstrofos adiconados ao final por conta do quoted
  result := Original;
end;

function Replace ( Valor, Original, Substituir: String ): String;
Var
   Tam, I: Integer;
   Str: String;
begin
     Str  := '';
     TAM  := Length ( Valor );
     I    := 1;

     While I <= TAM DO
     BEGIN
          If Copy (Valor, I, 1 ) = Original
          then
              Str := Str + Substituir
          Else
              Str := Str + Copy (Valor,I,1 );

          I := I + 1;
     END;

     result := Str;
end;

/////   FUNCOES DE CUPOM FISCAL

function  NumeroUltimoCupom: Integer ;
var cNumeroCupom: String;
    iConta   : Integer;
begin
     If DmApp.PDV_PORTA <> 'N'
     THEN BEGIN
          If DmaPP.Pdv_Modelo = 'Bematech'
          THEN BEGIN
               For iConta := 1 To 6 Do
               Begin
                    cNumeroCupom := cNumeroCupom + ' '
               End;

               iRetorno := Bematech_FI_NumeroCupom( cNumeroCupom );

               Analisa_iRetorno(iRetorno);

               Retorno_Impressora(iRetorno);

               if trim(cNumeroCupom) <> ''
               then begin
                    Result := StrToInt(cNumeroCupom) ;
               end
               else begin
                    Result := -1 ;
               end;
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          THEN BEGIN
               For iConta := 1 To 6 Do
               Begin
                    cNumeroCupom := cNumeroCupom + ' '
               End;

               iRetorno := Daruma_FI_NumeroCupom( cNumeroCupom );

               Analisa_iRetorno(iRetorno);

               Retorno_Impressora(iRetorno);

               if trim(cNumeroCupom) <> ''
               then begin
                    Result := StrToInt(cNumeroCupom) ;
               end
               else begin
                    Result := -1 ;
               end;
          end;
     END;
End;


Procedure MemoriaFiscal ;
var
   Inicial, Final: String;
   Cupom: TSbrCupomFiscal;
begin
     If DmApp.PDV_PORTA <> 'N'
     THEN BEGIN
          Application.CreateForm(TFrmEntraPeriodo, FrmEntraPeriodo);

          If FrmEntraPeriodo.Showmodal = MrOk
          then begin
               Inicial := FrmEntraPeriodo.Ini.Text ;
               Final   := FrmEntraPeriodo.Fim.Text ;
          end;

          FrmEntraPeriodo.Free   ;
          FrmEntraPeriodo := Nil ;

          IF DMAPP.PDV_MODELO = 'Bematech'
          THEN BEGIN
               iRetorno := Bematech_FI_LeituraMemoriaFiscalData( Inicial, Final);

               Analisa_iRetorno(iRetorno);

               Retorno_Impressora(iRetorno);
          END;

          IF DMAPP.PDV_MODELO = 'Dar32DLL'
          THEN BEGIN
               iRetorno := Daruma_FI_LeituraMemoriaFiscalData( Inicial, Final);

               Analisa_iRetorno(iRetorno);

               Retorno_Impressora(iRetorno);
          END;

          IF DMAPP.PDV_MODELO = 'Sweda'
          THEN BEGIN
               iRetorno := Bematech_FI_LeituraMemoriaFiscalData( Inicial, Final);
          END;

          IF DMAPP.PDV_MODELO = 'Daruma'
          THEN BEGIN
            Cupom := TSbrCupomFiscal.Create(Application);
            Cupom.PathImpressoraIni := 'C:\WINDOWS\SYSTEM32';
            Cupom.CarregarConfiguracoes;
            Cupom.AbrirPortaSerial;
            Cupom.DataIMemoria := StrToDate(Inicial);
            Cupom.DataFMemoria := StrToDate(Final);
            Cupom.EmitirMemoriaFiscal;
            Cupom.FecharPortaSerial;
            FreeAndNil(Cupom);
          END;
     END;
end;

function  LinhaCupom( Linha: String ): String;
begin
     Linha := Copy ( Linha, 1, 48 );

     WHILE LENGTH(Linha) < 48 DO
     BEGIN
          Linha := Linha + ' ' ;
     END;

     Result := Linha ;
end;

Function SubtotalCupom: String;
   var cSubTotal: String;
       iConta   : Integer;
Begin
     If DmApp.PDV_PORTA <> 'N'
     THEN BEGIN
          If DmaPP.Pdv_Modelo = 'Daruma'
          then begin
               IF DmPdv <> Nil
               THEN BEGIN
                    Result := currtostr(DmPdv.CupomFiscal.obtersubtotal) ;
               END;
          end ;

          If DmaPP.Pdv_Modelo = 'Bematech'
          then begin
               cSubTotal := '' ;

               For iConta := 1 To 14 Do
               Begin
                    cSubTotal := cSubTotal + ' '
               End;

               iRetorno := Bematech_FI_SubTotal( cSubTotal );

               Result := cSubTotal ;

               Analisa_iRetorno(iRetorno);

               Retorno_Impressora(iRetorno);
          END;
     end;
End;

Procedure CancelaItemAterior;
Begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_CancelaItemAnterior();
            Analisa_iRetorno(iRetorno);

            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Daruma32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_CancelaItemAnterior();
            Analisa_iRetorno(iRetorno);

            Retorno_Impressora(iRetorno);
       end;
  END;
End;

Procedure CancelaItemGenerico ( Item: Integer );
Begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_CancelaItemGenerico( IntToStr(Item) );

            Analisa_iRetorno(iRetorno);

            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_CancelaItemGenerico( IntToStr(Item) );

            Analisa_iRetorno(iRetorno);

            Retorno_Impressora(iRetorno);
       end;

  END;
End;

function  PedirSenha( Mensagem, Mensagem1, Mensagem2: String ) :Boolean ;
Begin
     Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

     If trim(Mensagem)<> ''
     then
         FrmMensagemClassificacao.MEMO.Lines.Add (Mensagem);

     If trim(Mensagem1)<> ''
     then
         FrmMensagemClassificacao.MEMO.Lines.Add (Mensagem1);

     If trim(Mensagem2)<> ''
     then
         FrmMensagemClassificacao.MEMO.Lines.Add (Mensagem2);

     FrmMensagemClassificacao.EdSenha.Visible := true ;
     FrmMensagemClassificacao.Label6.Visible  := true ;

     if FrmMensagemClassificacao.Showmodal = MrCancel
     then Begin
          MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
          Result := False ;
     end
     else
          Result := true ;

     FrmMensagemClassificacao.Free ;
     FrmMensagemClassificacao := Nil;
end;

Function  AbrePorta: Boolean ;
begin
{     If (( DmApp.PDV_ECF = 'S' ) AND ( DmApp.PDV_PORTA <> 'N' ))
     THEN BEGIN
          If DmaPP.Pdv_Modelo = 'Bematech'
          THEN BEGIN
               iRetorno := Bematech_FI_AbrePortaSerial();

               If iRetorno <> 0
               then begin
                    Analisa_iRetorno(iRetorno);
                    Retorno_Impressora(iRetorno);
                    Result := false ;
               end
               else begin
                    Result := True ;
               end;
          end;

{          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          THEN BEGIN
               iRetorno := Daruma_FI_AbrePortaSerial();

               If iRetorno <> 0
               then begin
                    Analisa_iRetorno(iRetorno);
                    Retorno_Impressora(iRetorno);
                    Result := false ;
               end
               else begin
                    Result := True ;
               end;
          end;
 }
//     END
  //   ELSE BEGIN
          Result := True ;
    // END;
end;

procedure Sangria( Data: TDateTime; Usuario: Integer; Conta: Integer; Turno: Integer );
Var
   Valor: String ;
   ValorLanc: Real;
begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
     //
     Try
        Application.CreateForm(TFrmEntraValor, FrmEntraValor);

        If FrmEntraValor.Showmodal = MrOk
        then begin
             If FrmEntraValor.Valor.value > 0
             then begin
                  Valor     := FormatFloat ('###,##0.00', FrmEntraValor.Valor.value );
                  ValorLanc := FrmEntraValor.Valor.value ;
             end
             else begin
                  Valor := '';
                  ValorLanc := FrmEntraValor.Valor.value ;
             end;

        end;

        FrmEntraValor.Free   ;
        FrmEntraValor := Nil ;

        if Valor <> ''
        then begin

             DmaPP.Transaction.CommitRetaining ;

             If Not DmaPP.TransactionProc.InTransaction
             then
                 DmaPP.TransactionProc.StartTransaction ;

             DMProcs3.INSERE_SANGRIAS.ParamByName('CNPJ'     ).asString  := DmaPP.Cnpj ;
             DMProcs3.INSERE_SANGRIAS.ParamByName('USUARIO'  ).asInteger := Usuario    ;
             DMProcs3.INSERE_SANGRIAS.ParamByName('CONTA'    ).asInteger := Conta      ;
             DMProcs3.INSERE_SANGRIAS.ParamByName('DATA'     ).asDate    := Data       ;
             DMProcs3.INSERE_SANGRIAS.ParamByName('TURNO'    ).asInteger := Turno      ;
             DMProcs3.INSERE_SANGRIAS.ParamByName('VALOR'    ).asFloat   := ValorLanc  ;

             DMProcs3.INSERE_SANGRIAS.ExecProc;

             DMProcs3.INSERE_SANGRIAS.Close ;


             DmApp.TransactionProc.Commit ;

             If DmApp.PDV_PORTA <> ''
             THEN BEGIN
                  If DmaPP.Pdv_Modelo = 'Bematech'
                  THEN BEGIN
                       //Sangria na Impressora Fiscal
                       IRetorno := Bematech_FI_Sangria(PChar(Valor));
                       Analisa_iRetorno(iRetorno);
                       Retorno_Impressora(iRetorno);
                  end;

                  If DmaPP.Pdv_Modelo = 'Dar32DLL'
                  THEN BEGIN
                       //Sangria na Impressora Fiscal
                       IRetorno := Daruma_FI_Sangria(PChar(Valor));
                       Analisa_iRetorno(iRetorno);
                       Retorno_Impressora(iRetorno);
                  end;
             END;
        end ;

     except
           DmApp.TransactionProc.Rollback ;
     end;
  END;
end;

procedure VendeItem ( Codigo, Produto, Incid, sTipoQtde, Quantidade: String; IDecimal: Integer; Unitario, sTipoDesconto, Desc: String )  ;
begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN        //Pchar(trim(Codigo)), Pchar(trim(Produto)), Pchar(Incid),
            iRetorno := Bematech_FI_VendeItem( Pchar((Codigo)), Pchar((Produto)), Pchar(Incid),
                 Pchar(sTipoQtde), Pchar(Quantidade) , iDecimal, Pchar(Unitario),
                 Pchar(sTipoDesconto), Pchar(Desc) );
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_VendeItem( Pchar(Codigo), Pchar(Produto), Pchar(Incid),
                 Pchar(sTipoQtde), Pchar(Quantidade) , iDecimal, Pchar(Unitario),
                 Pchar(sTipoDesconto), Pchar(Desc) );
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
end;

procedure FormaPagamento ( Nome, Valor: String );
begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_EfetuaFormaPagamento(Pchar(Nome), Pchar(Valor));
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_EfetuaFormaPagamento(Pchar(Nome), Pchar(Valor));
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
end;

procedure FechaCupom ( Texto: String );
begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_TerminaFechamentoCupom(PChar(Texto));
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_TerminaFechamentoCupom(PChar(Texto));
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
end;

procedure IniciaFechamentoCupom (sAcreDesc, sTipoAcreDesc, Valor: String );
Begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_IniciaFechamentoCupom(Pchar(sAcreDesc), Pchar(sTipoAcreDesc), Pchar(Valor));
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_IniciaFechamentoCupom(Pchar(sAcreDesc), Pchar(sTipoAcreDesc), Pchar(Valor));
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  end;
end;

procedure AbreCupomFiscal;
begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_AbreCupom ('');
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_AbreCupom ('');
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
end;

procedure CancelaCupom ;
Var
   Venda: Integer;
   Ult_Cupom: Integer;
begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            Ult_Cupom := NumeroUltimoCupom ;

            //Cancela Venda pelo Cupom
            VENDA := DMAPP.VER_VENDA_CF ( Ult_Cupom );

            IF ( VENDA > 0 )
            THEN BEGIN
                 //Devolve a Venda Para o Balcao
                 DMAPP.Devolve_Balcao ( DMAPP.CNPJ, VENDA );
            END;

            iRetorno := Bematech_FI_CancelaCupom();
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            Ult_Cupom := NumeroUltimoCupom ;

            //Cancela Venda pelo Cupom
            VENDA := DMAPP.VER_VENDA_CF ( Ult_Cupom );

            IF ( VENDA > 0 )
            THEN BEGIN
                 //Devolve a Venda Para o Balcao
                 DMAPP.Devolve_Balcao ( DMAPP.CNPJ, VENDA );
            END;

            iRetorno := Daruma_FI_CancelaCupom();
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
end;

procedure AbreGaveta ;
begin
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            // Função para Abrir a gaveta de dinheiro
            iRetorno := Bematech_FI_AcionaGaveta();
            // Procedure que analisa o retorno da função
            Analisa_iRetorno(iRetorno);
            // Procedure que analisa o retorno da Impressora
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            // Função para Abrir a gaveta de dinheiro
            iRetorno := Daruma_FI_AcionaGaveta();
            // Procedure que analisa o retorno da função
            Analisa_iRetorno(iRetorno);
            // Procedure que analisa o retorno da Impressora
            Retorno_Impressora(iRetorno);
       end;
  END;
end;

procedure LeituraX ;
BEGIN
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_LeituraX();
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_LeituraX();
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
END;

procedure ProgramaAliquota(Aliq: String) ;
BEGIN
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_ProgramaAliquota(PChar(ALIQ), 1);
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_ProgramaAliquota(PChar(ALIQ), 1);
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
END;

procedure ProgramaForma(Forma: String) ;
BEGIN
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
     If DmaPP.Pdv_Modelo = 'Bematech'
     THEN BEGIN
          Showmessage('Neste modelo a Forma de Pagamento é automática!');
     end;

     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     THEN BEGIN
          iRetorno := Daruma_FI_ProgramaVinculados( pchar( Forma ) );
          Analisa_iRetorno(iRetorno);
          Retorno_Impressora(iRetorno);

          iRetorno := Daruma_FI_ProgramaFormasPagamento( pchar( Forma ) );
          Analisa_iRetorno(iRetorno);
          Retorno_Impressora(iRetorno);
     end;
  END;
END;

procedure ReducaoZ ;
BEGIN
  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
       If DmaPP.Pdv_Modelo = 'Bematech'
       THEN BEGIN
            iRetorno := Bematech_FI_ReducaoZ('', '');
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;

       If DmaPP.Pdv_Modelo = 'Dar32DLL'
       THEN BEGIN
            iRetorno := Daruma_FI_ReducaoZ('', '');
            Analisa_iRetorno(iRetorno);
            Retorno_Impressora(iRetorno);
       end;
  END;
END;

procedure FechaPortaSerial ;
BEGIN
{  If DmApp.PDV_PORTA <> 'N'
  THEN BEGIN
     If DmaPP.Pdv_Modelo = 'Bematech'
     then begin
          iRetorno := Bematech_FI_FechaPortaSerial();
          Analisa_iRetorno(iRetorno);
          Retorno_Impressora(iRetorno);
     end;

{     If DmaPP.Pdv_Modelo = 'Dar32DLL'
     then begin
          iRetorno := Daruma_FI_FechaPortaSerial();
          Analisa_iRetorno(iRetorno);
          Retorno_Impressora(iRetorno);
     end;
  END;}
END;

Function  ImpressoraLigada: Boolean ;
begin
     If (( DmApp.PDV_ECF = 'S' ) AND ( DmApp.PDV_PORTA <> 'N' ))
     THEN BEGIN
          If DmaPP.Pdv_Modelo = 'Bematech'
          THEN BEGIN
               iRetorno := Bematech_FI_VerificaImpressoraLigada();

               if iRetorno = -6
               then begin
                    Application.MessageBox('A Impressora se encontra DESLIGADA.', 'Atenção', MB_IconInformation + MB_OK);
                    Analisa_iRetorno(iRetorno);
                    Retorno_Impressora(iRetorno);
                    Result := False ;
               end
               else begin
                    Result := True ;
               end;
          end;

          If DmaPP.Pdv_Modelo = 'Dar32DLL'
          THEN BEGIN
               iRetorno := Daruma_FI_VerificaImpressoraLigada();

               if iRetorno = -6
               then begin
                    Application.MessageBox('A Impressora se encontra DESLIGADA.', 'Atenção', MB_IconInformation + MB_OK);
                    Analisa_iRetorno(iRetorno);
                    Retorno_Impressora(iRetorno);
                    Result := False ;
               end
               else begin
                    Result := True ;
               end;
          end;
     END
     ELSE
         Result := true ;
end;

Procedure Analisa_iRetorno(iRetorno: Integer);
Begin
    if iRetorno = 0 then
       Application.MessageBox( 'Erro de Comunicação !', 'Erro',
                                MB_IconError + MB_OK);

    If iRetorno = -1 Then
       Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro',
                                MB_IconError + MB_OK);

    if iRetorno = -2  then
       Application.MessageBox( 'Parâmetro Inválido !', 'Erro',
                                MB_IconError + MB_OK);

    if iRetorno = -3  then
       Application.MessageBox( 'Alíquota não programada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -4 Then
       Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -5 Then
       Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro',
                                MB_IconError + MB_OK);

    If iRetorno = -6 Then
       Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -7 Then
       Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK);

    If iRetorno = -8 Then
       Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK);

    if iRetorno = -18 then
       Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -19 then
       Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -20 then
       Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -21 then
       Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -22 then
       Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -23 then
       Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -24 then
       Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -25 then
       Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -26 then
       Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
                                MB_IconInformation + MB_OK);

    if iRetorno = -28 then
       Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
                                MB_IconInformation + MB_OK);



  End;

// ------------------- Analisa Retorno da Impressora --------------------

Procedure Retorno_Impressora( iRetorno: Integer );
Var
   iACK, iST1, iST2: Integer;
Begin
    iACK := 0; iST1 := 0; iST2 := 0;

    iRetorno := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);

    If IRetorno <> 1
    then begin
         If iACK = 6
         then Begin
              FrmRetornoBematech := TFrmRetornoBematech.Create(FrmRetornoBematech);

              With FrmRetornoBematech do
              begin
                   RadioButton1.Checked := True;

                   // Verifica ST1

                   IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; label4.Enabled  := True; END;
                   IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  label5.Enabled  := True; END;
                   IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  label6.Enabled  := True; END;
                   IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  label7.Enabled  := True; END;
                   IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   label8.Enabled  := True; END;
                   IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   label9.Enabled  := True; END;
                   IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   label10.Enabled := True; END;
                   IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   label11.Enabled := True; END;

                   // Verifica ST2

                   IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; label12.Enabled := True; END;
                   IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  label13.Enabled := True; END;
                   IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  label14.Enabled := True; END;
                   IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  label15.Enabled := True; END;
                   IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   label16.Enabled := True; END;
                   IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   label17.Enabled := True; END;
                   IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   label18.Enabled := True; END;
                   IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   label19.Enabled := True; END;
              End;//WITH

              FrmRetornoBematech.Showmodal ;

              FrmRetornoBematech.Free ;
              FrmRetornoBematech := Nil ;
         end ;//with



         If iACK = 21
         Then BEGIN
              showmessage( 'Atenção!!!' + #13 + #10 +
                    'A Impressora retornou NAK. O programa será abortado.');
              Application.Terminate;
              Exit;
         end;
    end;
End;

function SalvaFiltroGrid:boolean;
begin

  result := true;
end;


procedure TraduzException(Msg: string; DataSet: TDataSet);
var
  { Variável onde ficará a identificação do Campo que ocorreu o erro }
  Campo: string;

  { Variável para armazenar o resultado da busca pela definição do }
  { campo nas definições do DataSet                                }
  Field: TFieldDef;

  { Procedure para mostrar uma mensagem de Erro passada como parâmetro }
  procedure Erro(Msg: string);
  begin
       MessageBox(Application.Handle, PChar(Msg), 'Erro', MB_OK + MB_ICONERROR);
  end;

begin
     { Se o erro for de violação de chave primária }
     if (Pos('violation of PRIMARY or UNIQUE KEY', Msg) > 0)
     then begin
         Erro('O registro não pode ser gravado, ocorreu um erro de duplicidade na chave primária!');
         Exit;
     end;

     { Se o erro for de um campo NOT NULL com valor nulo }
     if (Pos('validation error for column', Msg) > 0) and (Pos('*** null ***', Msg) > 0)
     then begin
         { Pega o nome do campo na mensagem de erro }
         Campo := Copy(Msg, 29, pos(',', msg) - 29);
         { Localiza o campo nas definições do DataSet }
         Field := DataSet.FieldDefs.Find(Campo);

         { Se o campo for localizado... }
         if Field <> nil
         then begin
              Erro(Format('O registro não pode ser gravado, o Campo ''%s'' precisa ter um valor', [DataSet.FieldByName(Campo).DisplayName]));
              exit;
         end
         else begin
              { O campo não foi encontrado... }
              Erro(Format('O registro não pode ser gravado, o Campo ''%s'' precisa ter um valor', [Campo]));
              exit;
         end;
     end ;

     { Erro ainda não tratado pela procedure }
     Erro(Msg);
end;

procedure FreeAndNil(var Obj);
var
  Temp: TObject;
begin
  Temp := TObject(Obj);
  Pointer(Obj) := nil;
  Temp.Free;
end;

Procedure VerificaNulo ( Sender: TObject );
Var
   Campo : String;
Begin
     Campo := FieldName ( Sender );

     If Campo <> ''
     then begin
          DataSource := DataSourceName ( Sender );

          If ( DataSource.DataSet.State in [ DsInsert, DsEdit ] )
          then begin
               If CampoObrigatorio ( Campo, DataSource )
               then begin
                    If NaoPreenchido ( Campo, DataSource )
                    then begin
                         MessageDlg('O Campo ' +  DisplaydoCampo ( Campo, DataSource ) + ' é de Preenchimento Obrigatório!', mtError, [mbOK], 0);
                         SetaFoco ( Sender );
                         Abort ;
                    end;
               end;
          end;
     end;
end;

Procedure SetaFoco ( Sender: TObject );
Begin
     If ( Sender is TdxDBCalcEdit )
     then begin
          ( Sender as TdxDBCalcEdit ).SetFocus ;
     end;

     If ( Sender is TdxSpinEdit )
     then begin
          ( Sender as TdxSpinEdit ).SetFocus
     end;

     If ( Sender is TdxDBMaskEdit )
     then begin
          ( Sender as TdxDBMaskEdit ).SetFocus ;
     end;

     If ( Sender is TdxLookupEdit )
     then begin
          ( Sender as TdxLookupEdit ).SetFocus ;
     end;

     If ( Sender is TCheckBox )
     then begin
          ( Sender as TCheckBox ).SetFocus ;
     end;

     If ( Sender is TdxDBmemo )
     then begin
          ( Sender as TdxDBmemo ).SetFocus ;
     end;

     If ( Sender is TdxDateEdit )
     then begin
          ( Sender as TdxDateEdit ).SetFocus ;
     end;

     If ( Sender is TdxDbDateEdit )
     then begin
          ( Sender as TdxDbDateEdit ).SetFocus ;
     end;

     If ( Sender is TdxDBPickEdit )
     then begin
          ( Sender as TdxDBPickEdit ).SetFocus ;
     end;

     If ( Sender is TdxPickEdit )
     then begin
          ( Sender as TdxPickEdit ).SetFocus ;
     end;

     If ( Sender is TdxDbCheckEdit )
     then begin
          ( Sender as TdxDbCheckEdit ).SetFocus ;
     end;

     If ( Sender is TdxDBLookupEdit )
     then begin
          ( Sender as TdxDBLookupEdit ).SetFocus ;
     end;

     If ( Sender is TdxDBEdit )
     then begin
          ( Sender as TdxDBEdit ).SetFocus ;
     end;

     If ( Sender is TdxEdit )
     then begin
          ( Sender as TdxEdit ).SetFocus ;
     end;

     If ( Sender is TdxButtonEdit )
     then begin
          ( Sender as TdxButtonEdit ).SetFocus ;
     end;

     If ( Sender is TdxCurrencyEdit )
     then begin
          ( Sender as TdxCurrencyEdit ).SetFocus ;
     end;

     If ( Sender is TdxDbButtonEdit )
     then begin
          ( Sender as TdxDbButtonEdit ).SetFocus ;
     end;

     If ( Sender is TdxDBSpinEdit )
     then begin
          ( Sender as TdxDBSpinEdit ).SetFocus ;
     end;

     If ( Sender is TcxButton )
     then begin
          ( Sender as TcxButton ).SetFocus ;
     end;

     If ( Sender is TdxCheckEdit )
     then begin
          ( Sender as TdxCheckEdit ).SetFocus ;
     end;

     If ( Sender is TdxDBHyperLinkEdit )
     then begin
          ( Sender as TdxDBHyperLinkEdit ).SetFocus ;
     end;
end;

//BUSCA O NOME DO CAMPO DO OBJETO PASSADO
Function FieldName ( Sender: TObject ): String;
Var
   CMP: String;
Begin
     CMP := '' ;

     If ( Sender is TdxDBCalcEdit )
     then begin
          CMP := ( Sender as TdxDBCalcEdit ).DataField ;
     end;

     If ( Sender is TdxDBMaskEdit )
     then begin
          CMP := ( Sender as TdxDBMaskEdit ).DataField  ;
     end;

     If ( Sender is TdxDBmemo )
     then begin
          CMP := ( Sender as TdxDBmemo ).DataField ;
     end;


     If ( Sender is TdxDbDateEdit )
     then begin
          CMP := ( Sender as TdxDbDateEdit ).DataField  ;
     end;

     If ( Sender is TdxDBPickEdit )
     then begin
          CMP := ( Sender as TdxDBPickEdit ).DataField  ;
     end;

     If ( Sender is TdxDbCheckEdit )
     then begin
          CMP := ( Sender as TdxDbCheckEdit ).DataField ;
     end;

     If ( Sender is TdxDBLookupEdit )
     then begin
          CMP := ( Sender as TdxDBLookupEdit ).DataField ;
     end;

     If ( Sender is TdxDBEdit )
     then begin
          CMP := ( Sender as TdxDBEdit ).DataField  ;
     end;

     If ( Sender is TdxDbButtonEdit )
     then begin
          CMP := ( Sender as TdxDbButtonEdit ).DataField  ;
     end;

     If ( Sender is TdxDBSpinEdit )
     then begin
          CMP := ( Sender as TdxDBSpinEdit ).DataField ;
     end;

     If ( Sender is TdxDBHyperLinkEdit )
     then begin
          CMP := ( Sender as TdxDBHyperLinkEdit ).DataField ;
     end;

     Result := Cmp ;
end;

//BUSCA O NOME DO CAMPO DO OBJETO PASSADO
Function DataSourceName ( Sender: TObject ): TDataSource;
Begin
     If ( Sender is TdxDBCalcEdit )
     then begin
          Result := ( Sender as TdxDBCalcEdit ).DataSource ;
     end;

     If ( Sender is TdxDBMaskEdit )
     then begin
          Result := ( Sender as TdxDBMaskEdit ).DataSource  ;
     end;

     If ( Sender is TdxDBmemo )
     then begin
          Result := ( Sender as TdxDBmemo ).DataSource ;
     end;


     If ( Sender is TdxDbDateEdit )
     then begin
          Result := ( Sender as TdxDbDateEdit ).DataSource  ;
     end;

     If ( Sender is TdxDBPickEdit )
     then begin
          Result := ( Sender as TdxDBPickEdit ).DataSource  ;
     end;

     If ( Sender is TdxDbCheckEdit )
     then begin
          Result := ( Sender as TdxDbCheckEdit ).DataSource ;
     end;

     If ( Sender is TdxDBLookupEdit )
     then begin
          Result := ( Sender as TdxDBLookupEdit ).DataSource ;
     end;

     If ( Sender is TdxDBEdit )
     then begin
          Result := ( Sender as TdxDBEdit ).DataSource  ;
     end;

     If ( Sender is TdxDbButtonEdit )
     then begin
          Result := ( Sender as TdxDbButtonEdit ).DataSource  ;
     end;

     If ( Sender is TdxDBSpinEdit )
     then begin
          Result := ( Sender as TdxDBSpinEdit ).DataSource ;
     end;

     If ( Sender is TdxDBHyperLinkEdit )
     then begin
          Result := ( Sender as TdxDBHyperLinkEdit ).DataSource ;
     end;
end;

function NomeDoCampo( DisplayLabel: String; DataSource: TDataSource ): String;
Var
   i: Integer;
begin
     For i := 0 To Datasource.Dataset.FieldCount - 1
     Do begin
        If Datasource.Dataset.Fields.Fields[i].DisplayLabel = DisplayLabel
        Then
            Result := Datasource.Dataset.Fields.Fields[i].FieldName;
     end;
end;

function DisplayDoCampo( Campo: String; DataSource: TDataSource ): String;
Var
   i: Integer;
begin
     For i := 0 To Datasource.Dataset.FieldCount - 1
     Do begin
        If Datasource.Dataset.Fields.Fields[i].FieldName = Campo
        Then
            Result := Datasource.Dataset.Fields.Fields[i].DisplayLabel;
     end;
end;

function NaoPreenchido( Campo: String; DataSource: TDataSource ): Boolean;
Var
   i: Integer;
begin
     For i := 0 To Datasource.Dataset.FieldCount - 1
     Do begin
        If Datasource.Dataset.Fields.Fields[i].FieldName = Campo
        Then Begin
             If Datasource.Dataset.Fields.Fields[i].IsNull
             then
                 Result := True
             Else
                 Result := False ;
        end
     end;
end;

function CampoObrigatorio ( Campo: String; DataSource: TDataSource ): Boolean;
Var
   I: Integer;
begin
     For i := 0 To Datasource.Dataset.FieldCount - 1
     Do begin
          If Datasource.Dataset.Fields.Fields[i].FieldName = Campo
          Then begin
               if Datasource.Dataset.Fields.FIELDS[i].Required
               then Begin
                    Result := true ;
                    Exit;
               end
               Else begin
                    Result := false ;
                    Exit;
               end;
          end;
     end;
end;



procedure AjustaForm ( Formulario: TForm ) ;
//
// Ajusta a visualização de um formulário de maneira
// correta independente da resolução do monitor o qual
// roda nossa aplicação.
//
// deve ser colocada na unit do form que se deseja fazer o ajuste
//
// Declare-a na clausula private da unit:
//
// Private
// procedure AjustaForm;
//
// depois inicialize-a na unit assim:
//
// procedure TForm1.AjustaForm;
//
Const
     nTamOriginal = 640; // Será o 100% da escala
Var
   nEscala : Double; // Vai me dar o percentual de Transformação escalar
   nPorcento : Integer; // Vai me dar em percentual inteiro o valor
begin
     With Formulario do
     begin
          if nTamOriginal <> Screen.Width
          then begin
               nEscala     := ((Screen.Width-nTamOriginal)/nTamOriginal);
               nPorcento   := Round((nEscala*100) + 100);
               Formulario.Width  := Round(Formulario.Width * (nEscala+1));
               Formulario.Height := Round(Formulario.Height * (nEscala+1));
               Formulario.ScaleBy(nPorcento,100);
          end;
     end;
end;

function IsPrinter : Boolean;
{Testa se a impressora está ativa ou não, retornando .t.
 em caso positivo}
Const
    PrnStInt  : Byte = $17;
    StRq      : Byte = $02;
    PrnNum    : Word = 0;  { 0 para LPT1, 1 para LPT2, etc. }
Var
  nResult : byte;
Begin  (* IsPrinter*)
       Asm
          mov ah,StRq;
          mov dx,PrnNum;
          Int $17;
          mov nResult,ah;
       end;
       IsPrinter := (nResult and $80) = $80;
End;



function ResolucaoVideo(X, Y: word): Boolean;
//
// Troca a resolução de vídeo
//
var
lpDevMode: TDeviceMode;
begin
if EnumDisplaySettings(nil, 0, lpDevMode) then
   begin
   lpDevMode.dmFields    := DM_PELSWIDTH Or DM_PELSHEIGHT;
   lpDevMode.dmPelsWidth := X;
   lpDevMode.dmPelsHeight:= Y;
   Result := ChangeDisplaySettings(lpDevMode, 0) = DISP_CHANGE_SUCCESSFUL;
   end;
end;

Procedure CorFundo ( Sender: TObject );
Begin
     if dmapp.COR_FUNDO_SEL = '' then
        exit;

     TEdit(Sender).Color := StrToInt(DMApp.COR_FUNDO_SEL);
     exit;
    {
     If ( Sender is TRzDBComboBox)
     then begin
          (Sender as TRzDBComboBox).Color := StrToInt(DMApp.COR_FUNDO_SEL);
     end;}

     If ( Sender is TdxDBCalcEdit )
     then begin
          ( Sender as TdxDBCalcEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxTimeEdit )
     then begin
          ( Sender as TdxTimeEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxMRUEdit )
     then begin
          ( Sender as TdxMRUEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

    { If ( Sender is TcxCurrencyEdit )
     then begin
          ( Sender as TcxCurrencyEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;}

     If ( Sender is TdxMaskEdit )
     then begin
          ( Sender as TdxMaskEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxSpinEdit )
     then begin
          ( Sender as TdxSpinEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBMaskEdit )
     then begin
          ( Sender as TdxDBMaskEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxLookupEdit )
     then begin
          ( Sender as TdxLookupEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TCheckBox )
     then begin
          ( Sender as TCheckBox ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBmemo )
     then begin
          ( Sender as TdxDBmemo ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDateEdit )
     then begin
          ( Sender as TdxDateEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDbDateEdit )
     then begin
          ( Sender as TdxDbDateEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBPickEdit )
     then begin
          ( Sender as TdxDBPickEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxPickEdit )
     then begin
          ( Sender as TdxPickEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDbCheckEdit )
     then begin
          ( Sender as TdxDbCheckEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBLookupEdit )
     then begin
          ( Sender as TdxDBLookupEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBEdit )
     then begin
          ( Sender as TdxDBEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxEdit )
     then begin
          ( Sender as TdxEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxButtonEdit )
     then begin
          ( Sender as TdxButtonEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxCurrencyEdit )
     then begin
          ( Sender as TdxCurrencyEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDbButtonEdit )
     then begin
          ( Sender as TdxDbButtonEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBSpinEdit )
     then begin
          ( Sender as TdxDBSpinEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TcxButton )
     then begin
          ( Sender as TcxButton ).Colors.Default := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxCheckEdit )
     then begin
          ( Sender as TdxCheckEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBHyperLinkEdit )
     then begin
          ( Sender as TdxDBHyperLinkEdit ).Color := StrToInt(DMApp.COR_FUNDO_SEL) ;
     end;
end;

Procedure TiraCorFundo ( Sender: TObject );
Begin
     //Verifica os Campos Obrigatorios
//     VerificaNulo ( Sender );

     if DMApp.SAI_COR_FUNDO_SEL = '' then
        exit;

     TEdit(Sender).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL);
     exit;

     {If ( Sender is TRzDBComboBox)
     then begin
          (Sender as TRzDBComboBox).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL);
     end; }

     If ( Sender is TdxMaskEdit )
     then begin
          ( Sender as TdxMaskEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxTimeEdit )
     then begin
          ( Sender as TdxTimeEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     {If ( Sender is TcxCurrencyEdit )
     then begin
          ( Sender as TcxCurrencyEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end; }

     If ( Sender is TdxCheckEdit )
     then begin
          ( Sender as TdxCheckEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxMRUEdit )
     then begin
          ( Sender as TdxMRUEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBSpinEdit )
     then begin
          ( Sender as TdxDBSpinEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxCurrencyEdit )
     then begin
          ( Sender as TdxCurrencyEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxSpinEdit )
     then begin
          ( Sender as TdxSpinEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TCheckBox )
     then begin
          ( Sender as TCheckBox ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBHyperLinkEdit )
     then begin
          ( Sender as TdxDBHyperLinkEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBMaskEdit )
     then begin
          ( Sender as TdxDBMaskEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxButtonEdit )
     then begin
          ( Sender as TdxButtonEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxPickEdit )
     then begin
          ( Sender as TdxPickEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBPickEdit )
     then begin
          ( Sender as TdxDBPickEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBmemo )
     then begin
          ( Sender as TdxDBmemo ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBCalcEdit )
     then begin
          ( Sender as TdxDBCalcEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxLookupEdit )
     then begin
          ( Sender as TdxLookupEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDbDateEdit )
     then begin
          ( Sender as TdxDbDateEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDbCheckEdit )
     then begin
          ( Sender as TdxDbCheckEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDateEdit )
     then begin
          ( Sender as TdxDateEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBLookupEdit )
     then begin
          ( Sender as TdxDBLookupEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDbButtonEdit )
     then begin
          ( Sender as TdxDbButtonEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxDBEdit )
     then begin
          ( Sender as TdxDBEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TcxButton )
     then begin
          ( Sender as TcxButton ).Colors.Default := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;

     If ( Sender is TdxEdit )
     then begin
          ( Sender as TdxEdit ).Color := StrToInt(DMApp.SAI_COR_FUNDO_SEL) ;
     end;
end;

procedure ExecutaApp(Nome,State,NomeExec,Path:Pchar;Estado:Integer);
//
// Executa um aplicativo somente se ele não estiver aberto, caso
// contrário apenas chama-o
//
// Valores para Estdo: SW_SHOWNORMAL   Janela em modo normal
//                     SW_MAXIMIZE     Janela maximizada
//                     SW_MINIMIZE     Janela minimizada
//                     SW_HIDE         Janela Escondida
//
// Veja um exemplo de como chamar a calculadora do Windows
//
// ExecutaApp('CALCULADORA','OPEN','CALC.EXE','C:\WINDOWS',8);
//
// Onde 'CALCULADORA' é o nome da janela do aplicativo
//
var
   TheWindows: HWND;
begin
     //Verifica se o Programa Esta Aberto
     theWindows := FindWindow(NIL,Nome);

     if TheWindows <> 0 then
     begin
          SetForegroundWindow(TheWindows)
     end
     else begin
          if (Estado > 3) or (Estado < 1) then
          begin
               Estado := 1;
          end;

          ShellExecute(Application.Handle,State,NomeExec,NIL,Path,Estado);
     end;
end;

Procedure IniciaComponentes ( Form: TForm );
Var
   I: Integer;
   Config: TIniFile;
   Caminho : String;
begin
     Caminho := ExtractFilePath(Application.Exename);

     If Copy(Caminho, Length(Caminho), 1) <> '\' Then

     Caminho := Caminho + '\';

     Config := TIniFile.Create(Caminho + 'Config.ini');

     Form.PopupMenu := FrmMain.Pop ;
     if (dmApp.OwnerForm = nil) then
       dmApp.OwnerForm := Form
     else if dmApp.ChildForm = nil then
       dmApp.ChildForm := Form
     else
     begin
       dmApp.OwnerForm := dmApp.ChildForm;
       dmApp.ChildForm := Form;
     end;

     //Inicia os Componentes de Um Formulário
     For i := 0 to Form.ComponentCount - 1 do
     begin
          //RdPrint
          If ( Form.Components[I] is TRDprint )
          then begin
               ( Form.Components[I] as TRDprint ).OpcoesPreview.PreviewZoom := StrToInt(Config.ReadString('rdprint', 'zom', '')) ;

               ( Form.Components[I] as TRDprint ).OpcoesPreview.CaptionPreview := Config.ReadString('rdprint', 'cpw', '');

               If Config.ReadString('rdprint', 'grf', '')= 'S'
               Then
                  ( Form.Components[I] as TRDprint ).Impressora := Grafico ;

               If Config.ReadString('rdprint', 'pgz', '')= 'S'
               Then
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.PaginaZebrada := true
               Else
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.PaginaZebrada := False;

               If Config.ReadString('rdprint', 'rem', '')= 'S'
               Then
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.Remalina := true
               Else
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.Remalina := False;

               //Testar Porta
               If Config.ReadString('rdprint', 'tpt', '') = 'S'
               Then
                  ( Form.Components[I] as TRDprint ).TestarPorta := true
               Else
                  ( Form.Components[I] as TRDprint ).TestarPorta := False;

               //Usa Gerenciador
               If Config.ReadString('rdprint', 'tpt', '') = 'N'
               Then
                  ( Form.Components[I] as TRDprint ).UsaGerenciadorImpr := true
               Else
                  ( Form.Components[I] as TRDprint ).UsaGerenciadorImpr := False;
          end;

          //Botoes do main
         { If ( Form.Components[I] is Tdxbarlargebutton )
          then begin
               If ( Form.Components[I] as Tdxbarlargebutton ).Name = 'BtnOrcamento'
               Then
                   ( Form.Components[I] as Tdxbarlargebutton ).Caption := Config.ReadString('BtnOrcamento', 'cpt', '') + ' ( F9 )' ;
          end;}

          //Paineis dos Formularios
          If ( Form.Components[I] is TPanel )
          then begin
               If ( Form.Components[I] as TPanel ).Name = 'pnlClient'
               then
                   ( Form.Components[I] as TPanel ).Color := strtoint(Config.ReadString('panel', 'cor', '')) ;

               If ( Form.Components[I] as TPanel ).Name = 'pnlTop'
               then
                   ( Form.Components[I] as TPanel ).Color := strtoint(Config.ReadString('panel', 'cor', '')) ;
          end;

          //Labels em Formularios
          If ( Form.Components[I] is TcxLabel )
          then begin
               ( Form.Components[I] as TcxLabel ).Style.Font.Color := strtoint(Config.ReadString('label', 'cor', '')) ;
          end;

          //RxLabels com Login em Caixa
          If ( Form.Components[I] is TcxLabel )
          then begin
               If ( Form.Components[I] as TcxLabel ).Name = 'LblCaixa'
               then begin
                    if (DmApp.DataCaixa) > 10
                    then begin
                         ( Form.Components[I] as TcxLabel ).Caption := DmaPP.NomeCaixa + ' Data: ' + DateToStr(DmApp.DataCaixa);
                    end
                    else begin
                         ( Form.Components[I] as TcxLabel ).Caption := ' Data: ' + DateToStr(DmApp.Data_Servidor);
                    end;
               end;
          end;

          //RxLabels com Login em Caixa
          If ( Form.Components[I] is TcxLabel )
          then begin
               If ( Form.Components[I] as TcxLabel ).Name = 'LblDataServidor'
               then
                   ( Form.Components[I] as TcxLabel ).Caption := DmaPP.NomeCaixa + ' Data: ' + DateToStr(DmApp.Data_Servidor);
          end;
     end;
end;

Procedure IniciaComponentesDm ( Form: TDataModule );
Var
   I: Integer;
   Config: TIniFile;
   Caminho : String;
begin
     Caminho := ExtractFilePath(Application.Exename);
     
     If Copy(Caminho, Length(Caminho), 1) <> '\' Then

     Caminho := Caminho + '\';

     Config := TIniFile.Create(Caminho + 'Config.ini');

     //Inicia os Componentes de Um Formulário
     For i := 0 to Form.ComponentCount - 1 do
     begin
          //RdPrint
          If ( Form.Components[I] is TRDprint )
          then begin
               ( Form.Components[I] as TRDprint ).OpcoesPreview.PreviewZoom := StrToInt(Config.ReadString('rdprint', 'zom', '')) ;

               ( Form.Components[I] as TRDprint ).OpcoesPreview.CaptionPreview := Config.ReadString('rdprint', 'cpw', '');

               If Config.ReadString('rdprint', 'pgz', '')= 'S'
               Then
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.PaginaZebrada := true
               Else
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.PaginaZebrada := False;

               If Config.ReadString('rdprint', 'rem', '')= 'S'
               Then
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.Remalina := true
               Else
                  ( Form.Components[I] as TRDprint ).OpcoesPreview.Remalina := False;

               //Testar Porta
               If Config.ReadString('rdprint', 'tpt', '') = 'S'
               Then
                  ( Form.Components[I] as TRDprint ).TestarPorta := true
               Else
                  ( Form.Components[I] as TRDprint ).TestarPorta := False;

          end;

          //Botoes do main
          {If ( Form.Components[I] is Tdxbarlargebutton )
          then begin
               If ( Form.Components[I] as Tdxbarlargebutton ).Name = 'BtnOrcamento'
               Then
                   ( Form.Components[I] as Tdxbarlargebutton ).Caption := Config.ReadString('BtnOrcamento', 'cpt', '') + ' ( F9 )' ;

          end; }

          //Paineis dos Formularios
          If ( Form.Components[I] is TPanel )
          then begin
               If ( Form.Components[I] as TPanel ).Name = 'pnlClient'
               then
                   ( Form.Components[I] as TPanel ).Color := strtoint(Config.ReadString('panel', 'cor', '')) ;

               If ( Form.Components[I] as TPanel ).Name = 'pnlTop'
               then
                   ( Form.Components[I] as TPanel ).Color := strtoint(Config.ReadString('panel', 'cor', '')) ;
          end;

          //Labels em Formularios
          If ( Form.Components[I] is TcxLabel )
          then begin
               ( Form.Components[I] as TcxLabel ).Style.Font.Color := strtoint(Config.ReadString('label', 'cor', '')) ;
          end;

          //RxLabels com Login em Caixa
          If ( Form.Components[I] is TcxLabel )
          then begin
               If ( Form.Components[I] as TcxLabel ).Name = 'LblCaixa'
               then
                   ( Form.Components[I] as TcxLabel ).Caption := DmaPP.NomeCaixa + ' Data: ' + DateToStr(DmApp.DataCaixa);
          end;
     end;
end;

function Arredonda(Valor : Real ; Decimais : Byte) : Extended;
var
   i : Byte;
   ML : string;
   RR : string;
begin
     if ( valor > 15000 )
     then
         Valor := Valor
     else
         Valor := udf_TrDec( Valor, Decimais );

     ML := '0.';
     for i := 1 To Decimais do
     begin
          ML := ML + '0';
     end;

     RR := FormatFloat(ML,Valor);

     Result := StrToFloat (RR);
end;

function TBPosValue(const AbsValue, Base, Position: byte): integer;
var
  X: integer;
  I: byte;
begin
  if Position = 0 then
    Result := AbsValue
  else begin
    X := Base;
    for I := 2 to Position do
      X := X * Base;

    Result := X * AbsValue;
  end;
end;


function udf_TrDec(var X: Real; var Decimal: Byte): double;
var
  Y: integer;
begin
  if Decimal <= 0 then
    Result := Trunc(X)
  else begin
    Y := TBPosValue(1, 10, Decimal + 1);
    Result := integer(Trunc(X * Y)) / Y;
  end;
end;

Function ArredondaCurrValor(eValor:Extended;iNumCasasDecimais:Integer):String;
//
// Arredonda para duas casas decimais um valor currency
//
begin
     Result := FLOATTOSTRF(eValor,ffCurrency,18,iNumCasasDecimais);
end;

(************************************************************)
Function Dict_Actions(Palavra: String): String;
(************************************************************)
Var
  stDict: TStringList;
  stConv: TStringList;
  i: Integer;
Begin
  //
  Result := Palavra;
  //
  stDict := TStringList.Create;
  stConv := TStringList.Create;
  //
  stDict.Add('Parcial->Baixa Parcial');
  stDict.Add('Integral->Baixa Integral');
  stDict.Add('CancelarBaixa->Cancelar Baixa');
  stDict.Add('AlterarDireito->Alterar Direito');
  //
  For i := 0 To stDict.Count -1 Do
      Begin
        stConv.Clear;
        sBreakApart(stDict[i], '->', stConv);
        If Palavra = stConv[0] Then
           Result := stConv[1];
        If Palavra = stConv[1] Then
           Result := stConv[0];
      End;
End;

(************************************************************)
Function sBreakApart(BaseString, BreakString: string; StringList: TStringList): TStringList;
(************************************************************)
Var
  EndOfCurrentString: Byte;
  TempStr: string;
Begin
  Repeat
    EndOfCurrentString := Pos(BreakString, BaseString);
    If EndOfCurrentString = 0 Then
       StringList.add(BaseString)
    Else
       StringList.add(Copy(BaseString, 1, EndOfCurrentString - 1));
    BaseString := Copy(BaseString, EndOfCurrentString + length(BreakString), length(BaseString) - EndOfCurrentString);
  Until EndOfCurrentString = 0;
  Result := StringList;
End;

function NomeContaStr( Conta: String ):String;
begin
     try
        with DmPlano do
        begin
             GERAL.Close ;
             GERAL.SQL.CLEAR ;
             GERAL.Params.CREATEPARAM ( FTSTRING, 'C', PTINPUT );

             GERAL.SQL.Add ( ' SELECT NOME FROM CTB_PLANOCONTA WHERE CODIGO = :C ' );

             GERAL.ParamByName('C').ASSTRING := Conta ;

             GERAL.PREPARE ;
             GERAL.OPEN    ;
             IF GERAL.Fields[0].ISNULL
             THEN BEGIN
                  Conta := '';
             END
             ELSE BEGIN
                  Conta := GERAL.Fields[0].Value ;
             END;
        end;
        Result := Conta ;
     Except
     end;
End;

function TrataConta( Conta: String ):String;
Var
   Tam, I: Integer ;
   Aux : String;
begin
     try
        Conta := Trim ( Conta );

        Tam := Length ( Conta );

        I := Tam ;

        while I > 0 DO
        BEGIN
             IF ((Copy ( Conta, I, 1 ) <> ' ') AND (Copy ( Conta, I, 1 ) <> '.'))
             THEN BEGIN
                  IF I = TAM
                  THEN
                      I := 0
                  ELSE
                      I := I - 1 ;
             END
             ELSE BEGIN
                  TAM := -1 ;
                  If (Copy ( Conta, I, 1 ) = '.')
                  then begin
                       Conta := Copy ( Conta, 1, I - 1 );

                       Aux := Copy ( Conta, i - 1, 1 ) ;

                       IF Copy ( Conta, I - 1, 1 ) <> ' '
                       THEN
                           I := 0;
                  end
                  else begin
                       Conta := Copy ( Conta, 1, I - 1 );
                  end;
             END ;
        END;
        Result := Conta ;
     Except

     end;
End;

function NomeContaCod( Conta: String ):String;
begin
     try
        with DmApp do
        begin
             GERAL.Close ;
             GERAL.SQL.CLEAR ;
             GERAL.Params.CREATEPARAM ( FTSTRING, 'CNPJ', PTINPUT );
             GERAL.Params.CREATEPARAM ( FTSTRING, 'C'  , PTINPUT );

             GERAL.SQL.Add ( ' SELECT NOME FROM CTB_PLANOCONTA WHERE CODIGO = :C AND CNPJ = :CNPJ ' );

             GERAL.ParamByName('CNPJ').ASSTRING := DmaPP.Cnpj ;
             GERAL.ParamByName('C').ASSTRING    := Conta      ;

             GERAL.PREPARE ;
             GERAL.OPEN    ;
             IF GERAL.Fields[0].ISNULL
             THEN BEGIN
                  Conta := '';
             END
             ELSE BEGIN
                  Conta := GERAL.Fields[0].Value ;
             END;
        end;
        Result := Conta ;
     Except
     end;
End;

Function NovaConta ( Nivel1, Nivel2, Nivel3, Nivel4, Nivel5: Real ):String;
Var
   Nivel, Conta: String;
begin
     If Nivel1 <> 0
     then
         Conta := FloatToStr ( Nivel1 );

     If Nivel2 <> 0
     then begin
          Conta := Conta + '.' + StrZeroR ( Nivel2, 2);
     end;

     If Nivel3 <> 0
     then begin
          Conta := Conta + '.' + StrZeroR( Nivel3, 2);
     end;

     If Nivel4 <> 0
     then begin
         Conta := Conta + '.' + StrZeroR ( Nivel4, 2);
     end;

     If Nivel5 <> 0
     then begin
          Conta := Conta + '.' + StrZeroR ( Nivel5, 4);
     end;

     Nivel := DmApp.Ultima_Conta ( Conta );

     Result := IncrementaConta(Nivel, Conta)

end;

Function IncrementaConta ( Nivel: String; Conta: String ):String;
Var
   Maximo: Integer;
begin
     //1
     //4
     //7
     //10
     //15

     If Length ( Nivel ) = 0
     then begin
          Result := Conta + '.' + StrZeroR (1,2);
     end;

     If Length ( Nivel ) = 1
     then begin
          Maximo := Strtoint( Nivel ) + 1;
          Result := IntToStr(Maximo);
     end;

     If Length ( Nivel ) = 4
     then begin
          Maximo := Strtoint( copy(Nivel,3,2)) + 1;
          Result := copy(Nivel,1,2) +  StrZeroR (Maximo,2);
     end;

     If Length ( Nivel ) = 7
     then begin
          Maximo := Strtoint( copy(Nivel,6,2)) + 1;
          Result := copy(Nivel,1,5) +  StrZeroR (Maximo,2);
     end;

     If Length ( Nivel ) = 10
     then begin
          Maximo := Strtoint( copy(Nivel,9,2)) + 1;
          Result := copy(Nivel,1,8) +  StrZeroR (Maximo,2);
     end;

     If Length ( Nivel ) = 15
     then begin
          Maximo := Strtoint( copy(Nivel,12,4)) + 1;
          Result := copy(Nivel,1,11) +  StrZeroR (Maximo,4);
     end;
end;

function NomeConta( Conta: String ):String;
begin
        with DmApp do
        begin
             GERAL.Close ;
             GERAL.SQL.CLEAR ;
             GERAL.Params.CREATEPARAM ( FTSTRING, 'CNPJ', PTINPUT );
             GERAL.Params.CREATEPARAM ( FTSTRING, 'C'  , PTINPUT );

             GERAL.SQL.Add ( ' SELECT NOME FROM CTB_PLANOCONTA WHERE CODIGO = :C AND CNPJ = :CNPJ ' );

             GERAL.ParamByName('CNPJ').ASSTRING := DmaPP.Cnpj ;
             GERAL.ParamByName('C').ASSTRING    := Conta      ;

             GERAL.PREPARE ;

             GERAL.OPEN    ;
             IF GERAL.Fields[0].ISNULL
             THEN BEGIN
                  Conta := '';
             END
             ELSE BEGIN
                  Conta := GERAL.Fields[0].Value ;
             END;
        end;

        Result := Conta ;
End;


Function MesExtenso( Mes:Integer ):String;
BEGIN
     CASE MES OF
          1 : RESULT := 'Janeiro'   ;
          2 : RESULT := 'Fevereiro' ;
          3 : RESULT := 'Marco'     ;
          4 : RESULT := 'Abril'     ;
          5 : RESULT := 'Maio'      ;
          6 : RESULT := 'Junho'     ;
          7 : RESULT := 'Julho'     ;
          8 : RESULT := 'Agosto'    ;
          9 : RESULT := 'Setembro'  ;
          10: RESULT := 'Outubro'   ;
          11: RESULT := 'Novembro'  ;
          12: RESULT := 'Dezembro'  ;
     end;
END;

Function MascaraCnpj( Cnpj:String ):String;
Var
   I: Integer;
   Aux: String;
begin
     Aux := '';
     I := 1 ;

     Repeat
           Aux := Aux + Copy(Cnpj, I, 1);

           If ( I = 2 ) OR ( I = 5 )
           Then
               Aux := Aux + '.' ;

           If ( I = 8 )
           Then
               Aux := Aux + '/' ;

           If ( I = 12 )
           Then
               Aux := Aux + '-' ;

           I := I + 1;
     until I > 14 ;

     Result := Aux;
end;

Function MascaraCpf( Cnpj:String ):String;
Var
   I: Integer;
   Aux: String;
begin
     Aux := '';
     I := 1 ;

     Repeat
           Aux := Aux + Copy(Cnpj, I, 1);

           If ( I = 3 ) OR ( I = 6 ) Then
            Aux := Aux + '.' ;

           If ( I = 9 ) Then
            Aux := Aux + '-' ;

           I := I + 1;
     until I > 14 ;

     Result := Aux;
end;

Function MascaraCEP( Cnpj:String ):String;
Var
   I: Integer;
   Aux: String;
begin
     Aux := '';

     I := 1 ;

     Repeat
           Aux := Aux + Copy(Cnpj, I, 1);

           If ( I = 2 )
           Then
               Aux := Aux + '.' ;

           If ( I = 5 )
           Then
               Aux := Aux + '-' ;

           I := I + 1;
     until I > 8 ;

     Result := Aux;
end;

function Calculadora: Real;
Var
   Valor : Real;
begin
     Try
        Application.CreateForm(TFrmCalculadora, FrmCalculadora);
        If FrmCalculadora.Showmodal = MrOk
        then begin
             Valor := StrtoFloat (FrmCalculadora.EdValor.text) ;
        end
        else
            Valor := 0;

        FrmCalculadora.Free ;
        FrmCalculadora := Nil ;
     except
          Valor := 0;
     end  ;

     Result := Valor ;
end;

function Pergunta( Texto: string ): string;
var
   Largura: integer;
   AUX: String;
begin
     Application.CreateForm(TFormPergunta, FormPergunta);

     FormPergunta.Resposta.Caption := 'N';
     FormPergunta.Frase.Caption := Texto;
     Largura := 70 + FormPergunta.Frase.Width;
     if Largura < 250 then Largura := 250;
     FormPergunta.Width := Largura;
     FormPergunta.BtnSim.Left := ( FormPergunta.Width - 170 ) div 2;
     FormPergunta.BtnNao.Left := FormPergunta.BtnSim.Left + 90;
     FormPergunta.ShowModal;
     Aux := FormPergunta.Resposta.Caption;
     FormPergunta.Free ;
     FormPergunta := Nil ;

     Pergunta := Aux;
end;

function PerguntaPdv( Texto: string ): string;
var
   AUX: String;
begin
     Application.CreateForm(TFormPerguntaPdv, FormPerguntaPdv);

     FormPerguntaPdv.Top  := frmpdv.status.top  + 6  ;
     FormPerguntaPdv.Left := frmpdv.status.left + 6  ;

     FormPerguntaPdv.ClientHeight  := frmpdv.status.Height - 12  ;
     FormPerguntaPdv.ClientWidth   := frmpdv.status.Width  - 12  ;

     FormPerguntaPdv.Resposta.Caption := 'N';
     FormPerguntaPdv.Frase.Caption := Texto;
     FormPerguntaPdv.Frase.Style.Font.Color := clBlack ;

     FormPerguntaPdv.ShowModal;
     Aux := FormPerguntaPdv.Resposta.Caption;
     FormPerguntaPdv.Free ;
     FormPerguntaPdv := Nil ;

     PerguntaPdv := Aux;
end;

Procedure MensagemPdv( Texto: string );
begin
     Application.CreateForm(TFormPerguntaPdv, FormPerguntaPdv);

     If frmpdv <> Nil
     then begin
          FormPerguntaPdv.Top  := frmpdv.status.top  + 6  ;
          FormPerguntaPdv.Left := frmpdv.status.left + 6 ;

          FormPerguntaPdv.ClientHeight  := frmpdv.status.Height - 12  ;
          FormPerguntaPdv.ClientWidth   := frmpdv.status.Width  - 12  ;
     end;

     FormPerguntaPdv.btnsim.Visible := false ;
     FormPerguntaPdv.btnnao.Caption := 'Ok' ;
     FormPerguntaPdv.Frase.Caption := Texto;

     FormPerguntaPdv.Frase.Style.Font.Color := clBlack ;

     FormPerguntaPdv.ShowModal;
     FormPerguntaPdv.Free ;
     FormPerguntaPdv := Nil ;
end;

function CalculaJuros( VENCIMENTO, BAIXA: TDate; Valor: REAL; TAXAPASSADA: REAL):Real;
VAR
   TIPO: String;  //tipo de juro cobrado
   TAXA: REAL;    //taxa de juros cobrado
   ATRASO: Real;  //DIAS DE ATRASO
   DIA: TDateTime;//DATA INICIADA NO VENCIMENTO E ANDA ATE A DATA DA BAIXA PARA
   CONTADOR: INTEGER ;
   Aux, TaxaDia, SALDO, ORIGINAL   : Extended  ;//SALDO ACUMULADO
begin
  try
    //---------se há juros definido no cliente então devemos levar em consideração esse juros-------------//
    IF VENCIMENTO < 0 THEN
      VENCIMENTO := BAIXA ;

    ORIGINAL := VALOR ;

    If DmApp.TOLERANCIA_JUROS > 0 then
    begin
      //se a data de vencimento mais o tempo de tolerância estourou a data de hj
      IF (VENCIMENTO + DmApp.TOLERANCIA_JUROS >= BAIXA) THEN
        VENCIMENTO := VENCIMENTO + DmApp.TOLERANCIA_JUROS
    END;

    ATRASO := (BAIXA - VENCIMENTO);
    ATRASO := TRUNC(ATRASO);
    //PAGAMENTO EM DIA
    IF (ATRASO <= 0 )THEN
    begin
        RESULT := 0;
        exit;
    end;
    //verfificando se existe multa financeira
    If ARREDONDA(DmApp.MULTA_FINANCEIRA, 2) > 0 then
      VALOR := VALOR + (VALOR * ARREDONDA(DmApp.MULTA_FINANCEIRA,2))/100;

    //tipo de juros (Composto e simples)
    TIPO :=   DmApp.TIPO;
    //taxa de juro para o calculo
    IF TAXAPASSADA = 0 THEN
      TAXA := DmApp.TAXA
    ELSE
      TAXA := TAXAPASSADA;

    //Nºde dias em atraso
    TaxaDia := (TAXA/30)/100;

    IF (TIPO = 'S')THEN //JUROS SIMPLES
    begin
      Aux := (((TAXA/30)* trunc(ATRASO))*VALOR)/100;
      RESULT := Aux;
    end
    ELSE
    BEGIN //juros composto
      //M = C * (1 + i)^t
      SALDO := VALOR * (Power((1+TaxaDia),atraso));
      RESULT := SALDO - ORIGINAL ;
    END;
  Except
  end;
End;

function CalculaMulta( VENCIMENTO, BAIXA: TDateTime; Valor: REAL; TAXAPASSADA: REAL ):Real;
VAR
   TIPO: String;  //tipo de juro cobrado
   TAXA: REAL;    //taxa de juros cobrado
   ATRASO: REAL;  //DIAS DE ATRASO
   DIA: TDateTime;//DATA INICIADA NO VENCIMENTO E ANDA ATE A DATA DA BAIXA PARA

   //CONTAR O NUMERO DE DIAS DE ATRASO
   CONTADOR: INTEGER ;
   SALDO, ORIGINAL   : REAL  ;//SALDO ACUMULADO
begin
  try
    IF VENCIMENTO < 0 THEN
      VENCIMENTO := BAIXA ;

    ORIGINAL := VALOR ;

    If DmApp.TOLERANCIA_JUROS > 0 then
    begin
    
      //se a data de vencimento mais o tempo de tolerância estourou a data de hj
      IF (VENCIMENTO + DmApp.TOLERANCIA_JUROS >= BAIXA) THEN
        VENCIMENTO := VENCIMENTO + DmApp.TOLERANCIA_JUROS
    END;

    ATRASO := BAIXA - VENCIMENTO;
    //PAGAMENTO EM DIA
    IF (ATRASO <= 0 )THEN
    begin
        RESULT := 0;
        exit;
    end;

    //verfificando se existe multa financeira
    If ARREDONDA(DmApp.MULTA_FINANCEIRA, 2) > 0 then
      VALOR := (VALOR * ARREDONDA(DmApp.MULTA_FINANCEIRA,2))/100
    else
      Valor := 0;

    Result := Valor;
  Except
  end;
End;

function CalculaJurosSozinho( VENCIMENTO, BAIXA: TDateTime; Valor: REAL; TAXAPASSADA: REAL):Real;
VAR
   TIPO: String;  //tipo de juro cobrado
   TAXA: REAL;    //taxa de juros cobrado
   ATRASO: REAL;  //DIAS DE ATRASO
   DIA: TDateTime;//DATA INICIADA NO VENCIMENTO E ANDA ATE A DATA DA BAIXA PARA

   //CONTAR O NUMERO DE DIAS DE ATRASO
   CONTADOR: INTEGER ;
   SALDO, ORIGINAL   : REAL  ;//SALDO ACUMULADO
begin
  try
    IF VENCIMENTO < 0 THEN
      VENCIMENTO := BAIXA ;

    ORIGINAL := VALOR ;

    If DmApp.TOLERANCIA_JUROS > 0 then
    begin
      //se a data de vencimento mais o tempo de tolerância estourou a data de hj
      IF (VENCIMENTO + DmApp.TOLERANCIA_JUROS >= BAIXA) THEN
        VENCIMENTO := VENCIMENTO + DmApp.TOLERANCIA_JUROS
    END;

    ATRASO := BAIXA - VENCIMENTO;
    //PAGAMENTO EM DIA
    IF (ATRASO <= 0 )THEN
    begin
        RESULT := 0;
        exit;
    end;

    //tipo de juros (Composto e simples)
    TIPO :=   DmApp.TIPO;
    //taxa de juro para o calculo
    IF TAXAPASSADA = 0 THEN
      TAXA := DmApp.TAXA
    ELSE
      TAXA := TAXAPASSADA;

    //Nºde dias em atraso


    IF (TIPO = 'S')THEN //JUROS SIMPLES
      RESULT := (((TAXA/30)*ATRASO)*VALOR)/100 //calculando o juros
    ELSE
    BEGIN //juros composto
      CONTADOR := 0;
      SALDO    := VALOR;
      DIA := VENCIMENTO ;
      WHILE DIA <> BAIXA DO
      BEGIN
        CONTADOR := CONTADOR + 1;
        DIA      := DIA + 1 ;

        IF ( CONTADOR = 30 ) THEN
        BEGIN
          SALDO := SALDO + (TAXA*SALDO)/100;
          CONTADOR := 0;
        END;
      END;

      IF ( CONTADOR <> 0 )THEN //ALGUNS DIAS FORA DE UM MES
        SALDO := SALDO + (((TAXA/30)*CONTADOR)*SALDO)/100;

      RESULT := SALDO - ORIGINAL ;
    END;
  Except
  end;
End;

Function NomeComputador: String;
var
     di      : longint;
     PathArray : array [0..255] of char;
     S, G : String;
begin
     FillChar(PathArray, SizeOf(PathArray), #0);
     di := 255;
     GetComputerName(PathArray,dword(di));
     //g := Config.ReadString('LocalDir');
     g := '';
     delete(g, 2, 1);
     s := '\\' + Format('%s',[PathArray]) + '\' + G ;
    NomeComputador := s;
end;

(************************************************************)
Function AllUpperCase(S: String): Boolean;
(************************************************************)
Var s1, s2: String;
Begin
  s1 := UpperCase(S);
  s2 := LowerCase(S);
  If (s1 = S) Or (s2 = S) Then
     Result := True
  Else
     Result := False;
End;

(************************************************************)
Function Cumprimento(): String;
(************************************************************)
Begin
  If Time() < StrToTime('12:00:00') Then
     Result := 'Bom dia ';
  If Time() > StrToTime('12:00:00') Then
     Result := 'Boa tarde ';
  If Time() > StrToTime('19:00:00') Then
     Result := 'Boa Noite ';
End;

(************************************************************)
Function FileName(FN: string): String;
(************************************************************)
begin
     result := UpperCase(Copy(FN,
                             (RPos('\', FN) + 1),
                             Length(FN) - RPos('\', FN)));
end;

(************************************************************)
Function ListaActions(Actions: TActionList): String;
(************************************************************)
Var i: Integer;
begin
  For i := 0 to Actions.ActionCount -1 Do
      Begin
        If (Actions[i] as TAction).Tag = 1 Then
           Begin
             If Result = '' Then
                Result := (Actions[i] as TAction).Name
             Else
                Result := Result + ', ' + (Actions[i] as TAction).Name;
           End;
      End;
end;

(************************************************************)
Procedure AtivaActions(Actions: TActionList; Lista: String);
(************************************************************)
Var i: Integer;
begin
  For i := 0 to Actions.ActionCount -1 Do
  Begin
        If (Actions[i] as TAction).Tag = 1
        Then Begin
             If POS((Actions[i] as TAction).Name, Lista) > 0
             Then
                (Actions[i] as TAction).Enabled := True
             Else Begin
                  (Actions[i] as TAction).Enabled := False;
                  (Actions[i] as TAction).Tag := 0;
             End;
        End;
  End;
end;

(************************************************************)
Function Aviso(mensagem:string):word;
(************************************************************)
begin
     result := MessageDlg(mensagem,MtInformation,[mbOk],0);
end;

(************************************************************)
function Substr;
(************************************************************)
begin
 Substr:=copy(InString,Inicio,Quantos);
end;

(************************************************************)
function ASC;
(************************************************************)
begin
 if InString = '' then
  ASC:=0
 else
  ASC:=Ord(InString[1]);
end;

(**************************************)
Function Replicate(s:String;n:Integer):String;
(**************************************)
Var i:Integer;
Begin
Result:='';
For i:=n DownTo 1 Do Result:=Result+s;
End;

(**************************************)
Function Preenche(s:String; P: String ;n:Integer):String;
(**************************************)
Var i:Integer;
Begin
Result:=S;
For i:=n DownTo 1 Do Result:=P+Result;
End;

Function Completa(s:String; P: String ;n:Integer):String;
(**************************************)
Var i:Integer;
Begin
     Result:=Copy(S,1,N);

     WHILE LENGTH(RESULT) < N DO
     BEGIN
          RESULT := RESULT + P ;
     END;
End;

Function CompletaEsq(s:String; P: String ;n:Integer):String;
(**************************************)
Var i:Integer;
Begin
     Result:=Copy(S,1,N);

     WHILE LENGTH(RESULT) < N DO
     BEGIN
          RESULT := P + RESULT ;
     END;
End;

(***********************************************************)
Function PadL( s:String;n:Integer;c:Char ):String;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To n Do X:=X+c;
X:=X+Trim(s);
PadL:=Copy(X,Length(X)-n+1,n)
End;

(***********************************************************)
Function PadR( s:String;n:Integer;c:Char ):String;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To n Do X:=X+c;
X:=Trim(s)+X;
PadR:=Copy(X,1,n)
End;

(***********************************************************)
Function StrZero( nInt,nTam:Integer ):String;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To nTam Do X:=X+'0';
X:=X+IntToStr(nInt);
Result:=Copy(X,Length(X)-nTam+1,nTam)
End;

(***********************************************************)
Function LMascara( sVlr:string;nTam:Integer ):String;
(***********************************************************)
Var X: String;
    i: Integer;
Begin
X := '';
For i :=1 To nTam Do X := X + '0';
For i := 1 To Length(sVlr) do
    If (Copy( sVlr, i, 1) <> '.') And
       (Copy( sVlr, i, 1) <> ',') Then
       X := X + Copy( sVlr, i, 1);
Result:=Copy(X,Length(X)-nTam+1,nTam)
End;

(***********************************************************)
Function FormatS( sExp:string;nTam:Integer ):String;
(***********************************************************)
Var X: String;
    i: Integer;
Begin
X := sExp;
If Length(X) < nTam Then
   For i :=1 To nTam - Length(sExp) Do X := X + ' '
Else
   X := Copy(X, 1, nTam);
Result:= X;
End;

(***********************************************************)
Function Remove( s, ss: String ):String;
(***********************************************************)
Begin
  While Pos(ss, s) > 0 Do
     Delete(s, Pos(ss, s), 1);
  Result := s;
End;

(***********************************************************)
Function StrZeroR( rInt:Real;nTam:Integer ):String;
(***********************************************************)
Var X: String;
    nI: Integer;
Begin
For nI:=1 To nTam Do X:=X+'0';
X:=X+FloatToStr(rInt);
Result:=Copy(X,Length(X)-nTam+1,nTam)
End;

(***********************************************************)
Function LeftStr( s:String;n:Integer ):String;
(***********************************************************)
Begin
LeftStr:=Copy(s,1,n);
End;

(***********************************************************)
Function RightStr( s:String;n:Integer): String;
(***********************************************************)
Begin
RightStr:=Copy(s,Length(s)-n+1,n)
End;

(***********************************************************)
Function RightPos( s:String;n:Integer): String;
(***********************************************************)
Begin
RightPos:=Copy(s,n,Length(s)-n+1)
End;

(***********************************************************)
function RPos( sFind, sSource: String ): LongInt;
(***********************************************************)
var
   iPos, iTemp: LongInt;
begin
   Result := 0;
   iPos := Pos( sFind, sSource );

   if iPos = 0 then exit;

   iTemp := 0;
   while iPos > 0 do begin
       iTemp := iTemp + iPos;
       sSource := RightPos( sSource, iPos + 1);
       iPos := Pos( sFind, sSource );
   end;
   Result := iTemp;
end;


(***********************************************************)
Function Parce(strString:String;chCharParce:Char;intPos:Integer):String;
(***********************************************************)
Var intCont,intContPos: Integer;
Begin
If intPos=0 Then Begin
   Result:='';
   Exit;
End;
intContPos:=1;
Result:='';
For intCont:=1 To Length(strString) Do Begin
    If Copy( strString,intCont,1 )=chCharParce Then
       Inc( intContPos )
    Else If intContPos=intPos Then Begin
       Result:=Result+Copy( strString,intCont,1 );
    End;
End;
End;

procedure ParceFile( const sFileName: String;
          var sDrive, sPath, sFile, sExt: String);
var
    iPos : Byte;
begin
    sPath := ExtractFilePath( sFileName );
    iPos := Pos(':', sPath);
    if (iPos > 0) then begin
        if Pos('\', sPath) = (iPos + 1) then begin
            sDrive := Copy(sPath, 1, 3);
            sPath := Copy( sPath, 4, Length(sPath)-3);
        end else begin
            sDrive := Copy(sPath, 1, 2) + '\';
            sPath  := Copy(sPath, 3, Length(sPath)-2);
        end;
    end else
        sDrive := '';
                            //Only
    sFile := ExtractFileName( sFileName );

    sExt := ExtractFileExt( sFileName );
end;

(***********************************************************)
function AScan( aVetor: array of integer; uValue: integer ): Integer;
(***********************************************************)
var nCont, nLenght: Integer;
begin
nLenght:=High( aVetor );
Result:=0;
//for nCont:=1 To nLenght do If aVetor[nCont]=uValue then
nCont:=0;
repeat
     If aVetor[nCont]=uValue then
        Begin
            Result:=nCont+1;
            Break;
        End;
     nCont:=nCont+1;
until nCont>nLenght;
end;

(***********************************************************)
Procedure ASort( var aVetor: array of integer );
(***********************************************************)
Var nTam,nI,nJ,nK,nTemp: Integer;
begin
     nTam:=High( aVetor );
     nI:=(nTam+1) Div 2;
     While nI>0 Do
           Begin
           For nJ:=nI To nTam Do
               Begin
                    nK:=nJ-nI;
                    While nK>=0 Do
                          If aVetor[nK]>aVetor[nK+nI] Then
                             Begin
                               nTemp:=aVetor[nK];
                               aVetor[nK]:=aVetor[nK+nI];
                               aVetor[nK+nI]:=nTemp;
                               nK:=nK-nI;
                             End
                          Else
                             nK:=-1;
               End;
           nI:=nI div 2;
           End;
End;

(***********************************************************)
Function Year( dData:TDateTime ): Integer;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Year:=a;
End;

(***********************************************************)
Function Month( dData:TDateTime ): Integer;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Month:=m;
End;

(***********************************************************)
Function Day( dData:TDateTime ): Integer;
(***********************************************************)
Var d,m,a: Word;
Begin
DecodeDate( dData,a,m,d );
Day:=d;
End;

(***********************************************************)
Function CDoW( dData:TDateTime;Modo:ModoExtData ):String;
(***********************************************************)
const aDiaSemana: Array[1..7] of String =
      ('Domingo','Segunda','Terça','Quarta','Quinta',
       'Sexta','Sábado');
    aMeses: Array[1..12] of String =
      ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto',
       'Setembro','Outubro','Novembro','Dezembro');
Begin
If Modo=exdSemana Then
   CDoW:=aDiaSemana[DayOfWeek( dData )]
Else If Modo=exdDMA Then
   CDoW:=IntToStr( Day(dData) )+' de '+
         aMeses[Month(dData)]+' de '+
         IntToStr(Year(dData))
Else If Modo=exdSemanaDMA Then
   CDoW:=aDiaSemana[DayOfWeek( dData )]+', '+
         IntToStr( Day(dData) )+' de '+
         aMeses[Month(dData)]+' de '+
         IntToStr(Year(dData))
End;

(***********************************************************)
Function Seconds: Word;
(***********************************************************)
var h,m,s,ms: Word;
Begin
DecodeTime( Now,h,m,s,ms );
Seconds:=h*3600+m*60+s;
End;

(***********************************************************)
Function SecondsD( dTime:TDateTime ): Real;
(***********************************************************)
var h,m,s,ms: Word;
Begin
DecodeTime( dTime,h,m,s,ms );
SecondsD:=h*3600+m*60+s+ms/1000;
End;

(***********************************************************)
procedure Delay( Secs: LongInt );
(***********************************************************)
var
     iStart: LongInt;
begin
     iStart := Seconds;
     while ((iStart + Secs) > Seconds) do
        Application.ProcessMessages;
end;

(***********************************************************)
procedure OpenTables( dmTables:TDataModule;OnOpenTable:TOpenClose );
(***********************************************************)
Var intI,intContTable:Integer;
Begin
intContTable:=0;
For intI:=0 To dmTables.ComponentCount-1 Do
    If dmTables.Components[intI] is TTable Then Begin
       TTable(dmTables.Components[intI]).Open;
       Inc(intContTable);
       If Assigned( OnOpenTable ) Then
          OnOpenTable( intContTable,TTable(dmTables.Components[intI]).TableName );
       End;
End;

(***********************************************************)
procedure CloseTables( dmTables:TDataModule;OnCloseTable:TOpenClose );
(***********************************************************)
Var intI,intContTable:Integer;
Begin
intContTable:=0;
For intI:=0 To dmTables.ComponentCount-1 Do
    If dmTables.Components[intI] is TTable Then Begin
       TTable(dmTables.Components[intI]).Close;
       Inc(intContTable);
       If Assigned( OnCloseTable ) Then
          OnCloseTable( intContTable,TTable(dmTables.Components[intI]).TableName );
       End;
End;

function Valch(ch: char): byte;
begin
  Valch:= ord(ch)-48;
end;

(***********************************************************)
function CGC_Valido(s: string): boolean;
(***********************************************************)
const
  peso1: array[1..12] of integer =
    (5,4,3,2,9,8,7,6,5,4,3,2);
  peso2: array[1..13] of integer =
    (6,5,4,3,2,9,8,7,6,5,4,3,2);
var
  //s: string[14];
  d1,d2: byte;
  i,soma: integer;
  doc : string;
begin
  //str(cgc:0:0,s);
  doc := StringReplace(s,'.','',[rfReplaceAll]);
  doc := StringReplace(doc,'-','',[rfReplaceAll]);
  doc := StringReplace(doc,'/','',[rfReplaceAll]);
  s := doc;
  insert(copy('00000000000000',1,14-length(s)),s,1);
  soma:= 0;

  for i:= 1 to 12 do
    soma:= soma + peso1[i]*Valch(s[i]);

  d1:= soma mod 11;

  if (d1 = 0) or (d1 = 1)
  then
      d1:= 0
  else
      d1:= 11 - d1;

  if d1 <> Valch(s[13])
  then begin
       CGC_Valido:= false;
       exit;
  end;

  soma:= 0;

  for i:= 1 to 13 do
    soma:= soma + peso2[i]*Valch(s[i]);

  d2:= soma mod 11;

  if (d2 = 0) or (d2 = 1)
  then
      d2:= 0
  else
      d2:= 11 - d2;

  if d2 = Valch(s[14])
  then
      CGC_Valido:= true
  else
      CGC_Valido:= false;
end;

(***********************************************************)
function CPF_Valido(s: string): boolean;
(***********************************************************)
const
  peso1: array[1..9] of integer =
    (0,9,8,7,6,5,4,3,2);
  peso2: array[1..10] of integer =
    (1,0,9,8,7,6,5,4,3,2);
var
  //s: string[11];
  d1,d2: byte;
  i,soma: integer;

  function vpeso1: integer;
  begin
    if (i=1) and (peso1[i]=0) then
      vpeso1:= 10
    else
      vpeso1:= peso1[i];
  end;

  function vpeso2: integer;
  begin
    if (i=1) and (peso2[i]=1) then
      vpeso2:= 11
    else if (i=2) and (peso2[i]=0) then
      vpeso2:= 10
    else
      vpeso2:= peso2[i];
  end;

begin
  //str(cpf:0:0,s);
  insert(copy('00000000000',1,11-length(s)),s,1);
  soma:= 0;
  for i:= 1 to 9 do
    soma:= soma + vpeso1*Valch(s[i]);
  d1:= soma mod 11;
  if (d1 = 0) or (d1 = 1) then
    d1:= 0
  else
    d1:= 11 - d1;
  if d1 <> Valch(s[10]) then
  begin
    CPF_Valido:= false;
    exit;
  end;
  soma:= 0;
  for i:= 1 to 10 do
    soma:= soma + vpeso2*Valch(s[i]);
  d2:= soma mod 11;
  if (d2 = 0) or (d2 = 1) then
    d2:= 0
  else
    d2:= 11 - d2;
  if d2 = Valch(s[11]) then
    CPF_Valido:= true
  else
    CPF_Valido:= false;
end;

Function IndexOptionsToStr( indOptions:TIndexOptions ):String;
begin
Result:='';
if ixPrimary         in indOptions Then Result:=Result+' ixPrimary';
if ixUnique          in indOptions Then Result:=Result+' ixUnique';
if ixDescending      in indOptions Then Result:=Result+' ixDescending';
if ixExpression      in indOptions Then Result:=Result+' ixExpression';
if ixCaseInsensitive in indOptions Then Result:=Result+' ixCaseInsensitive';
end;

Function StrToIndexOptions( sIndOptions:String ):TIndexOptions;
begin
Result:=[];
if Pos('ixPrimary',sIndOptions)<>0 Then Result:=Result+[ixPrimary];
if Pos('ixUnique',sIndOptions)<>0 Then Result:=Result+[ixUnique];
if Pos('ixDescending',sIndOptions)<>0 Then Result:=Result+[ixDescending];
if Pos('ixExpression',sIndOptions)<>0 Then Result:=Result+[ixExpression];
if Pos('ixCaseInsensitive',sIndOptions)<>0 Then Result:=Result+[ixCaseInsensitive];
end;

Function GetFieldType( oField:TField ):String;
Begin
    case oField.DataType Of
         ftUnknown:       Result:='ftUnknown';
         ftString:        Result:='ftString';
         ftSmallint:      Result:='ftSmallint';
         ftInteger:       Result:='ftInteger';
         ftWord:          Result:='ftWord';
         ftBoolean:       Result:='ftBoolean';
         ftFloat:         Result:='ftFloat';
         ftCurrency:      Result:='ftCurrency';
         ftBCD:           Result:='ftBCD';
         ftDate:          Result:='ftDate';
         ftTime:          Result:='ftTime';
         ftDateTime:      Result:='ftDateTime';
         ftBytes:         Result:='ftBytes';
         ftVarBytes:      Result:='ftVarBytes';
         ftAutoInc:       Result:='ftAutoInc';
         ftBlob:          Result:='ftBlob';
         ftMemo:          Result:='ftMemo';
         ftGraphic:       Result:='ftGraphic';
         ftFmtMemo:       Result:='ftFmtMemo';
         ftParadoxOle:    Result:='ftParadoxOle';
         ftDBaseOle:      Result:='ftDBaseOle';
         ftTypedBinary:   Result:='ftTypedBinary';
         ftCursor:        Result:='ftCursor';
     End;

End;

(************************************************************)
function Decrypt(Dado : String) : String;
(************************************************************)
var
   mensx : string;
   l     : integer;
   i     : integer;
   j     : integer;
const
   ch = 'RarbOcodNenfAgahLiljDkolmSnsoCpcqHrhsMwmxIyizTtzhk';
begin
   j:= 0;
   mensx := '';
   for i := 1 to length(dado) do
      begin
        j := j+1;
        l := asc(copy(dado, i, 1)) - asc(copy(ch, j, 1));
        if (j = 50) then
            j:= 1;
        if (l < 0) then
            l := l + 256;
        mensx := mensx + chr(l);
     end;
   Decrypt := mensx;
end;

(************************************************************)
function Encrypt(Dado : String) : String;
(************************************************************)
var
   mensx : string;
   l     : integer;
   i     : integer;
   j     : integer;
const
   ch = 'RarbOcodNenfAgahLiljDkolmSnsoCpcqHrhsMwmxIyizTtzhk';
begin
   j:= 0;
   mensx := '';
   for i := 1 to length(dado) do
      begin
        j := j+1;
        l:= Asc(SubStr(dado, i, 1)) + Asc(SubStr(ch, j, 1));
        if (j = 50) then
             j:= 1;
        if (l > 255) then
             l:= l - 256;
        mensx := mensx + Chr(l)
     end;
  Encrypt := mensx;
end;

(*****************************************************************)
function IIFBoolean( bCond, bTrue, bFalse: Boolean): Boolean;
(*****************************************************************)
begin
     if (bCond) then
         Result := bTrue
     else
         Result := bFalse;
end;

(*****************************************************************)
function IIFChar( bCond: Boolean; cTrue, cFalse: Char): Char;
(*****************************************************************)
begin
     if (bCond) then
        Result := cTrue
     else
        Result := cFalse;
end;

(*****************************************************************)
function IIFDate( bCond: Boolean; dTrue, dFalse: TDateTime): TDateTime;
(*****************************************************************)
begin
     if (bCond) then
        Result := dTrue
     else
        Result := dFalse;
end;

(*****************************************************************)
function IIFExtended( bCond: Boolean; eTrue, eFalse: Extended ): Extended;
(*****************************************************************)
begin
     if (bCond) then
        Result := eTrue
     else
        Result := eFalse;
end;

(*****************************************************************)
function IIFInteger( bCond: Boolean; iTrue, iFalse: Integer): Integer;
(*****************************************************************)
begin
     if (bCond) then
        Result := iTrue
     else
        Result := iFalse;
end;

(*****************************************************************)
function IIFLongInt( bCond: Boolean; liTrue, liFalse: LongInt): LongInt;
(*****************************************************************)
begin
     if (bCond) then
        Result := liTrue
     else
        Result := liFalse;
end;

(*****************************************************************)
function IIFReal( bCond: Boolean; rTrue, rFalse: Real): Real;
(*****************************************************************)
begin
     if (bCond) then
        Result := rTrue
     else
        Result := rFalse;
end;

(*****************************************************************)
function IIFString( bCond: Boolean; sTrue, sFalse: String): String;
(*****************************************************************)
begin
     if (bCond) then
        Result := sTrue
     else
        Result := sFalse;
end;

(*******************************************)
// Habilita/Desabilita Todos os Itens de um Menu
procedure EnableMenu(oMenu:TMainMenu;blEnabled:Boolean);
(*******************************************)
Var i:Word;
Begin
For i:=0 To oMenu.Items.Count-1 Do
    EnableItem(oMenu.Items[i],blEnabled);
End;
procedure EnableItem(oMenuItem:TMenuItem;blEnabled:Boolean);
Var i:Word;
Begin
If oMenuItem.Count=0 Then
   oMenuItem.Enabled:=blEnabled
Else
    For i:=0 To oMenuItem.Count-1 Do
        EnableItem(oMenuItem.Items[i],blEnabled);
End;

(*******************************************)
// Monta duas listas de Strings
//   oLabelItens: Lista com os DisplayLabels
//                dos campos chave de cada
//                índice da tabela (Table)
//                Fornece o conteúdo de um
//                Combo ou LisBox
//   oIndexNames: Lista paralela à anterior
//                contendo os nomes dos índices
procedure MontaIndices( Table:TTable; oLabelItems, oIndexNames: TStrings );
(*******************************************)
Var i,j:Integer;
    sComboText,sFieldLabel:String;
Begin
Table.IndexDefs.Update;
For i:=0 To Table.IndexDefs.Count-1 Do
    Begin
    oIndexNames.Add(Table.IndexDefs[i].Name);
    sComboText:=Table.FieldByName(
             Parce(
                Table.IndexDefs[i].Fields,
                ';',1)).DisplayLabel;
    j:=2;
    While True Do
          Begin
          sFieldLabel:=Parce(
                Table.IndexDefs[i].Fields,
                ';',j);
          If sFieldLabel<>'' Then
             sComboText:=sComboText+' / '+Table.FieldByName(sFieldLabel).DisplayLabel
          Else
             Break;
          Inc(j);
          End;
    oLabelItems.Add(sComboText)
    End;
End;

procedure Destaca(Sender: TObject; V: Boolean);
Var
Fonte, Fundo : TColor;
begin
  NextCtl := 0;
  If V = True Then
    Begin
       Fundo := clNavy;
       Fonte := clYellow;
    end
  Else
    Begin
       Fundo := clWhite;
       Fonte := clBlack;
    end;
   If (Sender is TDBEdit) Then
     Begin
        (Sender as TDBEdit).Font.Color := Fonte;
        (Sender as TDBEdit).Color := Fundo;
     end;
   If (Sender is TEdit) Then
     Begin
        (Sender as TEdit).Font.Color := Fonte;
        (Sender as TEdit).Color := Fundo;
     end;
    If (Sender is TMaskEdit) Then
     Begin
        (Sender as TMaskEdit).Font.Color := Fonte;
        (Sender as TMaskEdit).Color := Fundo;
     end;
    If (Sender is TDBLookUpComboBox) Then
     Begin
        (Sender as TDBLookUpComboBox).Font.Color := Fonte;
        (Sender as TDBLookUpComboBox).Color := Fundo;
         NextCtl := 2;
     end;
    If (Sender is TDBEdit) Then
     Begin
        (Sender as TDBEdit).Font.Color := Fonte;
        (Sender as TDBEdit).Color := Fundo;
     end;
    If (Sender is TDBMemo) Then
     Begin
        (Sender as TDBMemo).Font.Color := Fonte;
        (Sender as TDBMemo).Color := Fundo;
     end;
   If (Sender is TcxButton) Then
     Begin
       If V = True Then
        Begin
          (Sender as TcxButton).Font.Color := clRed;
          (Sender as TcxButton).Font.Style := [fsBold];
        end
       Else
        Begin
          (Sender as TcxButton).Font.Color := clBlack;
          (Sender as TcxButton).Font.Style := [];
        end;
     end;
end;

(******************************************************************)
Function Converte( sTrinca,sValor,sNumero:String;iGrandeza:Byte ):String;
(******************************************************************)
Var sMil, sDigito1, sDigito2, sDigito3, sDezena:String;
Const aUnidades:Array[1..9] Of String=( 'UM ', 'DOIS ', 'TRES ',
               'QUATRO ', 'CINCO ', 'SEIS ','SETE ','OITO ', 'NOVE ' );
      aDezenas :Array[1..9] Of String=( 'DEZ ', 'VINTE ', 'TRINTA ',
               'QUARENTA ', 'CINQUENTA ','SESSENTA ', 'SETENTA ',
               'OITENTA ', 'NOVENTA ');
      aTeen :Array[1..10] Of String=('DEZ ', 'ONZE ', 'DOZE ', 'TREZE ',
               'QUATORZE ','QUINZE ', 'DEZESSEIS ','DEZESETE ','DEZOITO ','DEZENOVE ');
      aCentenas:Array[1..9] Of String=( 'CENTO ', 'DUZENTOS ', 'TREZENTOS ',
               'QUATROCENTOS ','QUINHENTOS ','SEISCENTOS ','SETECENTOS ',
               'OITOCENTOS ','NOVECENTOS ');
      aMilhoes :Array[1..2] Of String=( 'MILHAO ', 'MILHOES ' );
      aMoeda:Array[1..2] Of String=( 'REAL ','REAIS ' );
      aCentavos:Array[1..2] Of String=('CENTAVO', 'CENTAVOS' );
Begin
sMil:='MIL ';
If sTrinca='000' Then Begin
   Result:=sValor;
   Exit;
End;
sDigito1:=LeftStr(sTrinca,1);
sDigito2:=Copy(sTrinca,2,1);
sDigito3:=RightStr(sTrinca,1);
sDezena :=RightStr(sTrinca,2);
If (iGrandeza=4) and (Int(StrToFloat(sNumero))>0) Then
   sValor:=sValor+IIfString( StrToFloat(sNumero)<>Int(StrToFloat(sNumero)),' E ','' );
If sDigito1<>'0' Then
   If (sDezena='00') and (sDigito1='1') Then
      sValor:=sValor+'CEM '
   Else
      sValor:=sValor+aCentenas[ StrToInt(sDigito1) ];
If (sDezena>='10') and (sDezena<='19') Then
   sValor:=sValor+IIfString( sDigito1<>'0','E '+aTeen[ StrToInt(sDezena)-9 ],
                                           aTeen[ StrToInt(sDezena)-9 ] );
If sDigito2>='2' Then
   If sDigito1<>'0' Then
      sValor:=sValor+'E '+aDezenas[ StrToInt(sDigito2) ]
   Else
      sValor:=sValor+aDezenas[ StrToInt(sDigito2) ];

If (sDigito3<>'0') and ((sDezena<'10') or (sDezena>'19')) Then
   If (sDigito1<>'0') or (sDigito2<>'0') Then
      sValor:=sValor+'E '+aUnidades[ StrToInt(sDigito3) ]
   Else
      sValor:=sValor+aUnidades[ StrToInt(sDigito3) ];
Case iGrandeza Of
   1:sValor:=sValor+IIfString( StrToInt(sTrinca)=1, aMilhoes[1], aMilhoes[2]);
   2:sValor:=IIfString( StrToInt(sTrinca)>0,sValor+sMil,sValor);
   3:sValor:=sValor+IIfString( StrToFloat(sNumero)<2, aMoeda[1], aMoeda[2] );
   4:sValor:=sValor+IIfString( StrToInt(sTrinca)=1, aCentavos[1], aCentavos[2]);
End;
Result:=sValor;
End;


Function Extenso( rValor:Extended ):String;
Var sValor,sNumero,sMilhoes,sMilhares,sCentenas,sCentavos:String;
Const aMoeda: Array[1..2] Of String = ('REAL ','REAIS ');
Begin
sNumero:='0000000000000'+FloatToStrF( rValor,ffFixed,13,2 );
sNumero:=Copy(sNumero,Length(sNumero)-12,13);
sMilhoes :=Copy( sNumero,2,3 );
sMilhares:=Copy( sNumero,5,3 );
sCentenas:=Copy( sNumero,8,3 );
sCentavos:=StrZeroR( (rValor-Int(rValor))*100,3 );

sValor:=Converte( sMilhoes,sValor,sNumero,1 );
If (sMilhoes<>'000') and (sMilhares<='100') or
   ((StrToInt(sMilhares) mod 100)=0) and (sCentenas='000') Then
   sValor:=sValor+'E ';
sValor:=Converte( sMilhares,sValor,sNumero,2 );
If (StrToInt( sMilhares)<>0)  and
   (StrToInt(sCentenas)<>0) Then  sValor:=sValor+'E ';
sValor:=Converte( sCentenas,sValor,sNumero,3 );

If (sCentenas+sMilhares='000000') and (StrToInt(sMilhoes)<>0) Then
   sValor:=sValor+'DE '+aMoeda[2]
Else If (sCentenas='000') and (StrToInt(sMilhoes+sMilhares)<>0) Then
   sValor:=sValor+aMoeda[2];
sValor:=Converte( sCentavos,sValor,sNumero,4 );
If LeftStr(sValor,2)='E ' Then sValor:=RightPos(sValor,3);
Result := sValor
End;

function ChecaCEP(cCep:String ; cEstado:String): Boolean;
//
// Verifica se um CEP é valido ou não
//
var
cCEP1 : Integer;
begin
cCep := copy(cCep,1,5) + copy(cCep,7,3);
cCEP1 := StrToInt(copy(cCep,1,3));
if Length(trim(cCep)) > 0 then
   begin
   if (StrToInt(cCep) <= 1000000.0) then
       begin
       MessageDlg('CEP tem que ser maior que [01000-000]',mtError,[mbOk],0);
       Result := False
       end
   else
       begin
       if Length(trim(copy(cCep,6,3))) < 3 then Result := False else
       if (cEstado = 'SP') and (cCEP1 >= 10 ) and (cCEP1 <= 199) then Result := True else
       if (cEstado = 'RJ') and (cCEP1 >= 200) and (cCEP1 <= 289) then Result := True else
       if (cEstado = 'ES') and (cCEP1 >= 290) and (cCEP1 <= 299) then Result := True else
       if (cEstado = 'MG') and (cCEP1 >= 300) and (cCEP1 <= 399) then Result := True else
       if (cEstado = 'BA') and (cCEP1 >= 400) and (cCEP1 <= 489) then Result := True else
       if (cEstado = 'SE') and (cCEP1 >= 490) and (cCEP1 <= 499) then Result := True else
       if (cEstado = 'PE') and (cCEP1 >= 500) and (cCEP1 <= 569) then Result := True else
       if (cEstado = 'AL') and (cCEP1 >= 570) and (cCEP1 <= 579) then Result := True else
       if (cEstado = 'PB') and (cCEP1 >= 580) and (cCEP1 <= 589) then Result := True else
       if (cEstado = 'RN') and (cCEP1 >= 590) and (cCEP1 <= 599) then Result := True else
       if (cEstado = 'CE') and (cCEP1 >= 600) and (cCEP1 <= 639) then Result := True else
       if (cEstado = 'PI') and (cCEP1 >= 640) and (cCEP1 <= 649) then Result := True else
       if (cEstado = 'MA') and (cCEP1 >= 650) and (cCEP1 <= 659) then Result := True else
       if (cEstado = 'PA') and (cCEP1 >= 660) and (cCEP1 <= 688) then Result := True else
       if (cEstado = 'AM') and ((cCEP1 >= 690) and (cCEP1 <= 692) or (cCEP1 >= 694) and (cCEP1 <= 698)) then Result := True else
       if (cEstado = 'AP') and (cCEP1 = 689) then Result := True else
       if (cEstado = 'RR') and (cCEP1 = 693) then Result := True else
       if (cEstado = 'AC') and (cCEP1 = 699) then Result := True else
       if ((cEstado = 'DF') or (cEstado = 'GO')) and (cCEP1 >= 700) and (cCEP1 <= 769) then Result := True else
       if (cEstado = 'TO') and (cCEP1 >= 770) and (cCEP1 <= 779) then Result := True else
       if (cEstado = 'MT') and (cCEP1 >= 780) and (cCEP1 <= 788) then Result := True else
       if (cEstado = 'MS') and (cCEP1 >= 790) and (cCEP1 <= 799) then Result := True else
       if (cEstado = 'RO') and (cCEP1 = 789) then Result := True else
       if (cEstado = 'PR') and (cCEP1 >= 800) and (cCEP1 <= 879) then Result := True else
       if (cEstado = 'SC') and (cCEP1 >= 880) and (cCEP1 <= 899) then Result := True else
       if (cEstado = 'RS') and (cCEP1 >= 900) and (cCEP1 <= 999) then Result := True else Result := False
       end;
   end
else
   begin
   Result := True;
   end
end;

function RetornaValor(sSql: string;Trans: TIBTransaction=nil;db :TIBDatabase=nil):Variant;
var
  PTransaction : TIBTransaction;
  sDB : TIBDatabase;
begin
  if Trans = nil then
    PTransaction := TIBTransaction.Create(nil)
  else
    PTransaction := Trans;

  PTransaction.DefaultDatabase := dmApp.Database;

  if not PTransaction.Active then
    PTransaction.StartTransaction;

  with TIBQuery.create(nil) do
  begin
    try
      Database := dmApp.Database;
      Transaction :=  PTransaction;
      sql.text := sSql;
      open;
      Result := Fields[0].Value;

      if Trans = nil then
      begin
        PTransaction.Rollback;
        PTransaction.Free;
      end;

      Free;
    except
      if Trans = nil then
      begin
        PTransaction.Rollback;
        PTransaction.Free;
      end;

      Free;
    end;
  end;
end;

procedure ExecSql2(ValorSql :String; db :TIBDatabase; txn :TIBTransaction);
var
  txnActive :Boolean;
begin
  with TIBSQL.Create(nil) do
  begin
    try
      showmessage('teste');
      if (db = nil) then
         Database := dmapp.Database;

      if (txn = nil) then
         txn := dmApp.txnCritica;

      Transaction := txn;
      txnActive := txn.InTransaction;
      SQL.Text:= ValorSql;
      if not txnActive then
      begin
        txn.StartTransaction;
        ExecQuery;
        txn.CommitRetaining;
      end
      else
        ExecQuery;
      Free;
    except
      Free;
    end;
  end;
end;
procedure ExecSql(ValorSql :String;txn :TIBTransaction);
var
  txnActive :Boolean;
begin
  with TIBSQL.Create(nil) do
  begin
    try
      Database := dmapp.Database;
      Transaction := txn;
      txnActive := txn.InTransaction;
      SQL.Text:= ValorSql;
      if not txnActive then
      begin
        txn.StartTransaction;
        ExecQuery;
        txn.CommitRetaining;
      end
      else
        ExecQuery;
      Free;
    except
      Free;
    end;
  end;
end;

function  ExtraiDigitos( Texto: string ):string;
var
  i : integer;
  sAux : string;
begin
  sAux := '';
  for i:=1 to length(Texto)do
  begin
    if Texto[i] in ['0'..'9'] then
      sAux := sAux + Texto[i];
  end;

  If trim(sAux) <> ''
  then
      result := sAux
  else
      result := '0';
end;

function PlnCtaFormat(Cta, Fmt: PChar): PChar;
var
  Levels, MaxValues: TLevels;
  S: ShortString;
begin
  Result := Cta; { Usa Cta para retorno }

  Levels := InternalDecode(Cta);
  MaxValues := InternalDecode(Fmt);

  S := InternalFormat(Levels, MaxValues);

  if S <> '' then
    StrPCopy(Result, S)
  else
    Result := nil;
end;

function InternalDecode(S: PChar): TLevels;
var
  Level: byte;
  ProximoCh: PChar;
  Temp: string;
begin
  FillChar(Result, SizeOf(Result), 0);

  { Posiciona no primeiro digito }
  while (S^ <> #0) and (not (S^ in ['0'..'9'])) do
    Inc(S);

  { Pega todos os niveis }
  Level := Low(TLevels);
  Temp := '';
  while (S^ <> #0) and (Level <= High(TLevels)) do begin

    if S^ in ['0'..'9'] then
      Temp := Temp + S^;

    ProximoCh := S + 1; { Pega o proximo caractere }
    if ((S^ = '.') or (ProximoCh^ = #0)) and (Temp <> '') then begin
      Result[Level] := StrToInt(Temp);
      Inc(Level);
      Temp := '';
    end;

    Inc(S);
  end;
end;

function InternalFormat(const Levels, MaxValues: TLevels): string;
var
  I: byte;
begin
  Result := '';

  { Verifica se em algum nivel a conta apresenta valor maior que
    o permitido. Se houver, cancela. }
  for I := Low(TLevels) to High(TLevels) do
    if Levels[I] > MaxValues[I] then
      Exit;

  { Um nivel onde o valor maximo e zero indica o fim da formatacao }
  I := Low(TLevels);
  while (I <= High(TLevels)) and (Levels[I] > 0) do begin
    if Result <> '' then
      Result := Result + '.';
    Result := Result + InternalPadZero(Levels[I], Length(IntToStr(MaxValues[I])));
    Inc(I);
  end;
end;

function InternalPadZero(Value: LongInt; const Count: byte): ShortString;
var
  I, Len: byte;
begin
  if Value < 0 then
    Value := Value * (-1);

  Result := IntToStr(Value);

  Len := Length(Result);

  if Count < Len then
    Result := StrOfChr('*', Count)
  else
    for I := Len + 1 to Count do
      Result := '0' + Result;
end;

function StrOfChr(Ch: Char; Count: integer): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Count do
    Result := Result + Ch;
end;

function PlnCtaMain(Cta: PChar): PChar;
var
  Ch: PChar;
begin
  Result := InternalClear(Cta);

  Ch := Cta + StrLen(Result) - 1; { Ultimo caractere }

  { Posiciona no ultimo ponto que estiver antes do ultimo digito }

  { Procura o ultimo digito }
  while (Ch > Result) and (not (Ch^ in ['0'..'9'])) do
    Dec(Ch);

  { Procura o ultimo ponto }
  while (Ch > Result) and (Ch^ <> '.') do
    Dec(Ch);

  { Marca a posicao de Ch como fim da string }
  Ch^ := #0;

  { Retorna nil se a conta nao possui pai, ou seja, se for
    uma conta de nivel 1 }
  if Ch = Result then
    Result := nil;
end;

{ Retirando Zeros }
Function RetiraZeros ( Str: String ): String;
Var
 Aux: String;
 I, Len: Integer ;
 Inicio: Boolean ;
Begin
   I := 1;

   Len := Length(Str);

   Aux := '';

   Inicio := False ;

   While I <= Len do
   begin
        If (( Copy(Str,I,1) <> '0' ) OR ( Inicio ))
        then Begin
             Aux := Aux + Copy(Str,I,1);
             Inicio := TRUE ;
        end
        else begin
             Inicio := FALSE ;
        end;

        I := I + 1;
   end;

   result := Aux;
end;

{ A procedure InternalClear limpa a Cta, eliminando caracteres estranhos }
function InternalClear(Cta: PChar): PChar;
var
  Ch: PChar;
begin
  Result := Cta;

  Ch := Cta;

  { Posiciona no primeiro digito numerico, pois uma conta
    precisa iniciar-se com numero }
  while (Ch^ <> #0) and (not (Ch^ in ['0'..'9'])) do
    Inc(Ch);

  { Copia os caracteres validos }
  while Ch^ <> #0 do begin
    if Ch^ in ['.', '0'..'9'] then begin
      Cta^ := Ch^;
      Inc(Cta);
    end;
    Inc(Ch);
  end;

  Cta^ := #0;
end;

Function FormataMP20CI ( Str : String ) : String;
VAR
   I, LEN: INTEGER;
   AUX, AUX1: STRING;
Begin
     LEN := LENGTH(STR);

     AUX := '';
     AUX1 := '';

     I := 1;

     WHILE I <= LEN DO
     BEGIN
          AUX := COPY ( STR, I, 1 );

          IF AUX = 'Ç'
          THEN
              AUX := 'C' ;

          IF AUX = 'Á'
          THEN
              AUX := 'A' ;

          IF AUX = 'É'
          THEN
              AUX := 'E' ;

          IF AUX = 'Í'
          THEN
              AUX := 'I' ;

          IF AUX = 'Ó'
          THEN
              AUX := 'O' ;

          IF AUX = 'Ú'
          THEN
              AUX := 'U' ;

          IF AUX = 'Ã'
          THEN
              AUX := 'A' ;

          IF AUX = 'Õ'
          THEN
              AUX := 'O' ;

          IF AUX = 'Ô'
          THEN
              AUX := 'O' ;

          IF AUX = 'Â'
          THEN
              AUX := 'A' ;

          IF AUX = 'Ê'
          THEN
              AUX := 'E' ;

          IF AUX = 'Î'
          THEN
              AUX := 'I' ;

          AUX1 := AUX1 + AUX ;

          I := I + 1;
     END;

     Str :=Copy ( AUX1, 1, 36 );

     While Length ( Str ) < 36 do
     begin
       Str := Str + ' ';
     end;

     Result := Str ;
End;

Function AllTrim(const S : string) : string;
 {-Return a string with leading and trailing white space removed}
var
 I, L: Integer;
begin
 L := Length(S);
 I := 1;
 while (I <= L) and (S[I] <= ' ') do Inc(I);
 if I > L then Result := '' else
 begin
   while S[L] <= ' ' do Dec(L);
   Result := Copy(S, I, L - I + 1);
 end;
end; { AllTrim }

Function Empty(const s: String) : Boolean;
var
 aux : string;
begin
 aux := alltrim(s);
 if Length(aux) = 0 then Result := true else Result := false;
end;

Function IsNumero(const s: string) : boolean;
var
 i : byte;
begin
 Result := false;
 for i := 1 to length(s) do
   if not (s[i] in ['0'..'9']) then exit;
 Result := true;
end; { IsNumero }

{ chInt - Converte um caracter numérico para o valor inteiro correspondente. }
function CharToInt( ch: Char ): ShortInt;
begin
 Result := Ord ( ch ) - OrdZero;
end;

{ intCh = Converte um valor inteiro (de 0 a 9) para o caracter numérico
 correspondente. }

function IntToChar ( int: ShortInt ): Char;
begin
 Result := Chr ( int + OrdZero);
end;


Function CHKIEMG(const iemg : string):boolean;
var
 npos,i : byte;
 ptotal, psoma : Integer;
 dig1, dig2 : string[1];
 ie, insc : string;
 nresto : SmallInt;
begin
 //
 Result := true;
 ie := alltrim(iemg);
 if (empty(ie))  then exit;
 if copy(ie,1,2) = 'PR' then exit;
 if copy(ie,1,5) = 'ISENT' then exit;

 Result := false;
 If (Trim(iemg)='.') Then Exit;
 if (length(ie) <> 13) then Exit;
 if not IsNumero(ie) then Exit;

 dig1 := copy(ie,12,1);
 dig2 := copy(ie,13,1);
 insc := copy(ie,1,3) + '0' + copy(ie,4,8);
 //  CALCULA DIGITO 1
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   psoma := CharToInt(insc[npos]) * i;
   IF psoma >= 10 then psoma := psoma - 9;
   inc(ptotal,psoma);
   IF i = 2 then i := 0;
   dec(npos);
 end;
 nResto := ptotal mod 10;
 if NResto = 0 then  nResto := 10;
 nResto := 10 - nResto;
 if nResto <> CharToInt(dig1[1]) then exit;

 // CALCULA DIGITO 2
 npos := 12;
 i := 1;
 ptotal := 0;
 while npos > 0 do
 begin
   inc(i);
   if i = 12 then i := 2;
   inc(ptotal, CharToInt(ie[npos]) * i);
   dec(npos);
 end;
 nResto := ptotal mod 11;
 if (nResto = 0) or (nResto = 1) then nResto := 11;
 nResto := 11 - nResto;
 if nResto <> CharToInt(dig2[1]) then exit;
 Result := true;
end; // ChkMG


// ----------------------------------- Inscrições Estaduais

Function ChkIEAC(const ie : string) : Boolean;  // 99.999.999/999-99
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma,CharToInt(ie[i]) * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (IntToChar(dig) = ie[13]);
end; // ChkIEAC

Function ChkIEAL(const ie : string) : Boolean; // 24XNNNNND
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := soma - trunc(soma / 11) * 11;
 if dig = 10 then dig := 0;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAL

Function ChkIEAM(const ie : string) : Boolean;  // 99.999.999-9
var
 b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 if soma < 11 then dig := 11 - soma else
 begin
   i := (soma mod 11);
   if i <= 1 then dig := 0 else dig := 11 - i;
 end;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAM

Function ChkIEAP(const ie : string) : Boolean; // 999999999
var
 p,d, b, i, soma : Integer;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 p := 0;
 d := 0;
 i := StrToInt(copy(ie,1,8));
 if (i >= 03000001) and (i <= 03017000) then
 begin
   p := 5;
   d := 0;
 end else
 if (i >= 03017001) and (i <= 03019022) then
 begin
   p := 9;
   d := 1;
 end;
 b := 9;
 soma := p;
 for i := 1 to 08 do
 begin
   inc(soma, CharToInt(ie[i]) * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig = 10 then dig := 0 else
 if dig = 11 then dig := d;
 Result := (IntToChar(dig) = ie[09]);
end; // ChkIEAP

Function ChkIEBA(const ie : string) : Boolean; // 999999-99
var
 b, i, soma : Integer;
 nro : array[1..8] of byte;
 NumMod :  word;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) <> 8) then exit;
 die := copy(ie,1,8);
 if not IsNumero(die) then exit;
 for i := 1 to 8 do nro[i] := CharToInt(die[i]);
 if nro[1] in [0, 1, 2, 3, 4, 5, 8] then NumMod := 10 else NumMod := 11;
 // calculo segundo
 b := 7;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[8]);
 if not Result then exit;
 // calculo segundo
 b := 8;
 soma := 0;
 for i := 1 to 06 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 inc(soma, (nro[8] * 2));
 i := soma mod NumMod;
 if NumMod = 10 then
 begin
   if i = 0 then dig := 0 else dig := NumMod - i;
 end else
 begin
   if i <= 1 then dig := 0 else dig := NumMod - i;
 end;
 Result := (dig = nro[7]);
end; // ChkIEBA

Function ChkIECE(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) > 9) then exit;
 if not IsNumero(ie) then exit;
 die := ie;
 if length(ie) < 9 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 9;
 end;
 for i := 1 to 9 do nro[i] := CharToInt(die[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, (nro[i] * b));
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[9]);
end; // ChkIECE

Function ChkIEDF(const ie : string) : Boolean;  // 999.99999.999.99
var
 b, i, soma : Integer;
 nro : array[1..13] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 13) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 13 do nro[i] := CharToInt(ie[i]);
 b := 4;
 soma := 0;
 for i := 1 to 11 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[12]);
 if not Result then exit;

 b := 5;
 soma := 0;
 for i := 1 to 12 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig >= 10 then dig := 0;
 Result := (dig = nro[13]);
end; // ChkIEDF

Function ChkIEES(const ie : string) : Boolean;  // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := soma mod 11;
 if i < 2 then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end; // ChkIEES

Function ChkIEGO(const ie : string) : Boolean; // 99.999.999.9
var
 n, b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,1,2);
 if (s = '10') or (s = '11') or (s = '15') then
 begin
   for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
   n := trunc(StrToFloat(ie) / 10);
   if n = 11094402 then
   begin
     if (nro[9] = 0) or (nro[9] = 1) then
     begin
       Result := true;
       exit;
     end;
   end;

   b := 9;
   soma := 0;
   for i := 1 to 08 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
   end;
   i := (soma mod 11);
   if i = 0 then dig := 0 else
   if i = 1 then
   begin
     if (n >= 10103105) and (n <= 10119997) then
       dig := 1
     else
       dig := 0;
   end else
   begin
     dig := 11 - i;
   end;
   Result := (dig = nro[9]);
 end;
end; // ChkIEGO

Function ChkIEMA(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..9] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 9) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 9 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[9]);
end; // ChkIEMA

Function ChkIEMT(const ie : string) : Boolean;  // 9999999999-9
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 die : string;
begin
 Result := false;
 if (length(ie) < 9) then exit;
 die := ie;
 if length(die) < 11 then
 begin
   repeat
     die := '0' + die;
   until length(die) = 11;
 end;
 if not IsNumero(die) then exit;
 for i := 1 to 11 do nro[i] := CharToInt(die[i]);
 b := 3;
 soma := 0;
 for i := 1 to 10 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 9;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[11]);
end; // ChkIEMT

Function ChkIEMS(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '28' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEMS

Function ChkIEPA(const ie : string) : Boolean; // 99.999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '15' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPA

Function ChkIEPB(const ie : string) : Boolean; // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPB

Function ChkIEPR(const ie : string) : Boolean; //  99999999-99
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
 b := 3;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
 if not result then exit;

 b := 4;
 soma := 0;
 for i := 1 to 09 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[10]);
end; // ChkIEPR

Function ChkIEPE(const ie : string) : Boolean; // 99.9.999.9999999-9
var
 b, i, soma : Integer;
 nro : array[1..14] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 14) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 14 do nro[i] := CharToInt(ie[i]);
 b := 5;
 soma := 0;
 for i := 1 to 13 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 0 then b := 9;
 end;
 dig := 11 - (soma mod 11);
 if dig > 9 then dig := dig - 10;
 Result := (dig = nro[14]);
end; // ChkIEPE

Function ChkIEPI(const ie : string) : Boolean; // 999999999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIEPI

Function ChkIERJ(const ie : string) : Boolean; // 99.999.99-9
var
 b, i, soma : Integer;
 nro : array[1..08] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 08) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 08 do nro[i] := CharToInt(ie[i]);
 b := 2;
 soma := 0;
 for i := 1 to 07 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
   if b = 1 then b := 7;
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[08]);
end; // ChkIERJ

Function ChkIERN(const ie : string) : Boolean; // 99.999.999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 soma := soma * 10;
 dig := (soma mod 11);
 if (dig = 10) then dig := 0;
 Result := (dig = nro[09]);
end; // ChkIERN

Function ChkIERS(const ie : string) : Boolean;  // 999.999999-9
var
 b, i, soma : Integer;
 nro : array[1..10] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 10) then exit;
 if not IsNumero(ie) then exit;
 i := StrToInt(copy(ie,1,3));
 if (i >= 1) and (i <= 467) then
 begin
   for i := 1 to 10 do nro[i] := CharToInt(ie[i]);
   b := 2;
   soma := 0;
   for i := 1 to 09 do
   begin
     inc(soma, nro[i] * b);
     dec(b);
     if b = 1 then b := 9;
   end;
   dig := 11 - (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[10]);
 end;
end; // ChkIERS

// Rondônia - versão antiga
Function ChkIERO(const ie : string) : Boolean; // 999.99999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 6;
 soma := 0;
 for i := 4 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b)
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := dig - 10;
 Result := (dig = nro[09]);
end; // ChkIERO

// Rondônia - versão nova
Function ValidaInscRO(SIE :string): boolean;
var i,x,y,z,j : integer;
  s : string;
begin
  i := 1;    y := 6;
  x := 0;    z := 0;
  j := 0;
  for j := 1 to length(trim(sie))do
      if sie[j] in
['0','1','2','3','4','5','6','7','8','9','0'] then
         s := s + sie[j];
  if not length(s)  <> 14 then begin
     for i := 1 to (14 - length(Trim(s))) do
             s := '0' + trim(s)
  end;
  for i := 1 to (length(s) - 1) do begin
      x := strtoint(s[i])* y;
      z := z + x;
      if y  > 2 then
         dec(y)
      else y := 9;
  end;
  x := z mod 11;
  y := 11 - x;
  if inttostr(y) = s[14] then
     Result := true
  else Result := false;
end;


Function ChkIERR(const ie : string) : Boolean; // 99.999999-9
var
 i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 if copy(ie,1,2) <> '24' then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * i);
 end;
 dig := (soma mod 09);
 Result := (dig = nro[09]);
end; // ChkIERR

Function ChkIESC(const ie : string) : Boolean;  // 999.999.999
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 i := (soma mod 11);
 if (i <= 1) then dig := 0 else dig := 11 - i;
 Result := (dig = nro[09]);
end; // ChkIESC

Function ChkIESP(const ie : string) : Boolean;
var
 i, soma : Integer;
 nro : array[1..12] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if UpperCase(copy(ie,1,1)) = 'P' then
 begin
   s := copy(ie,2,9);
   if not IsNumero(s) then exit;
   for i := 1 to 8 do nro[i] := CharToInt(s[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
 end else
 begin
   if (length(ie) < 12) then exit;
   if not IsNumero(ie) then exit;
   for i := 1 to 12 do nro[i] := CharToInt(ie[i]);
   soma := (nro[1] * 1) + (nro[2] * 3) + (nro[3] * 4) + (nro[4] * 5) +
           (nro[5] * 6) + (nro[6] * 7) + (nro[7] * 8) + (nro[8] * 10);
   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[09]);
   if not Result then exit;
   soma := (nro[1] * 3) + (nro[2] * 2) + (nro[3] * 10) + (nro[4] * 9) +
           (nro[5] * 8) + (nro[6] * 7) + (nro[7] * 6) + (nro[8] * 5) +
           (nro[9] * 4) + (nro[10] * 3) + (nro[11] * 2);

   dig := (soma mod 11);
   if (dig >= 10) then dig := 0;
   Result := (dig = nro[12]);
 end;
end; // ChkIESP

Function ChkIESE(const ie : string) : Boolean; // 99999999-9
var
 b, i, soma : Integer;
 nro : array[1..09] of byte;
 dig : SmallInt;
begin
 Result := false;
 if (length(ie) <> 09) then exit;
 if not IsNumero(ie) then exit;
 for i := 1 to 09 do nro[i] := CharToInt(ie[i]);
 b := 9;
 soma := 0;
 for i := 1 to 08 do
 begin
   inc(soma, nro[i] * b);
   dec(b);
 end;
 dig := 11 - (soma mod 11);
 if (dig >= 10) then dig := 0;
 Result := (dig = nro[09]);
end; // ChkIESE

Function ChkIETO(const ie : string) : Boolean; // 99.99.999999-9
var
 b, i, soma : Integer;
 nro : array[1..11] of byte;
 dig : SmallInt;
 s : string;
begin
 Result := false;
 if (length(ie) <> 11) then exit;
 if not IsNumero(ie) then exit;
 s := copy(ie,3,2);
 if (s = '01') or (s = '02') or (s = '03') or (s = '99')  then
 begin
   for i := 1 to 11 do nro[i] := CharToInt(ie[i]);
   b := 9;
   soma := 0;
   for i := 1 to 10 do
   begin
     if (i <> 3) and (i <> 4) then
     begin
       inc(soma, nro[i] * b);
       dec(b);
     end;
   end;
   i := (soma mod 11);
   if (i <= 1) then dig := 0 else dig := 11 - i;
   Result := (dig = nro[11]);
 end;
end; // ChkIETO

Function ChkInscEstadual(const ie, uf : string) : Boolean;
var
 duf, die : string;
begin
 //
 Result:=False;
 If (Trim(ie)='.') Then Exit;
 //
 duf := UpperCase(uf);
 die := UpperCase(alltrim(ie));
 if (copy(die,1,5) = 'ISENT') or (die = '') then
 begin
   Result := true;
   exit;
 end;
 if duf = 'AC'  then Result := ChkIEAC(die) else
 if duf = 'AL'  then Result := ChkIEAL(die) else
 if duf = 'AP'  then Result := ChkIEAP(die) else
 if duf = 'AM'  then Result := ChkIEAM(die) else
 if duf = 'BA'  then Result := ChkIEBA(die) else
 if duf = 'CE'  then Result := ChkIECE(die) else
 if duf = 'DF'  then Result := ChkIEDF(die) else
 if duf = 'ES'  then Result := ChkIEES(die) else
 if duf = 'GO'  then Result := ChkIEGO(die) else
 if duf = 'MA'  then Result := ChkIEMA(die) else
 if duf = 'MG'  then Result := ChkIEMG(die) else
 if duf = 'MT'  then Result := ChkIEMT(die) else
 if duf = 'MS'  then Result := ChkIEMS(die) else
 if duf = 'PA'  then Result := ChkIEPA(die) else
 if duf = 'PB'  then Result := ChkIEPB(die) else
 if duf = 'PR'  then Result := ChkIEPR(die) else
 if duf = 'PE'  then Result := ChkIEPE(die) else
 if duf = 'PI'  then Result := ChkIEPI(die) else
 if duf = 'RJ'  then Result := ChkIERJ(die) else
 if duf = 'RN'  then Result := ChkIERN(die) else
 if duf = 'RS'  then Result := ChkIERS(die) else
 if duf = 'RO'  then Result := (ChkIERO(die) Or ValidaInscRO(die)) else
 if duf = 'RR'  then Result := ChkIERR(die) else
 if duf = 'SC'  then Result := ChkIESC(die) else
 if duf = 'SP'  then Result := ChkIESP(die) else
 if duf = 'SE'  then Result := ChkIESE(die) else
 if duf = 'TO'  then Result := ChkIETO(die) else
 Result := false;
end; // ChkInscEstadual


function fileSize(const FileName: String): LongInt;
{Retorna o tamanho de um arquivo}
var
  SearchRec : TSearchRec;
begin { !Win32! -> GetFileSize }
  if FindFirst(FileName,faAnyFile,SearchRec)=0
  then Result:=SearchRec.Size
  else Result:=0;
  FindClose(SearchRec);
end;
 
 
function GetFileDate(TheFileName: string): string;
var
FHandle: integer;
begin
FHandle := FileOpen(TheFileName, 0);
result := DateToStr((FileDateToDateTime(FileGetDate(FHandle))));
FileClose(FHandle);
end;
 
 
function FileDate(Arquivo: String): String;
{Retorna a data e a hora de um arquivo}
var
FHandle: integer;
begin
if not fileexists(Arquivo) then
  begin
  Result := 'Nome de Arquivo Inválido';
  end
else
  begin
  FHandle := FileOpen(Arquivo, 0);
  try
  Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
  FileClose(FHandle);
  end;
  end;
end;
 
 
Procedure ZapFiles(vMasc:String);
{Apaga arquivos usando mascaras tipo: *.zip, *.* }
Var Dir : TsearchRec;
  Erro: Integer;
Begin
  Erro := FindFirst(vMasc,faArchive,Dir);
  While Erro = 0 do Begin
  DeleteFile( ExtractFilePAth(vMasc)+Dir.Name );
  Erro := FindNext(Dir);
  End;
  FindClose(Dir);
End;
 
 
function FillDir(Const AMask: string): TStringList;
{Retorna uma TStringlist de todos os arquivos localizados
 no path corrente , Esta função trabalha com mascaras}
var
  SearchRec : TSearchRec;
  intControl : integer;
begin
  Result := TStringList.create;
  intControl := FindFirst( AMask, faAnyFile, SearchRec );
  if intControl = 0 then
  begin
  while (intControl = 0) do
  begin
  Result.Add( SearchRec.Name );
  intControl := FindNext( SearchRec );
  end;
  FindClose( SearchRec );
  end;
end;
 
 
function WinExecAndWait32(FileName:String; Visibility : integer):integer;

begin

end;

 
 
Function RecycleBin(sFileName : string ) : boolean;
// Envia um arquivo para a lixeira ( requer a unit Shellapi.pas)
var
fos : TSHFileOpStruct;
Begin
FillChar( fos, SizeOf( fos ), 0 );
With fos do
begin
wFunc := FO_DELETE;
pFrom := PChar( sFileName );
fFlags := FOF_ALLOWUNDO
or FOF_NOCONFIRMATION
or FOF_SILENT;
end;
Result := (0 = ShFileOperation(fos));
end;
 
function NumLinhasArq(Arqtexto:String): integer;
// Retorna o número de linhas que um arquivo possui
Var
  f: Textfile;
  linha, cont:integer;
Begin
linha := 0;
cont := 0;
AssignFile(f,Arqtexto);
Reset(f);
While not eof(f) Do
  begin
  ReadLn(f);
  Cont := Cont + 1;
  end;
Closefile(f);
result := cont;
end;
 
 
function FileCopy(source,dest: String): Boolean;
{copia um arquivo de um lugar para outro. Retornando falso em caso de erro}
var
fSrc,fDst,len: Integer;
size: Longint;
buffer: packed array [0..2047] of Byte;
begin
if source <> dest then
  begin
  fSrc := FileOpen(source,fmOpenRead);
  if fSrc >= 0 then
  begin
  size := FileSeek(fSrc,0,2);
  FileSeek(fSrc,0,0);
  fDst := FileCreate(dest);
  if fDst >= 0 then
  begin
  while size > 0 do
  begin
  len := FileRead(fSrc,buffer,sizeof(buffer));
  FileWrite(fDst,buffer,len);
  size := size - len;
  end;
  FileSetDate(fDst,FileGetDate(fSrc));
  FileClose(fDst);
  FileSetAttr(dest,FileGetAttr(source));
  Result := True;
  end
  else
  begin
  Result := False;
  end;
  FileClose(fSrc);
  end;
  end;
end;
 
 
Procedure CopyFile( Const sourcefilename, targetfilename: String );
{Copia um arquivo de um lugar para outro}
Var
  S, T: TFileStream;
Begin
  S := TFileStream.Create( sourcefilename, fmOpenRead );
  try
  T := TFileStream.Create( targetfilename, fmOpenWrite or fmCreate );
  try
  T.CopyFrom(S, S.Size ) ;
  finally
  T.Free;
  end;
  finally
  S.Free;
  end;
end;
 
 
function ExtractName(const Filename: String): String;
{Retorna o nome do Arquivo sem extensão}
var
aExt : String;
aPos : Integer;
begin
  aExt := ExtractFileExt(Filename);
  Result := ExtractFileName(Filename);
  if aExt <> '' then
    begin
    aPos := Pos(aExt,Result);
    if aPos > 0 then
    begin
    Delete(Result,aPos,Length(aExt));
    end;
    end;
end;
 
 
function FileTypeName(const aFile: String): String;
{Retorna descrição do tipo do arquivo. Requer a unit ShellApi}
var
  aInfo: TSHFileInfo;
begin
  if SHGetFileInfo(PChar(aFile),0,aInfo,Sizeof(aInfo),SHGFI_TYPENAME)<>0 then
  Result := StrPas(aInfo.szTypeName)
  else begin
  Result := ExtractFileExt(aFile);
  Delete(Result,1,1);
  Result := Result +' File';
  end;
end;


function PrintImage(Origem: String):Boolean;
// imprime um bitmap selecionado retornando falso em caso negativo
// requer as units Graphics e printers declaradas na clausula Uses
var
Imagem: TBitmap;
begin
  if fileExists(Origem) then
    begin
    Imagem := TBitmap.Create;
    Imagem.LoadFromFile(Origem);
    with Printer do
    begin
    BeginDoc;
    Canvas.Draw((PageWidth - Imagem.Width) div 2,(PageHeight - Imagem.Height) div 2,Imagem);
    EndDoc;
    end;
    Imagem.Free;
    Result := True;
    end
  else
    begin
    Result := False;
    end;
end;

end.

