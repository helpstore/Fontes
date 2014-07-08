unit ListagemCobrancas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
  Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls, dxDBEdtr, dxDBELib, 
  RDprint, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmListagemCobranca = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
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
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    IMPRESSORA: TRDprint;
    LBLCLIENTE: TcxLabel;
    GRIDCPF_CGC: TdxDBGridColumn;
    GRIDDATA: TdxDBGridColumn;
    GRIDPORCENTAGEM: TdxDBGridColumn;
    Panel4: TPanel;
    RzBitBtn3: TcxButton;
    GRIDAGENDADO: TdxDBGridColumn;
    GRIDCOBRAR: TdxDBGridColumn;
    GRIDMOTIVO: TdxDBGridColumn;
    GRIDHISTORICO: TdxDBGridColumn;
    ActListar: TAction;
    CkImp: TCheckBox;
    BtnOk: TcxButton;
    ActAgendar: TAction;
    ActAgendamentos: TAction;
    Label4: TcxLabel;
    CmbCobrador: TdxLookupEdit;
    DsCobrador: TDataSource;
    GRIDRECEBER: TdxDBGridColumn;
    GRIDORIGEM: TdxDBGridColumn;
    GRIDANO: TdxDBGridColumn;
    BtnFechar: TcxButton;
    stgFrmListagemCobranca: TcxPropertiesStore;
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
    procedure ActListarExecute(Sender: TObject);
    procedure CmbCobradorExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure Imprime ;
    procedure Seleciona ;

    procedure IncLin;

  public
    Origem, Opcao: String ;
    Cobrador: Integer;
    PESSOA_FJ, CODRECEBER, ANORECEBER: Integer ;
    { Public declarations }
  end;

var
  FrmListagemCobranca: TFrmListagemCobranca;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;

implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Listagens_DM,
    Localizar_Cliente,
    Financeiro_Dm,
    Empresas_DM,
    Agendamento_Cobranca_Form, Ver_Agendamentos_Cobranca_Form, Usuarios_DM,
  Cadastros_Dm2;

{$R *.DFM}

procedure TFrmListagemCobranca.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmListagemCobranca.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmListagemCobranca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   If MessageDlg('Deseja Sair da Consulta?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
   THEN BEGIN

     If DmFinanceiro.SelPessoasFj.Active  then
         DmFinanceiro.SelPessoasFj.Close ;


     Frm_Localizar_Cliente.Free   ;
     Frm_Localizar_Cliente := Nil ;

     DMFinanceiro.consulta_cobranca.close ;


     //
     Action := caFree;
     FrmListagemCobranca := Nil;

     FrmMain.PnlClient.Visible := True;
   end
   else
       Action := Canone ;
end;

procedure TFrmListagemCobranca.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;

  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TFrmListagemCobranca.DataInicialExit(Sender: TObject);
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
            DATAINICIAL.DATE := STRTODATE ('01/01/1900');

     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAINICIAL.SETFOCUS ;
     END;
end;

procedure TFrmListagemCobranca.DataFinalExit(Sender: TObject);
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
            DATAFINAL.DATE := STRTODATE ('31/12/9999');
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAFINAL.SETFOCUS ;
     END;
end;

procedure TFrmListagemCobranca.BtnOkClick(Sender: TObject);
begin
     if ( CmbCobrador.text = '' )
     then begin
          MessageDlg('Selecione o Cobrador!',MtInformation,[MbOk],0);
          EXIT;
     END;

     IF ((DATAINICIAL.Text = '  /  /  ' )OR(DATAINICIAL.Text = '  /  /    ' ))
     THEN BEGIN
          MessageDlg('Digite a Data!',MtInformation,[MbOk],0);
          DATAINICIAL.SetFocus ;
          EXIT;
     END;

     IF ((DATAFINAL.Text = '  /  /  ' )OR(DATAFINAL.Text = '  /  /    ' ))
     THEN BEGIN
          MessageDlg('Digite a Data!',MtInformation,[MbOk],0);
          DATAFINAL.SetFocus ;
          EXIT;
     END;

     SELECIONA ;

     GRID.SETFOCUS ;
end;

procedure TFrmListagemCobranca.IMPRIME;
VAR
   IMP, STR         : STRING;
   TOTAL, TOTALGERAL: Real ;
   ULTCLIENTE       : Integer  ;
   Cont             : Integer  ;
begin
     PAGINA     := 1;

     Lin      := 5;

     ULTCLIENTE := 0;

     IMPRESSORA.TitulodoRelatorio := 'LISTAGEM DE COBRANCAS' ;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE

          TOTALGERAL := 0;//TOTAL DAS CONTAS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          consulta_cobranca.DisableControls ;

          consulta_cobranca.First ;

          Cont := 0;

          WHILE NOT consulta_cobranca.Eof DO
          BEGIN
               IF NOT CkImp.Checked
               THEN BEGIN
                    IncLin;
               END;

               IF IMP = 'N'
               THEN BEGIN
                    IncLin;

                    IMPRESSORA.impf(Lin,01, INTTOSTR(consulta_cobrancaPESSOA_FJ.Value )+ '-' + consulta_cobrancaNOME.VALUE , [comp17]);

                    IMPRESSORA.impf(Lin, 25, consulta_cobrancaFONE.value , [comp17]);
                    IMPRESSORA.impf(Lin, 33, consulta_cobrancaCELULAR.value , [comp17]);
                    IMPRESSORA.impf(Lin, 41, consulta_cobrancaFONE_TRABALHO.value , [comp17]);
                    IMPRESSORA.impf(Lin, 48, copy(consulta_cobrancaLOCAL_TRABALHO.value,1,20) , [comp17]);
                    inclin;
                    IMPRESSORA.impf(Lin, 01, consulta_cobrancaENDERECO.Value + ' N ' + consulta_cobrancaNUMERO.Value, [comp17]);
                    IMPRESSORA.impf(Lin, 45, consulta_cobrancaENDERECO_TRABALHO.Value + ' N ' + consulta_cobrancaNUMERO_TRABALHO.Value, [comp17]);
                    IMPRESSORA.impf(Lin, 73, consulta_cobrancaCOBRAR_EM.TEXT , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCLIENTE := consulta_cobrancaPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DA DATA

                    IF NOT CkImp.Checked
                    THEN BEGIN
                         IncLin ;
                    END;
               END;

               IF NOT CkImp.Checked
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01, consulta_cobrancaVENDA.ASSTRING ,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00',consulta_cobrancaSOMA.Value );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,35, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00',consulta_cobrancajuros.Value );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,45, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00',consulta_cobrancaSoma.Value );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,55, STR ,[comp17]);



                    IMPRESSORA.impf(Lin, 65, STR + ' %' ,[comp17]);
               END;

               TOTAL      := TOTAL + consulta_cobrancaSoma.Value;

               TOTALGERAL := TOTALGERAL + consulta_cobrancaSoma.Value;

               consulta_cobranca.NEXT ;

               Cont := Cont + 1;

               IF (( ULTCLIENTE <> consulta_cobrancaPESSOA_FJ.VALUE )AND(NOT consulta_cobranca.EOF))
               THEN BEGIN
                    IF NOT CkImp.Checked
                    THEN BEGIN
                         IncLin;
                    END;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IF NOT CkImp.Checked
                    THEN BEGIN
                         IMPRESSORA.impf(Lin,55, '-------------' ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin,40, ' TOTAL' ,[comp17]);
                    END;

                    IMPRESSORA.impf(Lin,55, STR ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END
               ELSE BEGIN
                    IF (consulta_cobranca.EOF)
                    THEN BEGIN
                         IF NOT CkImp.Checked
                         THEN BEGIN
                              IncLin;
                         END;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IF NOT CkImp.Checked
                         THEN BEGIN
                              IMPRESSORA.impf(Lin, 55, '-------------' ,[comp17]);

                              IncLin;

                              IMPRESSORA.impf(Lin, 40, ' TOTAL' ,[comp17]);
                         END;

                         IMPRESSORA.impf(Lin, 55, STR ,[comp17]);

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

          IMPRESSORA.impf(Lin, 55, '-------------' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin, 01, 'RELACIONADOS ' + INTTOSTR(CONT) ,[comp17]);

          IMPRESSORA.impf(Lin, 40, ' TOTAL GERAL ' ,[comp17]);

          IMPRESSORA.impf(Lin, 55, STR ,[comp17]);

          IncLin;
          IncLin;

          IncLin;
          IncLin;

          IMPRESSORA.impf(Lin, 01, '_______________________________' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin, 01, 'COBRADOR' ,[comp17]);

          consulta_cobranca.EnableControls ;

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmListagemCobranca.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
        end;
  Except
  end;
end;

procedure TFrmListagemCobranca.Seleciona ;
Var
   Cont: Integer;
   sql : string;
begin
     WITH DMFINANCEIRO DO
     BEGIN
       consulta_cobranca.Close ;
       consulta_cobranca.SQL.text := ' SELECT * FROM CONSULTA_COBRANCA(:CNPJ, :INI, :FIM,:DT_CX ) '+
                                              ' where COBRADOR = '+inttostr(CmbCobrador.LookupKeyValue)+
                                              ' and (COBRAR_EM between :dini and :dfim) ';

       IF TRIM(LBLCLIENTE.Caption) <> '' THEN
         consulta_cobranca.SQL.ADD (' and PESSOA_FJ = '+trim(EdClienteInicial.text));

       consulta_cobranca.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, AGENDADO_PARA ' );
       consulta_cobranca.ParamByName('INI').AsDate := STRTODATE('01/01/1900');
       consulta_cobranca.ParamByName ('FIM').AsDate := STRTODATE('31/12/9999');
       consulta_cobranca.ParamByName('DINI').AsDate := DataInicial.date;
       consulta_cobranca.ParamByName ('DFIM').AsDate := DataFinal.date;
       consulta_cobranca.ParamByName ('cnpj').value := dmapp.cnpj;
       consulta_cobranca.ParamByName ('DT_CX').AsDate := dmApp.Data_Servidor;
       consulta_cobranca.Open;
     END;
END;


procedure TFrmListagemCobranca.IncLin;
begin
     Lin := Lin + 1;
     If Lin > 60
     then
         Impressora.NovaPagina ;
end;

procedure TFrmListagemCobranca.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     If ( trim(EdClienteInicial.Text) ) <> ''
     then begin
          if DmFinanceiro.SelPessoasFJ.locate ( 'CODIGO', trim(EdClienteInicial.Text),[] )
          then begin
               LBLCLIENTE.Caption := DMFinanceiro.SelPessoasFJNOME_RAZAO.Value ;
          end
          else begin
               messageDlg('Cliente Não Cadastrado!',MtError,[MbOk],0);
               EdClienteInicial.SetFocus ;
          end;
     end
     ELSE BEGIN
          LBLCLIENTE.Caption := '' ;
     END;
end;

procedure TFrmListagemCobranca.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DmFinanceiro.SelPessoasFJ.Active
     then
         DmFinanceiro.SelPessoasFJ.Open ;

     dmCadastros2.SelCobrador.close;
     dmCadastros2.SelCobrador.open;
     Frm_Localizar_Cliente := TFrm_Localizar_Cliente.Create(Self);

     CmbCobrador.SetFocus ;
end;

procedure TFrmListagemCobranca.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);

     IF CmbCobrador.TEXT <> ''
     THEN
       IMPRESSORA.impf(05,01,'LANCAMENTO = ' + DATAINICIAL.Text + ' A ' + DATAFINAL.Text + ' COBRADOR = ' + CmbCobrador.TEXT , [Normal])
     ELSE
       IMPRESSORA.impf(05,01,'LANCAMENTO = ' + DATAINICIAL.Text + ' A ' + DATAFINAL.Text , [Normal]);

     IMPRESSORA.impf(06,01,'PESSOA',[COMP17]);
     IMPRESSORA.impf(06,35,'       VALOR',[COMP17]);
     IMPRESSORA.impf(06,45,'       JUROS',[COMP17]);
     IMPRESSORA.impf(06,55,'       TOTAL',[COMP17]);

     inc(pagina);
     Lin  := 7;
end;

procedure TFrmListagemCobranca.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmListagemCobranca.EdClienteInicialEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

end;

procedure TFrmListagemCobranca.ActListarExecute(Sender: TObject);
begin
     If DmFINANCEIRO.consulta_cobranca.RecordCount > 0
     THEN
         IMPRIME ;
end;

procedure TFrmListagemCobranca.CmbCobradorExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TFrmListagemCobranca.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

end.


