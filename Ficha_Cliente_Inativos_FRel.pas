 unit Ficha_Cliente_Inativos_FRel;

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
  TFRelFicha_Clientes_Inativos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Print: TRDprint;
    Label3: TcxLabel;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    PERIODO: TdxCurrencyEdit;
    Label1: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure cmbClienteExit(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    procedure IMPRIMEFICHA;

    procedure IncLin;

  public
    { Public declarations }
  end;

var
  FRelFicha_Clientes_Inativos: TFRelFicha_Clientes_Inativos;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelFicha_Clientes_Inativos.IncLin;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.NovaPagina ;
end;

procedure TFRelFicha_Clientes_Inativos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFRelFicha_Clientes_Inativos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelFicha_Clientes_Inativos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Action      := caFree;
  FRelFicha_Clientes_Inativos := Nil;
end;

procedure TFRelFicha_Clientes_Inativos.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelFicha_Clientes_Inativos.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelFicha_Clientes_Inativos.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     PRINT.impf(01,01,'===============================================================================',[Normal]);
     PRINT.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     PRINT.impf(02,64,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     PRINT.impf(03,01,'FICHA FINANCEIRA POR CLIENTE' ,[Normal]);
     PRINT.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     PRINT.impf(04,01,'===============================================================================',[Normal]);

     PRINT.impf(05,01,'CLIENTE',[Comp17]);

     PRINT.impf(05,34,'    VENDAS',[Comp17]);
     PRINT.impf(05,42,'   RECEBER',[Comp17]);
     PRINT.impf(05,50,'   FATURAS',[Comp17]);
     PRINT.impf(05,58,'     CUPOM',[Comp17]);
     PRINT.impf(05,66,'     NOTAS',[Comp17]);
     PRINT.impf(05,74,'     TOTAL',[Comp17]);

     inc(pagina);
     
     linha  := 6;
end;

procedure TFRelFicha_Clientes_Inativos.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try

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

procedure TFRelFicha_Clientes_Inativos.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;

  With DmFinanceiro do
  begin
       //SOMA O TOTAL DAS CONTAS A RECEBER
       PRINT.TitulodoRelatorio := 'FICHA FINANCEIRA' ;

       VER_FICHA_CLIENTE.Close ;
       VER_FICHA_CLIENTE.SQL.CLEAR ;
       VER_FICHA_CLIENTE.Params.CLEAR ;

       VER_FICHA_CLIENTE.Params.CreateParam ( FtString , 'CNPJ'    , PtInput );

       VER_FICHA_CLIENTE.SQL.ADD ( ' SELECT * FROM VER_FICHA_CLIENTE ( :CNPJ ) ' );

       VER_FICHA_CLIENTE.SQL.Add (' Where TOTAL > 0 ');

       VER_FICHA_CLIENTE.ParamByName ('CNPJ').asString := DmApp.Cnpj ;

       VER_FICHA_CLIENTE.SQL.ADD ( ' ORDER BY NOME_RAZAO, PESSOA_FJ ' );

       VER_FICHA_CLIENTE.Prepare ;
       VER_FICHA_CLIENTE.Open ;

       If VER_FICHA_CLIENTE.RecordCount = 0
       Then Begin
            lblStatus.Visible := False ;
            ShowMessage('Não há registros para o período, verifique !');
            //
            VER_FICHA_CLIENTE.Close;
               //
            Exit;
       End
       Else Begin
            VER_FICHA_CLIENTE.FetchAll ;

            lblStatus.Visible := False ;

            Anda.Max :=  VER_FICHA_CLIENTE.RecordCount;

            Anda.Position := 0;

            Anda.Visible  := TRUE ;
       End;
  end;

  IMPRIMEFICHA ;

end;

procedure TFRelFicha_Clientes_Inativos.IMPRIMEFICHA ;
VAR
   IMP, STR: STRING;
   TOTAL : REAL ;
begin
     PAGINA     := 1;
     LINHA      := 5;

     PRINT.ABRIR;

     TOTAL      := 0;//TOTAL DO CLIENTE

     IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

     WITH DMFINANCEIRO DO
     BEGIN
          VER_FICHA_CLIENTE.FIRST ;

          WHILE NOT VER_FICHA_CLIENTE.Eof DO
          BEGIN
               IncLin;

               PRINT.impf(LINHA,01,COPY(INTTOSTR(VER_FICHA_CLIENTECODIGO.Value),1,5) , [comp17]);

               PRINT.impf(LINHA,04,COPY(VER_FICHA_CLIENTENOME_RAZAO.Value,1,30) , [comp17]);

               //VENDAS
               STR :=  FORMATFLOAT ('###,###,##0.00',VER_FICHA_CLIENTEVENDAS.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               PRINT.impf(linha, 34, STR ,[comp17]);

               //RECEBER
               STR :=  FORMATFLOAT ('###,###,##0.00',VER_FICHA_CLIENTERECEBER.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               PRINT.impf(linha, 42, STR ,[comp17]);

               //FATURAS
               STR :=  FORMATFLOAT ('###,###,##0.00',VER_FICHA_CLIENTEFATURAS.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               PRINT.impf(linha, 50, STR ,[comp17]);

               //CUPOM
               STR :=  FORMATFLOAT ('###,###,##0.00',VER_FICHA_CLIENTECUPOM.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               PRINT.impf(linha, 58, STR ,[comp17]);

               //NOTAS
               STR :=  FORMATFLOAT ('###,###,##0.00', VER_FICHA_CLIENTENOTAS.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               PRINT.impf(linha, 66, STR ,[comp17]);

               //TOTA
               STR :=  FORMATFLOAT ('###,###,##0.00', VER_FICHA_CLIENTETOTAL.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               PRINT.impf(linha, 74, STR ,[comp17]);

               TOTAL := TOTAL + VER_FICHA_CLIENTENOTAS.Value + VER_FICHA_CLIENTECUPOM.Value +
               VER_FICHA_CLIENTEFATURAS.Value + VER_FICHA_CLIENTERECEBER.Value +
               VER_FICHA_CLIENTEVENDAS.Value ;

               VER_FICHA_CLIENTE.NEXT ;
          END;

          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(linha,74, '-----------' ,[comp17]);

          IncLin;

          PRINT.impf(linha,51, ' TOTAL GERAL' ,[comp17]);

          PRINT.impf(linha,74, STR ,[comp17]);

          PRINT.FECHAR;
     END;
end;

procedure TFRelFicha_Clientes_Inativos.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelFicha_Clientes_Inativos.cmbClienteExit(Sender: TObject);
begin
     TIRACorFundo ( Sender );
end;

end.

