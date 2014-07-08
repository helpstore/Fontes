 unit VendasAnalise_Mes_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls, dxTL, dxDBCtrl, dxDBTL,
  IBCustomDataSet, IBQuery, dxtree, dxdbtree, dxPrnDlg, cxGraphics,
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
  Reg_Demon = record
     CODIGO: Integer;
     AGRUPADOR: Integer;
     NOME: String;
     VALOR1: real;
     VALOR2: real;
     VALOR3: real;
     VALOR4: real;
     VALOR5: real;
     VALOR6: real;
end;

type
  TFRelVendasAnaliseMes = class(TForm)
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
    dsDemostrativo: TDataSource;
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
  FRelVendasAnaliseMes: TFRelVendasAnaliseMes;
  Reg : array of Reg_demon;
  LinhaR, Pagina: Integer;

  Coluna : Integer;
  Aux    : String ;

  Cont   : Integer;

  ///VARIAVEIS ACUMULATIVAS
  VENDA_BRUTA1, VENDA_BRUTA2, VENDA_BRUTA3, VENDA_BRUTA4: REAL;
  IMPOS_VENDA1, IMPOS_VENDA2, IMPOS_VENDA3, IMPOS_VENDA4: REAL;
  DEVOL_VENDA1, DEVOL_VENDA2, DEVOL_VENDA3, DEVOL_VENDA4: REAL;
  VENDA_LIQUI1, VENDA_LIQUI2, VENDA_LIQUI3, VENDA_LIQUI4: REAL;
  LUCRO_BRUTO1, LUCRO_BRUTO2, LUCRO_BRUTO3, LUCRO_BRUTO4: REAL;
  CUSTO_VENDA1, CUSTO_VENDA2, CUSTO_VENDA3, CUSTO_VENDA4: REAL;
  DESPESA_SAL1, DESPESA_SAL2, DESPESA_SAL3, DESPESA_SAL4: REAL;
  DESPESA_FIX1, DESPESA_FIX2, DESPESA_FIX3, DESPESA_FIX4: REAL;
  DESPESA_TER1, DESPESA_TER2, DESPESA_TER3, DESPESA_TER4: REAL;
  DESPESA_VAR1, DESPESA_VAR2, DESPESA_VAR3, DESPESA_VAR4: REAL;
  DESPESA_VEI1, DESPESA_VEI2, DESPESA_VEI3, DESPESA_VEI4: REAL;
  DESPESA_BAN1, DESPESA_BAN2, DESPESA_BAN3, DESPESA_BAN4: REAL;
  DESPESA_FIN1, DESPESA_FIN2, DESPESA_FIN3, DESPESA_FIN4: REAL;
  DESPESA_OPE1, DESPESA_OPE2, DESPESA_OPE3, DESPESA_OPE4: REAL;
  LUCRO_OPERA1, LUCRO_OPERA2, LUCRO_OPERA3, LUCRO_OPERA4: REAL;
  DESPESA_IMO1, DESPESA_IMO2, DESPESA_IMO3, DESPESA_IMO4: REAL;


  implementation

uses Relatorios_DM,
     Usuarios_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

procedure TFRelVendasAnaliseMes.INCLINHA;
begin
     LINHAR := LINHAR + 1;

     IF LINHAR > 62
     THEN
         PRINT.Novapagina ;
end;

procedure TFRelVendasAnaliseMes.IMPLINHA;
begin
     //IMPRIME UMA LINHA DE SEPARACAO DE COLUNAS
     Print.ImpF(LINHAR, 24 , '|',[Comp17]);
     Print.ImpF(LINHAR, 37 , '|',[Comp17]);
     Print.ImpF(LINHAR, 50 , '|',[Comp17]);
     Print.ImpF(LINHAR, 63 , '|',[Comp17]);
end;

procedure TFRelVendasAnaliseMes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasAnaliseMes.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasAnaliseMes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasAnaliseMes := Nil;
end;

procedure TFRelVendasAnaliseMes.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasAnaliseMes.PrintNewPage(Sender: TObject; Pagina: Integer);
VAR
   SEM: STRING;
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);

  {WITH DMRELATORIOS DO
  BEGIN}
       //VENDA BRUTA
       Coluna := 0;

       //VER_FAT_VENDAS_ANALISE_MES.First;

       CONT := 1;
       Sem := '' ;
       Print.ImpF(05,01,'CONTA', [Comp17]);

      { While Not VER_FAT_VENDAS_ANALISE_MES.Eof Do
       Begin
            CASE CONT OF
            1
             :BEGIN
                   SEM := VER_FAT_VENDAS_ANALISE_MESSEMANA.TEXT ;

                   IF LENGTH(SEM) = 1
                   THEN
                       SEM := '0' + SEM ;}

                   Print.ImpF(05, 19 , 'SEM 01' + SEM,[Comp17]);
                   Print.ImpF(05, 24 , '|',[Comp17]);
            { END;
            2
             :BEGIN
                   SEM:= VER_FAT_VENDAS_ANALISE_MESSEMANA.TEXT ;

                   IF LENGTH(SEM) = 1
                   THEN
                       SEM:= '0' + SEM;}

                   Print.ImpF(05, 32 , 'SEM 02' + SEM,[Comp17]);
                   Print.ImpF(05, 37 , '|',[Comp17]);
             {END;
            3
             :BEGIN
                   SEM:= VER_FAT_VENDAS_ANALISE_MESSEMANA.TEXT ;

                   IF LENGTH(SEM) = 1
                   THEN
                       SEM:= '0' + SEM;}

                   Print.ImpF(05, 45 , 'SEM 03' + SEM,[Comp17]);
                   Print.ImpF(05, 50 , '|',[Comp17]);
             {END;
            4
             :BEGIN
                   SEM:= VER_FAT_VENDAS_ANALISE_MESSEMANA.TEXT ;

                   IF LENGTH(SEM) = 1
                   THEN
                       SEM:= '0' + SEM;}

                   Print.ImpF(05, 58 , 'SEM 04' + SEM,[Comp17]);
                   Print.ImpF(05, 63 , '|',[Comp17]);
             {END;

            END;

            VER_FAT_VENDAS_ANALISE_MES.next ;

            CONT := CONT + 1;
          End;
       END;}

       Print.ImpF(05, 75 , 'ACUMULADO',[Comp17]);

                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);

       LinhaR  := 07;
end;

procedure TFRelVendasAnaliseMes.FormShow(Sender: TObject);
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


procedure TFRelVendasAnaliseMes.CUSTOS;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///CUSTOS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'CUSTOS TOTAIS',[Comp17, NEGRITO]);

          VER_FAT_VENDAS_ANALISE_CUSTOS_MES.First;

          CONT := 1;

          While Not VER_FAT_VENDAS_ANALISE_CUSTOS_MES.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CUSTOS_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17 , AUX,[Comp17, NEGRITO]);

               Print.ImpF(LinhaR, Coluna + 24 , '|',[Comp17]);

               CASE CONT OF
               1
                :CUSTO_VENDA1 := CUSTO_VENDA1 + VER_FAT_VENDAS_ANALISE_CUSTOS_MESSOMA.VALUE;
               2
                :CUSTO_VENDA2 := CUSTO_VENDA2 + VER_FAT_VENDAS_ANALISE_CUSTOS_MESSOMA.VALUE;
               3
                :CUSTO_VENDA3 := CUSTO_VENDA3 + VER_FAT_VENDAS_ANALISE_CUSTOS_MESSOMA.VALUE;
               4
                :CUSTO_VENDA4 := CUSTO_VENDA4 + VER_FAT_VENDAS_ANALISE_CUSTOS_MESSOMA.VALUE;
               END;

               VER_FAT_VENDAS_ANALISE_CUSTOS_MES.next ;

               COLUNA := COLUNA + 13;

               CONT := CONT + 1;

          End;

          COLUNA := COLUNA + 8;

          AUX := FORMATFLOAT('###,##0.00', CUSTO_VENDA1 + CUSTO_VENDA2 + CUSTO_VENDA3 + CUSTO_VENDA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString    := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString    := 'Sal'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS COM PESSOAL
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_SAL1 := DESPESA_SAL1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :DESPESA_SAL2 := DESPESA_SAL2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :DESPESA_SAL3 := DESPESA_SAL3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :DESPESA_SAL4 := DESPESA_SAL4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_SAL1 + DESPESA_SAL2 + DESPESA_SAL3 +
          DESPESA_SAL4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_TERCEIROS;
VAR
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString    := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Ter'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS COM TERCEIROS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS COM TERC.',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_TER1 := DESPESA_TER1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :DESPESA_TER2 := DESPESA_TER2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :DESPESA_TER3 := DESPESA_TER3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :DESPESA_TER4 := DESPESA_TER4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_TER1 + DESPESA_TER2 + DESPESA_TER3 +
          DESPESA_TER4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_VARIAVEIS;
VAR
   SOMA : REAL;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Var'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS COM TERCEIROS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS DIV. VAR.',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF UPPERCASE(COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20)) <> 'FORNECEDORES'
               THEN BEGIN
                    IF CONT = 1
                    THEN
                        Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

                    AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    //
                    Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

                    Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

                    SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;

                    CASE CONT OF
                    1
                    :DESPESA_VAR1 := DESPESA_VAR1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
                    2
                    :DESPESA_VAR2 := DESPESA_VAR2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
                    3
                    :DESPESA_VAR3 := DESPESA_VAR3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
                    4
                    :DESPESA_VAR4 := DESPESA_VAR4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
                    END;

                    VER_FIN_PAGAS_ANALISE_MES.next ;

                    COLUNA := COLUNA + 13;

                    IF ( CONT = 4 )
                    THEN BEGIN
                         AUX := FORMATFLOAT('###,##0.00', SOMA );

                         WHILE LENGTH(AUX) <= 10 DO
                         BEGIN
                              AUX := ' ' + AUX;
                         END;

                         Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                         SOMA := 0;
                    END;

                    IF CONT = 4
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
                    VER_FIN_PAGAS_ANALISE_MES.next ;

                    COLUNA := COLUNA + 10;

                    IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_VAR1 + DESPESA_VAR2 + DESPESA_VAR3 +
          DESPESA_VAR4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_VEICULOS;
Var
   SOMA : REAL;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Vei'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS COM VEICULOS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS COM VEICULOS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_VEI1 := DESPESA_VEI1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :DESPESA_VEI2 := DESPESA_VEI2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :DESPESA_VEI3 := DESPESA_VEI3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :DESPESA_VEI4 := DESPESA_VEI4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_VEI1 + DESPESA_VEI2 + DESPESA_VEI3 +
          DESPESA_VEI4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_BANCARIAS;
Var
   Soma : Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Ban'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS COM BANCCOS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS BANCARIAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

               SOMA := SOMA + 1;

               CASE CONT OF
               1
                :DESPESA_BAN1 := DESPESA_BAN1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :DESPESA_BAN2 := DESPESA_BAN2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :DESPESA_BAN3 := DESPESA_BAN3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :DESPESA_BAN4 := DESPESA_BAN4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_BAN1 + DESPESA_BAN2 + DESPESA_BAN3 +
          DESPESA_BAN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_FINANCEIRAS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Fin'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS FINANCEIRAS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS FINANCEIRAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          Soma := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;

               CASE CONT OF
               1
                :DESPESA_FIN1 := DESPESA_FIN1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :DESPESA_FIN2 := DESPESA_FIN2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :DESPESA_FIN3 := DESPESA_FIN3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :DESPESA_FIN4 := DESPESA_FIN4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);
               END;

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIN1 + DESPESA_FIN2 + DESPESA_FIN3 +
          DESPESA_FIN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_IMOBILIZADO;
Var
   Soma : Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Imo'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///COMPRAS PATRIMONIAIS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'COMPRAS PATRIMONIAIS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE ;

               CASE CONT OF
               1
                :DESPESA_FIN1 := DESPESA_FIN1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :DESPESA_FIN2 := DESPESA_FIN2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :DESPESA_FIN3 := DESPESA_FIN3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :DESPESA_FIN4 := DESPESA_FIN4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

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

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_IMO1 + DESPESA_IMO2 + DESPESA_IMO3 +
          DESPESA_IMO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_OPERACIONAIS;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///DESPESAS OPERACIONAIS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'TOTAL DESP. OPER.',[Comp17, NEGRITO]);

          DESPESA_OPE1 := DESPESA_FIX1 + DESPESA_TER1 + DESPESA_VAR1 + DESPESA_VEI1
          + DESPESA_BAN1 + DESPESA_FIN1;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX1 + DESPESA_TER1 + DESPESA_VAR1 + DESPESA_VEI1
          + DESPESA_BAN1 + DESPESA_FIN1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          DESPESA_OPE2 := DESPESA_FIX2 + DESPESA_TER2 + DESPESA_VAR2 + DESPESA_VEI2
          + DESPESA_BAN2 + DESPESA_FIN2 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX2 + DESPESA_TER2 + DESPESA_VAR2 + DESPESA_VEI2
          + DESPESA_BAN2 + DESPESA_FIN2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);

          DESPESA_OPE3 := DESPESA_FIX3 + DESPESA_TER3 + DESPESA_VAR3 + DESPESA_VEI3
          + DESPESA_BAN3 + DESPESA_FIN3 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX3 + DESPESA_TER3 + DESPESA_VAR3 + DESPESA_VEI3
          + DESPESA_BAN3 + DESPESA_FIN3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);

          DESPESA_OPE4 := DESPESA_FIX4 + DESPESA_TER4 + DESPESA_VAR4 + DESPESA_VEI4
          + DESPESA_BAN4 + DESPESA_FIN4 ;

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX4 + DESPESA_TER4 + DESPESA_VAR4 + DESPESA_VEI4
          + DESPESA_BAN4 + DESPESA_FIN4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_OPE1 + DESPESA_OPE2 + DESPESA_OPE3 +
          DESPESA_OPE4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnaliseMes.LUCRO_OPERACIONAL;
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);

          LUCRO_OPERA2 := LUCRO_BRUTO2 - DESPESA_OPE2;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);

          LUCRO_OPERA3 := LUCRO_BRUTO3 - DESPESA_OPE3;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);

          LUCRO_OPERA4 := LUCRO_BRUTO4 - DESPESA_OPE4;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA1 + LUCRO_OPERA2 + LUCRO_OPERA3 +
          LUCRO_OPERA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnaliseMes.LUCRO_APOS_IMOBILIZADO;
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA2 - DESPESA_IMO2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA3 - DESPESA_IMO3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA4 - DESPESA_IMO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00',
          LUCRO_OPERA1 - DESPESA_IMO1+
          LUCRO_OPERA2 - DESPESA_IMO2+
          LUCRO_OPERA3 - DESPESA_IMO3+
          LUCRO_OPERA4 - DESPESA_IMO4
          );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnaliseMes.DESPESAS_FIXAS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Fix'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS COM PESSOAL
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'DESPESAS FIXAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17 , AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24 , '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE ;

               CASE CONT OF
               1
                :DESPESA_FIX1 := DESPESA_FIX1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :DESPESA_FIX2 := DESPESA_FIX2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :DESPESA_FIX3 := DESPESA_FIX3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :DESPESA_FIX4 := DESPESA_FIX4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00',
          DESPESA_FIX1 +
          DESPESA_FIX2 +
          DESPESA_FIX3 +
          DESPESA_FIX4  
          );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

          INCLINHA ;

          //FINAL DAS DESPESAS DE SALARIOS
          Print.ImpF(LinhaR, 01, 'DESP. OPER. FIXAS',[Comp17, NEGRITO]);

          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX1 + DESPESA_SAL1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX2 + DESPESA_SAL2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX3 + DESPESA_SAL3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', DESPESA_FIX4 + DESPESA_SAL4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00',
          DESPESA_FIX1 + DESPESA_SAL1 +
          DESPESA_FIX2 + DESPESA_SAL2 +
          DESPESA_FIX3 + DESPESA_SAL3 +
          DESPESA_FIX4 + DESPESA_SAL4
          );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnaliseMes.LUCRO_BRUTO;
begin
     WITH DMRELATORIOS DO
     BEGIN
          Print.ImpF(LinhaR, 01, 'LUCRO BRUTO',[Comp17, NEGRITO]);

          //LUCRO BRUTO
          LUCRO_BRUTO1 := VENDA_LIQUI1 - CUSTO_VENDA1 ;
          LUCRO_BRUTO2 := VENDA_LIQUI2 - CUSTO_VENDA2 ;
          LUCRO_BRUTO3 := VENDA_LIQUI3 - CUSTO_VENDA3 ;
          LUCRO_BRUTO4 := VENDA_LIQUI4 - CUSTO_VENDA4 ;

          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO1 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', LUCRO_BRUTO1 + LUCRO_BRUTO2 + LUCRO_BRUTO3 + LUCRO_BRUTO4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17, NEGRITO]);

     END;
END;

procedure TFRelVendasAnaliseMes.VENDA_LIQUIDA;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA LIQUIDA
          Coluna := 0;

          CONT := 1;

          Print.ImpF(LinhaR, 01, 'VENDAS LIQUIDAS',[Comp17, NEGRITO]);

          VER_FAT_VENDAS_ANALISE_MES.First;

          While Not VER_FAT_VENDAS_ANALISE_MES.Eof Do
          Begin
               CASE CONT OF
               1
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA1 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

                      VENDA_LIQUI1 := VENDA_LIQUI1 + (VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA1);
                END;
               2
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA2 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

                      VENDA_LIQUI2 := VENDA_LIQUI2 + (VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA2);
                END;
               3
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA3 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

                      VENDA_LIQUI3 := VENDA_LIQUI3 + (VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA3);
                END;
               4
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA4 );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

                      VENDA_LIQUI4 := VENDA_LIQUI4 + (VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE - IMPOS_VENDA4);
                END;
               END;

               VER_FAT_VENDAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               CONT := CONT + 1;
          End;

          COLUNA := COLUNA + 8;

          AUX := FORMATFLOAT('###,##0.00', VENDA_LIQUI1 + VENDA_LIQUI2 + VENDA_LIQUI3 + VENDA_LIQUI4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
     END;
END;

procedure TFRelVendasAnaliseMes.IMPOSTOS;
Var
   Soma: Real;
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FIN_PAGAS_ANALISE_MES.Close ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('CNPJ').asString := DMApp.Cnpj;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('DATAINI').asDate   := Ini.Date  ;

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);

          VER_FIN_PAGAS_ANALISE_MES.ParamByName('TIPO').asString := 'Imp'     ;

          VER_FIN_PAGAS_ANALISE_MES.OPEN ;

          ///DESPESAS COM TERCEIROS
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'IMPOSTOS SOBRE VENDAS',[Comp17, NEGRITO]);

          INCLINHA ;

          VER_FIN_PAGAS_ANALISE_MES.First;

          CONT := 1;

          SOMA := 0;

          While Not VER_FIN_PAGAS_ANALISE_MES.Eof Do
          Begin
               IF CONT = 1
               THEN
                   Print.ImpF(LinhaR, 01, COPY(VER_FIN_PAGAS_ANALISE_MESNOME.VALUE,1,20) ,[Comp17]);

               AUX := FORMATFLOAT('###,##0.00', VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17 , AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24 , '|',[Comp17]);

               SOMA := SOMA + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE ;

               CASE CONT OF
               1
                :IMPOS_VENDA1 := IMPOS_VENDA1 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               2
                :IMPOS_VENDA2 := IMPOS_VENDA2 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               3
                :IMPOS_VENDA3 := IMPOS_VENDA3 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               4
                :IMPOS_VENDA4 := IMPOS_VENDA4 + VER_FIN_PAGAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FIN_PAGAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               IF ( CONT = 4 )
               THEN BEGIN
                    AUX := FORMATFLOAT('###,##0.00', SOMA );

                    WHILE LENGTH(AUX) <= 10 DO
                    BEGIN
                         AUX := ' ' + AUX;
                    END;

                    Print.ImpF(LinhaR, 74, AUX,[Comp17]);

                    SOMA := 0;
               END;

               IF CONT = 4
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

          Print.ImpF(LinhaR,  17, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  24, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA2 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  30, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  37, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA3 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  43, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  50, '|',[Comp17]);


          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          Print.ImpF(LinhaR,  56, AUX,[Comp17, NEGRITO]);
          Print.ImpF(LinhaR,  63, '|',[Comp17]);

          AUX := FORMATFLOAT('###,##0.00', IMPOS_VENDA1 + IMPOS_VENDA2 + IMPOS_VENDA3 +
          IMPOS_VENDA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17, NEGRITO]);
     END;
END;

procedure TFRelVendasAnaliseMes.VENDA_BRUTA;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA BRUTA
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'VND BRUTA',[Comp17]);

          VER_FAT_VENDAS_ANALISE_MES.First;

          CONT := 1;

          While Not VER_FAT_VENDAS_ANALISE_MES.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 17, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 24, '|',[Comp17]);

               CASE CONT OF
               1
                :VENDA_BRUTA1 := VENDA_BRUTA1 + VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE;
               2
                :VENDA_BRUTA2 := VENDA_BRUTA2 + VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE;
               3
                :VENDA_BRUTA3 := VENDA_BRUTA3 + VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE;
               4
                :VENDA_BRUTA4 := VENDA_BRUTA4 + VER_FAT_VENDAS_ANALISE_MESSOMA.VALUE;
               END;

               VER_FAT_VENDAS_ANALISE_MES.next ;

               COLUNA := COLUNA + 13;

               CONT := CONT + 1;
          End;

          COLUNA := COLUNA + 8;

          AUX := FORMATFLOAT('###,##0.00', VENDA_BRUTA1 + VENDA_BRUTA2 + VENDA_BRUTA3 + VENDA_BRUTA4 );

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
     END;
END;


procedure TFRelVendasAnaliseMes.ActPreviewExecute(Sender: TObject);
Var
   Mes: String;
begin
     If (Ini.date <= 0)Then
     begin
       MessageDlg('Informe a data base', MtError, [MbOk],0);
       exit;
     end;

     with dmRelatorios do
     begin
       //-------------------------Vendas Mensais----------------------//
       ver_fat_vendas_analise_mes.close;
       ver_fat_vendas_analise_mes.ParamByName('CNPJ').asString:= DMApp.Cnpj;
       ver_fat_vendas_analise_mes.ParamByName('DATAINI').asDate  := Ini.Date;
       ver_fat_vendas_analise_mes.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);
       ver_fat_vendas_analise_mes.open;

       //-------------------------custos de venda mensal----------------------//
       ver_fat_vendas_analise_custos_mes.close;
       ver_fat_vendas_analise_custos_mes.ParamByName('CNPJ').asString:= DMApp.Cnpj;
       ver_fat_vendas_analise_custos_mes.ParamByName('DATAINI').asDate  := Ini.Date;
       ver_fat_vendas_analise_custos_mes.ParamByName('ULTIMODIA').asDate := UltimoDiaMes(Ini.Date);
       ver_fat_vendas_analise_custos_mes.open;

          //
       if ver_fat_vendas_analise_mes.RecordCount = 0 then
       begin
         lblStatus.Visible := False ;
         ShowMessage('Não há registro a imprimir para o período, verifique !');
         Ini.SetFocus;
         exit;
       end
       else
       begin
         lblStatus.Visible := False ;
         VER_FAT_VENDAS_ANALISE_MES.FetchAll ;
         Anda.Max := VER_FAT_VENDAS_ANALISE_MES.RecordCount;
         Anda.Position := 0;
         Anda.Visible  := TRUE ;
       end;

          VENDA_BRUTA1 := 0;
          VENDA_BRUTA2 := 0;
          VENDA_BRUTA3 := 0;
          VENDA_BRUTA4 := 0;

          IMPOS_VENDA1 := 0;
          IMPOS_VENDA2 := 0;
          IMPOS_VENDA3 := 0;
          IMPOS_VENDA4 := 0;

          DEVOL_VENDA1 := 0;
          DEVOL_VENDA2 := 0;
          DEVOL_VENDA3 := 0;
          DEVOL_VENDA4 := 0;

          VENDA_LIQUI1 := 0;
          VENDA_LIQUI2 := 0;
          VENDA_LIQUI3 := 0;
          VENDA_LIQUI4 := 0;

          LUCRO_BRUTO1 := 0;
          LUCRO_BRUTO2 := 0;
          LUCRO_BRUTO3 := 0;
          LUCRO_BRUTO4 := 0;

          CUSTO_VENDA1 := 0;
          CUSTO_VENDA2 := 0;
          CUSTO_VENDA3 := 0;
          CUSTO_VENDA4 := 0;

          DESPESA_FIX1 := 0;
          DESPESA_FIX2 := 0;
          DESPESA_FIX3 := 0;
          DESPESA_FIX4 := 0;

          DESPESA_SAL1 := 0;
          DESPESA_SAL2 := 0;
          DESPESA_SAL3 := 0;
          DESPESA_SAL4 := 0;

          DESPESA_TER1 := 0;
          DESPESA_TER2 := 0;
          DESPESA_TER3 := 0;
          DESPESA_TER4 := 0;

          DESPESA_VAR1 := 0;
          DESPESA_VAR2 := 0;
          DESPESA_VAR3 := 0;
          DESPESA_VAR4 := 0;

          DESPESA_VEI1 := 0;
          DESPESA_VEI2 := 0;
          DESPESA_VEI3 := 0;
          DESPESA_VEI4 := 0;

          DESPESA_BAN1 := 0;
          DESPESA_BAN2 := 0;
          DESPESA_BAN3 := 0;
          DESPESA_BAN4 := 0;

          DESPESA_FIN1 := 0;
          DESPESA_FIN2 := 0;
          DESPESA_FIN3 := 0;
          DESPESA_FIN4 := 0;

          DESPESA_OPE1 := 0;
          DESPESA_OPE2 := 0;
          DESPESA_OPE3 := 0;
          DESPESA_OPE4 := 0;

          LUCRO_OPERA1 := 0;
          LUCRO_OPERA2 := 0;
          LUCRO_OPERA3 := 0;
          LUCRO_OPERA4 := 0;

          DESPESA_IMO1 := 0;
          DESPESA_IMO2 := 0;
          DESPESA_IMO3 := 0;
          DESPESA_IMO4 := 0;

          case ( strtoint(copy(ini.text,4,2)) ) of
          1: Mes := 'Janeiro';
          2: Mes := 'Fevereiro';
          3: Mes := 'Março';
          4: Mes := 'Abril';
          5: Mes := 'Maio';
          6: Mes := 'Junho';
          7: Mes := 'Julho';
          8: Mes := 'Agosto';
          9: Mes := 'Setembro';
          10: Mes := 'Outubro';
          11: Mes := 'Novembro';
          12: Mes := 'Dezembro';
          end;

          MES := UPPERCASE(MES);

          print.TitulodoRelatorio:='DEMONSTRATIVO ECONOMICO FINANCEIRO DO MES DE ' + MES;

          print.Abrir;
          //-----------------------VER_FAT_VENDAS_ANALISE_MES---------------------//
          VENDA_BRUTA ;

          INCLINHA ;
          IMPLINHA ;

          IMPOSTOS ;

          INCLINHA ;
          IMPLINHA ;
          //------------------------VER_FAT_VENDAS_ANALISE_MES----------------------//
          VENDA_LIQUIDA ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-----------------------VER_FAT_VENDAS_ANALISE_CUSTOS_MES----------------//
          CUSTOS   ;

          INCLINHA ;
          IMPLINHA ;

          //-----------Parece ser um somatório LUCRO_BRUTO1 := VENDA_LIQUI1 - CUSTO_VENDA1 -----//
          LUCRO_BRUTO ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //----------------------------VER_FIN_PAGAS_ANALISE_MES-------------------------------//
          DESPESAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-------------------------VER_FIN_PAGAS_ANALISE_MES--------------------------------///
          DESPESAS_FIXAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //----------------------------VER_FIN_PAGAS_ANALISE_MES-------------------------------//
          DESPESAS_TERCEIROS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //----------------------------VER_FIN_PAGAS_ANALISE_MES-----------------------------//
          DESPESAS_VARIAVEIS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //----------------------------VER_FIN_PAGAS_ANALISE_MES---------------------------//
          DESPESAS_VEICULOS;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //---------------------------VER_FIN_PAGAS_ANALISE_MES----------------------------//
          DESPESAS_BANCARIAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-----------------------------VER_FIN_PAGAS_ANALISE_MES----------------------------//
          DESPESAS_FINANCEIRAS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //---------------somatórios DESPESA_OPE1 := DESPESA_FIX1 + DESPESA_TER1 + -------------//
          DESPESAS_OPERACIONAIS ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-----------------------LUCRO_OPERA1 := LUCRO_BRUTO1 - DESPESA_OPE1;-------------------//
          LUCRO_OPERACIONAL ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //-----------------------------VER_FIN_PAGAS_ANALISE_MES--------------------------------//
          DESPESAS_IMOBILIZADO ;

          INCLINHA ;
          IMPLINHA ;
          INCLINHA ;
          IMPLINHA ;

          //------somatório AUX := FORMATFLOAT('###,##0.00', LUCRO_OPERA4 - DESPESA_IMO4 )--------//
          LUCRO_APOS_IMOBILIZADO;

          Anda.Visible:= False;

          Print.Fechar;
     end;
end;

procedure TFRelVendasAnaliseMes.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
end;

procedure TFRelVendasAnaliseMes.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;


end.


