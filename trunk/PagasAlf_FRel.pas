 unit PagasAlf_FRel;

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
  TFRelPagasAlfabetico = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    DsFornecedor: TDataSource;
    Print: TRDprint;
    Label3: TcxLabel;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    cmbFornecedor: TdxLookupEdit;
    Label4: TcxLabel;
    CmbCentroCusto: TdxLookupEdit;
    DsCentro: TDataSource;
    CkTotais: TCheckBox;
    CkEntradas: TCheckBox;
    ckhistorico: TCheckBox;
    DsAgrupador: TDataSource;
    Label5: TcxLabel;
    CmbAgrupador: TdxLookupEdit;
    Label6: TcxLabel;
    edNDocto: TdxEdit;
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
    procedure IMPRIMEPAGAR;
    procedure IMPRIMEPAGARTOTAIS;
    procedure IMPRIMEENTRADAS;

    procedure INCLIN;

  public
    { Public declarations }
  end;

var
  FRelPagasAlfabetico: TFRelPagasAlfabetico;
  Linha, Pagina: Integer;
  IMP, STR         : STRING;
  DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelPagasAlfabetico.INCLIN;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.NovaPagina ;
end;

procedure TFRelPagasAlfabetico.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelPagasAlfabetico.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelPagasAlfabetico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DsFornecedor.DataSet.Close;
  DsCentro.DataSet.Close;
  DsAgrupador.DataSet.Close;

  //
  Action      := caFree;
  FRelPagasAlfabetico := Nil;
end;

procedure TFRelPagasAlfabetico.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPagasAlfabetico.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelPagasAlfabetico.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     PRINT.impf(01,01,'===============================================================================',[Normal]);
     PRINT.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     PRINT.impf(03,01,PRINT.TitulodoRelatorio ,[Normal]);
     PRINT.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     PRINT.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     PRINT.impf(04,01,'===============================================================================',[Normal]);

     IF CKTOTAIS.Checked
     THEN BEGIN
          PRINT.impf(05,67,'JUROS/DESC',[COMP17]);
          PRINT.impf(05,74,'     TOTAL',[COMP17]);
     END
     ELSE BEGIN
          PRINT.impf(05,01,'LANC',[COMP17]);
          PRINT.impf(05,08,'DOCUMENTO',[COMP17]);
          PRINT.impf(05,18,'VENCTO',[COMP17]);
          PRINT.impf(05,25,'BAIXA',[COMP17]);
          PRINT.impf(05,32,'PC',[COMP17]);
          PRINT.impf(05,35,'HISTORICO',[COMP17]);
          PRINT.impf(05,57,'C. CUSTO',[COMP17]);
          PRINT.impf(05,67,'JUROS/DESC',[COMP17]);
          PRINT.impf(05,74,'     TOTAL',[COMP17]);
     END;

     inc(pagina);
     linha  := 6;
end;

procedure TFRelPagasAlfabetico.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    DsFornecedor.DataSet.Open;
    DsCentro.DataSet.Open;
    DsAgrupador.DataSet.Open;
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

procedure TFRelPagasAlfabetico.ActPreviewExecute(Sender: TObject);
Var
   I: Integer;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;

  With DmFinanceiro do
  begin
       //SOMA O TOTAL DAS CONTAS A PAGAR
       PRINT.TitulodoRelatorio := 'PAGAS ALFABETICO' ;

       //SELECIONA O CONTAS A PAGAR QUE AINDA NAO VENCEU
       BAIXAS_PAGAR.Close ;
       BAIXAS_PAGAR.SQL.CLEAR ;
       BAIXAS_PAGAR.Params.CLEAR ;

       BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DINI', PtInput );
       BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DFIM', PtInput );

       BAIXAS_PAGAR.SQL.ADD ( ' SELECT * FROM VER_BAIXA_PAGAR_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

       I := 0;

       IF TRIM(cmbFORNECEDOR.TEXT) <> ''
       THEN BEGIN
            BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

            BAIXAS_PAGAR.SQL.Add (' Where PESSOA_FJ = :INI ');

            BAIXAS_PAGAR.ParamByName ('INI').asInteger := cmbFORNECEDOR.LookupKeyValue ;

            I := 1 ;
       END;

       IF TRIM(CmbCentroCusto.TEXT) <> ''
       THEN BEGIN
            IF I = 0
            THEN BEGIN
                 BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                 BAIXAS_PAGAR.SQL.Add (' Where CENTRO_CUSTO = :CCU ');

                 BAIXAS_PAGAR.ParamByName ('CCU').asInteger := CmbCentroCusto.LookupKeyValue ;
            END
            ELSE BEGIN
                 BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInputOutPut );

                 BAIXAS_PAGAR.SQL.Add (' And CENTRO_CUSTO = :CCU ');

                 BAIXAS_PAGAR.ParamByName ('CCU').asInteger := CmbCentroCusto.LookupKeyValue ;
            END;
       END;

       IF TRIM(CmbAgrupador.TEXT) <> ''
       THEN BEGIN
            IF I = 0
            THEN BEGIN
                 BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'AGP', PtInputOutPut );

                 BAIXAS_PAGAR.SQL.Add (' Where ( AGRUPADOR = :AGP OR CENTRO_CUSTO = :AGP )  ');

                 BAIXAS_PAGAR.ParamByName ('AGP').asInteger := CmbAgrupador.LookupKeyValue ;
            END
            ELSE BEGIN
                 BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'AGP', PtInputOutPut );

                 BAIXAS_PAGAR.SQL.Add (' And ( AGRUPADOR = :AGP OR CENTRO_CUSTO = :AGP ) ');

                 BAIXAS_PAGAR.ParamByName ('AGP').asInteger := CmbAgrupador.LookupKeyValue ;
            END;
       END;

       IF TRIM( edNDocto.TEXT) <> ''
       THEN BEGIN
            IF I = 0
            THEN BEGIN
                 BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'DOC', PtInputOutPut );

                 BAIXAS_PAGAR.SQL.Add (' Where ( DOCTO = :DOC )  ');

                 BAIXAS_PAGAR.ParamByName ('DOC').asString := edNDocto.TEXT ;
            END
            ELSE BEGIN
                 BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'DOC', PtInputOutPut );

                 BAIXAS_PAGAR.SQL.Add (' And ( DOCTO = :DOC )  ');

                 BAIXAS_PAGAR.ParamByName ('DOC').asString := edNDocto.TEXT ;
            END;
       END;

       BAIXAS_PAGAR.ParamByName ( 'DINI' ).AsDate := edDtInicial.Date ;
       BAIXAS_PAGAR.ParamByName ( 'DFIM' ).AsDate := edDtFinal.Date ;

       BAIXAS_PAGAR.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, DT_BAIXA ' );

       BAIXAS_PAGAR.Prepare ;
       BAIXAS_PAGAR.Open ;

       IF ( CkEntradas.Checked )
       THEN BEGIN
            //SELECIONA O CONTAS A PAGAR QUE AINDA NAO VENCEU
            ENTRADAS_PERIODO.Close ;

            ENTRADAS_PERIODO.SQL.CLEAR ;
            ENTRADAS_PERIODO.Params.CLEAR ;

            ENTRADAS_PERIODO.Params.CreateParam ( FtString,  'CNPJ' , PtInput );
            ENTRADAS_PERIODO.Params.CreateParam ( FtDate,    'DINI' , PtInput );
            ENTRADAS_PERIODO.Params.CreateParam ( FtDate,    'DFIM' , PtInput );

            ENTRADAS_PERIODO.SQL.ADD ( ' SELECT * FROM ENTRADAS_PERIODO ( :CNPJ, :DINI, :DFIM ) ' );

            IF TRIM(cmbFORNECEDOR.TEXT) <> ''
            THEN BEGIN
                 ENTRADAS_PERIODO.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

                 ENTRADAS_PERIODO.SQL.Add (' Where PESSOA_FJ = :INI ');

                 ENTRADAS_PERIODO.ParamByName ('INI').asInteger := cmbFORNECEDOR.LookupKeyValue ;
            END;


            ENTRADAS_PERIODO.ParamByName ( 'DINI' ).AsDate := edDtInicial.Date ;
            ENTRADAS_PERIODO.ParamByName ( 'DFIM' ).AsDate := edDtFinal.Date ;

            ENTRADAS_PERIODO.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, DOCUMENTO ' );

            ENTRADAS_PERIODO.Prepare ;
            ENTRADAS_PERIODO.Open ;
       END;

       If (( BAIXAS_PAGAR.RecordCount = 0 ) and ( ENTRADAS_PERIODO.RecordCount = 0 ))
       Then Begin
            lblStatus.Visible := False ;

            ShowMessage('Não há registros para o período, verifique !');
            //
            BAIXAS_PAGAR.Close;
               //
            edDtInicial.SetFocus;
            Exit;
       End
       Else Begin
            BAIXAS_PAGAR.FetchAll ;

            lblStatus.Visible := False ;

            Anda.Max :=  BAIXAS_PAGAR.RecordCount;

            Anda.Position := 0;

            Anda.Visible  := TRUE ;
       End;

  END;

  IF CKTOTAIS.Checked
  THEN BEGIN
       IMPRIMEPAGARTOTAIS ;
  END
  ELSE BEGIN
       IMPRIMEPAGAR ;
  END;

end;

procedure TFRelPagasAlfabetico.IMPRIMEPAGAR;
VAR
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     PRINT.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL         := 0;//TOTAL DO CLIENTE
          TOTALGERAL    := 0;//TOTAL DAS CONTAS
          JUROSGERAL    := 0;//VALOR DOS JUROS
          JUROS         := 0;//VALOR DOS JUROS POR CLIENTE
          DESCONTOS     := 0;//DESCONTO POR CLIENTE
          DESCONTOGERAL := 0;//DESCONTO GERAL

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT BAIXAS_PAGAR.Eof DO
          BEGIN
               INCLIN;

               IF IMP = 'N'
               THEN BEGIN
                    PRINT.impf(LINHA,01,INTTOSTR(BAIXAS_PAGARPESSOA_FJ.Value) + '-'+ BAIXAS_PAGARNOME.Value , [comp17]);

                    IF LENGTH(BAIXAS_PAGARCPF_CGC.Value) = 14
                    THEN BEGIN
                         PRINT.impf(LINHA,50, MASCARACPF(BAIXAS_PAGARCPF_CGC.Value) , [comp17]);
                    END
                    ELSE BEGIN
                         PRINT.impf(LINHA,50, MASCARACNPJ(BAIXAS_PAGARCPF_CGC.Value) , [comp17]);
                    END;

                    PRINT.impf(LINHA,65, VerPagarFONE.VALUE , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_PAGARPESSOA_FJ.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    INCLIN ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A PAGAR

               //lancamento
               PRINT.impf(linha,01, DATETOSTR(BAIXAS_PAGARDT_LANCTO.Value ),[comp17]);

               //Documento
               PRINT.impf(linha,08, copy(BAIXAS_PAGARDOCTO.Value,1,15) ,[comp17]);

               //VENCIMENTO
               PRINT.impf(linha, 18, DATETOSTR(BAIXAS_PAGARDT_VENCTO.Value ) ,[comp17]);

               //PAGAMENTO
               PRINT.impf(linha, 25, DATETOSTR(BAIXAS_PAGARDT_BAIXA.Value ) ,[comp17]);

               //PARCELA
               PRINT.impf(linha, 32, BAIXAS_PAGARPARCELA.Value,[comp17]);

               IF ckhistorico.Checked
               THEN BEGIN
                    //HISTORICO
                    PRINT.impf(linha, 35, COPY(BAIXAS_PAGARHISTORICO.Value,1,36),[comp17]);
               END
               ELSE BEGIN
                    //HISTORICO
                    PRINT.impf(linha, 35, COPY(BAIXAS_PAGARHISTORICO_BX.Value,1,36),[comp17]);
               END;

               //CENTRO CUSTO
               PRINT.impf(linha, 57, COPY(BAIXAS_PAGARNOME_CENTRO.Value,1,15),[comp17]);

               //JUROS - DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PAGARJUROS.VALUE - Baixas_PAGARDESCONTOS.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(linha, 67, STR ,[comp17]);

               DESCONTOS := DESCONTOS + BAIXAS_PAGARDESCONTOS.Value ;

               //JUROS COBRADOS
               JUROS := JUROS + Baixas_PAGARJUROS.VALUE ;

               //VALOR DA BAIXA
               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_PAGARVLR_BAIXA.Value);
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(linha, 74, STR ,[comp17]);

               TOTAL         := TOTAL         + BAIXAS_PAGARVLR_BAIXA.Value  ;
               TOTALGERAL    := TOTALGERAL    + BAIXAS_PAGARVLR_BAIXA.Value  ;
               JUROSGERAL    := JUROSGERAL    + Baixas_PAGARJUROS.VALUE      ;
               DESCONTOGERAL := DESCONTOGERAL + BAIXAS_PAGARDESCONTOS.Value  ;

               BAIXAS_PAGAR.NEXT ;

               IF (( ULTCOD <> BAIXAS_PAGARPESSOA_FJ.VALUE )AND(NOT BAIXAS_PAGAR.EOF))
               THEN BEGIN
                    INCLIN;

                    PRINT.impf(linha,32, 'TOTAL FORNECEDOR' ,[comp17]);

                    PRINT.impf(linha,67, '----------' ,[comp17]);
                    PRINT.impf(linha,74, '----------' ,[comp17]);

                    INCLIN;

                    //JUROS - DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS - DESCONTOS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha, 67, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,74, STR ,[comp17]);

                    INCLIN;

                    PRINT.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_PAGAR.EOF)
                    THEN BEGIN
                         INCLIN;

                         PRINT.impf(linha,32, 'TOTAL FORNECEDOR' ,[comp17]);
                         PRINT.impf(linha,67, '----------' ,[comp17]);
                         PRINT.impf(linha,74, '----------' ,[comp17]);

                         INCLIN;

                         //JUROS - DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS - DESCONTOS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 67, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha,74, STR ,[comp17]);

                         INCLIN;

                         PRINT.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          INCLIN;

          PRINT.impf(linha,32, 'TOTAL GERAL' ,[comp17]);

          PRINT.impf(linha,67, '----------' ,[comp17]);
          PRINT.impf(linha,74, '----------' ,[comp17]);

          INCLIN;


          //DESCONTOS / JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL - DESCONTOGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 67, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 74, STR ,[comp17]);

          //SE IMPRIME AS ENTRADAS A VISTA
          IF ( CKENTRADAS.Checked )
          THEN BEGIN
               IMPRIMEENTRADAS ;
          END;

          PRINT.FECHAR;
     END;
end;

procedure TFRelPagasAlfabetico.IMPRIMEENTRADAS;
Var
   HIST: STRING;
   ULTCOD: Integer;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          INCLIN ;

          PRINT.impf(LINHA,01, 'ENTRADAS NO ESTOQUE A VISTA', [comp17]);

          INCLIN ;
          INCLIN ;

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT ENTRADAS_PERIODO.Eof DO
          BEGIN
               INCLIN;

               IF IMP = 'N'
               THEN BEGIN
                    PRINT.impf(LINHA,01,INTTOSTR(ENTRADAS_PERIODOPESSOA_FJ.Value) + '-'+ ENTRADAS_PERIODONOME.Value , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := ENTRADAS_PERIODOPESSOA_FJ.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    INCLIN ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A PAGAR

               //lancamento
               PRINT.impf(linha,01, DATETOSTR(ENTRADAS_PERIODODATA_REF.Value ),[comp17]);

               //Documento
               PRINT.impf(linha,08, copy(ENTRADAS_PERIODODOCUMENTO.Value,1,15) ,[comp17]);

               //VENCIMENTO
               PRINT.impf(linha, 18, DATETOSTR(ENTRADAS_PERIODODATA_REF.Value ) ,[comp17]);

               //PAGAMENTO
               PRINT.impf(linha, 25, DATETOSTR(ENTRADAS_PERIODODATA_REF.Value ) ,[comp17]);

               //PARCELA
               PRINT.impf(linha, 32, 'UNI',[comp17]);

               //HISTORICO
               PRINT.impf(linha, 35, COPY(ENTRADAS_PERIODOHISTORICO.Value,1,36),[comp17]);

               //CENTRO CUSTO
               PRINT.impf(linha, 57, COPY(ENTRADAS_PERIODONOME_CENTRO.Value,1,15),[comp17]);

               //JUROS - DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(linha, 67, STR ,[comp17]);

               //VALOR DA BAIXA
               STR :=  FORMATFLOAT ('###,###,##0.00', ENTRADAS_PERIODOVALOR.Value);
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(linha, 74, STR ,[comp17]);

               TOTAL         := TOTAL         + ENTRADAS_PERIODOVALOR.Value  ;
               TOTALGERAL    := TOTALGERAL    + ENTRADAS_PERIODOVALOR.Value  ;

               ENTRADAS_PERIODO.NEXT ;

               IF (( ULTCOD <> ENTRADAS_PERIODOPESSOA_FJ.VALUE )AND(NOT ENTRADAS_PERIODO.EOF))
               THEN BEGIN
                    INCLIN;

                    PRINT.impf(linha,32, 'TOTAL FORNECEDOR' ,[comp17]);

                    PRINT.impf(linha,67, '----------' ,[comp17]);
                    PRINT.impf(linha,74, '----------' ,[comp17]);

                    INCLIN;

                    //JUROS - DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS - DESCONTOS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha, 67, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,74, STR ,[comp17]);

                    INCLIN;

                    PRINT.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (ENTRADAS_PERIODO.EOF)
                    THEN BEGIN
                         INCLIN;

                         PRINT.impf(linha,32, 'TOTAL FORNECEDOR' ,[comp17]);
                         PRINT.impf(linha,67, '----------' ,[comp17]);
                         PRINT.impf(linha,74, '----------' ,[comp17]);

                         INCLIN;

                         //JUROS - DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS - DESCONTOS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 67, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha,74, STR ,[comp17]);

                         INCLIN;

                         PRINT.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;


          INCLIN;

          PRINT.impf(linha,32, 'TOTAL GERAL' ,[comp17]);

          PRINT.impf(linha,67, '----------' ,[comp17]);
          PRINT.impf(linha,74, '----------' ,[comp17]);

          INCLIN;


          //DESCONTOS / JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL - DESCONTOGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 67, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 74, STR ,[comp17]);
     END;
END;

procedure TFRelPagasAlfabetico.IMPRIMEPAGARTOTAIS;
VAR
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     LINHA      := 5;

     PRINT.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL         := 0;//TOTAL DO CLIENTE
          TOTALGERAL    := 0;//TOTAL DAS CONTAS
          JUROSGERAL    := 0;//VALOR DOS JUROS
          JUROS         := 0;//VALOR DOS JUROS POR CLIENTE
          DESCONTOS     := 0;//DESCONTO POR CLIENTE
          DESCONTOGERAL := 0;//DESCONTO GERAL

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT BAIXAS_PAGAR.Eof DO
          BEGIN
               IF IMP = 'N'
               THEN BEGIN
                    PRINT.impf(LINHA,01,INTTOSTR(BAIXAS_PAGARPESSOA_FJ.Value) + '-'+ BAIXAS_PAGARNOME.Value , [comp17]);

                    IF LENGTH(BAIXAS_PAGARCPF_CGC.Value) = 14
                    THEN BEGIN
                         PRINT.impf(LINHA,50, MASCARACPF(BAIXAS_PAGARCPF_CGC.Value) , [comp17]);
                    END
                    ELSE BEGIN
                         PRINT.impf(LINHA,50, MASCARACNPJ(BAIXAS_PAGARCPF_CGC.Value) , [comp17]);
                    END;

                    PRINT.impf(LINHA,65, VerPagarFONE.VALUE , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_PAGARPESSOA_FJ.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    INCLIN ;
               END;

               TOTAL         := TOTAL         + BAIXAS_PAGARVLR_BAIXA.Value  ;
               TOTALGERAL    := TOTALGERAL    + BAIXAS_PAGARVLR_BAIXA.Value  ;
               JUROSGERAL    := JUROSGERAL    + Baixas_PAGARJUROS.VALUE      ;
               DESCONTOGERAL := DESCONTOGERAL + BAIXAS_PAGARDESCONTOS.Value  ;

               BAIXAS_PAGAR.NEXT ;

               IF (( ULTCOD <> BAIXAS_PAGARPESSOA_FJ.VALUE )AND(NOT BAIXAS_PAGAR.EOF))
               THEN BEGIN
                    PRINT.impf(linha,67, '----------' ,[comp17]);
                    PRINT.impf(linha,74, '----------' ,[comp17]);

                    INCLIN;

                    //JUROS - DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS - DESCONTOS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha, 67, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,74, STR ,[comp17]);

                    INCLIN;

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_PAGAR.EOF)
                    THEN BEGIN
                         PRINT.impf(linha,67, '----------' ,[comp17]);
                         PRINT.impf(linha,74, '----------' ,[comp17]);

                         INCLIN;

                         //JUROS - DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS - DESCONTOS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 67, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha,74, STR ,[comp17]);

                         INCLIN;

                         IMP := 'N' ;
                    END;
               END;
          END;

          INCLIN;

          PRINT.impf(linha,32, 'TOTAL GERAL' ,[comp17]);

          PRINT.impf(linha,67, '----------' ,[comp17]);
          PRINT.impf(linha,74, '----------' ,[comp17]);

          INCLIN;


          //DESCONTOS / JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL - DESCONTOGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 67, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 74, STR ,[comp17]);

          //SE IMPRIME AS ENTRADAS A VISTA
          IF ( CKENTRADAS.Checked )
          THEN BEGIN
               IMPRIMEENTRADAS ;
          END;

          PRINT.FECHAR;
     END;
end;

procedure TFRelPagasAlfabetico.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelPagasAlfabetico.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelPagasAlfabetico.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

end.

