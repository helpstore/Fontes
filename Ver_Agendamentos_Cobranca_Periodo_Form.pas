 unit Ver_Agendamentos_Cobranca_Periodo_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr,   dxDBCtrl, dxDBGrid, dxTL, dxDBTLCl, dxGrClms, RDprint,
  dxBarExtItems, ComCtrls, ppParameter, ppModule, raCodMod, ppCtrls,
  ppBands, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppComm, ppRelatv, ppDBPipe, cxPropertiesStore, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel;

type
  TFrmVerAgend_Cobr_Periodo = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActCancel: TAction;
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LBLCLIENTE: TcxLabel;
    ActSeleciona: TAction;
    DsCobrador: TDataSource;
    IMPRESSORA: TRDprint;
    ActListar: TAction;
    BtnListar: TdxBarButton;
    dbRelVendasSint: TppDBPipeline;
    rptAgdPeriodo: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppLabel62: TppLabel;
    lblFiltro: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppHeaderBand2: TppHeaderBand;
    ppLabel65: TppLabel;
    ppLabel71: TppLabel;
    ppLine5: TppLine;
    ppDetailBand6: TppDetailBand;
    ppDBText56: TppDBText;
    ppDBText59: TppDBText;
    ppDBText63: TppDBText;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel66: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppLabel4: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppLine2: TppLine;
    ppDBText6: TppDBText;
    stgFrmVerAgend_Cobr_Periodo: TcxPropertiesStore;
    Panel2: TPanel;
    LblRegistros: TcxLabel;
    CmbCobrador: TdxLookupEdit;
    Label4: TcxLabel;
    DATAFINAL: TdxDateEdit;
    Label1: TcxLabel;
    DATAINICIAL: TdxDateEdit;
    Label3: TcxLabel;
    Label2: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel3: TPanel;
    GRID: TdxDBGrid;
    GRIDDATA_COBRANCA: TdxDBGridDateColumn;
    GRIDMOTIVO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDCOBRAR_EM: TdxDBGridDateColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDPAGO_EM: TdxDBGridDateColumn;
    GRIDNOME_MOTIVO: TdxDBGridMaskColumn;
    GRIDCOBRADOR: TdxDBGridMaskColumn;
    GRIDNOME_COBRADOR: TdxDBGridMaskColumn;
    GRIDDT_VENCTO: TdxDBGridDateColumn;
    GRIDDOCTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDCOD_REC: TdxDBGridMaskColumn;
    GRIDANO: TdxDBGridMaskColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText5: TppDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure Seleciona ;
    procedure ActSelecionaExecute(Sender: TObject);
    procedure IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
    procedure ActListarExecute(Sender: TObject);
    procedure ActAgendamentosExecute(Sender: TObject);
    procedure DATAFINALExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);

  private
    { Private declarations }
    Procedure Imprime ;
    procedure IncLin;
  public
    { Public declarations }
    Retorno: Integer;
    filtro : string;
  end;

var
  FrmVerAgend_Cobr_Periodo: TFrmVerAgend_Cobr_Periodo;
  LIN, PAGINA: INTEGER;

implementation

uses Financeiro_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Localizar_Cliente,
     Ver_Agendamentos_Cobranca_Form, Cadastros_Dm2;

{$R *.DFM}

procedure TFrmVerAgend_Cobr_Periodo.IncLin;
begin
     Lin := Lin + 1;
     
     If Lin > 60
     then
         Impressora.NovaPagina ;
end;

procedure TFrmVerAgend_Cobr_Periodo.IMPRIME;
VAR
   IMP, STR         : STRING;
   TOTAL, TOTALGERAL: Real ;
   ULTCLIENTE       : Integer  ;
   Cont             : Integer  ;
begin
     PAGINA     := 1;

     Lin        := 5;

     ULTCLIENTE := 0;

     IMPRESSORA.TitulodoRelatorio := 'LISTAGEM DE COBRANCAS EFETUADAS' ;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN

          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DO CLIENTE

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          qryHistCobranca.DisableControls ;

          qryHistCobranca.First ;

          Cont := 0;
//-----------------------------------------imprimindo valores dos dados -----------------------------------------//
          WHILE NOT qryHistCobranca.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IncLin;

                    //---modifiquei copy copiava 32 passei a copiar 25  - ganhei 7
                    //aqui
                    IMPRESSORA.impf(Lin, 01, copy(qryHistCobrancaNOME.VALUE,1,25),[comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCLIENTE := qryHistCobrancaCODIGO.VALUE ;
                    TOTAL := 0;//TOTAL DA DATA
               END;
                              //modifiquei

               IMPRESSORA.impf(Lin, 18, FormatDateTime('dd/mm/yy',qryHistCobrancaDATA_COBRANCA.Value), [comp17]);
               // tirei 7 + 1 q tava sobrando do entre as datas
               IMPRESSORA.impf(Lin, 24, FormatDateTime('dd/mm/yy',qryHistCobrancaCOBRAR_EM.value) , [comp17]);

               IMPRESSORA.impf(Lin, 30, copy(qryHistCobrancaNOME_MOTIVO.TEXT,1,14), [comp17]);
               impressora.ImpF(lin,45,copy(qryHistCobrancaHISTORICO.AsString,1,29),[comp17]);
               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00',qryHistCobrancaVALOR.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(Lin, 75, STR ,[comp17]);

               TOTAL      := qryHistCobrancaVALOR.Value;

               //IMPRIME A VENDA
               BEGIN
                    Consulta_Venda_Itens.Close ;

                    Consulta_Venda_Itens.ParamByName('CNPJ'  ).AsString  := DmApp.Cnpj ;
                    Consulta_Venda_Itens.ParamByName('CODIGO').AsInteger := qryHistCobrancaVENDA.Value ;

                    Consulta_Venda_Itens.Open  ;

                    if Consulta_Venda_Itens.RecordCount > 0
                    then begin
                         IncLin;

                         while not Consulta_Venda_Itens.Eof do
                         begin
                              IMPRESSORA.impf(Lin, 25, Consulta_Venda_ItensPRODUTO.value, [comp17]);

                              IMPRESSORA.impf(Lin, 33, COPY(Consulta_Venda_ItensNOME_PRODUTO.value,1,25), [comp17]);

                              //QUANTIDADE
                              STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensQUANTIDADE.Value );
                              WHILE LENGTH(STR) < 10 DO
                              BEGIN
                                   STR := ' ' + STR ;
                              END;

                              IMPRESSORA.impf(Lin, 55, STR ,[comp17]);

                              //UNITARIO
                              STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensPRC_UNITARIO.Value - Consulta_Venda_ItensDESCONTO.VALUE );
                              WHILE LENGTH(STR) < 10 DO
                              BEGIN
                                   STR := ' ' + STR ;
                              END;

                              IMPRESSORA.impf(Lin, 65, STR ,[comp17]);

                              //TOTAL
                              TOTAL := Consulta_Venda_ItensQUANTIDADE.VALUE * ( Consulta_Venda_ItensPRC_UNITARIO.Value - Consulta_Venda_ItensDESCONTO.VALUE);
                              STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL);
                              WHILE LENGTH(STR) < 10 DO
                              BEGIN
                                   STR := ' ' + STR ;
                              END;

                              IMPRESSORA.impf(Lin, 75, STR ,[comp17]);

                              Consulta_Venda_Itens.Next ;

                              IF Not Consulta_Venda_Itens.eof
                              then
                                  IncLin;
                         end;
                    end;
               END;

               qryHistCobranca.NEXT ;


               Cont := Cont + 1;

               IF (( ULTCLIENTE <> qryHistCobrancaCODIGO.VALUE )AND(NOT Historico_Cobrancas.EOF))
               THEN BEGIN
                    TOTALGERAL := TOTALGERAL + TOTAL;
                    IncLin;

                    IMPRESSORA.impf(Lin,75, '-----------' ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,50, ' TOTAL' ,[comp17]);

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,75, STR ,[comp17]);

                    IMP := 'N' ;
               END
               ELSE BEGIN
                    IF (qryHistCobranca.EOF)
                    THEN BEGIN
                         IncLin;

                         IMPRESSORA.impf(Lin, 75, '-----------' ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin, 50, ' TOTAL' ,[comp17]);

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(Lin, 75, STR ,[comp17]);

                         IMP := 'N' ;
                    END;
               END;
          END;

          IncLin;

          IMPRESSORA.impf(Lin, 75, '-----------' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin, 01, 'RELACIONADOS ' + INTTOSTR(CONT) ,[comp17]);
          TOTALGERAL := TOTALGERAL + TOTAL;
          IMPRESSORA.impf(Lin, 50, ' TOTAL GERAL ' ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IMPRESSORA.impf(Lin, 75, STR ,[comp17]);

          IncLin;
          IncLin;

          IncLin;
          IncLin;

          IMPRESSORA.impf(Lin, 01, '_______________________________' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin, 01, 'COBRADOR' ,[comp17]);

          qryHistCobranca.EnableControls ;
          //------------------------------------------------finalizando impressão dos dados-------------------------------//

          IMPRESSORA.FECHAR;

     END;
end;

procedure TFrmVerAgend_Cobr_Periodo.Seleciona ;
Var
   Cont: Integer;
   sSql : string;
begin
     with dmfinanceiro do
     begin
       sSql := '';
       qryHistCobranca.Close;
       qryHistCobranca.SQL.text := 'SELECT * FROM VER_FIN_COBRANCAS_PERIODO(:CNPJ, :DINI, :DFIM )';
       qryHistCobranca.ParamByName ( 'CNPJ' ).AsString := dmapp.cnpj;
       qryHistCobranca.ParamByName ( 'DINI' ).AsDate   := DATAINICIAL.Date;
       qryHistCobranca.ParamByName ( 'DFIM' ).AsDate   := DATAFINAL.Date;

       if trim(EdClienteInicial.text) <> ''  then
       begin
         sSql := ' pessoa_fj = '+trim(EdClienteInicial.text);
         filtro := ' Cliente: ';
       end;

       if trim(CmbCobrador.Text) <> '' then
       begin
         if ssql <> '' then
         begin
          sSql := ssql + ' and ';
          filtro := filtro + ' - ';  
         end;
         sSql :=  ssql + ' COBRADOR = '+inttostr(CmbCobrador.LookupKeyValue);
         filtro := filtro +' Cobrador: '+trim(CmbCobrador.Text);
       end;
       if (sSql <> '') then
        sSql := ' where '+sSql;

       qryHistCobranca.SQL.ADD(sSql + ' order by nome, pessoa_fj, cod_rec, data_cobranca ');
       qryHistCobranca.Open;
     end;
end;

procedure TFrmVerAgend_Cobr_Periodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  Frm_Localizar_Cliente.Free   ;
  Frm_Localizar_Cliente := Nil ;

  DMFinanceiro.SelPessoasFJ.Close ;

  dmCadastros2.SelCobrador.Close ;

  Action := caFree;
  FrmVerAgend_Cobr_Periodo := Nil;
end;

procedure TFrmVerAgend_Cobr_Periodo.ActCancelExecute(Sender: TObject);
begin
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmVerAgend_Cobr_Periodo.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    DmFinanceiro.qryHistCobranca.Close;
    DmFinanceiro.qryHistCobranca.Open;

    If Not(DsCobrador.DataSet.Active) Then
       DsCobrador.DataSet.Open;

    Frm_Localizar_Cliente := TFrm_Localizar_Cliente.Create(Self);

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
end;

procedure TFrmVerAgend_Cobr_Periodo.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFrmVerAgend_Cobr_Periodo.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmVerAgend_Cobr_Periodo.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmVerAgend_Cobr_Periodo.ActFecharExecute(Sender: TObject);
begin
  If FrmVerAgend_Cobr_Periodo.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmVerAgend_Cobr_Periodo.DataSourceDataChange(Sender: TObject; Field: TField);
begin
     LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmVerAgend_Cobr_Periodo.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmVerAgend_Cobr_Periodo.EdInicialExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
  TRY
    if(datainicial.date <= 0) then
      datainicial.date := strtodate('01/01/1900');

  except
       MessageDlg(' Data Inválida!',MtError,[MbOk],0);
       datainicial.setfocus;
  end;
end;

procedure TFrmVerAgend_Cobr_Periodo.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
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

procedure TFrmVerAgend_Cobr_Periodo.ActSelecionaExecute(Sender: TObject);
begin
  Seleciona;
end;

procedure TFrmVerAgend_Cobr_Periodo.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmVerAgend_Cobr_Periodo.IMPRESSORANewPage(Sender: TObject;
  Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(05,01,'LANCAMENTO = ' + DATAINICIAL.Text + ' A ' + DATAFINAL.Text , [Normal]);

     IMPRESSORA.impf(06,01,'PESSOA',[COMP17]);
     //--modifiquei retirei 5 posicoes
     IMPRESSORA.impf(06,18,'DT COBR',[COMP17]);
     IMPRESSORA.impf(06,24,'COBRAR',[COMP17]);
     IMPRESSORA.impf(06,30,'MOTIVO',[COMP17]);
     IMPRESSORA.impf(06,45,'HISTORICO',[COMP17]);

     IMPRESSORA.impf(06,75,'     VALOR',[COMP17]);
     //--------------------------------//
     inc(pagina);
     Lin  := 7;
end;

procedure TFrmVerAgend_Cobr_Periodo.ActListarExecute(Sender: TObject);
begin
  lblEmpresa.caption := dmapp.nome;
  lblFiltro.caption := filtro;
  rptAgdPeriodo.print;
end;

procedure TFrmVerAgend_Cobr_Periodo.ActAgendamentosExecute(Sender: TObject);
begin
     if GRIDPESSOA_FJ.Field.Value > 0
     then begin
          If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVerAgendamentoCobranca', True))
          Then
              Exit;

          With DmFinanceiro do
          begin
               Historico_Cobrancas_Pcl.Close ;

               Historico_Cobrancas_Pcl.ParamByName ( 'CNPJ'      ).ASSTRING  := DMAPP.CNPJ ;
               Historico_Cobrancas_Pcl.ParamByName ( 'PESSOA_FJ' ).ASINTEGER := GRIDPESSOA_FJ.Field.Value ;
               Historico_Cobrancas_Pcl.ParamByName ( 'RECEBER'   ).ASINTEGER := GRIDCOD_REC.Field.Value ;

               Historico_Cobrancas_Pcl.Open  ;
          end;

          If FrmVerAgendamentoCobranca = Nil Then
          Begin
               FrmVerAgendamentoCobranca := TFrmVerAgendamentoCobranca.Create(Self);
               FrmVerAgendamentoCobranca.Showmodal ;
               FrmVerAgendamentoCobranca.Free   ;
               FrmVerAgendamentoCobranca := Nil ;
          End;
     end;
end;

procedure TFrmVerAgend_Cobr_Periodo.DATAFINALExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
  TRY
    if(datafinal.date <= 0) then
      datafinal.date := strtodate('31/12/9999');
  except
    MessageDlg('Data Inválida!',MtError,[MbOk],0);
    datafinal.setfocus;
  end;
end;

procedure TFrmVerAgend_Cobr_Periodo.GRIDEnter(Sender: TObject);
begin
  ActSeleciona.execute;
end;

end.
