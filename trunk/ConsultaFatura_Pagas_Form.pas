 unit ConsultaFatura_Pagas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
  Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel, Menus, cxButtons;

type
  TFrmConsultaFaturasPagas = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
    BtnFechar: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    Bevel4: TBevel;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    BtnOk: TcxButton;
    CkImp: TCheckBox;
    LblTitulo: TcxLabel;
    Label3: TcxLabel;
    DATAINICIAL: TdxDateEdit;
    Label1: TcxLabel;
    DATAFINAL: TdxDateEdit;
    Label2: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    IMPRESSORA: TRDprint;
    LBLCLIENTE: TcxLabel;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDJUROS: TdxDBGridColumn;
    GRIDDESCONTOS: TdxDBGridColumn;
    CkResumido: TCheckBox;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure DataInicialExit(Sender: TObject);
    procedure DataFinalExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure EdClienteInicialEnter(Sender: TObject);
    procedure CkResumidoExit(Sender: TObject);
  private
    { Private declarations }
    Procedure Imprime ;
    procedure IMPRIMERESUMIDO;

    procedure Seleciona;

    procedure IncLin;

  public
    Opcao: String ;
    { Public declarations }
  end;

var
  FrmConsultaFaturasPagas: TFrmConsultaFaturasPagas;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;

implementation

uses
    Application_DM,
    Funcoes,
    Main, Listagens_DM,
    Localizar_Cliente,
    Financeiro_Dm, Empresas_DM;

{$R *.DFM}

procedure TFrmConsultaFaturasPagas.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmConsultaFaturasPagas.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaFaturasPagas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmFinanceiro.SelPessoasFJ.Close ;

     Action := caFree;
     FrmConsultaFaturasPagas := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmConsultaFaturasPagas.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;

  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TFrmConsultaFaturasPagas.DataInicialExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo( Sender );
     TRY
        IF ( DATAINICIAL.TEXT <> '  /  /    ' ) AND ( DATAINICIAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAINICIAL.TEXT ) ;
        END;
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAINICIAL.SETFOCUS ;
     END;
end;

procedure TFrmConsultaFaturasPagas.DataFinalExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo( Sender );
     TRY
        IF ( DATAFINAL.TEXT <> '  /  /    ' ) AND ( DATAFINAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAFINAL.TEXT ) ;
        END;
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAFINAL.SETFOCUS ;
     END;
end;

procedure TFrmConsultaFaturasPagas.BtnOkClick(Sender: TObject);
begin
     IF ((DATAINICIAL.Text = '  /  /  ' )OR(DATAINICIAL.Text = '  /  /    ' ))
     THEN BEGIN
          DATAINICIAL.Date := strtodate('01/01/1900') ;
     END;

     IF ((DATAFINAL.Text = '  /  /  ' )OR(DATAFINAL.Text = '  /  /    ' ))
     THEN BEGIN
          DATAFINAL.Date := strtodate('31/12/9999') ;
     END;

     SELECIONA ;

     IF CkImp.Checked
     THEN BEGIN
          IF CkResumido.Checked
          THEN BEGIN
               IMPRIMERESUMIDO ;
          END
          ELSE BEGIN
               IMPRIME ;
          END;
     END;

end;

procedure TFrmConsultaFaturasPagas.IMPRIME;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     Lin      := 5;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS
          JUROSGERAL := 0;//VALOR DOS JUROS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT VERFATURASBAIXADAS.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01,INTTOSTR(VERFATURASBAIXADASPESSOA_FJ.Value) + '-'+ VERFATURASBAIXADASNOME.Value , [comp17]);
                    IF LENGTH ( VERFATURASBAIXADASCPF_CGC.Value )<= 11
                    THEN
                        IMPRESSORA.impf(Lin,50, MASCARACPF( VERFATURASBAIXADASCPF_CGC.Value) , [comp17])
                    ELSE
                        IMPRESSORA.impf(Lin,50, MASCARACNPJ( VERFATURASBAIXADASCPF_CGC.Value) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := VERFATURASBAIXADASPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
               END;
               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //lancamento
               IMPRESSORA.impf(Lin,01,DATETOSTR(VERFATURASBAIXADASDATA.Value ),[comp17]);

               //Documento
               IMPRESSORA.impf(Lin,08, LeftStr(VERFATURASBAIXADASCODIGO.text, 6) ,[comp17]);

               //VENCIMENTO
               IMPRESSORA.impf(Lin,14, DATETOSTR(VERFATURASBAIXADASVENCIMENTO.Value ) ,[comp17]);

               //ATRASO
               IMPRESSORA.impf(Lin,22, FLOATTOSTR(DATE-VERFATURASBAIXADASVENCIMENTO.Value ) ,[comp17]);

               //VALOR ORIGINAL
               STR :=  FORMATFLOAT ('###,###,##0.00', VERFATURASBAIXADASVALOR_ORIGINAL.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(Lin,51, STR ,[comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', VERFATURASBAIXADASTOTAL.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(Lin,59, STR ,[comp17]);

               JUROS := VERFATURASBAIXADASJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin,67, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VERFATURASBAIXADASTOTAL.Value);
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin,75, STR ,[comp17]);

               TOTAL      := TOTAL + VERFATURASBAIXADASTOTAL.Value + JUROS;
               TOTALGERAL := TOTALGERAL + VERFATURASBAIXADASTOTAL.Value + JUROS ;
               JUROSGERAL := JUROSGERAL + JUROS ;

               VERFATURASBAIXADAS.NEXT ;

               IF (( ULTCOD <> VERFATURASBAIXADASPESSOA_FJ.VALUE )AND(NOT VERFATURASBAIXADAS.EOF))
               THEN BEGIN
                    IncLin;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,75, '----------' ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,75, STR ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END
               ELSE BEGIN
                    IF (VERFATURASBAIXADAS.EOF)
                    THEN BEGIN
                         IncLin;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(Lin,75, '----------' ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin,75, STR ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(Lin,75, '----------' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin,56, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(Lin,75, STR ,[comp17]);

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmConsultaFaturasPagas.IMPRIMERESUMIDO;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA     := 1;
     Lin      := 5;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS
          JUROSGERAL := 0;//VALOR DOS JUROS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT VERFATURASBAIXADAS.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01, COPY(INTTOSTR(VERFATURASBAIXADASPESSOA_FJ.Value) + '-'+ VERFATURASBAIXADASNOME.Value,1,30) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := VERFATURASBAIXADASPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //lancamento
               IMPRESSORA.impf(Lin, 26,DATETOSTR(VERFATURASBAIXADASDATA.Value ),[comp17]);

               //Documento
               IMPRESSORA.impf(Lin, 34, LeftStr(VERFATURASBAIXADASCODIGO.text, 6) ,[comp17]);

               //VENCIMENTO
               IMPRESSORA.impf(Lin, 40, DATETOSTR(VERFATURASBAIXADASVENCIMENTO.Value ) ,[comp17]);

               //ATRASO
               IMPRESSORA.impf(Lin, 48, FLOATTOSTR(DATE-VERFATURASBAIXADASVENCIMENTO.Value ) ,[comp17]);

               //VALOR ORIGINAL
               STR :=  FORMATFLOAT ('###,###,##0.00', VERFATURASBAIXADASVALOR_ORIGINAL.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(Lin,51, STR ,[comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', VERFATURASBAIXADASTOTAL.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(Lin,59, STR ,[comp17]);

               JUROS := VERFATURASBAIXADASJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin,67, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VERFATURASBAIXADASTOTAL.Value);
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin,75, STR ,[comp17]);

               TOTAL      := TOTAL + VERFATURASBAIXADASTOTAL.Value + JUROS;
               TOTALGERAL := TOTALGERAL + VERFATURASBAIXADASTOTAL.Value + JUROS ;
               JUROSGERAL := JUROSGERAL + JUROS ;

               VERFATURASBAIXADAS.NEXT ;

               IF (( ULTCOD <> VERFATURASBAIXADASPESSOA_FJ.VALUE )AND(NOT VERFATURASBAIXADAS.EOF))
               THEN BEGIN
                    IMP := 'N' ;
               END
               ELSE BEGIN
                    IF (VERFATURASBAIXADAS.EOF)
                    THEN BEGIN
                         IMP := 'N' ;
                    END;
               END;
          END;

          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(Lin,75, '----------' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin,56, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(Lin,75, STR ,[comp17]);

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmConsultaFaturasPagas.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

        Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
        end;

        Frm_Localizar_Cliente.free ;
        Frm_Localizar_Cliente := Nil ;
  Except
  end;
end;

procedure TFrmConsultaFaturasPagas.Seleciona ;
begin
     WITH DmFinanceiro DO
     BEGIN
          VERFATURASBAIXADAS.Close ;
          VERFATURASBAIXADAS.SQL.CLEAR ;
          VERFATURASBAIXADAS.Params.CLEAR ;

          VERFATURASBAIXADAS.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERFATURASBAIXADAS.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERFATURASBAIXADAS.SQL.ADD ( ' SELECT * FROM VER_FATURA_PERIODO_BAIXADAS ( :CNPJ, :DINI, :DFIM ) ' );

          VERFATURASBAIXADAS.ParamByName ( 'DINI' ).AsDate := DATAINICIAL.Date ;
          VERFATURASBAIXADAS.ParamByName ( 'DFIM' ).AsDate := DATAFINAL.Date ;

          IF TRIM(LBLCLIENTE.Caption) <> ''
          THEN BEGIN
               VERFATURASBAIXADAS.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

               VERFATURASBAIXADAS.SQL.Add (' Where PESSOA_FJ = :INI ');

               VERFATURASBAIXADAS.ParamByName ('INI').asInteger := strtoint(trim(EdClienteInicial.text));
          END;

          VERFATURASBAIXADAS.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, VENCIMENTO ' );

          VERFATURASBAIXADAS.Prepare ;
          VERFATURASBAIXADAS.Open ;
     END;
END;

procedure TFrmConsultaFaturasPagas.IncLin;
begin
     Lin := Lin + 1;
     If Lin > 60
     then
         Impressora.NovaPagina ;
end;

procedure TFrmConsultaFaturasPagas.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo( Sender );
     If ( trim(EdClienteInicial.Text) ) <> ''
     then begin
          if DmFinanceiro.SelPessoasFJ.locate ( 'CODIGO', trim(EdClienteInicial.Text),[] )
          then begin
               LBLCLIENTE.Caption := DmFinanceiro.SelPessoasFJNOME_RAZAO.Value ;
          end
          else begin
               MessageDlg('Cliente Não Cadastrado!',MtError,[MbOk],0);
               EdClienteInicial.SetFocus ;
          end;
     end
     ELSE BEGIN
          LBLCLIENTE.Caption := '' ;
     END;
end;

procedure TFrmConsultaFaturasPagas.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not(DmFinanceiro.SelPessoasFJ.Active) Then
        DmFinanceiro.SelPessoasFJ.Open;

     EdClienteInicial.SetFocus ;
end;

procedure TFrmConsultaFaturasPagas.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,'RELATORIO DE FATURAS PAGAS' ,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(05,01,'LANCAMENTO = ' + DATAINICIAL.Text + ' A ' + DATAFINAL.Text , [comp17]);

     IF CkResumido.Checked
     THEN BEGIN
          IMPRESSORA.impf(06,01,'CLIENTE',[Comp17]);
          IMPRESSORA.impf(06,26,'LANC',[Comp17]);
          IMPRESSORA.impf(06,34,'DOCUMENTO',[Comp17]);
          IMPRESSORA.impf(06,40,'VENCTO',[Comp17]);
          IMPRESSORA.impf(06,48,'ATRASO',[Comp17]);
          IMPRESSORA.impf(06,51,'  VLR ORIG',[Comp17]);
          IMPRESSORA.impf(06,59,'     VALOR',[Comp17]);
          IMPRESSORA.impf(06,67,'     JUROS',[Comp17]);
          IMPRESSORA.impf(06,75,'     TOTAL',[Comp17]);
     END
     ELSE BEGIN
          IMPRESSORA.impf(06,01,'LANC',[Comp17]);
          IMPRESSORA.impf(06,08,'DOCUMENTO',[Comp17]);
          IMPRESSORA.impf(06,14,'VENCTO',[Comp17]);
          IMPRESSORA.impf(06,22,'ATRASO',[Comp17]);
          IMPRESSORA.impf(06,51,'  VLR ORIG',[Comp17]);
          IMPRESSORA.impf(06,59,'     VALOR',[Comp17]);
          IMPRESSORA.impf(06,67,'     JUROS',[Comp17]);
          IMPRESSORA.impf(06,75,'     TOTAL',[Comp17]);
     END;

     inc(pagina);
     Lin  := 7;
end;

procedure TFrmConsultaFaturasPagas.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin                                                               
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmConsultaFaturasPagas.EdClienteInicialEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmConsultaFaturasPagas.CkResumidoExit(Sender: TObject);
begin
     TiraCorFundo( Sender );
end;

end.


