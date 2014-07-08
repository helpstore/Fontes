unit BxReceberVendedorAlf_FRel;

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
  TFRelRecebidasVendedor = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    DsVendedor: TDataSource;
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
  FRelRecebidasVendedor: TFRelRecebidasVendedor;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelRecebidasVendedor.IncLin;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.NovaPagina ;
end;

procedure TFRelRecebidasVendedor.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelRecebidasVendedor.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelRecebidasVendedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DsVendedor.DataSet.Close;
  Action      := caFree;
  FRelRecebidasVendedor := Nil;
end;

procedure TFRelRecebidasVendedor.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelRecebidasVendedor.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelRecebidasVendedor.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     PRINT.impf(01,01,'===============================================================================',[Normal]);
     PRINT.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     PRINT.impf(02,55,'DATA: '+ DATETIMETOSTR(NOW),[Normal]);
     PRINT.impf(03,01,'CONTAS RECEBIDAS POR VENDEDOR ' ,[Normal]);
     PRINT.impf(03,32,'PERIODO ' + edDtInicial.TEXT + ' A ' + edDtFinal.TEXT  ,[Normal]);
     PRINT.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     PRINT.impf(04,01,'===============================================================================',[Normal]);

     PRINT.impf(05,01,'LANC',[COMP17]);
     PRINT.impf(05,08,'DOCUMENTO',[COMP17]);
     PRINT.impf(05,16,'VENCTO',[COMP17]);
     PRINT.impf(05,23,'BAIXA',[COMP17]);
     PRINT.impf(05,30,'NOME',[COMP17]);
     PRINT.impf(05,57,'   DESCONTO',[COMP17]);
     PRINT.impf(05,65,'      JUROS',[COMP17]);
     PRINT.impf(05,73,'      TOTAL',[COMP17]);

     inc(pagina);
     linha  := 6;
end;

procedure TFRelRecebidasVendedor.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    DsVendedor.DataSet.Open;
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

procedure TFRelRecebidasVendedor.ActPreviewExecute(Sender: TObject);
Var
   Cont: Integer;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;

  With DmFinanceiro do
  begin
       BAIXAS_RECEBER_VENDEDOR.Close ;
       BAIXAS_RECEBER_VENDEDOR.SQL.CLEAR ;
       BAIXAS_RECEBER_VENDEDOR.Params.CLEAR ;

       BAIXAS_RECEBER_VENDEDOR.Params.CreateParam ( FtDate, 'DINI', PtInput );
       BAIXAS_RECEBER_VENDEDOR.Params.CreateParam ( FtDate, 'DFIM', PtInput );

       BAIXAS_RECEBER_VENDEDOR.SQL.ADD ( ' SELECT * FROM VER_BAIXA_RECEBER_VENDEDOR ( :CNPJ, :DINI, :DFIM ) ' );

       Cont := 0;

       IF TRIM(cmbCliente.TEXT) <> ''
       THEN BEGIN
            CONT := 1;

            BAIXAS_RECEBER_VENDEDOR.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

            BAIXAS_RECEBER_VENDEDOR.SQL.Add (' Where PESSOA_FJ = :INI ');

            BAIXAS_RECEBER_VENDEDOR.ParamByName ('INI').asInteger := cmbCliente.LookupKeyValue ;
       END;

       BAIXAS_RECEBER_VENDEDOR.ParamByName ( 'DINI' ).AsDate := edDtInicial.Date ;
       BAIXAS_RECEBER_VENDEDOR.ParamByName ( 'DFIM' ).AsDate := edDtFinal.Date ;

       BAIXAS_RECEBER_VENDEDOR.SQL.ADD ( ' ORDER BY NOME_VENDEDOR, VENDEDOR, NOME, PESSOA_FJ, DT_BAIXA ' );

       BAIXAS_RECEBER_VENDEDOR.Prepare ;
       BAIXAS_RECEBER_VENDEDOR.Open ;

       If BAIXAS_RECEBER_VENDEDOR.RecordCount = 0
       Then Begin
            lblStatus.Visible := False ;
            ShowMessage('Não há registros para o período, verifique !');
            //
            BAIXAS_RECEBER_VENDEDOR.Close;
               //
            edDtInicial.SetFocus;
            Exit;
       End
       Else Begin
            lblStatus.Visible := False ;

            BAIXAS_RECEBER_VENDEDOR.FetchAll ;

            Anda.Max :=  BAIXAS_RECEBER_VENDEDOR.RecordCount;

            Anda.Position := 0;

            Anda.Visible  := TRUE ;
       End;
  end;

  IMPRIMERECEBER ;

end;

procedure TFRelRecebidasVendedor.IMPRIMERECEBER;
          Function Comissao_Vista ( Codigo: Integer ):Real ;
          begin
               WITH DMFINANCEIRO DO
               BEGIN
               Geral.Close ;
               Geral.Sql.Clear ;
               Geral.Params.Clear ;

               Geral.Params.CreateParam ( FtString , 'E', PtInput );
               Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

               Geral.Sql.Add (' Select COM_VISTA From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

               Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
               Geral.ParamByName ('C').AsInteger := Codigo       ;

               Geral.Prepare ;
               Geral.Open ;

               IF Geral.FIELDS[0].ISNULL
               THEN
                   RESULT := 0
               ELSE
                   RESULT := Geral.FIELDS[0].VALUE;
               END;
          end;

          Function Comissao_Prazo ( Codigo: Integer ):Real ;
          begin
               WITH DMFINANCEIRO DO
               BEGIN
               Geral.Close ;
               Geral.Sql.Clear ;
               Geral.Params.Clear ;

               Geral.Params.CreateParam ( FtString , 'E', PtInput );
               Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

               Geral.Sql.Add (' Select COM_PRAZO From Fat_Vendedor Where Codigo = :C and CNPJ = :E ');

               Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
               Geral.ParamByName ('C').AsInteger := Codigo       ;

               Geral.Prepare ;
               Geral.Open ;

               IF Geral.FIELDS[0].ISNULL
               THEN
                   RESULT := 0
               ELSE
                   RESULT := Geral.FIELDS[0].VALUE;
               END;
          end;
VAR
   IMP, STR         : STRING;
   DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL,
   COM_PRAZO, COM_VISTA: Real ;
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

          WHILE NOT BAIXAS_RECEBER_VENDEDOR.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    PRINT.impf(LINHA,01,BAIXAS_RECEBER_VENDEDORNOME_VENDEDOR.Value  + '-' + INTTOSTR(BAIXAS_RECEBER_VENDEDORVENDEDOR.Value) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_RECEBER_VENDEDORVENDEDOR.VALUE ;

                    TOTAL     := 0;//TOTAL DO VENDEDOR
                    JUROS     := 0;
                    DESCONTOS := 0;

                    IncLin ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //lancamento
               PRINT.impf(linha,01,DATETOSTR(BAIXAS_RECEBER_VENDEDORDT_LANCTO.Value ),[comp17]);

               //DOCUMENTO
               PRINT.impf(linha,08, BAIXAS_RECEBER_VENDEDORDOCTO.Value ,[comp17]);

               //VENCIMENTO
               PRINT.impf(linha,16, DATETOSTR(BAIXAS_RECEBER_VENDEDORDT_VENCTO.Value ) ,[comp17]);

               //PAGAMENTO
               PRINT.impf(linha,23, DATETOSTR(BAIXAS_RECEBER_VENDEDORDT_BAIXA.Value ) ,[comp17]);

               //NOME
               PRINT.impf(linha, 30, COPY(BAIXAS_RECEBER_VENDEDORNOME.Value,1,30) ,[comp17]);

               //HISTORICO
               PRINT.impf(linha, 50, COPY(BAIXAS_RECEBER_VENDEDORHISTORICO_BX.Value,1,23) ,[comp17]);

               //JUROS
               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBER_VENDEDORJUROS.VALUE - BAIXAS_RECEBER_VENDEDORDESCONTOS.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(linha,65, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBER_VENDEDORVLR_BAIXA.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               PRINT.impf(linha,73, STR ,[comp17]);

               DESCONTOS := DESCONTOS + ARREDONDA(BAIXAS_RECEBER_VENDEDORDESCONTOS.Value,2) ;
               JUROS := JUROS + ARREDONDA(BAIXAS_RECEBER_VENDEDORJUROS.VALUE,2) ;
               TOTAL         := TOTAL         + ARREDONDA(BAIXAS_RECEBER_VENDEDORVLR_BAIXA.Value ,2) ;
               TOTALGERAL    := TOTALGERAL    + ARREDONDA(BAIXAS_RECEBER_VENDEDORVLR_BAIXA.Value ,2) ;
               JUROSGERAL    := JUROSGERAL    + ARREDONDA( BAIXAS_RECEBER_VENDEDORJUROS.VALUE    ,2) ;
               DESCONTOGERAL := DESCONTOGERAL + ARREDONDA(BAIXAS_RECEBER_VENDEDORDESCONTOS.Value ,2) ;

               BAIXAS_RECEBER_VENDEDOR.NEXT ;

               IF (( ULTCOD <> BAIXAS_RECEBER_VENDEDORVENDEDOR.VALUE )AND(NOT BAIXAS_RECEBER_VENDEDOR.EOF))
               THEN BEGIN
                    COM_PRAZO := COMISSAO_PRAZO ( ULTCOD );
//                    COM_VISTA := COMISSAO_VISTA ( ULTCOD );

                    IncLin;

                    PRINT.impf(linha,50, 'TOTAL' ,[comp17]);

                    PRINT.impf(linha,57, '-------------' ,[comp17]);
                    PRINT.impf(linha,65, '-------------' ,[comp17]);
                    PRINT.impf(linha,73, '-------------' ,[comp17]);

                    IncLin;

                    //DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(DESCONTOS,2) );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha, 57, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(JUROS,2) );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha, 65, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(TOTAL,2) );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,73, STR ,[comp17]);

                    IncLin;

                    PRINT.impf(linha,50, 'COMISSAO' ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00 %', COM_PRAZO );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,65, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(TOTAL,2) * COM_PRAZO / 100 );

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
                    IF (BAIXAS_RECEBER_VENDEDOR.EOF)
                    THEN BEGIN
                         IncLin;

                         PRINT.impf(linha,50, 'TOTAL' ,[comp17]);

                         PRINT.impf(linha,57, '-------------' ,[comp17]);
                         PRINT.impf(linha,65, '-------------' ,[comp17]);
                         PRINT.impf(linha,73, '-------------' ,[comp17]);

                         IncLin;

                         //DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(DESCONTOS,2) );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 57, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(JUROS,2) );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha, 65, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(TOTAL,2) );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha,73, STR ,[comp17]);

                         IncLin;

                         PRINT.impf(linha,50, 'COMISSAO' ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00 %', COM_PRAZO );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(linha,65, STR ,[comp17]);

                         STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(TOTAL,2) * COM_PRAZO / 100 );

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

          PRINT.impf(linha,34, 'TOTAL GERAL' ,[comp17]);

          PRINT.impf(linha,57, '-------------' ,[comp17]);
          PRINT.impf(linha,65, '-------------' ,[comp17]);
          PRINT.impf(linha,73, '-------------' ,[comp17]);

          IncLin;

          //DESCONTOS
          STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(DESCONTOGERAL,2) );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 57, STR ,[comp17]);

          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(JUROSGERAL,2) );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 65, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(TOTALGERAL,2) );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 73, STR ,[comp17]);

          PRINT.FECHAR;
     END;
end;

procedure TFRelRecebidasVendedor.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelRecebidasVendedor.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelRecebidasVendedor.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

end.

