 unit Rel_Pagas_Centro_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, IBCustomDataSet, IBQuery,
  ComCtrls, RDprint, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel ;

type
  TFrmFiltraContasPagasCentro = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    ActPreview: TAction;
    dsPessoas: TDataSource;
    Label4: TcxLabel;
    CmbPessoa: TdxLookupEdit;
    EdDocumento: TdxEdit;
    Label6: TcxLabel;
    Label2: TcxLabel;
    CmbCentro: TdxLookupEdit;
    DsCentro: TDataSource;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    ANDA: TProgressBar;
    CKSELECIONADO: TCheckBox;
    DsAgrupador: TDataSource;
    Label5: TcxLabel;
    CmbAgrupador: TdxLookupEdit;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    dsSelContrato: TDataSource;
    cmbContrato: TdxLookupEdit;
    Label11: TcxLabel;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FimExit(Sender: TObject);
    procedure CmbPessoaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure IMPRIMEBAIXACENTRO;
  public
    { Public declarations }
  end;

var
  FrmFiltraContasPagasCentro: TFrmFiltraContasPagasCentro;

implementation

uses  Application_DM,
      Funcoes,
      Financeiro_Dm, Usuarios_DM;

{$R *.DFM}

procedure TFrmFiltraContasPagasCentro.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltraContasPagasCentro.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltraContasPagasCentro.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraContasPagasCentro.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     qryContratos.Close;
     qryContratos.Open;

     With DmFinanceiro do
     begin
          //CADASTROS DE PESSOAS
          SelFornecedor.Open ;

          SelCentro.Open ;

          SelAgrupador.Open ;
     END;
end;

procedure TFrmFiltraContasPagasCentro.IniEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmFiltraContasPagasCentro.IniExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     TRY
        IF ( INI.TEXT <> '  /  /    ' ) AND ( INI.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( INI.TEXT ) ;
        END
        ELSE
            INI.Date := STRTODATE('01/01/1900');

     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           INI.SETFOCUS ;
     END;
end;

procedure TFrmFiltraContasPagasCentro.ActPreviewExecute(Sender: TObject);
Var
   TotalPAGAR, TotalCheques, TotalPerdidas: Real;
   Cont: Integer;
begin
     CONT := 0;

     With DmFinanceiro do
     begin
          //SOMA O TOTAL DAS CONTAS A PAGAR
          IMPRESSORA.TitulodoRelatorio := 'PAGAS POR CENTRO DE CUSTO' ;

          BAIXAS_PAGAR.Close ;
          BAIXAS_PAGAR.SQL.CLEAR ;
          BAIXAS_PAGAR.Params.CLEAR ;

          BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DINI', PtInput );
          BAIXAS_PAGAR.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          BAIXAS_PAGAR.SQL.ADD ( ' SELECT * FROM VER_BAIXA_PAGAR_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

          IF TRIM(CmbPessoa.TEXT) <> ''
          THEN BEGIN
               BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'INI', PtInput );

               BAIXAS_PAGAR.SQL.Add (' Where PESSOA_FJ = :INI ');

               BAIXAS_PAGAR.ParamByName ('INI').asInteger := CmbPessoa.LookupKeyValue ;

               Cont := 1;
          END;

          IF TRIM(CmbCentro.TEXT) <> ''
          THEN BEGIN
               If Cont = 0
               then begin
                    BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInput );

                    BAIXAS_PAGAR.SQL.Add (' Where CENTRO_CUSTO = :CCU ');

                    BAIXAS_PAGAR.ParamByName ('CCU').asInteger := CmbCentro.LookupKeyValue ;
               end
               else begin
                    BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'CCU', PtInput );

                    BAIXAS_PAGAR.SQL.Add (' and CENTRO_CUSTO = :CCU ');

                    BAIXAS_PAGAR.ParamByName ('CCU').asInteger := CmbCentro.LookupKeyValue ;
               end;
          END;


          IF TRIM(cmbContrato.TEXT) <> ''
          THEN BEGIN
               If Cont = 0
               then begin
                    BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'CTR', PtInput );

                    BAIXAS_PAGAR.SQL.Add (' Where COD_CONTRATO = :CTR ');

                    BAIXAS_PAGAR.ParamByName ('CTR').asInteger := cmbContrato.LookupKeyValue ;
               end
               else begin
                    BAIXAS_PAGAR.Params.CreateParam ( FtInteger, 'CTR', PtInput );

                    BAIXAS_PAGAR.SQL.Add (' and COD_CONTRATO = :CTR ');

                    BAIXAS_PAGAR.ParamByName ('CTR').asInteger := cmbContrato.LookupKeyValue ;
               end;
          END;


          IF TRIM(CmbAgrupador.TEXT) <> ''
          THEN BEGIN
               IF Cont = 0
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

          IF TRIM(EdDocumento.Text) <> ''
          THEN BEGIN
               If Cont = 0
               then begin
                    BAIXAS_PAGAR.SQL.Add (' Where upper(docto) = '+''''+UpperCase(EdDocumento.Text)+''''+' ');
               end
               else begin
                    BAIXAS_PAGAR.SQL.Add (' and upper(docto) = '+''''+UpperCase(EdDocumento.Text)+''''+' ');
               end;
          END;

          BAIXAS_PAGAR.ParamByName ( 'DINI' ).AsDate := INI.Date ;
          BAIXAS_PAGAR.ParamByName ( 'DFIM' ).AsDate := FIM.Date ;

          BAIXAS_PAGAR.SQL.ADD ( ' ORDER BY NOME_CENTRO, CENTRO_CUSTO, NOME, PESSOA_FJ, DT_BAIXA ' );

          BAIXAS_PAGAR.Prepare ;
          BAIXAS_PAGAR.Open ;
          BAIXAS_PAGAR.FetchAll ;

          If BAIXAS_PAGAR.RecordCount <= 0
          then begin
               lblStatus.Visible := False ;
               ShowMessage('Não há registro a imprimir para o período, verifique !');
               Ini.setfocus ;
          end
          else begin
               lblStatus.Visible := False ;
               Anda.Max :=  BAIXAS_PAGAR.RecordCount;
          end;

     END;

     //IMPRIME O CONTAS A PAGAS POR CENTRO
     IMPRIMEBAIXACENTRO ;
end;

procedure TFrmFiltraContasPagasCentro.IMPRIMEBAIXACENTRO;
VAR
   IMP, STR         : STRING;
   DESCONTOS, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          PAGINA     := 1;
          LINHA      := 5;

          IMPRESSORA.OnNewPage := cabecalhoCentro ;

          IMPRESSORA.ABRIR;

          TOTAL         := 0;//TOTAL DO CLIENTE
          TOTALGERAL    := 0;//TOTAL DAS CONTAS
          JUROSGERAL    := 0;//VALOR DOS JUROS
          JUROS         := 0;//VALOR DOS JUROS POR CLIENTE
          DESCONTOS     := 0;//DESCONTO POR CLIENTE
          DESCONTOGERAL := 0;//DESCONTO GERAL

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          WHILE NOT BAIXAS_PAGAR.Eof DO
          BEGIN
               IF NOT CKSELECIONADO.Checked
               THEN
                   INCLINHA;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(LINHA,01,INTTOSTR(BAIXAS_PAGARCENTRO_CUSTO.Value) + '-'+ BAIXAS_PAGARNOME_CENTRO.Value , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := BAIXAS_PAGARCENTRO_CUSTO.VALUE ;

                    TOTAL     := 0;//TOTAL DO CLIENTE
                    JUROS     := 0;
                    DESCONTOS := 0;

                    INCLINHA ;
               END;

               IF NOT CKSELECIONADO.Checked
               THEN BEGIN
                    //BLOCO DE IMPRESSAO DO CONTAS A PAGAR

                    //lancamento
                    IMPRESSORA.impf(linha, 01, COPY(Baixas_PagarNOME.VALUE, 1, 20),[comp17]);

                    //lancamento
                    IMPRESSORA.impf(linha, 20, DATETOSTR(BAIXAS_PAGARDT_LANCTO.Value ),[comp17]);

                    //Documento
                    IMPRESSORA.impf(linha, 27, COPY(BAIXAS_PAGARDOCTO.Value,1,16) ,[comp17]);

                    //VENCIMENTO
                    IMPRESSORA.impf(linha, 37, DATETOSTR(BAIXAS_PAGARDT_VENCTO.Value ) ,[comp17]);

                    //PAGAMENTO
                    IMPRESSORA.impf(linha, 44, DATETOSTR(BAIXAS_PAGARDT_BAIXA.Value ) ,[comp17]);

                    //HISTORICO
                    IMPRESSORA.impf(linha, 51, COPY(BAIXAS_PAGARHISTORICO_BX.Value,1,15 ) ,[comp17]);

                    //DESCONTO
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PAGARDESCONTOS.Value );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 60, STR ,[comp17]);

                    //JUROS COBRADOS
                    JUROS := JUROS + Baixas_PAGARJUROS.VALUE ;

                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PAGARJUROS.VALUE );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    //JUROS
                    IMPRESSORA.impf(linha, 67, STR ,[comp17]);

                    STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_PAGARVLR_BAIXA.Value);
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    //VALOR
                    IMPRESSORA.impf(linha, 74, STR ,[comp17]);
               END;

               DESCONTOS     := DESCONTOS     + BAIXAS_PAGARDESCONTOS.Value  ;
               TOTAL         := TOTAL         + BAIXAS_PAGARVLR_BAIXA.Value  ;
               TOTALGERAL    := TOTALGERAL    + BAIXAS_PAGARVLR_BAIXA.Value  ;
               JUROSGERAL    := JUROSGERAL    + Baixas_PAGARJUROS.VALUE      ;
               DESCONTOGERAL := DESCONTOGERAL + BAIXAS_PAGARDESCONTOS.Value  ;

               BAIXAS_PAGAR.NEXT ;

               ANDA.Position := ANDA.Position + 1;

               IF (( ULTCOD <> BAIXAS_PAGARCENTRO_CUSTO.VALUE )AND(NOT BAIXAS_PAGAR.EOF))
               THEN BEGIN
                    INCLINHA;

                    IMPRESSORA.impf(linha,32, 'TOTAL CENTRO' ,[comp17]);

                    IMPRESSORA.impf(linha,60, '-----------' ,[comp17]);
                    IMPRESSORA.impf(linha,67, '-----------' ,[comp17]);
                    IMPRESSORA.impf(linha,74, '-----------' ,[comp17]);

                    INCLINHA;

                    //DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 60, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 67, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha,74, STR ,[comp17]);

                    INCLINHA;

                    IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;

                    JUROS     := 0;
                    DESCONTOS := 0;
                    TOTAL     := 0;
               END
               ELSE BEGIN
                    IF (BAIXAS_PAGAR.EOF)
                    THEN BEGIN
                         INCLINHA;

                         IMPRESSORA.impf(linha,32, ' TOTAL CENTRO' ,[comp17]);

                         IMPRESSORA.impf(linha,60, '-----------' ,[comp17]);
                         IMPRESSORA.impf(linha,67, '-----------' ,[comp17]);
                         IMPRESSORA.impf(linha,74, '-----------' ,[comp17]);

                         INCLINHA;

                         //DESCONTOS
                         STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 60, STR ,[comp17]);

                         //JUROS
                         STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha, 67, STR ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(linha,74, STR ,[comp17]);

                         INCLINHA;

                         IMPRESSORA.impf(linha,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          INCLINHA;

          IMPRESSORA.impf(linha,32, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(linha,60, '-----------' ,[comp17]);
          IMPRESSORA.impf(linha,67, '-----------' ,[comp17]);
          IMPRESSORA.impf(linha,74, '-----------' ,[comp17]);

          INCLINHA;


          //DESCONTOS
          STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 60, STR ,[comp17]);

          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 67, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(linha, 74, STR ,[comp17]);

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmFiltraContasPagasCentro.FimExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     TRY
        IF ( FIM.TEXT <> '  /  /    ' ) AND ( FIM.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( FIM.TEXT ) ;
        END
        ELSE
            FIM.Date := STRTODATE('31/12/9999');

     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           FIM.SETFOCUS ;
     END;
end;

procedure TFrmFiltraContasPagasCentro.CmbPessoaExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFiltraContasPagasCentro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     With DmFinanceiro do
     begin
          //CADASTROS DE PESSOAS
          SelFornecedor.Close ;

          SelCentro.Close ;

          SelAgrupador.Close ;
     END;

     Action := CaFree ;
     FrmFiltraContasPagasCentro := Nil ;
end;

procedure TFrmFiltraContasPagasCentro.FormCreate(Sender: TObject);
begin
  if DMUsuarios.Direito = 'SUPERVISOR' then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  else if DMUsuarios.Objeto = Self.Name then
     AtivaActions(Actions, DMUsuarios.Direito);

  
end;


end.
