 unit ConsultaReceberData_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
     Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls, dxDBEdtr, dxDBELib,
  RDprint, Placemnt, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmFiltrarReceberData = class(TForm)
    pnlClient: TPanel;
    Bevel3: TBevel;
    pnlBottom: TPanel;
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
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    IMPRESSORA: TRDprint;
    LBLCLIENTE: TcxLabel;
    GRIDCPF_CGC: TdxDBGridColumn;
    GRIDDATA: TdxDBGridColumn;
    GRIDPORCENTAGEM: TdxDBGridColumn;
    RdArqMorto: TRadioGroup;
    GRIDARQ_MORTO: TdxDBGridMaskColumn;
    actPreview: TAction;
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
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure actPreviewExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Procedure Imprime ;
    procedure Seleciona ;

    procedure IncLin;

  public
    Opcao: String ;
    { Public declarations }
  end;

var
  FrmFiltrarReceberData: TFrmFiltrarReceberData;
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
    Empresas_DM, Usuarios_DM;

{$R *.DFM}

procedure TFrmFiltrarReceberData.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmFiltrarReceberData.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltrarReceberData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DmFinanceiro.SelPessoasFj.Active  then
         DmFinanceiro.SelPessoasFj.Close ;

     Frm_Localizar_Cliente.Free   ;
     Frm_Localizar_Cliente := Nil ;

     DMFinanceiro.Receber_Data_Analitico.close ;

     Action := caFree;
     FrmFiltrarReceberData := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmFiltrarReceberData.DataInicialExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
     if DataInicial.date <= 0 then
        DataInicial.DATE := STRTODATE ('01/01/1900');
end;

procedure TFrmFiltrarReceberData.DataFinalExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
     if DataFinal.date <= 0 then
        DataFinal.DATE := STRTODATE ('31/12/9999');
end;

procedure TFrmFiltrarReceberData.IMPRIME;
VAR
   IMP, STR         : STRING;
   TOTAL, TOTALGERAL: Real ;
   ULTDATA          : TDateTime;
begin
     PAGINA     := 1;
     Lin      := 5;

     IMPRESSORA.TitulodoRelatorio := 'RECEBER POR DATA ANALITICO' ;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          Receber_Data_Analitico.DisableControls ;

          WHILE NOT Receber_Data_Analitico.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01,DATETOSTR(Receber_Data_AnaliticoDATA.Value) , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTDATA := Receber_Data_AnaliticoDATA.VALUE ;

                    TOTAL := 0;//TOTAL DA DATA

                    IncLin ;
               END;
               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //NOME
               IMPRESSORA.impf(Lin,01,INTTOSTR(Receber_Data_AnaliticoPESSOA_FJ.Value )+ '-' + Receber_Data_AnaliticoNOME.VALUE,[comp17]);
               IMPRESSORA.impf(Lin,60,Receber_Data_AnaliticoARQ_MORTO.VALUE,[comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00',Receber_Data_AnaliticoSOMA.Value );
               WHILE LENGTH(STR) < 12 DO
                    STR := ' ' + STR ;
               BEGIN
               END;

               IMPRESSORA.impf(Lin,35, STR ,[comp17]);

               //PORCENTAGEM
               STR :=  FORMATFLOAT ('###,###,##0.00',Receber_Data_AnaliticoPORCENTAGEM.Value );
               WHILE LENGTH(STR) < 8 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IMPRESSORA.impf(Lin, 48, STR + ' %' ,[comp17]);

               TOTAL      := TOTAL + Receber_Data_AnaliticoSoma.Value;
               TOTALGERAL := TOTALGERAL + Receber_Data_AnaliticoSoma.Value;

               Receber_Data_Analitico.NEXT ;

               IF (( ULTDATA <> Receber_Data_AnaliticoDATA.VALUE )AND(NOT Receber_Data_Analitico.EOF))
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
                    IF (Receber_Data_Analitico.EOF)
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

          Receber_Data_Analitico.EnableControls ;

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmFiltrarReceberData.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
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

procedure TFrmFiltrarReceberData.Seleciona ;
var
  Filtro : string;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          Receber_Data_Analitico.Close;
          Receber_Data_Analitico.SQL.text := ' SELECT * FROM SOMA_RECEBER_DATA_ANALITICO (:CNPJ,:INI,:FIM,:DT_CX ) ';
          Receber_Data_Analitico.ParamByName ( 'INI' ).AsDate := DATAINICIAL.Date ;
          Receber_Data_Analitico.ParamByName ( 'FIM' ).AsDate := DATAFINAL.Date ;
          Receber_Data_Analitico.ParamByName ( 'DT_CX' ).AsDate := dmApp.Data_Servidor;

          case rdArqMorto.ItemIndex of
            0 : Filtro := ' arq_morto = ''S''';
            1 : Filtro := ' arq_morto = ''N''';
          end;

          if trim(lblcliente.Caption) <> '' THEN
          begin
            if filtro <> '' then
              filtro := filtro + ' and ';
            Filtro := filtro + ' pessoa_fj ='+trim(EdClienteInicial.text);
          end;
          if filtro <> '' then
            Receber_Data_Analitico.SQL.ADD (' where '+filtro);

          Receber_Data_Analitico.SQL.ADD ( ' ORDER BY DATA, NOME, PESSOA_FJ ' );
          Receber_Data_Analitico.Open ;
     END;
END;


procedure TFrmFiltrarReceberData.IncLin;
begin
     Lin := Lin + 1;
     If Lin > 60
     then
         Impressora.NovaPagina ;
end;

procedure TFrmFiltrarReceberData.EdClienteInicialExit(Sender: TObject);
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

procedure TFrmFiltrarReceberData.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DmFinanceiro.SelPessoasFJ.Active
     then
         DmFinanceiro.SelPessoasFJ.Open ;

     Frm_Localizar_Cliente := TFrm_Localizar_Cliente.Create(Self);

     DATAINICIAL.SETFOCUS;
     rdArqMorto.itemindex := 2;
end;

procedure TFrmFiltrarReceberData.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
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
     IMPRESSORA.impf(06,52,'        ARQ. MORTO',[COMP17]);

     inc(pagina);
     Lin  := 7;
end;

procedure TFrmFiltrarReceberData.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmFiltrarReceberData.EdClienteInicialEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

end;

procedure TFrmFiltrarReceberData.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Aux : String;
   Value : TDate;
begin
     if ( not ASelected  ) then
     begin
       Aux := trim(ANode.Values[GRIDarq_morto.Index]);

       IF ( Aux = 'S' ) THEN
         AColor := clRed
       else
       begin
         Value := ANode.Values[GRIDDATA.Index];

         if not VarIsNull(Value) then
         begin
           if Value < Date then
              AColor := $00ECAD84
            else
              AColor := clWhite;
         end
         else
           AFont.Color := clBlack;
       end
     end;
end;

procedure TFrmFiltrarReceberData.actPreviewExecute(Sender: TObject);
begin
  if (DATAINICIAL.date <= 0) then
     begin
       application.messagebox('Defina a data inicial','Aviso', mb_iconinformation + mb_ok);
       DATAINICIAL.SetFocus ;
       EXIT;
     end;

     if (DATAFinal.date <= 0) then
     begin
       application.messagebox('Defina a data final','Aviso', mb_iconinformation + mb_ok);
       DATAFINAL.SetFocus ;
       EXIT;
     end;

     SELECIONA ;

     IF CkImp.Checked THEN
        IMPRIME
end;

procedure TFrmFiltrarReceberData.FormCreate(Sender: TObject);
begin
   If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

end.


