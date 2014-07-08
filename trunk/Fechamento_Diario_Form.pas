 unit Fechamento_Diario_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
      IBStoredProc, dxExEdtr, RDprint, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinscxPCPainter, cxPC,
  cxButtons, cxLabel;

type
  TFrmFechamentoDiario = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    Actions: TActionList;
    ActFechar: TAction;
    PC: TcxPageControl;
    TAB1: TcxTabSheet;
    dxTabSheet1: TcxTabSheet;
    Label2: TcxLabel;
    edDtInicial: TdxDateEdit;
    Label1: TcxLabel;
    edDtFinal: TdxDateEdit;
    BtnProcessa: TcxButton;
    Label3: TcxLabel;
    DATA: TdxDateEdit;
    RzBitBtn1: TcxButton;
    ActFechamento: TAction;
    ActListar: TAction;
    IMPRESSORA: TRDprint;
    Label4: TcxLabel;
    edcodigo: TdxButtonEdit;
    Label5: TcxLabel;
    DATAFINAL: TdxDateEdit;
    ActExcluirPeriodo: TAction;
    dxTabSheet2: TcxTabSheet;
    Label6: TcxLabel;
    DATAEXCINI: TdxDateEdit;
    Label7: TcxLabel;
    DATAEXCFIM: TdxDateEdit;
    RzBitBtn3: TcxButton;
    CkFicha: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActFechamentoExecute(Sender: TObject);
    procedure ActListarExecute(Sender: TObject);
    procedure CabecalhoSld(SENDER: TOBJECT;PAGINA:INTEGER);
    procedure DATAEnter(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure edDtInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edcodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActExcluirPeriodoExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechamentoDiario: TFrmFechamentoDiario;
  LInha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Relatorios_DM,
     LocalizarProd_DM;

{$R *.DFM}

procedure TFrmFechamentoDiario.FormCreate(Sender: TObject);
begin

  pc.ActivePageIndex := 0;

  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFechamentoDiario.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmFechamentoDiario.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

procedure TFrmFechamentoDiario.FormShow(Sender: TObject);
begin
     DMLocalizarProd  := TDMLocalizarProd.Create(Self);

     If DmApp.Tipo_Cons_Prod = 'A' //Auto
     then begin
          If FrmLocProdutoAuto = Nil
          then
              FrmLocProdutoAuto := TFrmLocProdutoAuto.Create(Application) ;
     END
     ELSE BEGIN
          If FrmLocProduto = Nil
          then
              FrmLocProduto := TFrmLocProduto.Create(Application) ;
     END;

     IniciaComponentes(Self as TForm);

     DATA.SETFOCUS ;
end;

procedure TFrmFechamentoDiario.ActFechamentoExecute(Sender: TObject);
Var
   D1, D2: TDateTime;
begin
     PC.ActivePageIndex := 0;

     If messageDlg ('Deseja Realmente Fazer o Fechamento Diário!', mtConfirmation, [MbOk, MbCancel],0) = MRoK
     THEN BEGIN
          D1 := DATA.Date ;
          D2 := DATAFINAL.Date ;

          If D1 > D2
          THEN BEGIN
               messageDlg ('Período Inválido, Verifique!', mtConfirmation, [MbOk, MbCancel],0);
               DATA.SetFocus ;
               EXIT ;
          END
          ELSE BEGIN
               WHILE D1 <= D2 DO
               BEGIN
                    DmApp.Fechamento_Diario ( D1 ) ;

                    D1 := D1 + 1;
               END;
          END;
     END;

     Showmessage('Fechamento Efetuado com Sucesso!');
end;

procedure TFrmFechamentoDiario.CabecalhoSld(SENDER: TOBJECT;PAGINA:INTEGER);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(02,01,DmApp.Nome, [expandido,NEGRITO]);
     IMPRESSORA.impf(03,01,'LISTA DE ESTOQUE',[normal]);
     IMPRESSORA.impf(03,35,'DATA: '+ DATETOSTR(NOW),[normal]);
     IMPRESSORA.impf(03,57,'HORA: '+ TIMETOSTR(NOW),[normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[normal]);

     IF Not CkFicha.Checked
     THEN BEGIN
          IMPRESSORA.impf(05,01,'COD  PRODUTO',[normal]);
          IMPRESSORA.impf(05,08,'  TROCA',[normal]);
          IMPRESSORA.impf(05,16,'GARANTIA',[normal]);
          IMPRESSORA.impf(05,24,' COMPRA',[normal]);
          IMPRESSORA.impf(05,32,'  VENDA',[normal]);
          IMPRESSORA.impf(05,40,' AJTE +',[normal]);
          IMPRESSORA.impf(05,48,' AJTE -',[normal]);
          IMPRESSORA.impf(05,56,' TRSF +',[normal]);
          IMPRESSORA.impf(05,65,' TRSF -',[normal]);
          IMPRESSORA.impf(05,73,'  SALDO',[normal]);
     END
     ELSE BEGIN
          IMPRESSORA.impf(05,01,'COD  PRODUTO',[normal]);
          IMPRESSORA.impf(05,73,'  SALDO',[normal]);
     end;

     inc(pagina);
     linha  := 7;
end;

procedure TFrmFechamentoDiario.ActListarExecute(Sender: TObject);
VAR
   Saldo: Real ;
   ULT, STR: STRING ;
   COMPRA,
   VENDA,
   AJUSTEMAIS,
   AJUSTEMENOS,
   TRANSFMAIS,
   TRANSFMENOS,
   TROCA,
   GARANTIA: REAL ;
   CONT : Integer    ;
   SOMA: REAL;
begin
     PC.ActivePageIndex := 1;

     IF (( edDtInicial.Text = '  /  /    ' )OR( edDtInicial.Text = '  /  /  ' ))
     THEN BEGIN
          Showmessage ( 'Selecione a Data!' );
          edDtInicial.SetFocus ;
          EXIT;
     END;

     IF (( edDtFinal.Text = '  /  /    ' )OR( edDtFinal.Text = '  /  /  ' ))
     THEN BEGIN
          Showmessage ( 'Selecione a Data!' );
          edDtFinal.SetFocus ;
          EXIT;
     END;

     DmRelatorios := TDmRelatorios.Create(Self);

     Saldo := 0;

     With DmRelatorios do
     begin
          FECHAMENTO_DIARIO.CLOSE ;

          FECHAMENTO_DIARIO.SQL.CLEAR ;

          FECHAMENTO_DIARIO.SQL.Add ( ' SELECT * FROM VER_EST_POSICAO_DIARIA ');

          FECHAMENTO_DIARIO.SQL.Add ( ' ( :CNPJ, :DINICIAL, :DFINAL )        ');

          FECHAMENTO_DIARIO.ParamByName ('CNPJ'    ).ASSTRING  := DmApp.CNPJ       ;
          FECHAMENTO_DIARIO.ParamByName ('DINICIAL').ASDATE    := edDtInicial.DATE ;
          FECHAMENTO_DIARIO.ParamByName ('DFINAL'  ).ASDATE    := edDtFinal.DATE   ;

          IF TRIM(edcodigo.Text) <> ''
          THEN BEGIN
               FECHAMENTO_DIARIO.Params.CreateParam (FTSTRING, 'PRODUTO', PTINPUT );

               FECHAMENTO_DIARIO.SQL.Add ( ' WHERE PRODUTO = :PRODUTO ');

               FECHAMENTO_DIARIO.ParamByName ('PRODUTO').AsString := TRIM(edcodigo.Text) ;
          END;

          FECHAMENTO_DIARIO.SQL.Add ( ' ORDER BY NOME, PRODUTO, DATA  ');

          FECHAMENTO_DIARIO.Prepare  ;
          FECHAMENTO_DIARIO.OPEN     ;

          IMPRESSORA.OpcoesPreview.Preview := TRUE       ;
          IMPRESSORA.OnNewPage             := CABECALHOSLD  ;

          IMPRESSORA.ABRIR ;

          ULT := '' ;

          COMPRA       := 0;
          VENDA        := 0;
          AJUSTEMAIS   := 0;
          AJUSTEMENOS  := 0;
          TRANSFMAIS   := 0;
          TRANSFMENOS  := 0;
          TROCA        := 0;
          GARANTIA     := 0;

          SOMA        := 0;

          WHILE NOT FECHAMENTO_DIARIO.EOF DO
          BEGIN
               IF CkFicha.Checked
               THEN BEGIN
                    IF ULT <> FECHAMENTO_DIARIOPRODUTO.VALUE
                    THEN BEGIN
                         IMPRESSORA.impf(linha, 01,  COPY(FECHAMENTO_DIARIOPRODUTO.VALUE + '-' + FECHAMENTO_DIARIONOME.VALUE, 1, 40),[comp17]);

                         ULT := FECHAMENTO_DIARIOPRODUTO.VALUE ;

                         CONT := 0;
                    END;

                    //SALDO
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOPOSICAO.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 47, STR ,[comp17]);

                    //CUSTO
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOCUSTO.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 60, STR ,[comp17]);

                    //CUSTO * ESTOQUE
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOCUSTO.VALUE * FECHAMENTO_DIARIOPOSICAO.VALUE);
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 73, STR ,[comp17]);

                    SOMA := SOMA + FECHAMENTO_DIARIOCUSTO.VALUE * FECHAMENTO_DIARIOPOSICAO.VALUE ;
               END
               ELSE BEGIN
                    IF ULT <> FECHAMENTO_DIARIOPRODUTO.VALUE
                    THEN BEGIN
                         IMPRESSORA.impf(linha, 01,  COPY(FECHAMENTO_DIARIOPRODUTO.VALUE + '-' + FECHAMENTO_DIARIONOME.VALUE, 1, 26),[comp17]);

                         ULT := FECHAMENTO_DIARIOPRODUTO.VALUE ;

                         LINHA := LINHA + 1;

                         CONT := 0;
                    END;

                    IMPRESSORA.impf(linha, 01, DATETOSTR(FECHAMENTO_DIARIODATA.VALUE),[comp17]);

                    //TROCA
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOTROCAS_ENT.VALUE - FECHAMENTO_DIARIOTROCAS_SAI.VALUE );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 09, STR ,[comp17]);

                    TROCA := TROCA +  ( FECHAMENTO_DIARIOTROCAS_ENT.VALUE - FECHAMENTO_DIARIOTROCAS_SAI.VALUE );

                    //GARANTIA
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOGARANTIAS_ENT.VALUE - FECHAMENTO_DIARIOGARANTIAS_SAI.VALUE );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 17, STR ,[comp17]);

                    GARANTIA := GARANTIA +  ( FECHAMENTO_DIARIOGARANTIAS_ENT.VALUE - FECHAMENTO_DIARIOGARANTIAS_SAI.VALUE );

                    //COMPRA
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOENTRADA.VALUE );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 25, STR ,[comp17]);

                    COMPRA      := COMPRA +  FECHAMENTO_DIARIOENTRADA.VALUE;

                    //VENDA
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOVENDA.VALUE + FECHAMENTO_DIARIOLEITURA.VALUE );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 33, STR ,[comp17]);

                    VENDA := VENDA + FECHAMENTO_DIARIOVENDA.VALUE + FECHAMENTO_DIARIOLEITURA.VALUE ;

                    //AJUSTE +
                    STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 41, STR ,[comp17]);

                    AJUSTEMAIS  := AJUSTEMAIS + 0;

                    //AJUSTE -
                    STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 49, STR ,[comp17]);

                    AJUSTEMENOS := AJUSTEMENOS + 0;

                    //TRANSF +
                    STR :=  FORMATFLOAT ('###,###,##0.00', 0);
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 57, STR ,[comp17]);

                    TRANSFMAIS  := TRANSFMAIS + 0 ;

                    //TRANSF -
                    STR :=  FORMATFLOAT ('###,###,##0.00', 0);
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 65, STR ,[comp17]);

                    TRANSFMENOS := TRANSFMENOS + 0 ;

                    //SALDO
                    STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_DIARIOPOSICAO.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(linha, 73, STR ,[comp17]);
               END;

               LINHA := LINHA + 1;

               IF LINHA > 62
               THEN BEGIN
                    IMPRESSORA.NOVAPAGINA ;
               END;

               FECHAMENTO_DIARIO.NEXT ;

               CONT := CONT + 1;

               IF ((( ULT <> FECHAMENTO_DIARIOPRODUTO.VALUE ) OR ( FECHAMENTO_DIARIO.EOF )) AND( CONT > 1 ))
               THEN BEGIN
                    //COMPRA
                    STR :=  FORMATFLOAT ('###,###,##0.00', COMPRA );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 25, STR ,[comp17]);

                    //VENDA
                    STR :=  FORMATFLOAT ('###,###,##0.00', VENDA );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 33, STR ,[comp17]);

                    //AJUSTE +
                    STR :=  FORMATFLOAT ('###,###,##0.00', AJUSTEMAIS );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 41, STR ,[comp17]);

                    //AJUSTE -
                    STR :=  FORMATFLOAT ('###,###,##0.00', AJUSTEMENOS );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 49, STR ,[comp17]);

                    //TRANSF +
                    STR :=  FORMATFLOAT ('###,###,##0.00', TRANSFMAIS );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 57, STR ,[comp17]);

                    //TRANSF -
                    STR :=  FORMATFLOAT ('###,###,##0.00', TRANSFMENOS );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    IMPRESSORA.impf(linha, 65, STR ,[comp17]);

                    LINHA := LINHA + 2 ;
               END;
          END;
     END;

     IF ( CkFicha.CHECKED )
     THEN BEGIN
          //TRANSF -
          STR :=  FORMATFLOAT ('###,###,##0.00', SOMA );
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          IMPRESSORA.impf(linha, 73, STR ,[comp17]);
     END;

     IMPRESSORA.FECHAR ;

     DmRelatorios.fREE ;
     DmRelatorios := nIL ;
end;

procedure TFrmFechamentoDiario.DATAEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmFechamentoDiario.DATAExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmFechamentoDiario.edDtInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFechamentoDiario.edcodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     If DmApp.Tipo_Cons_Prod = 'A' //Auto
     then begin
          if FrmLocProdutoAuto.Showmodal = mrok
          then begin
               edcodigo.text := ( FrmLocProdutoAuto.CampTrecho );
          end;
     end
     else begin
          if FrmLocProduto.Showmodal = mrok
          then begin
               edcodigo.text := ( FrmLocProduto.CampTrecho );
          end;
     end;
end;

procedure TFrmFechamentoDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DMLocalizarProd.Produtos.Close ;

     //
     FrmLocProduto.Free    ;
     FrmLocProduto := Nil  ;

     FrmLocProdutoAuto.Free    ;
     FrmLocProdutoAuto := Nil  ;

     DMLocalizarProd.Free;
     DMLocalizarProd := Nil;
end;

procedure TFrmFechamentoDiario.ActExcluirPeriodoExecute(Sender: TObject);
Var
   D1, D2: TDateTime;
begin
     PC.ActivePageIndex := 2;

     If messageDlg ('Deseja Realmente Excluir o(s) Fechamento(s) Diário(s)!', mtConfirmation, [MbOk, MbCancel],0) = MRoK
     THEN BEGIN
          D1 := DATAEXCINI.Date ;
          D2 := DATAEXCFIM.Date ;

          If D1 > D2
          THEN BEGIN
               messageDlg ('Período Inválido, Verifique!', mtConfirmation, [MbOk, MbCancel],0);
               DATAEXCINI.SetFocus ;
               EXIT ;
          END
          ELSE BEGIN
               DmApp.Excluir_Fechamento_Diario ( D1, D2 ) ;
          END;
     END;

     Showmessage('Exclusão Efetuada com Sucesso!');
end;

end.
