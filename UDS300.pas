 unit UDS300;

interface
  {Declaracao da Dll Integradora Daruma32.dll}

//============================================================================\\
//Funcoes DA DS300
//============================================================================\\
 function  Daruma_DUAL_VerificaStatus (): Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_DUAL_VerificaDocumento(): Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_DUAL_Autenticar (Onde : String; txt : String; tempo : String): Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_DUAL_AbrirPorta(porta:String) : Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_DUAL_ImprimirTexto( txt : String; Tam : Integer) : Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_DUAL_ImprimirTextoFormatado ( txt :String;  Negrito: Integer; Italico : Integer;  Sublinhado: Integer;  Expandido : Integer;  Condensado : Integer;  Elite : Integer): Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_DUAL_AcionaGaveta  () : Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_DUAL_StatusGaveta   () : Integer;
    StdCall; External 'Daruma32.dll';

 function  Daruma_Registry_DUAL_Espera ( txt : String) : Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_Registry_DUAL_Porta ( txt : String) : Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_Registry_DUAL_Enter ( txt : String) : Integer;
    StdCall; External 'Daruma32.dll';
 function  Daruma_Registry_DUAL_ModoEscrita ( txt : String) : Integer;
    StdCall; External 'Daruma32.dll';


implementation

end.
 