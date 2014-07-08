 unit ConsultaCobrancas_Pessoa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
 Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint,   cxPropertiesStore, Variants, cxGraphics, cxControls,
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
  TFrmManutencaoCobrancaPessoa = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
    BtnFechar: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    LblTitulo: TcxLabel;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    IMPRESSORA: TRDprint;
    GRIDCPF_CGC: TdxDBGridColumn;
    GRIDDATA: TdxDBGridColumn;
    GRIDPORCENTAGEM: TdxDBGridColumn;
    Panel4: TPanel;
    RzBitBtn3: TcxButton;
    GRIDAGENDADO: TdxDBGridColumn;
    GRIDCOBRAR: TdxDBGridColumn;
    GRIDMOTIVO: TdxDBGridColumn;
    GRIDHISTORICO: TdxDBGridColumn;
    ActAgendar: TAction;
    ActListar: TAction;
    RzBitBtn5: TcxButton;
    ActAgendamentos: TAction;
    DsCobrador: TDataSource;
    LblDataServidor: TcxLabel;
    GRIDRECEBER: TdxDBGridColumn;
    GRIDPAGAS: TdxDBGrid;
    GRIDPAGASCODIGO: TdxDBGridMaskColumn;
    GRIDPAGASATRASO: TdxDBGridColumn;
    GRIDPAGASDT_BAIXA: TdxDBGridColumn;
    GRIDPAGASDT_VENCTO: TdxDBGridDateColumn;
    GRIDPAGASDOCTO: TdxDBGridMaskColumn;
    GRIDPAGASVALOR: TdxDBGridMaskColumn;
    GRIDPAGASPARCELA: TdxDBGridMaskColumn;
    GRIDPAGASFONE: TdxDBGridMaskColumn;
    GRIDPAGASHISTORICO: TdxDBGridMaskColumn;
    GRIDPAGASDT_LANCTO: TdxDBGridDateColumn;
    GRIDPAGASVLR_PARCIAL: TdxDBGridColumn;
    GRIDPAGASTOTAL: TdxDBGridColumn;
    GRIDPAGASJUROS_REC: TdxDBGridColumn;
    GRIDPAGASDESCONTOS: TdxDBGridColumn;
    GRIDPAGASTIPO_DOCTO: TdxDBGridColumn;
    DsRecebidas: TDataSource;
    Label1: TcxLabel;
    Label2: TcxLabel;
    LBLCOBRADOR: TcxLabel;
    GRIDORIGEM: TdxDBGridColumn;
    GRIDANO: TdxDBGridColumn;
    GRIDPAGASVENDA: TdxDBGridColumn;
    GRIDVENDA: TdxDBGridColumn;
    stgFrmManutencaoCobrancaPessoa: TcxPropertiesStore;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
    procedure IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure ActAgendarExecute(Sender: TObject);
    procedure ActListarExecute(Sender: TObject);
    procedure ActAgendamentosExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    Procedure Imprime ;
    procedure Seleciona ;

    procedure IncLin;

  public
    Origem, Opcao: String ;
    Cobrador: Integer;

    //VARIAVEIS PARA LANCAMENTO DAS COBRANCAS
    PESSOA_FJ, CODRECEBER, ANORECEBER: INTEGER ;

    DATAINICIAL, DATAFINAL: TDATETIME ;
    { Public declarations }
  end;


var
  FrmManutencaoCobrancaPessoa: TFrmManutencaoCobrancaPessoa;
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
    Agendamento_Cobranca_Form,
    Ver_Agendamentos_Cobranca_Form;

{$R *.DFM}

procedure TFrmManutencaoCobrancaPessoa.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmManutencaoCobrancaPessoa.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmManutencaoCobrancaPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin

     DMFinanceiro.Consulta_Cobranca_Pessoa.close ;

     //
     Action := caFree;
     FrmManutencaoCobrancaPessoa := Nil;

end;

procedure TFrmManutencaoCobrancaPessoa.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;

  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TFrmManutencaoCobrancaPessoa.IMPRIME;
VAR
   IMP, STR         : STRING;
   TOTAL, TOTALGERAL: Real ;
   ULTCLIENTE       : Integer  ;
   Cont             : Integer  ;
begin
     PAGINA     := 1;

     Lin        := 5;

     ULTCLIENTE := 0;

     IMPRESSORA.TitulodoRelatorio := 'LISTAGEM DE COBRANCAS' ;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          Consulta_Cobranca_Pessoa.DisableControls ;

          Consulta_Cobranca_Pessoa.First ;

          Cont := 0;

          WHILE NOT Consulta_Cobranca_Pessoa.Eof DO
          BEGIN
               IF IMP = 'N'
               THEN BEGIN
                    IncLin;

                    IMPRESSORA.impf(Lin,01, INTTOSTR(Consulta_Cobranca_PessoaPESSOA_FJ.VALUE) + '-' + Consulta_Cobranca_PessoaNOME.VALUE , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCLIENTE := Consulta_Cobranca_PessoaPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DA DATA

                    IncLin ;
               END;

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Cobranca_PessoaSOMA.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(Lin,35, STR ,[comp17]);

               //PORCENTAGEM
               STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Cobranca_PessoaPORCENTAGEM.Value );
               WHILE LENGTH(STR) < 8 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(Lin, 48, STR + ' %' ,[comp17]);

               TOTAL      := TOTAL + Consulta_Cobranca_PessoaSoma.Value;

               TOTALGERAL := TOTALGERAL + Consulta_Cobranca_PessoaSoma.Value;

               Consulta_Cobranca_Pessoa.NEXT ;

               Cont := Cont + 1;

               IF (( ULTCLIENTE <> Consulta_Cobranca_PessoaPESSOA_FJ.VALUE )AND(NOT Consulta_Cobranca_Pessoa.EOF))
               THEN BEGIN
                    IncLin;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,35, '-------------' ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,20, ' TOTAL' ,[comp17]);

                    IMPRESSORA.impf(Lin,35, STR ,[comp17]);

                    IncLin;

                    IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                    IMP := 'N' ;
               END
               ELSE BEGIN
                    IF (Consulta_Cobranca_Pessoa.EOF)
                    THEN BEGIN
                         IncLin;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(Lin, 35, '-------------' ,[comp17]);

                         IncLin;

                         IMPRESSORA.impf(Lin, 20, ' TOTAL' ,[comp17]);

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

          IMPRESSORA.impf(Lin, 01, 'RELACIONADOS ' + INTTOSTR(CONT) ,[comp17]);

          IMPRESSORA.impf(Lin, 20, ' TOTAL GERAL ' ,[comp17]);

          IMPRESSORA.impf(Lin, 35, STR ,[comp17]);

          IncLin;
          IncLin;

          IncLin;
          IncLin;

          IMPRESSORA.impf(Lin, 01, '_______________________________' ,[comp17]);

          IncLin;

          IMPRESSORA.impf(Lin, 01, 'COBRADOR' ,[comp17]);

          Consulta_Cobranca_Pessoa.EnableControls ;

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmManutencaoCobrancaPessoa.Seleciona ;
Var
   Cont: Integer;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          Consulta_Cobranca_Pessoa.Close ;

          Consulta_Cobranca_Pessoa.SQL.CLEAR ;

          Consulta_Cobranca_Pessoa.Params.CLEAR ;

          Consulta_Cobranca_Pessoa.Params.CreateParam ( FtDate,    'INI'      , PtInput );
          Consulta_Cobranca_Pessoa.Params.CreateParam ( FtDate,    'FIM'      , PtInput );
          Consulta_Cobranca_Pessoa.Params.CreateParam ( FtInteger, 'PESSOA_FJ', PtInput );

          Consulta_Cobranca_Pessoa.SQL.ADD ( ' SELECT * FROM CONSULTA_COBRANCA_PESSOA ( :CNPJ, :INI, :FIM, :PESSOA ) ' );

          Consulta_Cobranca_Pessoa.ParamByName ( 'INI'   ).AsDate    := strtodate('01/01/1900') ;
          Consulta_Cobranca_Pessoa.ParamByName ( 'FIM'   ).AsDate    := strtodate('31/12/9999') ;
          Consulta_Cobranca_Pessoa.ParamByName ( 'PESSOA').asInteger := PESSOA_FJ               ;

          Cont := 0;


          Consulta_Cobranca_Pessoa.SQL.ADD ( ' ORDER BY NOME, AGENDADO_PARA  ' );

          Consulta_Cobranca_Pessoa.Prepare ;
          Consulta_Cobranca_Pessoa.Open ;

          //CONTAS RECEBIDAS
          Baixas_Receber.Close ;
          Baixas_Receber.SQL.CLEAR ;
          Baixas_Receber.Params.CLEAR ;

          Baixas_Receber.Params.CreateParam ( FtInteger, 'PESSOA_FJ', PtInputOutPut );

          Baixas_Receber.SQL.ADD ( ' SELECT * FROM VER_BAIXA_RECEBER_PESSOA ( :CNPJ, :PESSOA_FJ ) ' );

          Baixas_Receber.ParamByName ('PESSOA_FJ').asInteger := PESSOA_FJ ;

          Baixas_Receber.Prepare ;
          Baixas_Receber.Open ;
     END;
END;


procedure TFrmManutencaoCobrancaPessoa.IncLin;
begin
     Lin := Lin + 1;

     If Lin > 60
     then
         Impressora.NovaPagina ;
end;

procedure TFrmManutencaoCobrancaPessoa.FormShow(Sender: TObject);
begin
     SELECIONA ;

     IniciaComponentes ( Self as TForm );

     Grid.SetFocus ;
end;

procedure TFrmManutencaoCobrancaPessoa.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,IMPRESSORA.TitulodoRelatorio,[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(05,01,'PESSOA',[COMP17]);
     IMPRESSORA.impf(05,35,'       VALOR',[COMP17]);

     inc(pagina);
     Lin  := 7;
end;

procedure TFrmManutencaoCobrancaPessoa.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmManutencaoCobrancaPessoa.ActAgendarExecute(Sender: TObject);
Var
   Book : TBookMark ;
begin
     if ( GRIDPESSOA_FJ.Field.Value > 0 )
     then begin
          If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAgendamentoCobranca', True)) Then
          Exit;

          CODRECEBER  := GRIDRECEBER.Field.Value ;

          ANORECEBER  := GRIDANO.Field.Value ;

          ORIGEM      := GRIDORIGEM.Field.Value  ;

          If FrmAgendamentoCobranca = Nil Then
          Begin
               FrmAgendamentoCobranca := TFrmAgendamentoCobranca.Create(Self);

               FrmAgendamentoCobranca.Inicial       := DATAINICIAL        ;
               FrmAgendamentoCobranca.Final         := DATAFINAL          ;
               FrmAgendamentoCobranca.Data_Servidor := dmapp.Data_Servidor;

               FrmAgendamentoCobranca.Showmodal ;
               FrmAgendamentoCobranca.Free   ;
               FrmAgendamentoCobranca := Nil ;
          End;

          Close ;
     end;
end;

procedure TFrmManutencaoCobrancaPessoa.ActListarExecute(Sender: TObject);
begin
     If DmFINANCEIRO.Consulta_Cobranca.RecordCount > 0
     THEN
         IMPRIME ;
end;

procedure TFrmManutencaoCobrancaPessoa.ActAgendamentosExecute(Sender: TObject);
begin
     if GRIDPESSOA_FJ.Field.Value > 0
     then begin
          If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVerAgendamentoCobranca', True)) Then
          Exit;

          With DmFinanceiro do
          begin
               Historico_Cobrancas_Pcl.Close ;

               Historico_Cobrancas_Pcl.ParamByName ( 'CNPJ'      ).ASSTRING  := DMAPP.CNPJ ;
               Historico_Cobrancas_Pcl.ParamByName ( 'PESSOA_FJ' ).ASINTEGER := GRIDPESSOA_FJ.Field.Value ;
               Historico_Cobrancas_Pcl.ParamByName ( 'RECEBER'   ).ASINTEGER := GRIDRECEBER.Field.Value ;

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

procedure TFrmManutencaoCobrancaPessoa.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
begin
     if ( not ASelected  )
     then begin
          Value := ANode.Values[GRIDDATA.Index];

          if not VarIsNull(Value)
          then begin
               if Value < Date
               then
                   AColor := $00ECAD84
               else
                   AColor := clWhite;
          end
          else begin
               AFont.Color := clBlack;
          end;
     end;
end;

end.


