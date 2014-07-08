unit Entra_Periodo_Banco_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  RDprint, DB,  cxPropertiesStore, ppDB,
  ppDBPipe, ppParameter, ppModule, raCodMod, ppBands, ppCtrls, ppVar,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  IBCustomDataSet, IBQuery, ppStrtch, ppSubRpt, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,  
    cxCheckBox;

type
  TfrmRelExtratoBancario = class(TForm)
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    IMPRESSORA: TRDprint;
    Panel1: TPanel;
    Label2: TcxLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edAs1: TcxLabel;
    edAs3: TcxLabel;
    edtVenctoInicial: TdxDateEdit;
    edtVenctoFinal: TdxDateEdit;
    GroupBox3: TGroupBox;
    rdConciliado: TRadioButton;
    rdPendente: TRadioButton;
    rdAmbos: TRadioButton;
    ckMovtoDia: tcxcheckBox;
    ckMovtoFuturo: tcxcheckBox;
    stgfrmRelExtratoBancario: TcxPropertiesStore;
    rptExtratoMovimento: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresa: TppLabel;
    ppTituloRel: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    lblFiltro: TppLabel;
    ppHeaderBand2: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel6: TppLabel;
    ppLabel12: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppSummaryBand2: TppSummaryBand;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppExtratoMovimento: TppDBPipeline;
    dsExtratoMovimento: TDataSource;
    QryExtratoMovimento: TIBQuery;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    QryExtratoMovimentoDOCUMENTO: TIBStringField;
    QryExtratoMovimentoCOD_DOC: TIBStringField;
    QryExtratoMovimentoHISTORICO: TIBStringField;
    QryExtratoMovimentoTIPO: TIBStringField;
    ppDBText8: TppDBText;
    ppLabel1: TppLabel;
    ppLabel4: TppLabel;
    ppDBText9: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel8: TppLabel;
    ppDBText10: TppDBText;
    ppLine2: TppLine;
    ckMovtoNConc: tcxcheckBox;
    ppSystemVariable3: TppSystemVariable;
    ppShape9: TppShape;
    SubMovtoFuturo: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand1: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLine3: TppLine;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel13: TppLabel;
    ppDBText17: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    qryMovFuturos: TIBQuery;
    ppMovtoFuturo: TppDBPipeline;
    dsMovtoFuturo: TDataSource;
    qryMovNConciliados: TIBQuery;
    ppMovtoNConciliados: TppDBPipeline;
    dsMovtosNConciliados: TDataSource;
    SubMovtoNConciliados: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLine5: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppSummaryBand3: TppSummaryBand;
    ppLabel25: TppLabel;
    ppLine6: TppLine;
    ppDBCalc2: TppDBCalc;
    qryMovDia: TIBQuery;
    ppMovtoDia: TppDBPipeline;
    dsMovtoDia: TDataSource;
    SubMovtoDia: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLine7: TppLine;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppSummaryBand4: TppSummaryBand;
    ppLabel33: TppLabel;
    ppLine8: TppLine;
    ppDBCalc3: TppDBCalc;
    ppDBText27: TppDBText;
    ppLabel34: TppLabel;
    QryExtratoMovimentoDATA: TDateField;
    QryExtratoMovimentoDATA_CONC: TDateField;
    QryExtratoMovimentoDEBITO: TIBBCDField;
    QryExtratoMovimentoCREDITO: TIBBCDField;
    QryExtratoMovimentoSALDO: TIBBCDField;
    QryExtratoMovimentoVALOR: TIBBCDField;
    QryExtratoMovimentoSALDO_ANTERIOR: TIBBCDField;
    QryExtratoMovimentoSALDO_DIA_CREDITO: TIBBCDField;
    QryExtratoMovimentoSALDO_DIA_DEBITO: TIBBCDField;
    qryMovFuturosDATA: TDateField;
    qryMovFuturosDOCUMENTO: TIBStringField;
    qryMovFuturosCOD_DOC: TIBStringField;
    qryMovFuturosHISTORICO: TIBStringField;
    qryMovFuturosDEBITO: TFloatField;
    qryMovFuturosCREDITO: TFloatField;
    qryMovFuturosSALDO: TFloatField;
    qryMovNConciliadosDATA: TDateField;
    qryMovNConciliadosDOCUMENTO: TIBStringField;
    qryMovNConciliadosCOD_DOC: TIBStringField;
    qryMovNConciliadosHISTORICO: TIBStringField;
    qryMovNConciliadosDEBITO: TFloatField;
    qryMovNConciliadosCREDITO: TFloatField;
    qryMovNConciliadosSALDO: TFloatField;
    qryMovDiaDATA: TDateField;
    qryMovDiaDATA_CONCILIACAO: TDateField;
    qryMovDiaDOCUMENTO: TIBStringField;
    qryMovDiaCOD_DOC: TIBStringField;
    qryMovDiaHISTORICO: TIBStringField;
    qryMovDiaDEBITO: TFloatField;
    qryMovDiaCREDITO: TFloatField;
    qryMovDiaSALDO: TFloatField;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText32: TppDBText;
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ppTitleBand1BeforePrint(Sender: TObject);
    procedure edtVenctoInicialEnter(Sender: TObject);
    procedure edtVenctoInicialExit(Sender: TObject);
    procedure edtVenctoInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure Cabecalho(SENDER: TOBJECT; PAGINA: INTEGER);
    procedure Rodape(SENDER: TOBJECT; PAGINA: INTEGER);
    procedure LANCAMENTOS;
    procedure CONCILIADOSNODIA ;
    procedure NAOCONCILIADOS;

  public
    { Public declarations }
    CONTA: INTEGER;
    NOMECONTA: String ;
  end;

var
  frmRelExtratoBancario: TfrmRelExtratoBancario;
  TOTCRED, TOTDEB, TOTGERAL : REAL ;
  TOTCREDCONC, TOTDEBCONC: REAL ;
  TOTGERALCONC : REAL;
  LINHA, PAGINA : INTEGER;
  EMPRESA : STRING;
  FUTUROSDEB, FUTUROSCRED, SALDOANTERIOR, CREDITO, DEBITO, SALDOCOMP, SALDOBANCO: REAL;
  SALDOANTERIORCONC, CREDITOCONC, DEBITOCONC: REAL;
  SALDODIA: REAL;
  STR: STRING;
  DIA : TDateTime;
  SALDOFUTUROS, SALDONAOCONCILIADOS, SALDOLANCAMENTOS, SALDOCONCILIADOS: REAL;

implementation

uses Funcoes, Listagens_DM, Application_DM;

{$R *.DFM}

procedure TfrmRelExtratoBancario.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmRelExtratoBancario.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmRelExtratoBancario.ActOkExecute(Sender: TObject);
var
  filtro, status, tipo : string;
begin
  if (edtVenctoInicial.date <= 0) then
  begin
    application.messagebox('Defina a data de movimento inicial','Aviso',mb_ok + mb_iconinformation);
    edtVenctoInicial.setfocus;
    exit;
  end;

  if (edtVenctoFinal.date <= 0) then
  begin
    application.messagebox('Defina a data de movimento final','Aviso',mb_ok + mb_iconinformation);
    edtVenctoFinal.setfocus;
    exit;
  end;

  if (edtVenctoFinal.date < edtVenctoInicial.date) then
  begin
    application.messagebox('Intervalo de datas de movimento inválido','Aviso',mb_ok + mb_iconinformation);
    edtVenctoInicial.setfocus;
    exit;
  end;

  if (rdConciliado.Checked) then
  begin
    tipo := '1';
    status := ' - Status Movimento: Conciliados';
  end
  else if (rdPendente.Checked) then
  begin
    tipo := '2';
    status := ' - Status Movimento: Não Conciliados';
  end
  else if (rdAmbos.Checked) then
  begin
    tipo := '3';
    status := ' - Status Movimento: Ambos';
  end;

  QryExtratoMovimento.Close;
  QryExtratoMovimento.ParamByName('cnpj').value := dmApp.cnpj;
  QryExtratoMovimento.ParamByName('data1').value := edtVenctoInicial.Date;
  QryExtratoMovimento.ParamByName('data2').value := edtVenctoFinal.Date;
  QryExtratoMovimento.ParamByName('conta').value := CONTA;
  QryExtratoMovimento.ParamByName('tipo_mov').value := tipo;
  QryExtratoMovimento.Open;

  qryMovFuturos.Close;
  qryMovFuturos.ParamByName('cnpj').value := dmApp.cnpj;
  qryMovFuturos.ParamByName('data2').value := edtVenctoFinal.Date;
  qryMovFuturos.ParamByName('conta').value := CONTA;
  qryMovFuturos.Open;

  qryMovNConciliados.Close;
  qryMovNConciliados.ParamByName('cnpj').value := dmApp.cnpj;
  qryMovNConciliados.ParamByName('data2').value := edtVenctoFinal.Date;
  qryMovNConciliados.ParamByName('conta').value := CONTA;
  qryMovNConciliados.Open;

  qryMovDia.Close;
  qryMovDia.ParamByName('cnpj').value := dmApp.cnpj;
  qryMovDia.ParamByName('data').value := dmApp.DataServidor;
  qryMovDia.ParamByName('conta').value := CONTA;
  qryMovDia.Open;

  if (ckMovtoFuturo.Checked) then
    SubMovtoFuturo.Visible := true
  else
    SubMovtoFuturo.Visible := false;

  if (ckMovtoNConc.Checked) then
    SubMovtoNConciliados.Visible := true
  else
    SubMovtoNConciliados.Visible := false;

  if (ckMovtoDia.Checked) then
    SubMovtoDia.Visible := true
  else
    SubMovtoDia.Visible := false;

  filtro := filtro + ' Conta: '+NOMECONTA + status;
  filtro := filtro + ' - Dt. Movimento: '+DateToStr(edtVenctoInicial.Date)+' à '+DateToStr(edtVenctoFinal.Date);

  lblEmpresa.caption := dmapp.nome;
  lblFiltro.caption := filtro;

  rptExtratoMovimento.Print;
  exit;


     ////CONCILIADOS DO DIA
     CONCILIADOSNODIA;

     ////SALDO  E MOVIMENTOS ANERIOR POR DATA DE LANC E DATA DE CONCILIACAO
     LANCAMENTOS;

     ////////NAO CONCILIADOS

     INC(LINHA);
     INC(LINHA);

     IMPRESSORA.impf(linha,50, 'SALDO' ,[comp17]);

     STR :=  FORMATFLOAT ('###,###,##0.00', SALDOLANCAMENTOS + SALDOFUTUROS );
     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     //VALOR
     IF ( SALDOLANCAMENTOS + SALDOFUTUROS >= 0  )
     THEN BEGIN
          IMPRESSORA.impf(linha,73, STR ,[comp17]);
     END
     ELSE BEGIN
          IMPRESSORA.impf(linha,62, STR ,[comp17]);
     END;

     IMPRESSORA.FECHAR ;

    // Modalresult := mrok ;
end;

procedure TfrmRelExtratoBancario.Cabecalho(SENDER: TOBJECT; PAGINA: INTEGER);
VAR
   STR: STRING;
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,'RAZAO',[normal]);
     IMPRESSORA.impf(04,45,'DATA '+ DATETIMETOSTR(NOW),[normal]);
     IMPRESSORA.impf(04,72,'Pag: ' + formatfloat('000',pagina),[normal]);
     IMPRESSORA.impf(05,01,'CONTA: '+ NOMECONTA ,[COMP17]);

     IF PAGINA = 1
     THEN BEGIN
          IMPRESSORA.impf(05,50,'SALDO ANTERIOR:',[COMP17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTGERAL );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IF TOTGERAL >= 0
          THEN
              IMPRESSORA.impf(05,73,STR,[COMP17])//73
          ELSE
              IMPRESSORA.impf(05,62,STR,[COMP17]);

          IMPRESSORA.impf(06,50,'SALDO ANTERIOR CONC:',[COMP17]);

          //CONCILIADOS
          STR :=  FORMATFLOAT ('###,###,##0.00', TOTGERALCONC );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          IF TOTGERALCONC >= 0
          THEN
              IMPRESSORA.impf(06,73,STR,[COMP17])//73
          ELSE
              IMPRESSORA.impf(06,62,STR,[COMP17]);
     END;

     IMPRESSORA.impf(07,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(08,01,'DATA   DOCUMENTO        HISTORICO                             DEBITO    CREDITO',[normal]);
     inc(pagina);
     linha  := 10;
end;

procedure TfrmRelExtratoBancario.Rodape(SENDER: TOBJECT; PAGINA: INTEGER);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TfrmRelExtratoBancario.LANCAMENTOS;
Var
   Data: String;
begin
     TRY
        WITH DMLISTAGENS DO
        BEGIN
             //SELECIONA OS MOVIMENTOS DO BANCO
             LANCAMENTO.Close ;
             LANCAMENTO.SQL.CLEAR ;
             LANCAMENTO.Params.Clear ;

             LANCAMENTO.Params.CreateParam ( FTSTRING,  'CNPJ' , ptInput );
             LANCAMENTO.Params.CreateParam ( ftInteger, 'CONTA', ptInput );
             LANCAMENTO.Params.CreateParam ( FTDATE,    'D'    , ptInput );
             LANCAMENTO.Params.CreateParam ( FTDATE,    'D1'   , ptInput );

             LANCAMENTO.SQL.Add ( ' SELECT * FROM VERLANCAMENTO ( :CNPJ, :CONTA, :D, :D1 ) ' );

             LANCAMENTO.ParamByName ( 'CNPJ'  ).ASSTRING  :=  DMAPP.CNPJ;
             LANCAMENTO.ParamByName ( 'CONTA' ).ASINTEGER :=  CONTA     ;

             LANCAMENTO.SQL.Add ( ' ORDER BY DATA, DOCUMENTO ');

             LANCAMENTO.PREPARE ;
             LANCAMENTO.OPEN    ;

             TOTGERAL     :=  SALDOANTERIOR ;

             TOTGERALCONC :=  SALDOANTERIORCONC ;

             LANCAMENTO.FIRST ;

             TOTDEB  := 0;
             TOTCRED := 0;

             DIA := LANCAMENTODATA.Value ;

             SALDODIA := SALDOANTERIOR;

             //HISTORICO
             IMPRESSORA.impf(linha,01, 'LANÇADOS NO DIA' ,[comp17]);
             INC ( LINHA );

             WHILE NOT LANCAMENTO.EOF DO
             BEGIN
                  IF ( LINHA > 62 )
                  THEN BEGIN
                       IMPRESSORA.Novapagina ;
                  END;

                  if ( length(DATETOSTR(LANCAMENTODATA.Value )) <= 8 )
                  then begin
                       data := copy( DATETOSTR(LANCAMENTODATA.Value ), 1, 8 );
                  end
                  else begin
                       data := copy( DATETOSTR(LANCAMENTODATA.Value ), 1, 6 ) + copy( DATETOSTR(LANCAMENTODATA.Value ), 9, 2 );
                  end;

                  //Marcando os conciliados
                  if not lancamentodata_conciliacao.IsNull
                  then
                      IMPRESSORA.impf(linha,01, '*',[comp17]);

                  //lancamento
                  IMPRESSORA.impf(linha,02, data,[comp17]);

                  //Documento
                  IMPRESSORA.impf(linha,08, LANCAMENTOCOD_DOC.Value ,[comp17]);
                  IMPRESSORA.impf(linha,12, LANCAMENTODOCUMENTO.Value ,[comp17]);

                  //HISTORICO
                  IMPRESSORA.impf(linha,25, COPY(LANCAMENTOHISTORICO.Value,1,75) ,[comp17]);

                  STR :=  FORMATFLOAT ('###,###,##0.00', LANCAMENTOVALOR.VALUE );
                  WHILE LENGTH(STR) < 12 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  //VALOR
                  IF ( LANCAMENTOTIPO.VALUE = 'C' )
                  THEN BEGIN
                       IMPRESSORA.impf(linha,73, STR ,[comp17]);
                       TOTGERAL := TOTGERAL + LANCAMENTOVALOR.VALUE ;
                       TOTCRED  := TOTCRED  + LANCAMENTOVALOR.VALUE ;
                       SALDODIA := SALDODIA + LANCAMENTOVALOR.VALUE ;
                  END
                  ELSE BEGIN
                       IMPRESSORA.impf(linha,62, STR ,[comp17]);
                       TOTGERAL := TOTGERAL - LANCAMENTOVALOR.VALUE ;
                       TOTDEB     := TOTDEB + LANCAMENTOVALOR.VALUE ;
                       SALDODIA := SALDODIA - LANCAMENTOVALOR.VALUE ;
                  END;

                  INC ( LINHA );

                  LANCAMENTO.NEXT;

                  IF (DIA <> LANCAMENTODATA.Value) OR ( LANCAMENTO.EOF )
                  THEN BEGIN
                       //TOTALIZA DIA
                       IMPRESSORA.impf(linha,50, 'SALDO DIA' ,[comp17]);

                       STR :=  FORMATFLOAT ('###,###,##0.00', SALDODIA );
                       WHILE LENGTH(STR) < 12 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;
                       IF SALDODIA >= 0
                       THEN
                           IMPRESSORA.impf(linha,73, STR ,[comp17])
                       ELSE
                           IMPRESSORA.impf(linha,62, STR ,[comp17]);

                       INC (LINHA );
                       INC (LINHA );
                       DIA := LANCAMENTODATA.VALUE ;
                  END;
             END;

           IF ( LINHA > 62 )
           THEN BEGIN
                IMPRESSORA.Novapagina ;
           END;

           ////CREDITOS E DEBITOS
           IMPRESSORA.impf(linha,50, 'TOTAL' ,[comp17]);

           STR :=  FORMATFLOAT ('###,###,##0.00', TOTCRED );
           WHILE LENGTH(STR) < 12 DO
           BEGIN
                STR := ' ' + STR ;
           END;
           IMPRESSORA.impf(linha,73, STR ,[comp17]);

           STR :=  FORMATFLOAT ('###,###,##0.00', TOTDEB );
           WHILE LENGTH(STR) < 12 DO
           BEGIN
                STR := ' ' + STR ;
           END;
           IMPRESSORA.impf(linha,62, STR ,[comp17]);

           INC(LINHA);

           IF ( LINHA > 62 )
           THEN BEGIN
                IMPRESSORA.Novapagina ;
           END;

           IMPRESSORA.impf(linha,50, 'SALDO' ,[comp17]);

           STR :=  FORMATFLOAT ('###,###,##0.00', TOTGERAL );
           WHILE LENGTH(STR) < 12 DO
           BEGIN
                STR := ' ' + STR ;
           END;

           //VALOR
           IF ( TOTGERAL >= 0  )
           THEN BEGIN
                IMPRESSORA.impf(linha,73, STR ,[comp17]);
           END
           ELSE BEGIN
                IMPRESSORA.impf(linha,62, STR ,[comp17]);
           END;

           //SALDO DOS LANCAMENTOS
           SALDOLANCAMENTOS := TOTGERAL ;

           INC ( LINHA );
           INC ( LINHA );
           IF ( LINHA > 62)
           THEN BEGIN
                IMPRESSORA.Novapagina ;
           END;
        END;
     EXCEPT

     END;
END;

procedure TfrmRelExtratoBancario.CONCILIADOSNODIA;
begin
     TRY
        WITH DMLISTAGENS DO
        BEGIN
             //SALDO ANTERIOR
             SLDANT.Close ;
             SLDANT.SQL.CLEAR ;
             SLDANT.PARAMS.Clear ;

             SLDANT.Params.CreateParam ( FTSTRING,  'CNPJ' , ptInput );
             SLDANT.Params.CreateParam ( FTINTEGER, 'CONTA', ptInput );
             SLDANT.Params.CreateParam ( FTDATE,    'DATA' , ptInput );

             SLDANT.SQL.Add ( ' SELECT SOMAC, SOMAD FROM SALDOANT_CONTA ( :CNPJ, :CONTA, :DATA ) ' );

             SLDANT.ParamByName ( 'CNPJ').ASSTRING   :=  DMAPP.CNPJ ;
             SLDANT.ParamByName ( 'CONTA').ASINTEGER :=  CONTA      ;

             SLDANT.PREPARE ;
             SLDANT.OPEN    ;

             IF ( SLDANT.FIELDS[0].ISNULL ) AND ( SLDANT.FIELDS[1].ISNULL )
             THEN BEGIN
                  SALDOANTERIOR := 0 ;
             END
             ELSE BEGIN
                  CREDITO := 0;
                  DEBITO  := 0;

                  IF ( SLDANT.FIELDS[0].ISNULL )
                  THEN BEGIN
                       CREDITO := 0 ;
                  END
                  ELSE BEGIN
                       CREDITO := SLDANT.FIELDS[0].VALUE ;
                  END;

                  IF ( SLDANT.FIELDS[1].ISNULL )
                  THEN BEGIN
                       DEBITO := 0 ;
                  END
                  ELSE BEGIN
                       DEBITO := SLDANT.FIELDS[1].VALUE ;
                  END;

                  SALDOANTERIOR := CREDITO - DEBITO;
                  TOTGERAL      := SALDOANTERIOR ;
             END;

//*************

             //SALDO ANTERIOR CONCILIADO
             SLDANTCONC.Close ;
             SLDANTCONC.SQL.CLEAR ;

             SLDANTCONC.Params.CreateParam ( FTSTRING,  'CNPJ' , ptInput );
             SLDANTCONC.Params.CreateParam ( FTINTEGER, 'CONTA', ptInput );
             SLDANTCONC.Params.CreateParam ( FTDATE,    'DATA' , ptInput );

             SLDANTCONC.SQL.Add ( ' SELECT SOMAC, SOMAD FROM SALDOANT_CONTACONC ( :CNPJ, :CONTA, :DATA ) ' );

             SLDANTCONC.ParamByName ( 'CNPJ').ASSTRING   :=  DMAPP.CNPJ ;
             SLDANTCONC.ParamByName ( 'CONTA').ASINTEGER :=  CONTA      ;

             SLDANTCONC.PREPARE ;
             SLDANTCONC.OPEN    ;

             IF ( SLDANTCONC.FIELDS[0].ISNULL ) AND ( SLDANTCONC.FIELDS[1].ISNULL )
             THEN BEGIN
                  SALDOANTERIORCONC := 0 ;
             END
             ELSE BEGIN
                  CREDITOCONC := 0;
                  DEBITOCONC  := 0;

                  IF ( SLDANTCONC.FIELDS[0].ISNULL )
                  THEN BEGIN
                       CREDITOCONC := 0 ;
                  END
                  ELSE BEGIN
                       CREDITOCONC := SLDANTCONC.FIELDS[0].VALUE ;
                  END;

                  IF ( SLDANTCONC.FIELDS[1].ISNULL )
                  THEN BEGIN
                       DEBITOCONC := 0 ;
                  END
                  ELSE BEGIN
                       DEBITOCONC := SLDANTCONC.FIELDS[1].VALUE ;
                  END;

                  SALDOANTERIORCONC := CREDITOCONC - DEBITOCONC;
                  TOTGERALCONC      := SALDOANTERIORCONC ;
             END;


             //SELECIONA OS MOVIMENTOS DO BANCO
             CONCPERIODO.Close ;
             CONCPERIODO.SQL.CLEAR ;

             SLDANTCONC.Params.CreateParam  ( FTSTRING,  'CNPJ' , ptInput );
             CONCPERIODO.Params.CreateParam ( ftINTEGER, 'CONTA', ptInput );
             CONCPERIODO.Params.CreateParam ( FTDATE,    'D'    , ptInput );
             CONCPERIODO.Params.CreateParam ( FTDATE,    'D1'   , ptInput );

             CONCPERIODO.SQL.Add ( ' SELECT * FROM CONCILIADOSPERIODO ( :CNPJ, :CONTA, :D, :D1 ) ' );

             CONCPERIODO.ParamByName ( 'CNPJ').ASSTRING    :=  DMAPP.CNPJ ;
             CONCPERIODO.ParamByName ( 'CONTA' ).ASINTEGER :=  CONTA ;

             CONCPERIODO.PREPARE ;
             CONCPERIODO.OPEN    ;

             PAGINA := 1;
             LINHA  := 5;

             IMPRESSORA.OnNewPage       := CABECALHO ;
             IMPRESSORA.OnBeforeNewPage := RODAPE ;

             IMPRESSORA.ABRIR;

             CONCPERIODO.FIRST ;

             TOTDEBCONC  := 0;
             TOTCREDCONC := 0;

             DIA := CONCPERIODODATA.Value ;

             SALDODIA := SALDOANTERIORCONC;

             //HISTORICO
             IMPRESSORA.impf(linha,01, 'CONCILIADOS NO PERIODO' ,[comp17]);
             INC(LINHA);

             WHILE NOT CONCPERIODO.EOF DO
             BEGIN
                  IF ( LINHA > 62 )
                  THEN BEGIN
                       IMPRESSORA.Novapagina ;
                  END;

                  //CONCPERIODO
                  IMPRESSORA.impf(linha,01,DATETOSTR(CONCPERIODODATA.Value ),[comp17]);

                  //Documento
                  IMPRESSORA.impf(linha,08, CONCPERIODOCOD_DOC.Value ,[comp17]);
                  IMPRESSORA.impf(linha,12, CONCPERIODODOCUMENTO.Value ,[comp17]);

                  //HISTORICO
                  IMPRESSORA.impf(linha,25, COPY(CONCPERIODOHISTORICO.Value,1,75) ,[comp17]);

                  STR :=  FORMATFLOAT ('###,###,##0.00', CONCPERIODOVALOR.VALUE );
                  WHILE LENGTH(STR) < 12 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  //VALOR
                  IF ( CONCPERIODOTIPO.VALUE = 'C' )
                  THEN BEGIN
                       IMPRESSORA.impf(linha,73, STR ,[comp17]);
                       TOTGERALCONC := TOTGERALCONC + CONCPERIODOVALOR.VALUE ;
                       TOTCREDCONC  := TOTCREDCONC  + CONCPERIODOVALOR.VALUE ;
                       SALDODIA := SALDODIA + CONCPERIODOVALOR.VALUE ;
                  END
                  ELSE BEGIN
                       IMPRESSORA.impf(linha,62, STR ,[comp17]);
                       TOTGERALCONC := TOTGERALCONC - CONCPERIODOVALOR.VALUE ;
                       TOTDEBCONC     := TOTDEBCONC + CONCPERIODOVALOR.VALUE ;
                       SALDODIA := SALDODIA - CONCPERIODOVALOR.VALUE ;
                  END;

                  INC ( LINHA );

                  CONCPERIODO.NEXT;

                  IF (DIA <> CONCPERIODODATA.Value) OR ( CONCPERIODO.EOF )
                  THEN BEGIN
                       //TOTALIZA DIA
                       IMPRESSORA.impf(linha,50, 'SALDO DIA' ,[comp17]);

                       STR :=  FORMATFLOAT ('###,###,##0.00', SALDODIA );
                       WHILE LENGTH(STR) < 12 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;
                       IF SALDODIA >= 0
                       THEN
                           IMPRESSORA.impf(linha,73, STR ,[comp17])
                       ELSE
                           IMPRESSORA.impf(linha,62, STR ,[comp17]);

                       INC (LINHA );
                       INC (LINHA );
                       DIA := CONCPERIODODATA.VALUE ;
                  END;
             END;

             IF ( LINHA > 62 )
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;

             ////CREDITOS E DEBITOS
             IMPRESSORA.impf(linha,50, 'TOTAL' ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', TOTCREDCONC );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;
             IMPRESSORA.impf(linha,73, STR ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', TOTDEBCONC );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             IMPRESSORA.impf(linha,62, STR ,[comp17]);

             INC(LINHA);

             IF ( LINHA > 62)
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;

             IMPRESSORA.impf(linha,50, 'SALDO' ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', TOTGERALCONC );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             //VALOR
             IF ( TOTGERALCONC >= 0  )
             THEN BEGIN
                  IMPRESSORA.impf(linha,73, STR ,[comp17]);
             END
             ELSE BEGIN
                  IMPRESSORA.impf(linha,62, STR ,[comp17]);
             END;

             SALDOCONCILIADOS := TOTGERALCONC ;

             INC(LINHA);

             IF ( LINHA > 62 )
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;
        END;
     EXCEPT

     END;
END;

procedure TfrmRelExtratoBancario.NAOCONCILIADOS;
begin
     TRY
        WITH DMLISTAGENS DO
        BEGIN
             //HISTORICO
             IMPRESSORA.impf(linha,01, 'NAO CONCILIADOS' ,[comp17]);
             INC(LINHA);

             //SELECIONA OS MOVIMENTOS DO CAIXA
             NAOCONCILIADOS.Close ;
             NAOCONCILIADOS.SQL.CLEAR ;
             NAOCONCILIADOS.Params.Clear ;

             NAOCONCILIADOS.Params.CreateParam ( FTSTRING,  'CNPJ' , ptInput );
             NAOCONCILIADOS.Params.CreateParam ( ftINTEGER, 'CONTA', ptInput );
             NAOCONCILIADOS.Params.CreateParam ( FTDATE,    'D'    , ptInput );

             NAOCONCILIADOS.SQL.Add ( ' SELECT * FROM NAOCONCILIADOS ( :CNPJ, :CONTA, :D )  ' );

             NAOCONCILIADOS.ParamByName ( 'CNPJ'  ).ASSTRING  :=  DMAPP.CNPJ ;
             NAOCONCILIADOS.ParamByName ( 'CONTA' ).ASINTEGER :=  CONTA ;

             NAOCONCILIADOS.PREPARE ;
             NAOCONCILIADOS.OPEN    ;

             TOTGERAL := 0 ;

             NAOCONCILIADOS.FIRST ;

             TOTDEB  := 0;
             TOTCRED := 0;

             WHILE NOT NAOCONCILIADOS.EOF DO
             BEGIN
                  IF ( LINHA > 62 )
                  THEN BEGIN
                       IMPRESSORA.Novapagina ;
                  END;

                  //NAOCONCILIADOS
                  IMPRESSORA.impf(linha,01,DATETOSTR(NAOCONCILIADOSDATA.Value ),[comp17]);

                  //Documento
                  IMPRESSORA.impf(linha,08, NAOCONCILIADOSCOD_DOC.Value ,[comp17]);
                  IMPRESSORA.impf(linha,12, NAOCONCILIADOSDOCUMENTO.Value ,[comp17]);

                  //HISTORICO
                  IMPRESSORA.impf(linha,25, COPY(NAOCONCILIADOSHISTORICO.Value,1,75) ,[comp17]);

                  STR :=  FORMATFLOAT ('###,###,##0.00', NAOCONCILIADOSVALOR.VALUE );
                  WHILE LENGTH(STR) < 12 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  //VALOR
                  IF ( NAOCONCILIADOSTIPO.VALUE = 'C' )
                  THEN BEGIN
                       IMPRESSORA.impf(linha,73, STR ,[comp17]);
                       TOTGERAL := TOTGERAL + NAOCONCILIADOSVALOR.VALUE ;
                       TOTCRED    := TOTCRED + NAOCONCILIADOSVALOR.VALUE ;
                  END
                  ELSE BEGIN
                       IMPRESSORA.impf(linha,62, STR ,[comp17]);
                       TOTGERAL := TOTGERAL - NAOCONCILIADOSVALOR.VALUE ;
                       TOTDEB     := TOTDEB + NAOCONCILIADOSVALOR.VALUE ;
                  END;

                  INC ( LINHA );

                  NAOCONCILIADOS.NEXT;
             END;

             INC ( LINHA );

             IF ( LINHA > 62 )
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;

             //CREDITOS E DEBITOS
             IMPRESSORA.impf(linha,50, 'TOTAL' ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', TOTCRED );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;
             IMPRESSORA.impf(linha,73, STR ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', TOTDEB );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;
             IMPRESSORA.impf(linha,62, STR ,[comp17]);

             INC(LINHA);

             IF ( LINHA > 62 )
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;

             IMPRESSORA.impf(linha,50, 'SALDO' ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', TOTGERAL );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             //VALOR
             IF ( TOTGERAL >= 0  )
             THEN BEGIN
                  IMPRESSORA.impf(linha,73, STR ,[comp17]);
             END
             ELSE BEGIN
                  IMPRESSORA.impf(linha,62, STR ,[comp17]);
             END;

             //TOTAL DO COMPUTADOR
             SALDONAOCONCILIADOS := TOTGERAL ;

             INC ( LINHA );
             IF ( LINHA > 62 )
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;

             IMPRESSORA.impf(linha,50, 'SALDO' ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', SALDOCOMP - SALDOBANCO );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;


             //VALOR
             IF ( TOTGERAL >= 0  )
             THEN BEGIN
                  IMPRESSORA.impf(linha,73, STR ,[comp17]);
             END
             ELSE BEGIN
                  IMPRESSORA.impf(linha,62, STR ,[comp17]);
             END;
             INC(LINHA);
             INC(LINHA);
             //HISTORICO
             IMPRESSORA.impf(linha,01, 'LANCAMENTOS FUTUROS' ,[comp17]);
             INC(LINHA);

///LANCAMENTOS FUTUROS

             //SELECIONA OS MOVIMENTOS DO CAIXA
             FUTUROS.Close ;
             FUTUROS.SQL.CLEAR ;
             FUTUROS.Params.Clear ;

             FUTUROS.Params.CreateParam ( FTSTRING,  'CNPJ' , ptInput );
             FUTUROS.Params.CreateParam ( ftINTEGER ,'CONTA', ptInput );
             FUTUROS.Params.CreateParam ( FTDATE,    'D'    , ptInput );

             FUTUROS.SQL.Add ( ' SELECT * FROM FUTUROS ( :CNPJ, :CONTA, :D )  ' );

             FUTUROS.ParamByName ( 'CNPJ'  ).ASSTRING   :=  DMAPP.CNPJ ;
             FUTUROS.ParamByName ( 'CONTA' ).ASINTEGER  :=  CONTA ;

             FUTUROS.SQL.Add ( ' ORDER BY DATA ' );

             FUTUROS.PREPARE ;
             FUTUROS.OPEN    ;

             TOTGERAL := 0 ;

             FUTUROS.FIRST ;

             FUTUROSDEB  := 0;
             FUTUROSCRED := 0;

             WHILE NOT FUTUROS.EOF DO
             BEGIN
                  IF ( LINHA > 62 )
                  THEN BEGIN
                       IMPRESSORA.Novapagina ;
                  END;

                  //FUTUROS
                  IMPRESSORA.impf(linha,01,DATETOSTR(FUTUROSDATA.Value ),[comp17]);

                  //Documento
                  IMPRESSORA.impf(linha,08, FUTUROSCOD_DOC.Value ,[comp17]);
                  IMPRESSORA.impf(linha,12, FUTUROSDOCUMENTO.Value ,[comp17]);

                  //HISTORICO
                  IMPRESSORA.impf(linha,25, COPY(FUTUROSHISTORICO.Value,1,75) ,[comp17]);

                  STR :=  FORMATFLOAT ('###,###,##0.00', FUTUROSVALOR.VALUE );
                  WHILE LENGTH(STR) < 12 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  //VALOR
                  IF ( FUTUROSTIPO.VALUE = 'C' )
                  THEN BEGIN
                       IMPRESSORA.impf(linha,73, STR ,[comp17]);
                       TOTGERAL := TOTGERAL + FUTUROSVALOR.VALUE ;
                       FUTUROSCRED := FUTUROSCRED + FUTUROSVALOR.VALUE ;
                  END
                  ELSE BEGIN
                       IMPRESSORA.impf(linha,62, STR ,[comp17]);
                       TOTGERAL   := TOTGERAL - FUTUROSVALOR.VALUE ;
                       FUTUROSDEB := FUTUROSDEB + FUTUROSVALOR.VALUE ;
                  END;

                  INC ( LINHA );
                  FUTUROS.NEXT;
             END;

             INC ( LINHA );

             IF ( LINHA > 62 )
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;

             //CREDITOS E DEBITOS
             IMPRESSORA.impf(linha,50, 'TOTAL' ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', FUTUROSCRED );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;
             IMPRESSORA.impf(linha,73, STR ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', FUTUROSDEB );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;
             IMPRESSORA.impf(linha,62, STR ,[comp17]);

             INC(LINHA);

             IF ( LINHA > 62 )
             THEN BEGIN
                  IMPRESSORA.Novapagina ;
             END;

             IMPRESSORA.impf(linha,50, 'SALDO' ,[comp17]);

             STR :=  FORMATFLOAT ('###,###,##0.00', TOTGERAL );
             WHILE LENGTH(STR) < 12 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             //VALOR
             IF ( TOTGERAL >= 0  )
             THEN BEGIN
                  IMPRESSORA.impf(linha,73, STR ,[comp17]);
             END
             ELSE BEGIN
                  IMPRESSORA.impf(linha,62, STR ,[comp17]);
             END;

             SALDOFUTUROS := TOTGERAL;

        END;
    EXCEPT

    END;
END;

procedure TfrmRelExtratoBancario.FormCreate(Sender: TObject);
begin
     DmListagens := TDMListagens.Create(Self);
end;

procedure TfrmRelExtratoBancario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmListagens.Free ;
     DmListagens := nil ;
end;

procedure TfrmRelExtratoBancario.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  edtVenctoInicial.SetFocus;
end;

procedure TfrmRelExtratoBancario.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmRelExtratoBancario.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmRelExtratoBancario.ppTitleBand1BeforePrint(Sender: TObject);
begin
  TppTitleBand(Sender).Visible := true;
end;

procedure TfrmRelExtratoBancario.edtVenctoInicialEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmRelExtratoBancario.edtVenctoInicialExit(Sender: TObject);
begin
TIRACORFUNDO(SENDER);
end;

procedure TfrmRelExtratoBancario.edtVenctoInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
