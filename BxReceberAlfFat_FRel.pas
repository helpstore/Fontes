unit BxReceberAlfFat_FRel;

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
  TFRelRecebidasAlfabeticoFat = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    DsClientes: TDataSource;
    Print: TRDprint;
    Label3: TcxLabel;
    cmbCliente: TdxLookupEdit;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    procedure IMPRIMERECEBER;

    procedure IncLin;

  public
    { Public declarations }
  end;

var
  FRelRecebidasAlfabeticoFat: TFRelRecebidasAlfabeticoFat;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelRecebidasAlfabeticoFat.IncLin;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.NovaPagina ;
end;

procedure TFRelRecebidasAlfabeticoFat.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelRecebidasAlfabeticoFat.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelRecebidasAlfabeticoFat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsClientes.DataSet.Close;
  //
  Action      := caFree;
  FRelRecebidasAlfabeticoFat := Nil;
end;

procedure TFRelRecebidasAlfabeticoFat.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelRecebidasAlfabeticoFat.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelRecebidasAlfabeticoFat.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     PRINT.impf(01,01,'===============================================================================',[Normal]);
     PRINT.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     PRINT.impf(02,55,'DATA: '+ DATETIMETOSTR(NOW),[Normal]);
     PRINT.impf(03,01,'CONTAS RECEBIDAS ALFABETICO ' ,[Normal]);
     PRINT.impf(03,30,'PERIODO ' + edDtInicial.TEXT + ' A ' + edDtFinal.TEXT  ,[Normal]);
     PRINT.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     PRINT.impf(04,01,'===============================================================================',[Normal]);

     PRINT.impf(05,01,'DOCTO',[COMP17]);
     PRINT.impf(05,10,'EMISSAO',[COMP17]);
     PRINT.impf(05,17,'VENCTO',[COMP17]);
     PRINT.impf(05,24,'BAIXA',[COMP17]);
     PRINT.impf(05,29,'ATR',[COMP17]);
     PRINT.impf(05,33,'ORIGINAL',[COMP17]);
     PRINT.impf(05,41,'PARCIAIS',[COMP17]);
     PRINT.impf(05,47,'  DESCTO',[COMP17]);
     PRINT.impf(05,53,'   JUROS',[COMP17]);
     PRINT.impf(05,60,'    TOTAL',[COMP17]);
     PRINT.impf(05,66,' RESTANTE',[COMP17]);

     inc(pagina);
     linha  := 6;
end;

procedure TFRelRecebidasAlfabeticoFat.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsClientes.DataSet.Open;
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
  //
end;

procedure TFRelRecebidasAlfabeticoFat.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;

  With DmFinanceiro do
  begin
       BAIXAS_RECEBER.Close ;
       BAIXAS_RECEBER.SQL.CLEAR ;
       BAIXAS_RECEBER.Params.CLEAR ;

       BAIXAS_RECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
       BAIXAS_RECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

       BAIXAS_RECEBER.SQL.ADD ( ' SELECT * FROM VER_BAIXA_RECEBER_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

       IF TRIM(cmbCliente.TEXT) <> ''
       THEN BEGIN
            BAIXAS_RECEBER.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

            BAIXAS_RECEBER.SQL.Add (' Where PESSOA_FJ = :INI ');

            BAIXAS_RECEBER.ParamByName ('INI').asInteger := cmbCliente.LookupKeyValue ;
       END;

       BAIXAS_RECEBER.ParamByName ( 'DINI' ).AsDate := edDtInicial.Date ;
       BAIXAS_RECEBER.ParamByName ( 'DFIM' ).AsDate := edDtFinal.Date ;

       BAIXAS_RECEBER.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, DT_BAIXA ' );

       BAIXAS_RECEBER.Prepare ;
       BAIXAS_RECEBER.Open ;

       If BAIXAS_RECEBER.RecordCount = 0
       Then Begin
            lblStatus.Visible := False ;
            ShowMessage('Não há registros para o período, verifique !');
            //
            BAIXAS_RECEBER.Close;
               //
            edDtInicial.SetFocus;
            Exit;
       End
       Else Begin
            lblStatus.Visible := False ;

            BAIXAS_RECEBER.FetchAll ;

            Anda.Max :=  BAIXAS_RECEBER.RecordCount;

            Anda.Position := 0;

            Anda.Visible  := TRUE ;
       End;
  end;

  IMPRIMERECEBER ;

end;

procedure TFRelRecebidasAlfabeticoFat.IMPRIMERECEBER;
VAR
   IMP, STR         : STRING;
   DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD, ULTFAT   : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     PRINT.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          Ver_DadosFaturas.Close ;

          TOTAL         := 0;//TOTAL DO CLIENTE
          TOTALGERAL    := 0;//TOTAL DAS CONTAS
          JUROSGERAL    := 0;//VALOR DOS JUROS
          JUROS         := 0;//VALOR DOS JUROS POR CLIENTE
          DESCONTOS     := 0;//DESCONTO POR CLIENTE
          DESCONTOGERAL := 0;//DESCONTO GERAL

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT BAIXAS_RECEBER.Eof DO
          BEGIN
               IF (( ULTFAT <> BAIXAS_RECEBERFATURA.VALUE ) OR ( BAIXAS_RECEBERFATURA.VALUE = 0 ))
               THEN
                   IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    PRINT.impf(LINHA,01,INTTOSTR(BAIXAS_RECEBERPESSOA_FJ.Value) + '-'+ BAIXAS_RECEBERNOME.Value , [comp17]);

                    If length(BAIXAS_RECEBERCPF_CGC.Value) <= 11
                    then
                        PRINT.impf(LINHA,30,MASCARACPF(BAIXAS_RECEBERCPF_CGC.Value) , [comp17])
                    ELSE
                        PRINT.impf(LINHA,30, MASCARACNPJ(BAIXAS_RECEBERCPF_CGC.Value) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_RECEBERPESSOA_FJ.VALUE ;

                    ULTFAT := 0;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    IncLin ;
               END;

               IF ( Baixas_ReceberFATURA.VALUE <= 0 )
               THEN BEGIN
                    ULTFAT := 0;

                    //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
                    //DOCUMENTO
                    PRINT.impf(linha,01, 'NA  ' + BAIXAS_RECEBERDOCTO.Value ,[comp17]);

                    //EMISSAO
                    PRINT.impf(linha, 10, DATETOSTR(Baixas_ReceberDT_EMISSAO.Value ) ,[comp17]);

                    //VENCIMENTO
                    PRINT.impf(linha, 17, DATETOSTR(BAIXAS_RECEBERDT_VENCTO.Value ) ,[comp17]);

                    //ATRASO
                    PRINT.impF (linha, 24, COPY(DATETOSTR( Baixas_ReceberDT_BAIXA.Value ),1,5) ,[comp17]);

                    //ATRASO
                    PRINT.impVAL(linha, 29, '###', ( Baixas_ReceberAtraso.value ) ,[comp17]);

                    //DESCONTO
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberDESCONTOS.Value );
                    WHILE LENGTH(STR) < 8 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,63, STR ,[comp17]);

                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberJUROS.VALUE );
                    WHILE LENGTH(STR) < 8 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    //JUROS
                    PRINT.impf(linha,69, STR ,[comp17]);

                    STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBERVLR_BAIXA.Value);
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    //VALOR
                    PRINT.impf(linha,75, STR ,[comp17]);
               END
               ELSE BEGIN
                    IF ( ULTFAT <> BAIXAS_RECEBERFATURA.VALUE )
                    THEN BEGIN
                         ULTFAT := BAIXAS_RECEBERFATURA.VALUE ;

                         //DOCUMENTO
                         PRINT.impf(linha, 01, 'FAT ' + PREENCHE(BAIXAS_RECEBERFATURA.TEXT,'0', 6) ,[comp17]);

                         Ver_DadosFaturas.Close ;

                         Ver_DadosFaturas.ParamByName ( 'CNPJ'       ).ASSTRING  := DMAPP.Cnpj                 ;
                         Ver_DadosFaturas.ParamByName ( 'COD_FATURA' ).ASINTEGER := BAIXAS_RECEBERFATURA.VALUE ;
                         Ver_DadosFaturas.ParamByName ( 'DINI'       ).ASDATE    := edDtInicial.DATE           ;
                         Ver_DadosFaturas.ParamByName ( 'DFIM'       ).ASDATE    := edDtFinal.DATE             ;

                         Ver_DadosFaturas.Open  ;

                         //EMISSAO
                         PRINT.impf(linha, 10, DATETOSTR( Ver_DadosFaturasDATA.Value ) ,[comp17]);

                         //VENCIMENTO
                         PRINT.impf(linha, 17, DATETOSTR(Ver_DadosFaturasVENCIMENTO.Value ) ,[comp17]);

                         //BAIXA
                         IF VerFaturasULTIMA_BX_PARCIAL.ISNULL
                         THEN BEGIN
                              PRINT.impF (linha, 24, COPY(DATETOSTR( Ver_DadosFaturasDATA_BAIXA.Value ),1,5) ,[comp17]);
                         END
                         ELSE BEGIN
                              PRINT.impF (linha, 24, COPY(DATETOSTR( Ver_DadosFaturasULTIMA_BX_PARCIAL.Value ),1,5) ,[comp17]);
                         END;

                         IF VerFaturasULTIMA_BX_PARCIAL.ISNULL
                         THEN BEGIN
                              //ATRASO
                              PRINT.impval(linha, 29, '###', ( Ver_DadosFaturasDATA_BAIXA.Value - Ver_DadosFaturasVENCIMENTO.Value ) ,[comp17]);
                         END
                         ELSE BEGIN
                              //ATRASO
                              PRINT.impval(linha, 29, '###', ( Ver_DadosFaturasULTIMA_BX_PARCIAL.Value - Ver_DadosFaturasVENCIMENTO.Value ) ,[comp17]);
                         END;

                         //VALOR ORIGINAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(Ver_DadosFaturasVALOR.VALUE + Ver_DadosFaturasBAIXAS_PARCIAIS.VALUE,2) );
                         WHILE LENGTH(STR) < 8 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 33, STR ,[comp17]);

                         //BAIXAS PARCIAIS
                         STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(Ver_DadosFaturasBAIXAS_PARCIAIS_DIA.VALUE,2) );
                         WHILE LENGTH(STR) < 8 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 41, STR ,[comp17]);

                         //DESCONTO
                         STR :=  FORMATFLOAT ('###,###,##0.00', Ver_DadosFaturasDESCONTO.Value );
                         WHILE LENGTH(STR) < 8 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha,47, STR ,[comp17]);

                         STR :=  FORMATFLOAT ('###,###,##0.00', Ver_DadosFaturasJUROS.Value + Ver_DadosFaturasJUROS_DIA.Value );
                         WHILE LENGTH(STR) < 8 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         //JUROS
                         PRINT.impf(linha,53, STR ,[comp17]);

                         STR :=  FORMATFLOAT ('###,###,##0.00', Ver_DadosFaturasTotal.Value );
                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         //VALOR
                         PRINT.impf(linha, 60, STR ,[comp17]);

                         //VALOR RESTANTE
                         IF Ver_DadosFaturasDATA_BAIXA.ISNULL
                         THEN BEGIN
                              STR :=  FORMATFLOAT ('###,###,##0.00', Ver_DadosFaturasVALOR.VALUE );
                              WHILE LENGTH(STR) < 10 DO
                              BEGIN
                                   STR := ' ' + STR ;
                              END;
                         END
                         ELSE BEGIN
                              STR :=  FORMATFLOAT ('###,###,##0.00', Ver_DadosFaturasVALOR.VALUE );
                              WHILE LENGTH(STR) < 10 DO
                              BEGIN
                                   STR := ' ' + STR ;
                              END;
                         END;

                         PRINT.impf(linha, 66, STR ,[comp17]);

                    END;
               END;

               IF ( Baixas_ReceberFATURA.VALUE <= 0 )
               THEN BEGIN
                    TOTAL         := TOTAL         + BAIXAS_RECEBERVLR_BAIXA.Value  ;
                    TOTALGERAL    := TOTALGERAL    + BAIXAS_RECEBERVLR_BAIXA.Value  ;
                    JUROSGERAL    := JUROSGERAL    + Baixas_ReceberJUROS.VALUE      ;
                    DESCONTOGERAL := DESCONTOGERAL + BAIXAS_RECEBERDESCONTOS.Value  ;

                    DESCONTOS := DESCONTOS + BAIXAS_RECEBERDESCONTOS.Value ;
                    JUROS := JUROS + Baixas_ReceberJUROS.VALUE ;
               END
               ELSE BEGIN
                    IF ( ULTFAT = BAIXAS_RECEBERFATURA.VALUE )
                    THEN BEGIN
                         TOTAL         := TOTAL         + Ver_DadosFaturasTotal.Value      ;
                         TOTALGERAL    := TOTALGERAL    + Ver_DadosFaturasTotal.Value      ;
                         JUROSGERAL    := JUROSGERAL    + Ver_DadosFaturasJUROS.VALUE + Ver_DadosFaturasJUROS_DIA.Value     ;
                         DESCONTOGERAL := DESCONTOGERAL + Ver_DadosFaturasDESCONTO.Value  ;

                         DESCONTOS     := DESCONTOS + Ver_DadosFaturasDESCONTO.Value ;
                         JUROS         := JUROS + Ver_DadosFaturasJUROS.VALUE + Ver_DadosFaturasJUROS_DIA.Value;
                    END;
               END;

               BAIXAS_RECEBER.NEXT ;

               IF (( ULTCOD <> BAIXAS_RECEBERPESSOA_FJ.VALUE )AND(NOT BAIXAS_RECEBER.EOF))
               THEN BEGIN
                    IncLin;

                    PRINT.impf(linha,32, ' TOTAL CLIENTE' ,[comp17]);

                    PRINT.impf(linha,57, '-------------' ,[comp17]);
                    PRINT.impf(linha,65, '-------------' ,[comp17]);
                    PRINT.impf(linha,73, '-------------' ,[comp17]);

                    IncLin;

                    //DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha, 57, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha, 65, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,73, STR ,[comp17]);

                    IncLin;

                    PRINT.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_RECEBER.EOF)
                    THEN BEGIN
                         IncLin;

                         PRINT.impf(linha,32, ' TOTAL CLIENTE' ,[comp17]);

                         PRINT.impf(linha,57, '-------------' ,[comp17]);
                         PRINT.impf(linha,65, '-------------' ,[comp17]);
                         PRINT.impf(linha,73, '-------------' ,[comp17]);

                         IncLin;

                         //DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 57, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 65, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha,73, STR ,[comp17]);

                         IncLin;

                         PRINT.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          IncLin;

          PRINT.impf(linha,32, ' TOTAL GERAL' ,[comp17]);

          PRINT.impf(linha,57, '-------------' ,[comp17]);
          PRINT.impf(linha,65, '-------------' ,[comp17]);
          PRINT.impf(linha,73, '-------------' ,[comp17]);

          IncLin;

          //DESCONTOS
          STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 57, STR ,[comp17]);

          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 65, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 73, STR ,[comp17]);

          PRINT.FECHAR;
     END;
end;

procedure TFRelRecebidasAlfabeticoFat.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelRecebidasAlfabeticoFat.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelRecebidasAlfabeticoFat.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

end.

