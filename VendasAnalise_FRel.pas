 unit VendasAnalise_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TFRelVendasAnalise = class(TForm)
    pnlClient: TPanel;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Ini: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure INCLINHA;
    procedure IMPLINHA;
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;

    procedure VENDA_BRUTA            ;
    procedure IMPOSTOS               ;
    procedure VENDA_LIQUIDA          ;
    procedure CUSTOS                 ;
    procedure LUCRO_BRUTO            ;
    procedure DESPESAS               ;
    procedure DESPESAS_FIXAS         ;
    procedure DESPESAS_TERCEIROS     ;
    procedure DESPESAS_VARIAVEIS     ;
    procedure DESPESAS_VEICULOS      ;
    procedure DESPESAS_BANCARIAS     ;
    procedure DESPESAS_FINANCEIRAS   ;
    procedure DESPESAS_OPERACIONAIS  ;
    procedure LUCRO_OPERACIONAL      ;
    procedure DESPESAS_IMOBILIZADO   ;
    procedure LUCRO_APOS_IMOBILIZADO ;

  public
    { Public declarations }
  end;

var
  FRelVendasAnalise: TFRelVendasAnalise;
  LinhaR, Pagina: Integer;

  Coluna : Integer;
  Aux    : String ;

  Cont   : Integer;

  ///VARIAVEIS ACUMULATIVAS
  VENDA_BRUTA1, VENDA_BRUTA2, VENDA_BRUTA3, VENDA_BRUTA4, VENDA_BRUTA5, VENDA_BRUTA6: REAL;
  IMPOS_VENDA1, IMPOS_VENDA2, IMPOS_VENDA3, IMPOS_VENDA4, IMPOS_VENDA5, IMPOS_VENDA6: REAL;
  DEVOL_VENDA1, DEVOL_VENDA2, DEVOL_VENDA3, DEVOL_VENDA4, DEVOL_VENDA5, DEVOL_VENDA6: REAL;
  VENDA_LIQUI1, VENDA_LIQUI2, VENDA_LIQUI3, VENDA_LIQUI4, VENDA_LIQUI5, VENDA_LIQUI6: REAL;
  LUCRO_BRUTO1, LUCRO_BRUTO2, LUCRO_BRUTO3, LUCRO_BRUTO4, LUCRO_BRUTO5, LUCRO_BRUTO6: REAL;
  CUSTO_VENDA1, CUSTO_VENDA2, CUSTO_VENDA3, CUSTO_VENDA4, CUSTO_VENDA5, CUSTO_VENDA6: REAL;
  DESPESA_SAL1, DESPESA_SAL2, DESPESA_SAL3, DESPESA_SAL4, DESPESA_SAL5, DESPESA_SAL6: REAL;
  DESPESA_FIX1, DESPESA_FIX2, DESPESA_FIX3, DESPESA_FIX4, DESPESA_FIX5, DESPESA_FIX6: REAL;
  DESPESA_TER1, DESPESA_TER2, DESPESA_TER3, DESPESA_TER4, DESPESA_TER5, DESPESA_TER6: REAL;
  DESPESA_VAR1, DESPESA_VAR2, DESPESA_VAR3, DESPESA_VAR4, DESPESA_VAR5, DESPESA_VAR6: REAL;
  DESPESA_VEI1, DESPESA_VEI2, DESPESA_VEI3, DESPESA_VEI4, DESPESA_VEI5, DESPESA_VEI6: REAL;
  DESPESA_BAN1, DESPESA_BAN2, DESPESA_BAN3, DESPESA_BAN4, DESPESA_BAN5, DESPESA_BAN6: REAL;
  DESPESA_FIN1, DESPESA_FIN2, DESPESA_FIN3, DESPESA_FIN4, DESPESA_FIN5, DESPESA_FIN6: REAL;
  DESPESA_OPE1, DESPESA_OPE2, DESPESA_OPE3, DESPESA_OPE4, DESPESA_OPE5, DESPESA_OPE6: REAL;
  LUCRO_OPERA1, LUCRO_OPERA2, LUCRO_OPERA3, LUCRO_OPERA4, LUCRO_OPERA5, LUCRO_OPERA6: REAL;
  DESPESA_IMO1, DESPESA_IMO2, DESPESA_IMO3, DESPESA_IMO4, DESPESA_IMO5, DESPESA_IMO6: REAL;

implementation

uses Relatorios_DM,
     Usuarios_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

procedure TFRelVendasAnalise.INCLINHA;
begin
     LINHAR := LINHAR + 1;

     IF LINHAR > 62
     THEN
         PRINT.Novapagina ;
end;

procedure TFRelVendasAnalise.IMPLINHA;
begin
     //IMPRIME UMA LINHA DE SEPARACAO DE COLUNAS
     Print.ImpF(LINHAR, 21 , '|',[Comp17]);
     Print.ImpF(LINHAR, 31 , '|',[Comp17]);
     Print.ImpF(LINHAR, 41 , '|',[Comp17]);
     Print.ImpF(LINHAR, 51 , '|',[Comp17]);
     Print.ImpF(LINHAR, 61 , '|',[Comp17]);
     Print.ImpF(LINHAR, 71 , '|',[Comp17]);
end;

procedure TFRelVendasAnalise.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasAnalise.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasAnalise.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasAnalise := Nil;
end;

procedure TFRelVendasAnalise.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasAnalise.PrintNewPage(Sender: TObject; Pagina: Integer);
VAR
   MES: STRING;
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);

  WITH DMRELATORIOS DO
  BEGIN
       //VENDA BRUTA
       Coluna := 0;

       VER_FAT_VENDAS_ANALISE.First;

       CONT := 1;

       Print.ImpF(05,01,'CONTA', [Comp17]);

       While Not VER_FAT_VENDAS_ANALISE.Eof Do
       Begin
            CASE CONT OF
            1
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 16 , MES + '/' + VER_FAT_VENDAS_ANALISEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 21 , '|',[Comp17]);
             END;
            2
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 26 , MES + '/' + VER_FAT_VENDAS_ANALISEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 31 , '|',[Comp17]);
             END;
            3
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 36 , MES + '/' + VER_FAT_VENDAS_ANALISEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 41 , '|',[Comp17]);
             END;
            4
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 46 , MES + '/' + VER_FAT_VENDAS_ANALISEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 51 , '|',[Comp17]);
             END;
            5
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 56 , MES + '/' + VER_FAT_VENDAS_ANALISEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 61 , '|',[Comp17]);
             END;
            6
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 66 , MES + '/' + VER_FAT_VENDAS_ANALISEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 71 , '|',[Comp17]);
             END;

            END;

            VER_FAT_VENDAS_ANALISE.next ;

            CONT := CONT + 1;
          End;
       END;

       Print.ImpF(05, 75 , 'ACUMULADO',[Comp17]);

                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);

       LinhaR  := 07;
end;

procedure TFRelVendasAnalise.FormShow(Sender: TObject);
begin
     INI.DATE := DmApp.Data_Servidor ;

  //
  IniciaComponentes(Self as TForm);
    Try
       //
       //
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;


procedure TFRelVendasAnalise.CUSTOS;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///CUSTOS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'CUSTOS TOTAIS',[Comp17, NEGRITO]);

          VER_FAT_VENDAS_ANALISE_CUSTOS.First;

          CONT := 1;

          While Not VER_FAT_VENDAS_ANALISE_CUSTOS.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CUSTOSSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17, NEGRITO]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               CASE CONT OF
               1
                :CUSTO_VENDA1 := CUSTO_VENDA1 + VER_FAT_VENDAS_ANALISE_CUSTOSSOMA.VALUE;
               2
                :CUSTO_VENDA2 := CUSTO_VENDA2 + VER_FAT_VENDAS_ANALISE_CUSTOSSOMA.VALUE;
               3
                :CUSTO_VENDA3 := CUSTO_VENDA3 + VER_FAT_VENDAS_ANALISE_CUSTOSSOMA.VALUE;
               4
                :CUSTO_VENDA4 := CUSTO_VENDA4 + VER_FAT_VENDAS_ANALISE_CUSTOSSOMA.VALUE;
               5
                :CUSTO_VENDA5 := CUSTO_VENDA5 + VER_FAT_VENDAS_ANALISE_CUSTOSSOMA.VALUE;
               6
                :CUSTO_VENDA6 := CUSTO_VENDA6 + VER_FAT_VENDAS_ANALISE_CUSTOSSOMA.VALUE;
               END;


               VER_FAT_VENDAS_ANALISE_CUSTOS.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          AUX := FORMATFLOAT('###,##0.00', CUSTO_VENDA1 + CUSTO_VENDA2 + CUSTO_VENDA3 + CUSTO_VENDA4 + CUSTO_VENDA5 + CUSTO_VENDA6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.DESPESAS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Sal'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS COM PESSOAL
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_SAL1 := DESPESA_SAL1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :DESPESA_SAL2 := DESPESA_SAL2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :DESPESA_SAL3 := DESPESA_SAL3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :DESPESA_SAL4 := DESPESA_SAL4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :DESPESA_SAL5 := DESPESA_SAL5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :DESPESA_SAL6 := DESPESA_SAL6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;
          End;

          //FINAL DAS DESPESAS DE SALARIOS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. PESSOAL',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL1 + DESPESA_SAL2 + DESPESA_SAL3 +
          DESPESA_SAL4 + DESPESA_SAL5 + DESPESA_SAL6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.DESPESAS_TERCEIROS;
VAR
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Ter'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS COM TERCEIROS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS COM TERC.',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_TER1 := DESPESA_TER1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :DESPESA_TER2 := DESPESA_TER2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :DESPESA_TER3 := DESPESA_TER3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :DESPESA_TER4 := DESPESA_TER4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :DESPESA_TER5 := DESPESA_TER5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :DESPESA_TER6 := DESPESA_TER6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;
          End;

          //FINAL DAS DESPESAS DE SALARIOS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. TERC.',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER1 + DESPESA_TER2 + DESPESA_TER3 +
          DESPESA_TER4 + DESPESA_TER5 + DESPESA_TER6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnalise.DESPESAS_VARIAVEIS;
VAR
   SOMA : REAL;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Var'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS COM TERCEIROS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS DIV. VAR.',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF UPPERCASE(COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20)) <> 'FORNECEDORES'
               THEN BEGIN
                    IF CONT = 1
                    THEN
                        Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

                    AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    //
                    Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                    Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                    SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE;

                    CASE CONT OF
                    1
                    :DESPESA_VAR1 := DESPESA_VAR1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
                    2
                    :DESPESA_VAR2 := DESPESA_VAR2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
                    3
                    :DESPESA_VAR3 := DESPESA_VAR3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
                    4
                    :DESPESA_VAR4 := DESPESA_VAR4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
                    5
                    :DESPESA_VAR5 := DESPESA_VAR5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
                    6
                    :DESPESA_VAR6 := DESPESA_VAR6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
                    END;

                    VER_FIN_PAGAS_ANALISE.next ;

                    COLUNA := COLUNA + 10;

                    IF ( CONT = 6 )
                    THEN BEGIN
                         AUX := FORMATFLOAT('###,##0.00', SOMA );

                         WHILE LENGTH(AUX) <= 10 DO
                         BEGIN
                              AUX := ' ' + AUX;
                         END;

                         Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                         SOMA := 0;
                    END;

                    IF CONT = 6
                    THEN BEGIN
                         CONT := 1;
                         COLUNA := 0;
                         INCLINHA ;
                    END
                    ELSE BEGIN
                         CONT := CONT + 1;
                    END;
               END
               ELSE BEGIN
                    VER_FIN_PAGAS_ANALISE.next ;

                    COLUNA := COLUNA + 10;

                    IF CONT = 6
                    THEN BEGIN
                         CONT := 1;
                         COLUNA := 0;
                    END
                    ELSE BEGIN
                         CONT := CONT + 1;
                    END;
               END;
          End;

          //FINAL DAS DESPESAS DE SALARIOS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. VAR.',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR1 + DESPESA_VAR2 + DESPESA_VAR3 +
          DESPESA_VAR4 + DESPESA_VAR5 + DESPESA_VAR6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.DESPESAS_VEICULOS;
Var
   SOMA : REAL;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Vei'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS COM VEICULOS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS COM VEICULOS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_VEI1 := DESPESA_VEI1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :DESPESA_VEI2 := DESPESA_VEI2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :DESPESA_VEI3 := DESPESA_VEI3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :DESPESA_VEI4 := DESPESA_VEI4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :DESPESA_VEI5 := DESPESA_VEI5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :DESPESA_VEI6 := DESPESA_VEI6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;
          End;

          //FINAL DAS DESPESAS DE SALARIOS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. VEICULOS',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI1 + DESPESA_VEI2 + DESPESA_VEI3 +
          DESPESA_VEI4 + DESPESA_VEI5 + DESPESA_VEI6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnalise.DESPESAS_BANCARIAS;
Var
   Soma : Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Ban'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS COM BANCCOS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS BANCARIAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + 1;

               CASE CONT OF
               1
                :DESPESA_BAN1 := DESPESA_BAN1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :DESPESA_BAN2 := DESPESA_BAN2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :DESPESA_BAN3 := DESPESA_BAN3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :DESPESA_BAN4 := DESPESA_BAN4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :DESPESA_BAN5 := DESPESA_BAN5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :DESPESA_BAN6 := DESPESA_BAN6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;
          End;

          //FINAL DAS DESPESAS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. BANCARIAS',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN1 + DESPESA_BAN2 + DESPESA_BAN3 +
          DESPESA_BAN4 + DESPESA_BAN5 + DESPESA_BAN6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.DESPESAS_FINANCEIRAS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Fin'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS FINANCEIRAS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS FINANCEIRAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          Soma := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_FIN1 := DESPESA_FIN1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :DESPESA_FIN2 := DESPESA_FIN2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :DESPESA_FIN3 := DESPESA_FIN3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :DESPESA_FIN4 := DESPESA_FIN4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :DESPESA_FIN5 := DESPESA_FIN5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :DESPESA_FIN6 := DESPESA_FIN6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
                    Soma := 0;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;

          End;

          //FINAL DAS DESPESAS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. FINAN.',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN1 + DESPESA_FIN2 + DESPESA_FIN3 +
          DESPESA_FIN4 + DESPESA_FIN5 + DESPESA_FIN6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnalise.DESPESAS_IMOBILIZADO;
Var
   Soma : Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Imo'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///COMPRAS PATRIMONIAIS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'COMPRAS PATRIMONIAIS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE ;

               CASE CONT OF
               1
                :DESPESA_FIN1 := DESPESA_FIN1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :DESPESA_FIN2 := DESPESA_FIN2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :DESPESA_FIN3 := DESPESA_FIN3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :DESPESA_FIN4 := DESPESA_FIN4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :DESPESA_FIN5 := DESPESA_FIN5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :DESPESA_FIN6 := DESPESA_FIN6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;
          End;

          //FINAL DAS DESPESAS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. IMOB.',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO1 + DESPESA_IMO2 + DESPESA_IMO3 +
          DESPESA_IMO4 + DESPESA_IMO5 + DESPESA_IMO6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnalise.DESPESAS_OPERACIONAIS;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///DESPESAS OPERACIONAIS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'TOTAL DESP. OPER.',[Comp17, NEGRITO]);

          DESPESA_OPE1 := DESPESA_FIX1 + DESPESA_TER1 + DESPESA_VAR1 + DESPESA_VEI1
          + DESPESA_BAN1 + DESPESA_FIN1 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX1 + DESPESA_TER1 + DESPESA_VAR1 + DESPESA_VEI1
          + DESPESA_BAN1 + DESPESA_FIN1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          DESPESA_OPE2 := DESPESA_FIX2 + DESPESA_TER2 + DESPESA_VAR2 + DESPESA_VEI2
          + DESPESA_BAN2 + DESPESA_FIN2 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX2 + DESPESA_TER2 + DESPESA_VAR2 + DESPESA_VEI2
          + DESPESA_BAN2 + DESPESA_FIN2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);

          DESPESA_OPE3 := DESPESA_FIX3 + DESPESA_TER3 + DESPESA_VAR3 + DESPESA_VEI3
          + DESPESA_BAN3 + DESPESA_FIN3 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX3 + DESPESA_TER3 + DESPESA_VAR3 + DESPESA_VEI3
          + DESPESA_BAN3 + DESPESA_FIN3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);

          DESPESA_OPE4 := DESPESA_FIX4 + DESPESA_TER4 + DESPESA_VAR4 + DESPESA_VEI4
          + DESPESA_BAN4 + DESPESA_FIN4 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX4 + DESPESA_TER4 + DESPESA_VAR4 + DESPESA_VEI4
          + DESPESA_BAN4 + DESPESA_FIN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);

          DESPESA_OPE5 := DESPESA_FIX5 + DESPESA_TER5 + DESPESA_VAR5 + DESPESA_VEI5
          + DESPESA_BAN5 + DESPESA_FIN5 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX5 + DESPESA_TER5 + DESPESA_VAR5 + DESPESA_VEI5
          + DESPESA_BAN5 + DESPESA_FIN5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);

          DESPESA_OPE6 := DESPESA_FIX6 + DESPESA_TER6 + DESPESA_VAR6 + DESPESA_VEI6
          + DESPESA_BAN6 + DESPESA_FIN6 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX6 + DESPESA_TER6 + DESPESA_VAR6 + DESPESA_VEI6
          + DESPESA_BAN6 + DESPESA_FIN6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_OPE1 + DESPESA_OPE2 + DESPESA_OPE3 +
          DESPESA_OPE4 + DESPESA_OPE5 + DESPESA_OPE6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.LUCRO_OPERACIONAL;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///LUCRO OPERACIONAL
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'LUCRO OPERACIONAL',[Comp17, NEGRITO]);

          LUCRO_OPERA1 := LUCRO_BRUTO1 - DESPESA_OPE1;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);

          LUCRO_OPERA2 := LUCRO_BRUTO2 - DESPESA_OPE2;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);

          LUCRO_OPERA3 := LUCRO_BRUTO3 - DESPESA_OPE3;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);

          LUCRO_OPERA4 := LUCRO_BRUTO4 - DESPESA_OPE4;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);

          LUCRO_OPERA5 := LUCRO_BRUTO5 - DESPESA_OPE5;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);

          LUCRO_OPERA6 := LUCRO_BRUTO6 - DESPESA_OPE6;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA1 + LUCRO_OPERA2 + LUCRO_OPERA3 +
          LUCRO_OPERA4 + LUCRO_OPERA5 + LUCRO_OPERA6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnalise.LUCRO_APOS_IMOBILIZADO;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///LUCRO OPERACIONAL
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'LUCRO APOS IMOBILI.',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA1 - DESPESA_IMO1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA2 - DESPESA_IMO2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA3 - DESPESA_IMO3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA4 - DESPESA_IMO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA5 - DESPESA_IMO5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA6 - DESPESA_IMO6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00',
          LUCRO_OPERA1 - DESPESA_IMO1+
          LUCRO_OPERA2 - DESPESA_IMO2+
          LUCRO_OPERA3 - DESPESA_IMO3+
          LUCRO_OPERA4 - DESPESA_IMO4+
          LUCRO_OPERA5 - DESPESA_IMO5+
          LUCRO_OPERA6 - DESPESA_IMO6
            );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.DESPESAS_FIXAS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Fix'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS COM PESSOAL
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS FIXAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE ;

               CASE CONT OF
               1
                :DESPESA_FIX1 := DESPESA_FIX1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :DESPESA_FIX2 := DESPESA_FIX2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :DESPESA_FIX3 := DESPESA_FIX3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :DESPESA_FIX4 := DESPESA_FIX4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :DESPESA_FIX5 := DESPESA_FIX5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :DESPESA_FIX6 := DESPESA_FIX6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;
          End;

          //DESPESAS OPERACIONAIS FIXAS
          Print.ImpF(LinhaR, 01, 'TOTAL DESP. FIXAS',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          INCLINHA ;

          //FINAL DAS DESPESAS DE SALARIOS
          Print.ImpF(LinhaR, 01, 'DESP. OPER. FIXAS',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX1 + DESPESA_SAL1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX2 + DESPESA_SAL2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX3 + DESPESA_SAL3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX4 + DESPESA_SAL4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX5 + DESPESA_SAL5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX6 + DESPESA_SAL6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00',
          DESPESA_FIX1 + DESPESA_SAL1 +
          DESPESA_FIX2 + DESPESA_SAL2 +
          DESPESA_FIX3 + DESPESA_SAL3 +
          DESPESA_FIX4 + DESPESA_SAL4 +
          DESPESA_FIX5 + DESPESA_SAL5 +
          DESPESA_FIX6 + DESPESA_SAL6
          );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.LUCRO_BRUTO;
begin
     WITH DMRELATORIOS DO
     BEGIN
          Print.ImpF(LinhaR, 01, 'LUCRO BRUTO',[Comp17, NEGRITO]);

          //LUCRO BRUTO
          LUCRO_BRUTO1 := VENDA_LIQUI1 - CUSTO_VENDA1 ;
          LUCRO_BRUTO2 := VENDA_LIQUI2 - CUSTO_VENDA2 ;
          LUCRO_BRUTO3 := VENDA_LIQUI3 - CUSTO_VENDA3 ;
          LUCRO_BRUTO4 := VENDA_LIQUI4 - CUSTO_VENDA4 ;
          LUCRO_BRUTO5 := VENDA_LIQUI5 - CUSTO_VENDA5 ;
          LUCRO_BRUTO6 := VENDA_LIQUI6 - CUSTO_VENDA6 ;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO1 + LUCRO_BRUTO2 + LUCRO_BRUTO3 + LUCRO_BRUTO4 + LUCRO_BRUTO5 + LUCRO_BRUTO6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnalise.VENDA_LIQUIDA;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA LIQUIDA
          Coluna := 0;

          CONT := 1;

          Print.ImpF(LinhaR, 01, 'VENDAS LIQUIDAS',[Comp17, NEGRITO]);

          VER_FAT_VENDAS_ANALISE.First;

          While Not VER_FAT_VENDAS_ANALISE.Eof Do
          Begin
               CASE CONT OF
               1
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA1 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI1 := VENDA_LIQUI1 + (VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA1);
                END;
               2
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA2 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI2 := VENDA_LIQUI2 + (VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA2);
                END;
               3
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA3 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI3 := VENDA_LIQUI3 + (VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA3);
                END;
               4
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA4 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI4 := VENDA_LIQUI4 + (VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA4);
                END;
               5
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA5 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI5 := VENDA_LIQUI5 + (VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA5);
                END;
               6
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA6 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI6 := VENDA_LIQUI6 + (VER_FAT_VENDAS_ANALISESOMA.VALUE - IMPOS_VENDA6);
                END;
               END;

               VER_FAT_VENDAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          AUX := FORMATFLOAT('###,##0.00', VENDA_LIQUI1 + VENDA_LIQUI2 + VENDA_LIQUI3 + VENDA_LIQUI4 + VENDA_LIQUI5 + VENDA_LIQUI6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
     END;
END;

procedure TFRelVendasAnalise.IMPOSTOS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE.Close ;

          VER_FIN_PAGAS_ANALISE.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE.ParamByName('DATA').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE.ParamByName('TIPO').asString := 'Imp'     ;

          VER_FIN_PAGAS_ANALISE.OPEN ;

          ///DESPESAS COM TERCEIROS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'IMPOSTOS SOBRE VENDAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISENOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISESOMA.VALUE ;

               CASE CONT OF
               1
                :IMPOS_VENDA1 := IMPOS_VENDA1 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               2
                :IMPOS_VENDA2 := IMPOS_VENDA2 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               3
                :IMPOS_VENDA3 := IMPOS_VENDA3 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               4
                :IMPOS_VENDA4 := IMPOS_VENDA4 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               5
                :IMPOS_VENDA5 := IMPOS_VENDA5 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               6
                :IMPOS_VENDA6 := IMPOS_VENDA6 + VER_FIN_PAGAS_ANALISESOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               IF ( CONT = 6 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 6
               THEN BEGIN
                    CONT := 1;
                    COLUNA := 0;
                    INCLINHA ;
               END
               ELSE BEGIN
                    CONT := CONT + 1;
               END;
          End;

          //FINAL DAS DESPESAS DE SALARIOS
          Print.ImpF(LinhaR, 01, 'IMPOSTOS SOBRE VENDAS',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  14, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  21, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  24, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  31, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  34, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  41, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  44, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  51, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA5 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  54, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  61, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA6 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  64, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  71, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA1 + IMPOS_VENDA2 + IMPOS_VENDA3 +
          IMPOS_VENDA4 + IMPOS_VENDA5 + IMPOS_VENDA6  );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnalise.VENDA_BRUTA;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA BRUTA
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'VND BRUTA',[Comp17]);

          VER_FAT_VENDAS_ANALISE.First;

          CONT := 1;

          While Not VER_FAT_VENDAS_ANALISE.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISESOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               CASE CONT OF
               1
                :VENDA_BRUTA1 := VENDA_BRUTA1 + VER_FAT_VENDAS_ANALISESOMA.VALUE;
               2
                :VENDA_BRUTA2 := VENDA_BRUTA2 + VER_FAT_VENDAS_ANALISESOMA.VALUE;
               3
                :VENDA_BRUTA3 := VENDA_BRUTA3 + VER_FAT_VENDAS_ANALISESOMA.VALUE;
               4
                :VENDA_BRUTA4 := VENDA_BRUTA4 + VER_FAT_VENDAS_ANALISESOMA.VALUE;
               5
                :VENDA_BRUTA5 := VENDA_BRUTA5 + VER_FAT_VENDAS_ANALISESOMA.VALUE;
               6
                :VENDA_BRUTA6 := VENDA_BRUTA6 + VER_FAT_VENDAS_ANALISESOMA.VALUE;
               END;

               VER_FAT_VENDAS_ANALISE.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          AUX := FORMATFLOAT('###,##0.00', VENDA_BRUTA1 + VENDA_BRUTA2 + VENDA_BRUTA3 + VENDA_BRUTA4 + VENDA_BRUTA5 + VENDA_BRUTA6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
     END;
END;


procedure TFRelVendasAnalise.ActPreviewExecute(Sender: TObject);
begin
     If (Ini.date <= 0) then
     begin
       MessageDlg('Informe o Período', MtError, [MbOk],0);
       EXIT;
     end;

     WITH DMRELATORIOS DO
     BEGIN

       //------------------Vendas------------------------
       VER_FAT_VENDAS_ANALISE.Close ;
       VER_FAT_VENDAS_ANALISE.ParamByName('CNPJ').asString:= DMApp.Cnpj;
       VER_FAT_VENDAS_ANALISE.ParamByName('DATA').asDate  := Ini.Date;
       VER_FAT_VENDAS_ANALISE.open;

       //------------------Custos de Vendas------------------------
       VER_FAT_VENDAS_ANALISE_CUSTOS.Close ;
       VER_FAT_VENDAS_ANALISE_CUSTOS.ParamByName('CNPJ').asString:= DMApp.Cnpj;
       VER_FAT_VENDAS_ANALISE_CUSTOS.ParamByName('DATA').asDate  := Ini.Date;
       VER_FAT_VENDAS_ANALISE_CUSTOS.OPEN ;



       if VER_FAT_VENDAS_ANALISE.RecordCount = 0 then
       begin
         lblStatus.Visible := False ;
         showmessage('Não há registro a imprimir para o período, verifique !');
         Ini.SetFocus;
         Exit;
       end
       else
       begin
         lblStatus.Visible := False ;
         VER_FAT_VENDAS_ANALISE.FetchAll ;
         Anda.Max := VER_FAT_VENDAS_ANALISE.RecordCount;
         Anda.Position := 0;
         Anda.Visible  := TRUE ;
       End;

       VENDA_BRUTA1 := 0;
       VENDA_BRUTA2 := 0;
       VENDA_BRUTA3 := 0;
       VENDA_BRUTA4 := 0;
       VENDA_BRUTA5 := 0;
       VENDA_BRUTA6 := 0;

       IMPOS_VENDA1 := 0;
       IMPOS_VENDA2 := 0;
       IMPOS_VENDA3 := 0;
       IMPOS_VENDA4 := 0;
       IMPOS_VENDA5 := 0;
       IMPOS_VENDA6 := 0;

       DEVOL_VENDA1 := 0;
       DEVOL_VENDA2 := 0;
       DEVOL_VENDA3 := 0;
       DEVOL_VENDA4 := 0;
       DEVOL_VENDA5 := 0;
       DEVOL_VENDA6 := 0;

       VENDA_LIQUI1 := 0;
       VENDA_LIQUI2 := 0;
       VENDA_LIQUI3 := 0;
       VENDA_LIQUI4 := 0;
       VENDA_LIQUI5 := 0;
       VENDA_LIQUI6 := 0;

       LUCRO_BRUTO1 := 0;
       LUCRO_BRUTO2 := 0;
       LUCRO_BRUTO3 := 0;
       LUCRO_BRUTO4 := 0;
       LUCRO_BRUTO5 := 0;
       LUCRO_BRUTO6 := 0;

       CUSTO_VENDA1 := 0;
       CUSTO_VENDA2 := 0;
       CUSTO_VENDA3 := 0;
       CUSTO_VENDA4 := 0;
       CUSTO_VENDA5 := 0;
       CUSTO_VENDA6 := 0;

       DESPESA_FIX1 := 0;
       DESPESA_FIX2 := 0;
       DESPESA_FIX3 := 0;
       DESPESA_FIX4 := 0;
       DESPESA_FIX5 := 0;
       DESPESA_FIX6 := 0;

       DESPESA_SAL1 := 0;
       DESPESA_SAL2 := 0;
       DESPESA_SAL3 := 0;
       DESPESA_SAL4 := 0;
       DESPESA_SAL5 := 0;
       DESPESA_SAL6 := 0;

       DESPESA_TER1 := 0;
       DESPESA_TER2 := 0;
       DESPESA_TER3 := 0;
       DESPESA_TER4 := 0;
       DESPESA_TER5 := 0;
       DESPESA_TER6 := 0;

          DESPESA_VAR1 := 0;
          DESPESA_VAR2 := 0;
          DESPESA_VAR3 := 0;
          DESPESA_VAR4 := 0;
          DESPESA_VAR5 := 0;
          DESPESA_VAR6 := 0;

          DESPESA_VEI1 := 0;
          DESPESA_VEI2 := 0;
          DESPESA_VEI3 := 0;
          DESPESA_VEI4 := 0;
          DESPESA_VEI5 := 0;
          DESPESA_VEI6 := 0;

          DESPESA_BAN1 := 0;
          DESPESA_BAN2 := 0;
          DESPESA_BAN3 := 0;
          DESPESA_BAN4 := 0;
          DESPESA_BAN5 := 0;
          DESPESA_BAN6 := 0;
          //
          DESPESA_FIN1 := 0;
          DESPESA_FIN2 := 0;
          DESPESA_FIN3 := 0;
          DESPESA_FIN4 := 0;
          DESPESA_FIN5 := 0;
          DESPESA_FIN6 := 0;

          DESPESA_OPE1 := 0;
          DESPESA_OPE2 := 0;
          DESPESA_OPE3 := 0;
          DESPESA_OPE4 := 0;
          DESPESA_OPE5 := 0;
          DESPESA_OPE6 := 0;

          LUCRO_OPERA1 := 0;
          LUCRO_OPERA2 := 0;
          LUCRO_OPERA3 := 0;
          LUCRO_OPERA4 := 0;
          LUCRO_OPERA5 := 0;
          LUCRO_OPERA6 := 0;

          DESPESA_IMO1 := 0;
          DESPESA_IMO2 := 0;
          DESPESA_IMO3 := 0;
          DESPESA_IMO4 := 0;
          DESPESA_IMO5 := 0;
          DESPESA_IMO6 := 0;

          print.TitulodoRelatorio:='DEMONSTRATIVO ECONOMICO FINANCEIRO';

          print.Abrir;

          //--------------------Abrido Procedure Venda bruta
          VENDA_BRUTA ;

          INCLINHA ;
          IMPLINHA ;

          //-------------------Impostos--------------------
          IMPOSTOS ;

          INCLINHA ;
          IMPLINHA ;

          //-------------------Venda Liquida--------------------
          VENDA_LIQUIDA ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Custos--------------------
          CUSTOS   ;

          INCLINHA ;
          IMPLINHA ;

          //-------------------Lucro-Bruto--------------------
          LUCRO_BRUTO ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas--------------------
          DESPESAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Fixas--------------------
          DESPESAS_FIXAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Terceiros--------------------
          DESPESAS_TERCEIROS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Variáveis--------------------
          DESPESAS_VARIAVEIS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Veículos--------------------
          DESPESAS_VEICULOS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Bancárias--------------------
          DESPESAS_BANCARIAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Financeiros--------------------
          DESPESAS_FINANCEIRAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Operacionais--------------------
          DESPESAS_OPERACIONAIS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Lucro Operacional--------------------
          LUCRO_OPERACIONAL ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Despesas Imobilizado------------------
          DESPESAS_IMOBILIZADO ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------Lucro Imobilizado------------------
          LUCRO_APOS_IMOBILIZADO;

          Anda.Visible:= False;

          Print.Fechar;
     end;
end;

procedure TFRelVendasAnalise.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
end;

procedure TFRelVendasAnalise.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

end.
