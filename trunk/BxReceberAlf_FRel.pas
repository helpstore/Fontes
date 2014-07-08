unit BxReceberAlf_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls,  
    cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, cxGroupBox, cxRadioGroup;

type
  TFRelRecebidasAlfabetico = class(TForm)
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
    CKTIPO: TdxCheckEdit;
    rdRecebimento: TcxRadioGroup;
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
  FRelRecebidasAlfabetico: TFRelRecebidasAlfabetico;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelRecebidasAlfabetico.IncLin;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.NovaPagina ;
end;

procedure TFRelRecebidasAlfabetico.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelRecebidasAlfabetico.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelRecebidasAlfabetico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsClientes.DataSet.Close;
  //
  //
  Action      := caFree;
  FRelRecebidasAlfabetico := Nil;
end;

procedure TFRelRecebidasAlfabetico.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelRecebidasAlfabetico.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelRecebidasAlfabetico.PrintNewPage(Sender: TObject; Pagina: Integer);
var
  LocalReceb : string;
begin
     // Cabeçalho...
     case rdRecebimento.ItemIndex of
      0 : LocalReceb := 'AMBOS';
      1 : LocalReceb := 'BANCO';
      2 : LocalReceb := 'CARTEIRA';
     end;

     PRINT.impf(01,01,'===============================================================================',[Normal]);
     PRINT.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     PRINT.impf(02,55,'DATA: '+ DATETIMETOSTR(NOW),[Normal]);
     PRINT.impf(03,01,'CONTAS RECEBIDAS ALFABETICO ' ,[Normal]);
     PRINT.impf(03,30,'PERIODO ' + edDtInicial.TEXT + ' A ' + edDtFinal.TEXT  ,[NORMAL]);
     PRINT.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     PRINT.impf(04,01,'LOCAL RECEBIMENTO :'+LocalReceb ,[Normal]);
     PRINT.impf(05,01,'===============================================================================',[Normal]);

     PRINT.impf(06,01,'LANC',[COMP17]);
     PRINT.impf(06,08,'DOCUMENTO',[COMP17]);
     PRINT.impf(06,18,'VENCTO',[COMP17]);
     PRINT.impf(06,26,'BAIXA',[COMP17]);
     PRINT.impf(06,57,'   DESCONTO',[COMP17]);
     PRINT.impf(06,65,'      JUROS',[COMP17]);
     PRINT.impf(06,73,'      TOTAL',[COMP17]);

     inc(pagina);
     linha  := 7;
end;

procedure TFRelRecebidasAlfabetico.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  rdRecebimento.itemindex := 0;
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

procedure TFRelRecebidasAlfabetico.ActPreviewExecute(Sender: TObject);
Var
   Cont: Integer;
   sWhere : String;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;

  With DmFinanceiro do
  begin
       BAIXAS_RECEBER.Close ;
       BAIXAS_RECEBER.SQL.text := ' SELECT * FROM VER_BAIXA_RECEBER_BAIXA( :CNPJ, :DINI, :DFIM ) ft '+
                                  ' left join ctb_planoconta pln on (ft.conta = pln.conta)' ;

       Cont := 0;
       swhere := '';

       IF TRIM(cmbCliente.TEXT) <> '' THEN
       BEGIN
          CONT := 1;
          sWhere := ' Where ft.PESSOA_FJ = '+intToStr(cmbCliente.LookupKeyValue);
       END;

       case rdRecebimento.ItemIndex of
         1: begin
              if sWhere <> '' then
                sWhere := sWhere + ' and  '
              else
                sWhere := ' Where ';

              sWhere := sWhere + ' pln.banco is not null';
            end;

         2: begin
              if sWhere <> '' then
                sWhere := sWhere + ' and  '
              else
                sWhere := ' Where ';

              sWhere := sWhere + ' pln.banco is null'
            end;
       end;

       BAIXAS_RECEBER.SQL.ADD(swhere);
       BAIXAS_RECEBER.SQL.ADD( ' ORDER BY ft.NOME, ft.PESSOA_FJ, ft.DT_BAIXA ' );

       BAIXAS_RECEBER.ParamByName ( 'DINI' ).AsDate := edDtInicial.Date ;
       BAIXAS_RECEBER.ParamByName ( 'DFIM' ).AsDate := edDtFinal.Date ;

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

procedure TFRelRecebidasAlfabetico.IMPRIMERECEBER;
VAR
   IMP, STR         : STRING;
   DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
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

          WHILE NOT BAIXAS_RECEBER.Eof DO
          BEGIN
               IF ( NOT CKTIPO.Checked ) OR ( IMP = 'N' )
               THEN BEGIN
                    IncLin;
               END;

               IF IMP = 'N'
               THEN BEGIN
                    PRINT.impf(LINHA,01,BAIXAS_RECEBERNOME.Value  + '-' + INTTOSTR(BAIXAS_RECEBERPESSOA_FJ.Value) , [comp17]);

                    IF length(BAIXAS_RECEBERCPF_CGC.Value) <= 11
                    THEN
                        PRINT.impf(LINHA,30,MASCARACPF(BAIXAS_RECEBERCPF_CGC.Value) , [comp17])
                    ELSE
                        PRINT.impf(LINHA,30, MASCARACNPJ(BAIXAS_RECEBERCPF_CGC.Value) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_RECEBERPESSOA_FJ.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    IF ( NOT CKTIPO.Checked )
                    THEN BEGIN
                         IncLin ;
                    END
               END;

               IF ( NOT CKTIPO.Checked )
               THEN BEGIN
                    //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
                    //lancamento
                    PRINT.impf(linha,01,DATETOSTR(BAIXAS_RECEBERDT_LANCTO.Value ),[comp17]);

                    //Documento
                    PRINT.impf(linha,08, BAIXAS_RECEBERDOCTO.Value ,[comp17]);

                    //VENCIMENTO
                    PRINT.impf(linha,18, DATETOSTR(BAIXAS_RECEBERDT_VENCTO.Value ) ,[comp17]);

                    //PAGAMENTO
                    PRINT.impf(linha,26, DATETOSTR(BAIXAS_RECEBERDT_BAIXA.Value ) ,[comp17]);

                    //HISTORICO
                    PRINT.impf(linha,34, COPY(Baixas_ReceberHISTORICO_BX.Value,1,20) ,[comp17]);

                    //PARCELA
                    PRINT.impf(linha,53, COPY(Baixas_ReceberPARCELA.Value,1,4) ,[comp17]);

                    //DESCONTO
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberDESCONTOS.Value );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(linha,57, STR ,[comp17]);

                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberJUROS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    //JUROS
                    PRINT.impf(linha,65, STR ,[comp17]);

                    STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBERVLR_BAIXA.Value);
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    //VALOR
                    PRINT.impf(linha,73, STR ,[comp17]);
               END;

               DESCONTOS := DESCONTOS + ARREDONDA(BAIXAS_RECEBERDESCONTOS.Value,2) ;
               JUROS := JUROS + ARREDONDA(Baixas_ReceberJUROS.VALUE,2) ;
               TOTAL         := TOTAL         + ARREDONDA(BAIXAS_RECEBERVLR_BAIXA.Value ,2) ;
               TOTALGERAL    := TOTALGERAL    + ARREDONDA(BAIXAS_RECEBERVLR_BAIXA.Value ,2) ;
               JUROSGERAL    := JUROSGERAL    + ARREDONDA( Baixas_ReceberJUROS.VALUE    ,2) ;
               DESCONTOGERAL := DESCONTOGERAL + ARREDONDA(BAIXAS_RECEBERDESCONTOS.Value ,2) ;

               BAIXAS_RECEBER.NEXT ;

               IF (( ULTCOD <> BAIXAS_RECEBERPESSOA_FJ.VALUE )AND(NOT BAIXAS_RECEBER.EOF))
               THEN BEGIN
                    IF ( NOT CKTIPO.Checked )
                    THEN BEGIN
                         IncLin;

                         PRINT.impf(linha,32, ' TOTAL CLIENTE' ,[comp17]);

                         PRINT.impf(linha,57, '-------------' ,[comp17]);
                         PRINT.impf(linha,65, '-------------' ,[comp17]);
                         PRINT.impf(linha,73, '-------------' ,[comp17]);

                         IncLin;
                    END;

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

                    PRINT.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_RECEBER.EOF)
                    THEN BEGIN
                         IF ( NOT CKTIPO.Checked )
                         THEN BEGIN
                              IncLin;

                              PRINT.impf(linha,32, ' TOTAL CLIENTE' ,[comp17]);

                              PRINT.impf(linha,57, '-------------' ,[comp17]);
                              PRINT.impf(linha,65, '-------------' ,[comp17]);
                              PRINT.impf(linha,73, '-------------' ,[comp17]);

                              IncLin;
                         END;

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

procedure TFRelRecebidasAlfabetico.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelRecebidasAlfabetico.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelRecebidasAlfabetico.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

end.

