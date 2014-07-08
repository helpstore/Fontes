unit BxReceberOrd_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls,
  IBCustomDataSet, IBQuery, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelRecebidasOrdem = class(TForm)
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
    Caixas_Usuario: TIBDataSet;
    Caixas_UsuarioCNPJ: TIBStringField;
    Caixas_UsuarioCONTA: TIntegerField;
    Caixas_UsuarioUSUARIO: TIntegerField;
    Caixas_UsuarioNome: TStringField;
    Caixas_UsuarioLogin: TStringField;
    Caixas_UsuarioTURNO: TIntegerField;
    DsUsuario: TDataSource;
    cmbUsuario: TdxLookupEdit;
    lbluser: TcxLabel;
    SelUsuario: TIBQuery;
    SelUsuarioCODIGO: TIntegerField;
    SelUsuarioLOGIN: TIBStringField;
    SelUsuarioNOME: TIBStringField;
    SelUsuarioPERFIL: TIntegerField;
    SelUsuarioSENHA: TIBStringField;
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
    procedure Caixas_UsuarioBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    procedure IMPRIMERECEBER;

    procedure IncLin;

  public
    { Public declarations }
  end;

var
  FRelRecebidasOrdem: TFRelRecebidasOrdem;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelRecebidasOrdem.IncLin;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.NovaPagina ;
end;

procedure TFRelRecebidasOrdem.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelRecebidasOrdem.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelRecebidasOrdem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Caixas_Usuario.Close ;
  //
  dsClientes.DataSet.Close;

  SelUsuario.Close ;

  //
  Action      := caFree;
  FRelRecebidasOrdem := Nil;
end;

procedure TFRelRecebidasOrdem.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelRecebidasOrdem.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelRecebidasOrdem.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     PRINT.impf(01,01,'===============================================================================',[Normal]);
     PRINT.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     PRINT.impf(02,55,'DATA: '+ DATETIMETOSTR(NOW),[Normal]);
     PRINT.impf(03,01,'CONTAS RECEBIDAS POR ORDEM' ,[Normal]);
     PRINT.impf(03,30,'PERIODO ' + edDtInicial.TEXT + ' A ' + edDtFinal.TEXT  ,[Normal]);
     PRINT.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     PRINT.impf(04,01,'===============================================================================',[Normal]);

     PRINT.impf(05,01,'NOME',[COMP17]);
     PRINT.impf(05,30,'DOCUMENTO',[COMP17]);
     PRINT.impf(05,39,'PCLA',[COMP17]);
     PRINT.impf(05,43,'VENCTO',[COMP17]);
     PRINT.impf(05,52,'VALOR',[COMP17]);
     PRINT.impf(05,58,'   DESCONTO',[COMP17]);
     PRINT.impf(05,66,'      JUROS',[COMP17]);
     PRINT.impf(05,73,'      TOTAL',[COMP17]);

     inc(pagina);
     linha  := 6;
end;

procedure TFRelRecebidasOrdem.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsClientes.DataSet.Open;

    Caixas_Usuario.Close ;

    Caixas_Usuario.Open ;

    SelUsuario.Open     ;
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

procedure TFRelRecebidasOrdem.ActPreviewExecute(Sender: TObject);
Var
   Cont: Integer;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;
  Cont      := 0;

  With DmFinanceiro do
  begin
       BAIXAS_RECEBER_CAIXA.Close ;
       BAIXAS_RECEBER_CAIXA.SQL.CLEAR ;
       BAIXAS_RECEBER_CAIXA.Params.CLEAR ;

       BAIXAS_RECEBER_CAIXA.Params.CreateParam ( FtDate, 'DINI', PtInput );
       BAIXAS_RECEBER_CAIXA.Params.CreateParam ( FtDate, 'DFIM', PtInput );

       BAIXAS_RECEBER_CAIXA.SQL.ADD ( ' SELECT * FROM VER_BAIXA_RECEBER_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

       IF TRIM(cmbCliente.TEXT) <> ''
       THEN BEGIN
            CONT := 1;

            BAIXAS_RECEBER_CAIXA.Params.CreateParam ( FtInteger, 'INI', PtInputOutPut );

            BAIXAS_RECEBER_CAIXA.SQL.Add (' Where PESSOA_FJ = :INI ');

            BAIXAS_RECEBER_CAIXA.ParamByName ('INI').asInteger := cmbCliente.LookupKeyValue ;
       END;

       IF TRIM(cmbUsuario.TEXT) <> ''
       THEN BEGIN
            IF CONT = 0
            THEN BEGIN
                 BAIXAS_RECEBER_CAIXA.Params.CreateParam ( FtInteger, 'USR', PtInputOutPut );

                 BAIXAS_RECEBER_CAIXA.SQL.Add (' Where USUARIO = :USR ');

                 BAIXAS_RECEBER_CAIXA.ParamByName ('USR').asInteger := cmbUsuario.LookupKeyValue ;
            END
            ELSE BEGIN
                 BAIXAS_RECEBER_CAIXA.Params.CreateParam ( FtInteger, 'USR', PtInputOutPut );

                 BAIXAS_RECEBER_CAIXA.SQL.Add (' And USUARIO = :USR ');

                 BAIXAS_RECEBER_CAIXA.ParamByName ('USR').asInteger := cmbUsuario.LookupKeyValue ;
            END;
       END;

       BAIXAS_RECEBER_CAIXA.ParamByName ( 'DINI' ).AsDate := edDtInicial.Date ;
       BAIXAS_RECEBER_CAIXA.ParamByName ( 'DFIM' ).AsDate := edDtFinal.Date ;

       BAIXAS_RECEBER_CAIXA.SQL.ADD ( ' ORDER BY CODIGO ' );

       BAIXAS_RECEBER_CAIXA.Prepare ;
       BAIXAS_RECEBER_CAIXA.Open ;

       If BAIXAS_RECEBER_CAIXA.RecordCount = 0
       Then Begin
            lblStatus.Visible := False ;
            ShowMessage('Não há registros para o período, verifique !');
            //
            BAIXAS_RECEBER_CAIXA.Close;
               //
            edDtInicial.SetFocus;
            Exit;
       End
       Else Begin
            lblStatus.Visible := False ;

            BAIXAS_RECEBER_CAIXA.FetchAll ;

            Anda.Max :=  BAIXAS_RECEBER_CAIXA.RecordCount;

            Anda.Position := 0;

            Anda.Visible  := TRUE ;
       End;
  end;

  IMPRIMERECEBER ;

end;

procedure TFRelRecebidasOrdem.IMPRIMERECEBER;
VAR
   IMP, STR         : STRING;
   DESCONTOS,VALORGERAL, DESCONTOGERAL, JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
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
          VALORGERAL    := 0;//TOTAL DO VALOR GERAL (VALOR É VLR-BAIXA DEPENADO (+DESC - JUROS))
          WHILE NOT BAIXAS_RECEBER_CAIXA.Eof DO
          BEGIN
               IncLin;

               PRINT.impf(LINHA, 01, COPY( INTTOSTR(BAIXAS_RECEBER_CAIXAPESSOA_FJ.Value) + '-'+ BAIXAS_RECEBER_CAIXANOME.Value,1,30) , [comp17]);

               //Documento
               PRINT.impf(linha, 30, BAIXAS_RECEBER_CAIXADOCTO.Value ,[comp17]);

               //PARCELA
               PRINT.impf(linha, 39, COPY(BAIXAS_RECEBER_CAIXAPARCELA.Value,1,4) ,[comp17]);

               //VENCIMENTO
               PRINT.impf(linha, 43, formatdateTime('dd/mm/yy',BAIXAS_RECEBER_CAIXADT_VENCTO.Value),[comp17]);

               //VALOR BAIXA LIGUIDA(SEM DESCONTOS OU JUROS)
               STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_Receber_CaixaVALOR.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               PRINT.impf(linha, 48, STR ,[comp17]);

               //DESCONTO
               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBER_CAIXADESCONTOS.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(linha, 58, STR ,[comp17]);

               DESCONTOS := DESCONTOS + BAIXAS_RECEBER_CAIXADESCONTOS.Value ;

               //JUROS COBRADOS
               JUROS := JUROS + BAIXAS_RECEBER_CAIXAJUROS.VALUE ;

               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBER_CAIXAJUROS.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //JUROS
               PRINT.impf(linha,66, STR ,[comp17]);


               STR :=  FORMATFLOAT ('###,###,##0.00', BAIXAS_RECEBER_CAIXAVLR_BAIXA.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               PRINT.impf(linha,73, STR ,[comp17]);

               TOTAL         := TOTAL         + BAIXAS_RECEBER_CAIXAVLR_BAIXA.Value  ;
               TOTALGERAL    := TOTALGERAL    + BAIXAS_RECEBER_CAIXAVLR_BAIXA.Value  ;
               JUROSGERAL    := JUROSGERAL    + BAIXAS_RECEBER_CAIXAJUROS.VALUE      ;
               DESCONTOGERAL := DESCONTOGERAL + BAIXAS_RECEBER_CAIXADESCONTOS.Value  ;
               VALORGERAL    := VALORGERAL    + Baixas_Receber_CaixaVALOR.Value;

               BAIXAS_RECEBER_CAIXA.NEXT ;
          END;

          IncLin;

          PRINT.impf(linha,32, ' TOTAL GERAL' ,[comp17]);
          PRINT.impf(linha,48, '-------------' ,[comp17]);
          PRINT.impf(linha,57, '-------------' ,[comp17]);
          PRINT.impf(linha,65, '-------------' ,[comp17]);
          PRINT.impf(linha,73, '-------------' ,[comp17]);

          IncLin;

          //VALOR GERAL
          STR :=  FORMATFLOAT ('###,###,##0.00', VALORGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          PRINT.impf(linha, 48, STR ,[comp17]);


          //DESCONTOS
          STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 58, STR ,[comp17]);

          //JUROS
          STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 66, STR ,[comp17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL);

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha, 73, STR ,[comp17]);

          PRINT.FECHAR;
     END;
end;

procedure TFRelRecebidasOrdem.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelRecebidasOrdem.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelRecebidasOrdem.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

procedure TFRelRecebidasOrdem.Caixas_UsuarioBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

end.

