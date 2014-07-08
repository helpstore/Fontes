unit AnaliseInadimplencia_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelAnaliseInadimplencia = class(TForm)
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
    CkFicha: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure INCLINHA;
    procedure IMPLINHA;

    procedure LANCADO;
    procedure PORCENTAGEM;
    procedure PORCENTAGEMABERTO;
    procedure ABERTO;
    procedure PAGO;

  private
    { Private declarations }
    Grupo, SubGrupo: Integer;

  public
    { Public declarations }
  end;

var
  FRelAnaliseInadimplencia: TFRelAnaliseInadimplencia;
  LinhaR, Pagina: Integer;

  Coluna : Integer;
  Aux    : String ;

  Cont   : Integer;

  ///VARIAVEIS ACUMULATIVAS
  LANCADO1, LANCADO2, LANCADO3, LANCADO4, LANCADO5, LANCADO6: REAL;
  ABERTO1, ABERTO2, ABERTO3, ABERTO4, ABERTO5, ABERTO6: REAL;
  PAGO1, PAGO2, PAGO3, PAGO4, PAGO5, PAGO6: REAL;
  PORCENTAGEM1, PORCENTAGEM2, PORCENTAGEM3, PORCENTAGEM4, PORCENTAGEM5, PORCENTAGEM6: REAL;

implementation

uses Relatorios_DM,
     Usuarios_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

procedure TFRelAnaliseInadimplencia.INCLINHA;
begin
     LINHAR := LINHAR + 1;

     IF LINHAR > 62
     THEN
         PRINT.Novapagina ;
end;

procedure TFRelAnaliseInadimplencia.IMPLINHA;
begin
     //IMPRIME UMA LINHA DE SEPARACAO DE COLUNAS
     Print.ImpF(LINHAR, 21 , '|',[Comp17]);
     Print.ImpF(LINHAR, 31 , '|',[Comp17]);
     Print.ImpF(LINHAR, 41 , '|',[Comp17]);
     Print.ImpF(LINHAR, 51 , '|',[Comp17]);
     Print.ImpF(LINHAR, 61 , '|',[Comp17]);
     Print.ImpF(LINHAR, 71 , '|',[Comp17]);
end;

procedure TFRelAnaliseInadimplencia.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelAnaliseInadimplencia.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelAnaliseInadimplencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelAnaliseInadimplencia := Nil;
end;

procedure TFRelAnaliseInadimplencia.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelAnaliseInadimplencia.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelAnaliseInadimplencia.PrintNewPage(Sender: TObject; Pagina: Integer);
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

       ANALISE_INADIMPLENCIA.First;

       CONT := 1;

       Print.ImpF(05,01,'CONTA', [Comp17]);

       While Not ANALISE_INADIMPLENCIA.Eof Do
       Begin
            CASE CONT OF
            1
             :BEGIN
                   MES := ANALISE_INADIMPLENCIAMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 16 , MES + '/' + ANALISE_INADIMPLENCIAANO.TEXT,[Comp17]);
                   Print.ImpF(05, 21 , '|',[Comp17]);
             END;
            2
             :BEGIN
                   MES := ANALISE_INADIMPLENCIAMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 26 , MES + '/' + ANALISE_INADIMPLENCIAANO.TEXT,[Comp17]);
                   Print.ImpF(05, 31 , '|',[Comp17]);
             END;
            3
             :BEGIN
                   MES := ANALISE_INADIMPLENCIAMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 36 , MES + '/' + ANALISE_INADIMPLENCIAANO.TEXT,[Comp17]);
                   Print.ImpF(05, 41 , '|',[Comp17]);
             END;
            4
             :BEGIN
                   MES := ANALISE_INADIMPLENCIAMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 46 , MES + '/' + ANALISE_INADIMPLENCIAANO.TEXT,[Comp17]);
                   Print.ImpF(05, 51 , '|',[Comp17]);
             END;
            5
             :BEGIN
                   MES := ANALISE_INADIMPLENCIAMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 56 , MES + '/' + ANALISE_INADIMPLENCIAANO.TEXT,[Comp17]);
                   Print.ImpF(05, 61 , '|',[Comp17]);
             END;
            6
             :BEGIN
                   MES := ANALISE_INADIMPLENCIAMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 66 , MES + '/' + ANALISE_INADIMPLENCIAANO.TEXT,[Comp17]);
                   Print.ImpF(05, 71 , '|',[Comp17]);
             END;

            END;

            ANALISE_INADIMPLENCIA.next ;

            CONT := CONT + 1;
          End;
       END;

       Print.ImpF(05, 75 , 'ACUMULADO',[Comp17]);

                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);

       LinhaR  := 07;
end;

procedure TFRelAnaliseInadimplencia.FormShow(Sender: TObject);
begin
     INI.DATE := DATE ;

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


procedure TFRelAnaliseInadimplencia.ActPreviewExecute(Sender: TObject);
begin
     WITH DMRELATORIOS DO
     BEGIN
          IF CkFicha.Checked
          THEN BEGIN
               ANALISE_INADIMPLENCIA.SQL.Clear ;
               ANALISE_INADIMPLENCIA.SQL.Add ( ' SELECT * from ANALISE_INADIMPLENCIA_VENCTO ( :CNPJ, :DATA ) ');
          END
          ELSE BEGIN
               ANALISE_INADIMPLENCIA.SQL.Clear ;
               ANALISE_INADIMPLENCIA.SQL.Add ( ' SELECT * from ANALISE_INADIMPLENCIA ( :CNPJ, :DATA ) ');
          END;

          ANALISE_INADIMPLENCIA.Close ;

          ANALISE_INADIMPLENCIA.ParamByName('CNPJ').asString:= DMApp.Cnpj;

          If (Ini.Text = '  / /  ') Or (INI.Text = '  / /    ')
          Then begin
               MessageDlg('Informe o Período', MtError, [MbOk],0);
               EXIT;
          end
          Else Begin
               ANALISE_INADIMPLENCIA.ParamByName('DATA').asDate  := Ini.Date;
          End;

          ANALISE_INADIMPLENCIA.OPEN ;

          //
          If ANALISE_INADIMPLENCIA.RecordCount = 0
          Then Begin
               lblStatus.Visible := False ;
               ShowMessage('Não há registro a imprimir para o período, verifique !');
               //
               ANALISE_INADIMPLENCIA.Close;
               //
               Ini.SetFocus;
               Exit;
          End
          Else Begin
               lblStatus.Visible := False ;
               ANALISE_INADIMPLENCIA.FetchAll ;
               Anda.Max := ANALISE_INADIMPLENCIA.RecordCount;
               Anda.Position := 0;
               Anda.Visible  := TRUE ;
          End;

          print.TitulodoRelatorio:='ANALISE DE INADIMPLENCIA';

          print.Abrir;

          PAGO1 := 0;
          PAGO2 := 0;
          PAGO3 := 0;
          PAGO4 := 0;
          PAGO5 := 0;
          PAGO6 := 0;

          ABERTO1 := 0;
          ABERTO2 := 0;
          ABERTO3 := 0;
          ABERTO4 := 0;
          ABERTO5 := 0;
          ABERTO6 := 0;

          LANCADO1 := 0;
          LANCADO2 := 0;
          LANCADO3 := 0;
          LANCADO4 := 0;
          LANCADO5 := 0;
          LANCADO6 := 0;

          LANCADO ;

          INCLINHA ;

          PAGO ;

          INCLINHA ;

          ABERTO ;

          INCLINHA ;

          PORCENTAGEM ;

          INCLINHA ;

          PORCENTAGEMABERTO ;

          INCLINHA ;

          Anda.Visible:= False;

          Print.Fechar;
     end;
end;

procedure TFRelAnaliseInadimplencia.LANCADO;
VAR
   Cont, Coluna: Integer;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA BRUTA
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'LANCADO',[Comp17]);

          ANALISE_INADIMPLENCIA.First;

          CONT := 1;

          While Not ANALISE_INADIMPLENCIA.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00', ANALISE_INADIMPLENCIALANCADO.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               CASE CONT OF
               1
                :LANCADO1 := LANCADO1 + ANALISE_INADIMPLENCIALANCADO.VALUE;
               2
                :LANCADO2 := LANCADO2 + ANALISE_INADIMPLENCIALANCADO.VALUE;
               3
                :LANCADO3 := LANCADO3 + ANALISE_INADIMPLENCIALANCADO.VALUE;
               4
                :LANCADO4 := LANCADO4 + ANALISE_INADIMPLENCIALANCADO.VALUE;
               5
                :LANCADO5 := LANCADO5 + ANALISE_INADIMPLENCIALANCADO.VALUE;
               6
                :LANCADO6 := LANCADO6 + ANALISE_INADIMPLENCIALANCADO.VALUE;
               END;

               ANALISE_INADIMPLENCIA.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          AUX := FORMATFLOAT('###,##0.00', LANCADO1 + LANCADO2 + LANCADO3 + LANCADO4 + LANCADO5 + LANCADO6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
     END;
END;

procedure TFRelAnaliseInadimplencia.PAGO;
VAR
   Cont, Coluna: Integer;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA BRUTA
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'PAGO',[Comp17]);

          ANALISE_INADIMPLENCIA.First;

          CONT := 1;

          While Not ANALISE_INADIMPLENCIA.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00', ANALISE_INADIMPLENCIAPAGO.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;
               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               CASE CONT OF
               1
                :PAGO1 := PAGO1 + ANALISE_INADIMPLENCIAPAGO.VALUE;
               2
                :PAGO2 := PAGO2 + ANALISE_INADIMPLENCIAPAGO.VALUE;
               3
                :PAGO3 := PAGO3 + ANALISE_INADIMPLENCIAPAGO.VALUE;
               4
                :PAGO4 := PAGO4 + ANALISE_INADIMPLENCIAPAGO.VALUE;
               5
                :PAGO5 := PAGO5 + ANALISE_INADIMPLENCIAPAGO.VALUE;
               6
                :PAGO6 := PAGO6 + ANALISE_INADIMPLENCIAPAGO.VALUE;
               END;

               ANALISE_INADIMPLENCIA.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          AUX := FORMATFLOAT('###,##0.00', PAGO1 + PAGO2 + PAGO3 + PAGO4 + PAGO5 + PAGO6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
     END;
END;

procedure TFRelAnaliseInadimplencia.PORCENTAGEM;
VAR
   Cont, Coluna: Integer;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA BRUTA
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'PORCENTAGEM',[Comp17]);

          ANALISE_INADIMPLENCIA.First;

          CONT := 1;

          While Not ANALISE_INADIMPLENCIA.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00 %', ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;
               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               CASE CONT OF
               1
                :PORCENTAGEM1 := PORCENTAGEM1 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               2
                :PORCENTAGEM2 := PORCENTAGEM2 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               3
                :PORCENTAGEM3 := PORCENTAGEM3 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               4
                :PORCENTAGEM4 := PORCENTAGEM4 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               5
                :PORCENTAGEM5 := PORCENTAGEM5 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               6
                :PORCENTAGEM6 := PORCENTAGEM6 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               END;

               ANALISE_INADIMPLENCIA.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          IF ( ( LANCADO1 + LANCADO2 + LANCADO3 + LANCADO4 + LANCADO5 + LANCADO6 ) > 0 )
          THEN BEGIN
                AUX := FORMATFLOAT('###,##0.00 %', ( PAGO1 + PAGO2 + PAGO3 + PAGO4 + PAGO5 + PAGO6 ) / ( LANCADO1 + LANCADO2 + LANCADO3 + LANCADO4 + LANCADO5 + LANCADO6 ) * 100 );

                WHILE LENGTH(AUX) <= 10 DO
                BEGIN
                        AUX := ' ' + AUX;
                END;

                //
                Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
          END;
     END;
END;

procedure TFRelAnaliseInadimplencia.PORCENTAGEMABERTO;
VAR
   Cont, Coluna: Integer;
   PAGOTOTAL, LANCADOTOTAL: REAL ;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA BRUTA
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'ABERTO %',[Comp17]);

          ANALISE_INADIMPLENCIA.First;

          CONT := 1;

          While Not ANALISE_INADIMPLENCIA.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00 %', 100 - ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;
               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

{               CASE CONT OF
               1
                :PORCENTAGEM1 := PORCENTAGEM1 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               2
                :PORCENTAGEM2 := PORCENTAGEM2 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               3
                :PORCENTAGEM3 := PORCENTAGEM3 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               4
                :PORCENTAGEM4 := PORCENTAGEM4 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               5
                :PORCENTAGEM5 := PORCENTAGEM5 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               6
                :PORCENTAGEM6 := PORCENTAGEM6 + ANALISE_INADIMPLENCIAPORCENTAGEM.VALUE;
               END;
}
               ANALISE_INADIMPLENCIA.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          IF ( ( LANCADO1 + LANCADO2 + LANCADO3 + LANCADO4 + LANCADO5 + LANCADO6 ) > 0 )
          THEN BEGIN
                PAGOTOTAL    := PAGO1 + PAGO2 + PAGO3 + PAGO4 + PAGO5 + PAGO6 ;

                LANCADOTOTAL := LANCADO1 + LANCADO2 + LANCADO3 + LANCADO4 + LANCADO5 + LANCADO6 ;

                AUX := FORMATFLOAT('###,##0.00 %', 100 - (( PAGOTOTAL / LANCADOTOTAL ) * 100)) ;

                WHILE LENGTH(AUX) <= 10 DO
                BEGIN
                        AUX := ' ' + AUX;
                END;

                //
                Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
          END;
     END;
END;

procedure TFRelAnaliseInadimplencia.ABERTO;
VAR
   Cont, Coluna: Integer;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA BRUTA
          Coluna := 0;

          Print.ImpF(LinhaR, 01, 'ABERTO',[Comp17]);

          ANALISE_INADIMPLENCIA.First;

          CONT := 1;

          While Not ANALISE_INADIMPLENCIA.Eof Do
          Begin
               AUX := FORMATFLOAT('###,##0.00', ANALISE_INADIMPLENCIAABERTO.VALUE );

               WHILE LENGTH(AUX) <= 10 DO
               BEGIN
                    AUX := ' ' + AUX;
               END;

               //
               Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

               Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

               CASE CONT OF
               1
                :ABERTO1 := ABERTO1 + ANALISE_INADIMPLENCIAABERTO.VALUE;
               2
                :ABERTO2 := ABERTO2 + ANALISE_INADIMPLENCIAABERTO.VALUE;
               3
                :ABERTO3 := ABERTO3 + ANALISE_INADIMPLENCIAABERTO.VALUE;
               4
                :ABERTO4 := ABERTO4 + ANALISE_INADIMPLENCIAABERTO.VALUE;
               5
                :ABERTO5 := ABERTO5 + ANALISE_INADIMPLENCIAABERTO.VALUE;
               6
                :ABERTO6 := ABERTO6 + ANALISE_INADIMPLENCIAABERTO.VALUE;
               END;

               ANALISE_INADIMPLENCIA.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          AUX := FORMATFLOAT('###,##0.00', ABERTO1 + ABERTO2 + ABERTO3 + ABERTO4 + ABERTO5 + ABERTO6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);
     END;
END;

procedure TFRelAnaliseInadimplencia.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
end;

procedure TFRelAnaliseInadimplencia.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

end.
