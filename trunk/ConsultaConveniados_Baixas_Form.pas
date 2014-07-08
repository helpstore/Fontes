 unit ConsultaConveniados_Baixas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
   Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint,   IBCustomDataSet, IBQuery, Variants, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, Menus, cxButtons;

type
  TFrmFiltrarRecConvenioBaixa = class(TForm)
    pnlclient: TPanel;
    Bevel3: TBevel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
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
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    IMPRESSORA: TRDprint;
    LBLCLIENTE: TcxLabel;
    GRIDVLR_PARCIAL: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDJUROS: TdxDBGridColumn;
    GRIDDESCONTOS: TdxDBGridColumn;
    GRIDTIPO: TdxDBGridColumn;
    GRIDColumn16: TdxDBGridColumn;
    CkFolha: TCheckBox;
    ANDA: TProgressBar;
    CkRazao: TCheckBox;
    ActImprimir: TAction;
    Label4: TcxLabel;
    CmbLocal: TdxLookupEdit;
    dslocalcobranca: TDataSource;
    CmbTipoDocto: TdxLookupEdit;
    DsTipoDoc: TDataSource;
    GRIDVLR_BAIXA: TdxDBGridColumn;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
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
    procedure ActImprimirExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    Procedure Imprime          ;
    procedure SelecionaReceber ;

    procedure IncLin;

  public
    Opcao: String ;
    { Public declarations }
  end;
var
  FrmFiltrarRecConvenioBaixa: TFrmFiltrarRecConvenioBaixa;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;

implementation

uses
    Application_DM,
    Funcoes,
    Main, Listagens_DM,
    Localizar_Cliente,
    Financeiro_Dm, Empresas_DM, Usuarios_DM;

{$R *.DFM}

procedure TFrmFiltrarRecConvenioBaixa.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmFiltrarRecConvenioBaixa.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltrarRecConvenioBaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmFinanceiro.SelPessoasFJ.Close ;
     DmFinanceiro.Local_Cobranca.Close ;
     DmFinanceiro.SelTipoDocto.Close ;

     Action := caFree;
     FrmFiltrarRecConvenioBaixa := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmFiltrarRecConvenioBaixa.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;

  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TFrmFiltrarRecConvenioBaixa.DataInicialExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     TIRACORFUNDO( SENDER );
     TRY
        IF ( DATAINICIAL.TEXT <> '  /  /    ' ) AND ( DATAINICIAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAINICIAL.TEXT ) ;
        END;

        if DATAINICIAL.TEXT = '  /  /    '
        THEN
            DATAINICIAL.DATE := STRTODATE ('01/01/1900');

     EXCEPT
           MessageDlg('Data Inválida!',MtError,[MbOk],0);
           DATAINICIAL.SETFOCUS ;
     END;
end;

procedure TFrmFiltrarRecConvenioBaixa.DataFinalExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     TRY
        IF ( DATAFINAL.TEXT <> '  /  /    ' ) AND ( DATAFINAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAFINAL.TEXT ) ;
        END;

        if DATAFINAL.TEXT = '  /  /    '
        THEN
            DATAFINAL.DATE := STRTODATE ('31/12/9999');

     EXCEPT
           MessageDlg(' Data Inválida!',MtInformation,[MbOk],0);
           DATAFINAL.SETFOCUS ;
     END;
end;

procedure TFrmFiltrarRecConvenioBaixa.IMPRIME;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL, TOTALCONV: Real ;
   ULTCOD, ULTCONV  : INTEGER;
begin
     PAGINA     := 1;
     Lin      := 5;

     If CkRazao.Checked
     then begin
          IMPRESSORA.TamanhoQteLinhas := 33 ;
     end
     else begin
          IMPRESSORA.TamanhoQteLinhas := 66 ;
     end;
     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS
          JUROSGERAL := 0;//VALOR DOS JUROS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          VerRecebidasConvenio.DisableControls ;

          VerRecebidasConvenio.FetchAll ;

          ANDA.Max := VerRecebidasConvenio.RecordCount ;

          WHILE NOT VerRecebidasConvenio.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01,INTTOSTR(VerRecebidasConvenioPESSOA_FJ.Value) + '-'+ VerRecebidasConvenioNOME.Value , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := VerRecebidasConvenioPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
               END;
               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER

               If trim (Copy(VerRecebidasConvenioNOMECONVENIADO.Value,1,25)) = ''
               then begin
                    //CONVENIADO
                    IMPRESSORA.impf(Lin,01, Copy(INTTOSTR(ULTCOD)+'-'+VerRecebidasConvenioNOME.Value,1,25),[comp17]);
               end
               else begin
                    //CONVENIADO
                    IMPRESSORA.impf(Lin,01, Copy(INTTOSTR(VerRecebidasConvenioCONVENIADO.VALUE )+'-'+VerRecebidasConvenioNOMECONVENIADO.Value,1,25),[comp17]);
               end;

               //lancamento
               IMPRESSORA.impf(Lin,21,DATETOSTR(VerRecebidasConvenioDT_BAIXA.Value ),[comp17]);

               //Documento
               IMPRESSORA.impf(Lin,28, VerRecebidasConvenioDOCTO.Value ,[comp17]);

               //VENCIMENTO
               IMPRESSORA.impf(Lin,38, DATETOSTR(VerRecebidasConvenioDT_VENCTO.Value ) ,[comp17]);

               //ATRASO
               IMPRESSORA.impf(Lin,45, FLOATTOSTR(VerRecebidasConvenioDT_BAIXA.VALUE-VerRecebidasConvenioDT_VENCTO.Value ) ,[comp17]);

               //PARCELA
               IMPRESSORA.impf(Lin,50, VerRecebidasConvenioPARCELA.Value ,[comp17]);

               //DUPLICATA
               IMPRESSORA.impf(Lin,54, VerRecebidasConvenioNUMDUPLICATA.TEXT ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', VerRecebidasConvenioVLR_BAIXA.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin, 57, STR ,[comp17]);

               JUROS := VerRecebidasConvenioJUROS.VALUE;

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //TOTAL
               IMPRESSORA.impf(Lin, 65, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VerRecebidasConvenioVLR_BAIXA.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin, 73, STR ,[comp17]);

               TOTAL      := TOTAL + VerRecebidasConvenioVLR_BAIXA.Value + JUROS;
               TOTALGERAL := TOTALGERAL + VerRecebidasConvenioVLR_BAIXA.Value + JUROS ;
               JUROSGERAL := JUROSGERAL + JUROS ;

               VerRecebidasConvenio.NEXT ;

               ANDA.Position := ANDA.Position + 1 ;

               IF (( ULTCOD <> VerRecebidasConvenioPESSOA_FJ.VALUE )AND(NOT VerRecebidasConvenio.EOF))
               THEN BEGIN
                    IncLin;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    IMPRESSORA.impf(Lin,55, ' TOTAL CLIENTE' ,[comp17]);

                    IMPRESSORA.impf(Lin,73, STR ,[comp17]);

                    IMP := 'N' ;

                    If CkFolha.Checked
                    then begin
                         Lin := 60 ;
                         
                         IncLin;
                    end
                    else begin
                         IncLin;

                         IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
                    end;
               END
               ELSE BEGIN
                    IF (VerRecebidasConvenio.EOF)
                    THEN BEGIN
                         IncLin;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         IMPRESSORA.impf(Lin,55, ' TOTAL CLIENTE' ,[comp17]);

                         IMPRESSORA.impf(Lin,73, STR ,[comp17]);

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

          IMPRESSORA.impf(Lin,56, ' TOTAL GERAL' ,[comp17]);

          IMPRESSORA.impf(Lin,73, STR ,[comp17]);

          VerRecebidasConvenio.EnableControls ;

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmFiltrarRecConvenioBaixa.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

        Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
        end;

        Frm_Localizar_Cliente.free ;
        Frm_Localizar_Cliente := Nil ;
  Except
  end;
end;

procedure TFrmFiltrarRecConvenioBaixa.SelecionaReceber ;
VAR
   Cont, Local: Integer;
begin
     WITH DmFinanceiro DO
     BEGIN
          Cont := 0;

          VerRecebidasConvenio.Close ;
          VerRecebidasConvenio.SQL.CLEAR ;
          VerRecebidasConvenio.Params.CLEAR ;
          VerRecebidasConvenio.Params.CreateParam ( FtString, 'CNPJ', PtInput );
          VerRecebidasConvenio.Params.CreateParam ( FtInteger, 'PESSOA_FJ', PtInput );

          VerRecebidasConvenio.SQL.ADD ( ' SELECT * FROM VER_BAIXA_RECEBER_CONVENIO ( :CNPJ, :PESSOA_FJ ) ' );

          VerRecebidasConvenio.ParamByName ( 'CNPJ' ).AsString := DmApp.Cnpj ;

          IF TRIM(LBLCLIENTE.Caption) <> ''
          THEN BEGIN
               VerRecebidasConvenio.ParamByName ('PESSOA_FJ').asInteger := strtoint(trim(EdClienteInicial.text));
          END
          ELSE BEGIN
               VerRecebidasConvenio.ParamByName ('PESSOA_FJ').asInteger := 0;
          END;

          IF ((DATAINICIAL.Text <> '  /  /  ') AND ( DATAINICIAL.Text <> '  /  /    '))
          THEN BEGIN
               Cont := 1;

               VerRecebidasConvenio.Params.CreateParam ( FtDate, 'INI', PtInputOutPut );

               VerRecebidasConvenio.SQL.Add (' Where DT_BAIXA >= :INI ');

               VerRecebidasConvenio.ParamByName ('INI').asDate := DATAINICIAL.Date ;
          END;

          IF ((DATAFINAL.Text <> '  /  /  ') AND ( DATAFINAL.Text <> '  /  /    '))
          THEN BEGIN
               IF Cont = 0
               THEN BEGIN
                    VerRecebidasConvenio.Params.CreateParam ( FtDate, 'FIM', PtInputOutPut );

                    VerRecebidasConvenio.SQL.Add (' Where DT_BAIXA <= :FIM ');

                    VerRecebidasConvenio.ParamByName ('FIM').asDate := DATAFINAL.Date ;
               END
               ELSE BEGIN
                    VerRecebidasConvenio.Params.CreateParam ( FtDate, 'FIM', PtInputOutPut );

                    VerRecebidasConvenio.SQL.Add (' and DT_BAIXA <= :FIM ');

                    VerRecebidasConvenio.ParamByName ('FIM').asDate := DATAFINAL.Date ;
               END;
          END;

          IF TRIM(CmbLocal.TEXT) <> ''
          THEN BEGIN
               IF Cont = 0
               THEN BEGIN
                    VerRecebidasConvenio.Params.CreateParam ( FtInteger, 'LOC', PtInputOutPut );

                    VerRecebidasConvenio.SQL.Add (' Where LOCAL = :LOC ');

                    VerRecebidasConvenio.ParamByName ('LOC').asInteger := cmbLocal.LookupKeyValue ;
               END
               ELSE BEGIN
                    VerRecebidasConvenio.Params.CreateParam ( FtInteger, 'LOC', PtInputOutPut );

                    VerRecebidasConvenio.SQL.Add (' And LOCAL = :LOC ');

                    VerRecebidasConvenio.ParamByName ('LOC').asInteger := cmbLocal.LookupKeyValue ;
               END;
          END;

          IF TRIM(CmbTipoDocto.TEXT) <> ''
          THEN BEGIN
               IF Cont = 0
               THEN BEGIN
                    VerRecebidasConvenio.Params.CreateParam ( FtString, 'DOC', PtInputOutPut );

                    VerRecebidasConvenio.SQL.Add (' Where TIPO_DOCTO = :LOC ');

                    VerRecebidasConvenio.ParamByName ('DOC').asString := CmbTipoDocto.LookupKeyValue ;
               END
               ELSE BEGIN
                    VerRecebidasConvenio.Params.CreateParam ( FtString, 'DOC', PtInputOutPut );

                    VerRecebidasConvenio.SQL.Add (' And  TIPO_DOCTO = :DOC ');

                    VerRecebidasConvenio.ParamByName ('DOC').asString := CmbTipoDocto.LookupKeyValue ;
               END;
          END;

          VerRecebidasConvenio.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, NOMECONVENIADO, CONVENIADO ' );

          VerRecebidasConvenio.Prepare ;
          VerRecebidasConvenio.Open ;
     END;
END;

procedure TFrmFiltrarRecConvenioBaixa.IncLin;
begin
     Lin := Lin + 1;

     If CkRazao.Checked
     then begin
          If Lin > 30
          then
              Impressora.NovaPagina ;
     END
     ELSE BEGIN
          If Lin > 60
          then
              Impressora.NovaPagina ;
     END;
end;

procedure TFrmFiltrarRecConvenioBaixa.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     If ( trim(EdClienteInicial.Text) ) <> ''
     then begin
          if DmFinanceiro.SelPessoasFJ.locate ( 'CODIGO', trim(EdClienteInicial.Text),[] )
          then begin
               LBLCLIENTE.Caption := DmFinanceiro.SelPessoasFJNOME_RAZAO.Value ;
          end
          else begin
               messageDlg('Cliente Não Cadastrado!',MtInformation,[MbOk],0);
               EdClienteInicial.SetFocus ;
          end;
     end
     ELSE BEGIN
          LBLCLIENTE.Caption := '' ;
     END;
end;

procedure TFrmFiltrarRecConvenioBaixa.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DmFinanceiro.SelPessoasFJ.Active
     then
         DmFinanceiro.SelPessoasFJ.Open ;

     If Not DmFinanceiro.Local_Cobranca.Active
     then
         DmFinanceiro.Local_Cobranca.Open ;

     If Not DmFinanceiro.SelTipoDocto.Active
     then
         DmFinanceiro.SelTipoDocto.Open ;

     CmbLocal.SetFocus ;
end;

procedure TFrmFiltrarRecConvenioBaixa.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     if CmbLocal.Text <> '' then
       IMPRESSORA.impf(02,01, UPPERCASE(CmbLocal.text)  , [NORMAL,NEGRITO])
     else
       IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);

     if CmbTipoDocto.text <> ''
     then begin
          IMPRESSORA.impf(03,01,'RELATORIO DE RECEBIMENTOS POR CONVENIO ' + CmbTipoDocto.text ,[Normal]);
     end
     else begin
          IMPRESSORA.impf(03,01,'RELATORIO DE RECEBIMENTOS POR CONVENIO ' ,[Normal]);
     end;

     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(05,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(06,01,'CONVENIADO',[COMP17]);
     IMPRESSORA.impf(06,21,'BAIXA'     ,[COMP17]);
     IMPRESSORA.impf(06,28,'DOCUMENTO' ,[COMP17]);
     IMPRESSORA.impf(06,38,'VENCTO'    ,[COMP17]);
     IMPRESSORA.impf(06,45,'ATRASO'    ,[COMP17]);
     IMPRESSORA.impf(06,50,'PARC'      ,[COMP17]);
     IMPRESSORA.impf(06,54,'DPL'       ,[COMP17]);
     IMPRESSORA.impf(06,57,'     VALOR'     ,[COMP17]);
     IMPRESSORA.impf(06,65,'     JUROS'     ,[COMP17]);
     IMPRESSORA.impf(06,73,'      TOTAL'     ,[COMP17]);

     inc(pagina);

     Lin  := 8;
end;

procedure TFrmFiltrarRecConvenioBaixa.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmFiltrarRecConvenioBaixa.EdClienteInicialEnter(Sender: TObject);
begin
     CORFUNDO( Sender );
end;

procedure TFrmFiltrarRecConvenioBaixa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFiltrarRecConvenioBaixa.ActImprimirExecute(Sender: TObject);
begin
     SELECIONARECEBER ;

     IF CkImp.Checked
     THEN BEGIN
          ANDA.Visible := TRUE  ;
          IMPRIME ;
          ANDA.Visible := FALSE ;
     END;
end;

procedure TFrmFiltrarRecConvenioBaixa.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
begin
     if ( not ASelected  )
     then begin
          Value := ANode.Values[GRIDVENCIMENTO.Index];
          
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


