 unit ConsultaConveniados_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
   Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint,   ppProd, ppClass, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppVar, ppPrnabl, ppCtrls, ppBands, ppCache, ppModule, raCodMod,
    Variants, ppParameter, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmConsultaConvenio = class(TForm)
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
    ANDA: TProgressBar;
    ActImprimir: TAction;
    Label4: TcxLabel;
    CmbLocal: TdxLookupEdit;
    dslocalcobranca: TDataSource;
    CmbTipoDocto: TdxLookupEdit;
    DsTipoDoc: TDataSource;
    ppDBPipeline1: TppDBPipeline;
    Relatorio: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    lblEmpresa: TppLabel;
    lblCaixaF11: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    raCodeModule1: TraCodeModule;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel10: TppLabel;
    ppDBText6: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel11: TppLabel;
    ppShape4: TppShape;
    ppShape12: TppShape;
    ppSystemVariable4: TppSystemVariable;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel1: TppLabel;
    ppLabel12: TppLabel;
    ppDBCalc3: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLabel13: TppLabel;
    RdArqMorto: TRadioGroup;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    GRIDARQUIVO: TdxDBGridMaskColumn;
    EdTipo: TdxPickEdit;
    Label5: TcxLabel;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText12: TppDBText;
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
  FrmConsultaConvenio: TFrmConsultaConvenio;
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

procedure TFrmConsultaConvenio.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmConsultaConvenio.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaConvenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmFinanceiro.SelPessoasFJ.Close ;
     DmFinanceiro.Local_Cobranca.Close ;
     DmFinanceiro.SelTipoDocto.Close ;

     Action := caFree;
     FrmConsultaConvenio := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmConsultaConvenio.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;

  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TFrmConsultaConvenio.DataInicialExit(Sender: TObject);
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

procedure TFrmConsultaConvenio.DataFinalExit(Sender: TObject);
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

procedure TFrmConsultaConvenio.IMPRIME;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL, TOTALCONV: Real ;
   ULTCOD, ULTCONV  : INTEGER;
   juros_cli : real;
begin
     PAGINA     := 1;
     Lin      := 5;

     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          TOTAL      := 0;//TOTAL DO CLIENTE
          TOTALGERAL := 0;//TOTAL DAS CONTAS
          JUROSGERAL := 0;//VALOR DOS JUROS

          IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE

          VerReceberConvenio.DisableControls ;

          VerReceberConvenio.FetchAll ;

          ANDA.Max := VerReceberConvenio.RecordCount ;

          WHILE NOT VerReceberConvenio.Eof DO
          BEGIN
               IncLin;

               IF IMP = 'N'
               THEN BEGIN
                    IMPRESSORA.impf(Lin,01,INTTOSTR(VerReceberConvenioPESSOA_FJ.Value) + '-'+ VerReceberConvenioNOME.Value , [comp17]);

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := VerReceberConvenioPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLin ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               If trim (Copy(VerReceberConvenioNOMECONVENIADO.Value,1,25)) = ''
               then begin
                    //CONVENIADO
                    IMPRESSORA.impf(Lin,01, Copy(VerReceberConvenioNOME.Value,1,25),[comp17]);
               end
               else begin
                    //CONVENIADO
                    IMPRESSORA.impf(Lin,01, Copy(VerReceberConvenioNOMECONVENIADO.Value,1,25),[comp17]);
               end;

               //lancamento
               IMPRESSORA.impf(Lin,21,DATETOSTR(VerReceberConvenioDT_EMISSAO.Value ),[comp17]);

               //Documento
               IMPRESSORA.impf(Lin,28, VerReceberConvenioDOCTO.Value ,[comp17]);

               //VENCIMENTO
               IMPRESSORA.impf(Lin,38, DATETOSTR(VerReceberConvenioDT_VENCTO.Value ) ,[comp17]);

               //ATRASO
               IMPRESSORA.impf(Lin,45, FLOATTOSTR(DATE-VerReceberConvenioDT_VENCTO.Value ) ,[comp17]);

               //PARCELA
               IMPRESSORA.impf(Lin,50, VerReceberConvenioPARCELA.Value ,[comp17]);

               //DUPLICATA
               IMPRESSORA.impf(Lin,54, VerReceberConvenioNUMDUPLICATA.TEXT ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', VerReceberConvenioTOTAL.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin, 57, STR ,[comp17]);

               juros_cli := dmApp.RetornaJuroCli(VerReceberConvenioPessoa_fj.Value);
               JUROS := CalculaJuros(VerReceberConvenioDT_VENCTO.VALUE, DATE, VerReceberConvenioTOTAL.VALUE,juros_cli);

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //TOTAL
               IMPRESSORA.impf(Lin, 65, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VerReceberConvenioTOTAL.Value);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               IMPRESSORA.impf(Lin, 73, STR ,[comp17]);

               TOTAL      := TOTAL + VerReceberConvenioTOTAL.Value + JUROS;
               TOTALGERAL := TOTALGERAL + VerReceberConvenioTOTAL.Value + JUROS ;
               JUROSGERAL := JUROSGERAL + JUROS ;

               VerReceberConvenio.NEXT ;

               ANDA.Position := ANDA.Position + 1 ;

               IF (( ULTCOD <> VerReceberConvenioPESSOA_FJ.VALUE )AND(NOT VerReceberConvenio.EOF))
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

//                    If CkFolha.Checked
  //                  then begin
                         Lin := 60 ;

                         IncLin;
    //                end
      //              else begin
                         IncLin;

                         IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
        //            end;
               END
               ELSE BEGIN
                    IF (VerReceberConvenio.EOF)
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

          VerReceberConvenio.EnableControls ;

          IMPRESSORA.FECHAR;
     END;
end;

procedure TFrmConsultaConvenio.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
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

procedure TFrmConsultaConvenio.SelecionaReceber ;
VAR
   Cont, Local: Integer;
   Filtro, Campo : string;
begin
  WITH DmFinanceiro DO
  BEGIN
    Cont := 0;

    VerReceberConvenio.Close ;
    VerReceberConvenio.SQL.text := ' SELECT * FROM VER_RECEBER_CONVENIO ( :CNPJ, :PESSOA_FJ ) ' ;
    VerReceberConvenio.ParamByName ( 'CNPJ' ).AsString := DmApp.Cnpj ;

    if trim(lblcliente.Caption) <> '' then
      VerReceberConvenio.ParamByName ('PESSOA_FJ').asInteger := strtoint(trim(EdClienteInicial.text))
    else
      VerReceberConvenio.ParamByName ('PESSOA_FJ').asInteger := 0;

    if edTipo.itemindex = 1 then
      campo := ' DT_VENCTO '
    else
      campo := ' DT_LANCTO ';

    case rdArqMorto.ItemIndex of
      0 : Filtro := ' arquivo = ''S''';
      1 : Filtro := ' arquivo = ''N''';
    end;

    IF (datainicial.date > 0) THEN
    begin
      if (filtro <> '') then
        filtro := filtro + ' and ';

      filtro := filtro + campo + ' >= '''+formatdatetime('mm/dd/yyyy',DATAINICIAL.Date)+'''';
    end;

    IF (datafinal.date > 0) then
    begin
      if (filtro <> '') then
        filtro := filtro + ' and ';

      filtro := filtro + campo +' <= '''+formatdatetime('mm/dd/yyyy',DATAfinal.Date)+'''';
    end;

    IF TRIM(CmbLocal.TEXT) <> '' THEN
    begin
      if (filtro <> '') then
        filtro := filtro + ' and ';

      filtro := filtro +' LOCAL = '+inttostr(cmbLocal.LookupKeyValue);
    end;

    IF TRIM(CmbTipoDocto.TEXT) <> '' then
    begin
      if (filtro <> '') then
        filtro := filtro + ' and ';

      filtro := filtro +' TIPO_DOCTO = '''+VarToStr(CmbTipoDocto.LookupKeyValue)+'''';
    end;

    if (filtro <> '') then
      VerReceberConvenio.sql.add(' where '+filtro);

    VerReceberConvenio.SQL.ADD ( ' ORDER BY NOME, PESSOA_FJ, NOMECONVENIADO, CONVENIADO ' );
    VerReceberConvenio.Open ;
  END;
END;

procedure TFrmConsultaConvenio.IncLin;
begin
     Lin := Lin + 1;

{     If CkRazao.Checked
     then begin
          If Lin > 30
          then
              Impressora.NovaPagina ;
     END
     ELSE BEGIN
          If Lin > 60
          then
              Impressora.NovaPagina ;
     END;}
end;

procedure TFrmConsultaConvenio.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
     DmFinanceiro.SelPessoasFJ.Open;
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

procedure TFrmConsultaConvenio.FormShow(Sender: TObject);
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

     DmFinanceiro.VerReceberConvenio.Close;
     CmbLocal.SetFocus;
     RdArqMorto.itemIndex := 2;
     edTipo.itemIndex := 1;
end;

procedure TFrmConsultaConvenio.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     if CmbLocal.Text <> '' then
       IMPRESSORA.impf(02,01, UPPERCASE(CmbLocal.text)  , [NORMAL,NEGRITO])
     else
       IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);

     if CmbTipoDocto.text <> ''
     then begin
          IMPRESSORA.impf(03,01,'RELATORIO DE PENDENCIAS POR CONVENIO ' + CmbTipoDocto.text ,[Normal]);
     end
     else begin
          IMPRESSORA.impf(03,01,'RELATORIO DE PENDENCIAS POR CONVENIO ' ,[Normal]);
     end;

     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(DATE),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(05,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(06,01,'CONVENIADO',[COMP17]);
     IMPRESSORA.impf(06,21,'LANC'      ,[COMP17]);
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

procedure TFrmConsultaConvenio.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmConsultaConvenio.EdClienteInicialEnter(Sender: TObject);
begin
     CORFUNDO( Sender );
end;

procedure TFrmConsultaConvenio.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFrmConsultaConvenio.ActImprimirExecute(Sender: TObject);
begin
     SELECIONARECEBER ;

     IF CkImp.Checked
     THEN BEGIN
          ANDA.Visible := TRUE  ;

          if CmbLocal.text <> ''
          then
              lblCaixaF11.Caption := 'Contas a Receber por Convênio ' + CmbLocal.text
          else
              lblCaixaF11.Caption := 'Contas a Receber por Convênio ';


          lblEmpresa.text := dmapp.nome;
          Relatorio.Print ;

//          IMPRIME ;
          ANDA.Visible := FALSE ;
     END;
end;

procedure TFrmConsultaConvenio.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
   Aux : String;
begin
     if ( not ASelected  ) then
     begin
       Aux := trim(ANode.Values[GRIDarquivo.Index]);

       IF ( Aux = 'S' ) THEN
         AColor := clRed
       else
       begin
          Value := ANode.Values[GRIDVENCIMENTO.Index];

          if not VarIsNull(Value)
          then begin
               if Value < Date
               then
                   AColor := $00ECAD84
               else
                   AColor := clWhite;
          end
          else
            AFont.Color := clBlack;

       end;
     end;
end;

end.


