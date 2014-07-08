 unit ConsultaPagasData_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
   Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib, 
  RDprint, Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmFiltrarPagasData = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    Bevel4: TBevel;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    LblTitulo: TcxLabel;
    Label3: TcxLabel;
    DATAINICIAL: TdxDateEdit;
    Label1: TcxLabel;
    DATAFINAL: TdxDateEdit;
    Label2: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    IMPRESSORA: TRDprint;
    LBLCLIENTE: TcxLabel;
    GRIDDATA: TdxDBGridColumn;
    GRIDDOCUMENTO: TdxDBGridColumn;
    GRIDHISTORICO: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    ActOk: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    CkImp: TCheckBox;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataInicialExit(Sender: TObject);
    procedure DataFinalExit(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure EdClienteInicialEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Imprime          ;
    Procedure ImprimeDetalhe   ;
    procedure Seleciona        ;
    procedure SelecionaDetalhe ;

    procedure IncLin;

  public
    Opcao: String ;
    { Public declarations }
  end;

var
  FrmFiltrarPagasData: TFrmFiltrarPagasData;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;

implementation

uses

    Cadastros_DM,
    Application_DM,
    Funcoes,
    Main,
    Listagens_DM,
    Financeiro_Dm,
    Empresas_DM,
    Localizar_Fornecedor, Usuarios_DM;

{$R *.DFM}

procedure TFrmFiltrarPagasData.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmFiltrarPagasData.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltrarPagasData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DmFinanceiro.SelFornecedor.Active
     then
         DmFinanceiro.SelFornecedor.Close ;

     Frm_Localizar_Fornecedor.Free   ;
     Frm_Localizar_Fornecedor := Nil ;

     DMFinanceiro.Pagar_Data_Analitico.close ;


     //
     Action := caFree;
     FrmFiltrarPagasData := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmFiltrarPagasData.DataInicialExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     TRY
        IF ( DATAINICIAL.TEXT <> '  /  /    ' ) AND ( DATAINICIAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAINICIAL.TEXT ) ;
        END
        ELSE
            DATAINICIAL.Date := STRTODATE('01/01/1900');

     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAINICIAL.SETFOCUS ;
     END;
end;

procedure TFrmFiltrarPagasData.DataFinalExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     TRY
        IF ( DATAFINAL.TEXT <> '  /  /    ' ) AND ( DATAFINAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAFINAL.TEXT ) ;
        END
        ELSE
            DATAFINAL.Date := STRTODATE('31/12/9999');
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAFINAL.SETFOCUS ;
     END;
end;

procedure TFrmFiltrarPagasData.IMPRIME;
VAR
   IMP, STR         : STRING;
   TOTAL, TOTALGERAL: Real ;
   ULTDATA          : TDateTime;
begin
     PAGINA   := 1;

     Lin      := 5;

     IMPRESSORA.TitulodoRelatorio := 'PAGAS POR DATA ANALITICO' ;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          Baixas_Pagar.DisableControls ;

          WHILE NOT Baixas_Pagar.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01,DATETOSTR(Baixas_PagarDT_BAIXA.Value) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTDATA := Baixas_PagarDT_BAIXA.VALUE ;

                    TOTAL := 0;//TOTAL DA DATA

                    IncLin ;
               END;
               //BLOCO DE IMPRESSAO DO CONTAS A Pagar
               //NOME
               IMPRESSORA.impf(Lin,01,INTTOSTR(Baixas_PagarPESSOA_FJ.Value )+ '-' + Baixas_PagarNOME.VALUE,[comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00',Baixas_PagarVLR_BAIXA.Value );
               WHILE LENGTH(STR) < 12 DO
                    STR := ' ' + STR ;
               BEGIN
               END;

               IMPRESSORA.impf(Lin,35, STR ,[comp17]);

               TOTAL      := TOTAL + Baixas_PagarVLR_BAIXA.Value;
               TOTALGERAL := TOTALGERAL + Baixas_PagarVLR_BAIXA.Value;

               Baixas_Pagar.NEXT ;

               IF (( ULTDATA <> Baixas_PagarDT_BAIXA.VALUE )AND(NOT Baixas_Pagar.EOF))
               THEN BEGIN
                    IncLin;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,35, '-------------' ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,20, ' TOTAL DA DATA' ,[comp17]);

                    IMPRESSORA.impf(Lin,35, STR ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END
               ELSE BEGIN
                    IF (Baixas_Pagar.EOF)
                    THEN BEGIN
                         IncLin;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(Lin, 35, '-------------' ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin, 20, ' TOTAL DA DATA' ,[comp17]);

                         IMPRESSORA.impf(Lin, 35, STR ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(Lin, 35, '-------------' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin, 20, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(Lin, 35, STR ,[comp17]);

          Baixas_Pagar.EnableControls ;

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmFiltrarPagasData.IMPRIMEDETALHE;
VAR
   IMP, STR         : STRING;
   TOTAL, TOTALGERAL: Real ;
   ULTDATA          : TDateTime;
begin
     PAGINA     := 1;
     Lin        := 5;

     IMPRESSORA.TitulodoRelatorio := 'PAGAS POR DATA ANALITICO' ;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DA DATA
          TOTALGERAL := 0;//TOTAL DAS CONTAS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          VERPAGAR.DisableControls ;

          WHILE NOT VERPAGAR.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01,DATETOSTR(VERPAGARDT_VENCTO.Value) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTDATA := VERPAGARDT_VENCTO.VALUE ;

                    TOTAL := 0;//TOTAL DA DATA

                    IncLin ;
               END;
               //BLOCO DE IMPRESSAO DO CONTAS A Pagar
               //NOME
               IMPRESSORA.impf(Lin, 01,INTTOSTR(VERPAGARPESSOA_FJ.Value )+ '-' + VERPAGARNOME.VALUE,[comp17]);

               //DOCUMENTO
               IMPRESSORA.impf(Lin, 30, VERPAGARDOCTO.VALUE,[comp17]);

               //HISTORICO
               IMPRESSORA.impf(Lin, 45, VERPAGARHISTORICO.VALUE,[comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', VerPAGARTotal.Value );
               WHILE LENGTH(STR) < 12 DO
                    STR := ' ' + STR ;
               BEGIN
               END;

               IMPRESSORA.impf(Lin,73, STR ,[comp17]);

               TOTAL      := TOTAL      + VerPAGARTotal.Value;
               TOTALGERAL := TOTALGERAL + VerPAGARTotal.Value;

               VERPAGAR.NEXT ;

               IF (( ULTDATA <> VERPAGARDT_VENCTO.VALUE )AND(NOT VERPAGAR.EOF))
               THEN BEGIN
                    IncLin;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,73, '-------------' ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,60, ' TOTAL DA DATA' ,[comp17]);

                    IMPRESSORA.impf(Lin,73, STR ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END
               ELSE BEGIN
                    IF (VERPAGAR.EOF)
                    THEN BEGIN
                         IncLin;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(Lin, 73, '-------------' ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin, 60, ' TOTAL DA DATA' ,[comp17]);

                         IMPRESSORA.impf(Lin, 73, STR ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(Lin, 73, '-------------' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin, 60, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(Lin, 73, STR ,[comp17]);

          VERPAGAR.EnableControls ;

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmFiltrarPagasData.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        if ( Frm_Localizar_Fornecedor.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Fornecedor.CampTrecho) ;
        end;
  Except
  end;
end;

procedure TFrmFiltrarPagasData.Seleciona ;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          Baixas_Pagar.Close ;
          Baixas_Pagar.SQL.text :=  ' SELECT * FROM VER_BAIXA_PAGAR_BAIXA ( :CNPJ, :DINI, :DFIM ) ';
          IF TRIM(LBLCLIENTE.Caption) <> '' then
          begin
            Baixas_Pagar.SQL.Add (' Where PESSOA_FJ = :FOR ORDER BY DT_BAIXA, NOME, PESSOA_FJ ');
            Baixas_Pagar.ParamByName ('FOR').asInteger := strtoint(trim(EdClienteInicial.text));
          END
          else
            Baixas_Pagar.SQL.ADD (' ORDER BY DT_BAIXA, NOME, PESSOA_FJ ');

          Baixas_Pagar.ParamByName ( 'DINI' ).AsDate := DATAINICIAL.Date ;
          Baixas_Pagar.ParamByName ( 'DFIM' ).AsDate := DATAFINAL.Date ;
          Baixas_Pagar.ParamByName ('CNPJ').VALUE := dmApp.cnpj;

          Baixas_Pagar.Open ;
     END;
END;

procedure TFrmFiltrarPagasData.SelecionaDetalhe ;
Var
   TotalPAGAR, TotalCheques, TotalPerdidas: Real;
   Cont: Integer ;
begin
     DSource.DataSet := DMFINANCEIRO.VERPAGAR ;

     WITH DMFINANCEIRO DO
     BEGIN
          Baixas_Pagar.Close ;

          Baixas_Pagar.SQL.CLEAR ;

          Baixas_Pagar.Params.CLEAR ;

          Baixas_Pagar.Params.CreateParam ( FtDate, 'DINI', PtInput );
          Baixas_Pagar.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          Baixas_Pagar.SQL.ADD ( ' SELECT * FROM VER_BAIXA_PAGAR_BAIXA ( :CNPJ, :DINI, :DFIM ) ' );

          Baixas_Pagar.ParamByName ( 'DINI' ).AsDate := DATAINICIAL.Date ;
          Baixas_Pagar.ParamByName ( 'DFIM' ).AsDate := DATAFINAL.Date ;

          IF TRIM(LBLCLIENTE.Caption) <> ''
          THEN BEGIN
               Baixas_Pagar.Params.CreateParam ( FtInteger, 'FOR', PtInputOutPut );

               Baixas_Pagar.SQL.Add (' Where PESSOA_FJ = :FOR ');

               Baixas_Pagar.ParamByName ('FOR').asInteger := strtoint(trim(EdClienteInicial.text));
          END;

          Baixas_Pagar.SQL.ADD ( ' ORDER BY DT_BAIXA, NOME, PESSOA_FJ ' );

          Baixas_Pagar.Prepare ;

          Baixas_Pagar.Open ;
     END;
END;

procedure TFrmFiltrarPagasData.IncLin;
begin
     Lin := Lin + 1;
     If Lin > 60
     then
         Impressora.NovaPagina ;
end;

procedure TFrmFiltrarPagasData.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     If ( trim(EdClienteInicial.Text) ) <> ''
     then begin
          if DmFinanceiro.SelFornecedor.locate ( 'CODIGO', trim(EdClienteInicial.Text),[] )
          then begin
               LBLCLIENTE.Caption := DmFinanceiro.SelFornecedorNOME_RAZAO.Value ;
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

procedure TFrmFiltrarPagasData.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor) ;

     If Not DmFinanceiro.SelFornecedor.Active
     then
         DmFinanceiro.SelFornecedor.Open ;

     EdClienteInicial.SetFocus ;
end;

procedure TFrmFiltrarPagasData.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(NOW),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(05,01,'LANCAMENTO = ' + DATAINICIAL.Text + ' A ' + DATAFINAL.Text , [Normal]);

     IMPRESSORA.impf(06,01,'PESSOA',[COMP17]);
     IMPRESSORA.impf(06,35,'        VALOR',[COMP17]);

     inc(pagina);
     Lin  := 7;
end;

procedure TFrmFiltrarPagasData.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmFiltrarPagasData.EdClienteInicialEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFiltrarPagasData.FormCreate(Sender: TObject);
begin
 // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFiltrarPagasData.ActOkExecute(Sender: TObject);
begin
      IF ((DATAINICIAL.Text = '  /  /  ' )OR(DATAINICIAL.Text = '  /  /    ' ))
     THEN BEGIN
          MessageDlg('Digite a Data!',MtError,[MbOk],0);
          DATAINICIAL.SetFocus ;
          EXIT;
     END;

     IF ((DATAFINAL.Text = '  /  /  ' )OR(DATAFINAL.Text = '  /  /    ' ))
     THEN BEGIN
          MessageDlg('Digite a Data!',MtError,[MbOk],0);
          DATAFINAL.SetFocus ;
          EXIT;
     END;

     SELECIONA ;

     IF CkImp.Checked
     THEN BEGIN
          IMPRIME ;
     END
     ELSE
         GRID.SETFOCUS ;
end;

end.


