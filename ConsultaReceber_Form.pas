 unit ConsultaReceber_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
   Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint, Variants, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmConsultaReceber = class(TForm)
    pnlclient: TPanel;
    Bevel3: TBevel;
    pnlBottom: TPanel;
    Bevel1: TBevel;
    BtnFechar: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    Bevel4: TBevel;
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
    EdTipo: TdxPickEdit;
    IMPRESSORA: TRDprint;
    Label4: TcxLabel;
    LBLCLIENTE: TcxLabel;
    CkVend: TCheckBox;
    RdArqMorto: TRadioGroup;
    GRID: TdxDBGrid;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDPARCIAL: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDJUROSPARC: TdxDBGridColumn;
    GRIDJUROSCALC: TdxDBGridColumn;
    GRIDTOTAL_NOMINAL: TdxDBGridColumn;
    GRIDJUROS: TdxDBGridColumn;
    GRIDDESCONTOS: TdxDBGridColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDATRASO: TdxDBGridColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    GRIDTIPO: TdxDBGridColumn;
    GRIDCOBRADOR: TdxDBGridColumn;
    GRIDARQ_MORTO: TdxDBGridMaskColumn;
    ActPreview: TAction;
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
    procedure EdTipoEnter(Sender: TObject);
    procedure EdTipoExit(Sender: TObject);
    procedure CkImpExit(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FiltroRpt : string;
    Procedure Imprime ;
    procedure SelecionaReceber ;

    procedure IncLin;

  public
    Opcao: String ;
    { Public declarations }
  end;

var
  FrmConsultaReceber: TFrmConsultaReceber;
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
    Empresas_DM, Usuarios_DM, Localizar_Vendedor;

{$R *.DFM}

procedure TFrmConsultaReceber.ActFecharExecute(Sender: TObject);
begin
     close ;
end;

procedure TFrmConsultaReceber.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmFinanceiro.SelPessoas.Close ;

     Action := caFree;
     FrmConsultaReceber := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmConsultaReceber.FormResize(Sender: TObject);
begin
  Bevel1.Width := pnlBottom.Width - 30;

  BtnFechar.Left := Bevel1.Left + (Bevel1.Width - BtnFechar.Width);
end;

procedure TFrmConsultaReceber.DataInicialExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     TIRACORFUNDO( SENDER );
     TRY
        IF ( DATAINICIAL.TEXT <> '  /  /    ' ) AND ( DATAINICIAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAINICIAL.TEXT ) ;
        END
        ELSE
          if DATAINICIAL.TEXT = '  /  /    '
          THEN
            DATAINICIAL.DATE := STRTODATE ('01/01/1900');
     EXCEPT
           MessageDlg('Data Inválida!',MtError,[MbOk],0);
           DATAINICIAL.SETFOCUS ;
     END;
end;

procedure TFrmConsultaReceber.DataFinalExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin

     TIRACORFUNDO( SENDER );
     TRY
        IF ( DATAFINAL.TEXT <> '  /  /    ' ) AND ( DATAFINAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAFINAL.TEXT ) ;
        END
        ELSE
          if DATAFINAL.TEXT = '  /  /    '
          THEN
             DATAFINAL.DATE := STRTODATE ('31/12/9999');

     EXCEPT
           MessageDlg(' Data Inválida!',MtInformation,[MbOk],0);
           DATAFINAL.SETFOCUS ;
     END;
end;

procedure TFrmConsultaReceber.IMPRIME;
VAR
   IMP, STR, NOMEVENDEDOR : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL, TOTALJUROS: Real ;
   ULTCOD           : INTEGER;
begin
  PAGINA := 1;
  Lin := 5;
  IMPRESSORA.ABRIR;
  WITH DMFINANCEIRO DO
  BEGIN
    TOTAL := 0;//TOTAL DO CLIENTE
    TOTALGERAL := 0;//TOTAL DAS CONTAS
    JUROSGERAL := 0;//VALOR DOS JUROS
    VERRECEBER.DisableControls ;
    IMP := 'N' ; //VERIFICA SE JA FOI IMPRESSO OS DADOS DO CLIENTE
    WHILE NOT VERRECEBER.Eof DO
    BEGIN
      IncLin;

      IF IMP = 'N'
      THEN BEGIN
           If Length (VERRECEBERCPF_CGC.Value) <= 11
           THEN BEGIN
                IMPRESSORA.impf(Lin,01,INTTOSTR(VERRECEBERPESSOA_FJ.Value) + '-'+ VERRECEBERNOME.Value  + ' CPF ' + MASCARACPF(VERRECEBERCPF_CGC.Value) + ' ' + VerReceberENDERECO.VALUE + ' N ' + VerReceberNUMERO.VALUE + ' ' + VerReceberBAIRRO.VALUE + ' ' + VerReceberFONE.VALUE, [comp17]);
           END
           ELSE BEGIN
                IMPRESSORA.impf(Lin,01,INTTOSTR(VERRECEBERPESSOA_FJ.Value) + '-'+ VERRECEBERNOME.Value  + ' CNPJ ' + MASCARACNPJ(VERRECEBERCPF_CGC.Value) + ' ' + VerReceberENDERECO.VALUE + ' N ' + VerReceberNUMERO.VALUE + ' ' + VerReceberBAIRRO.VALUE + ' ' + VerReceberFONE.VALUE, [comp17]);
           END;

           IMP := 'S' ;

           //ULTIMO CODIGO IMPRESSO
           ULTCOD := VERRECEBERPESSOA_FJ.VALUE ;

           TOTAL := 0;//TOTAL DO CLIENTE
           TOTALJUROS := 0;//JUROS DO CLIENTE

           IncLin ;
      END;
      //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
      //lancamento
      IMPRESSORA.impf(Lin,01,DATETOSTR(VerReceberDT_LANCTO.Value ),[comp17]);

      //Tipo de Documento
      IMPRESSORA.impf(Lin,08, VerReceberTIPO_DOCTO.Value ,[comp17]);

      //Documento
      IMPRESSORA.impf(Lin,11, COPY( VerReceberDOCTO.Value,1,14) ,[comp17]);

      //VENCIMENTO
      IMPRESSORA.impf(Lin,19, DATETOSTR(VerReceberDT_VENCTO.Value ) ,[comp17]);

      //ATRASO
      IMPRESSORA.impf(Lin,27, FLOATTOSTR(DATE-VerReceberDT_VENCTO.Value ) ,[comp17]);

      //PARCELA
      IMPRESSORA.impf(Lin,31, VerReceberPARCELA.Value ,[comp17]);

      //DUPLICATA
      IMPRESSORA.impf(Lin,35, VerReceberNUMDUPLICATA.TEXT ,[comp17]);

      IF CkVend.Checked
      THEN BEGIN
           //HISTORICO
           IMPRESSORA.impf(lin,39, COPY(VerReceberHISTORICO.Value, 1, 22)  ,[comp17]);
      END
      ELSE BEGIN
           //HISTORICO
           IMPRESSORA.impf(lin,39, COPY(VerReceberHISTORICO.Value, 1, 37)  ,[comp17]);
      END;

      IF CkVend.Checked
      THEN BEGIN
           IF VERRECEBERCODIGO_VN.VALUE > 0
           THEN BEGIN
                DmFinanceiro.DADOS_VENDA.CLOSE ;

                DmFinanceiro.DADOS_VENDA.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
                DmFinanceiro.DADOS_VENDA.ParamByName ('COD').AsInteger  := VERRECEBERCODIGO_VN.VALUE ;
                DmFinanceiro.DADOS_VENDA.open ;

                IF TRIM(DmFinanceiro.DADOS_VENDANOME_VENDEDOR.Value) <> ''
                THEN BEGIN
                     NOMEVENDEDOR := DADOS_VENDANOME_VENDEDOR.Value;

                     IMPRESSORA.impf(LIN, 50, COPY(NOMEVENDEDOR,1,13), [comp17])
                END;

                DmFinanceiro.DADOS_VENDA.CLOSE ;
           END;
      END;

      //VALOR
      STR :=  FORMATFLOAT ('###,###,##0.00', VERRECEBERTOTAL.Value );
      WHILE LENGTH(STR) < 10 DO
      BEGIN
           STR := ' ' + STR ;
      END;

      IMPRESSORA.impf(Lin, 61, STR ,[comp17]);

      //JUROS
      JUROS := VerReceberJuros_Calculadors.value ;

      STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
      WHILE LENGTH(STR) < 10 DO
      BEGIN
           STR := ' ' + STR ;
      END;

      IMPRESSORA.impf(Lin,68, STR ,[comp17]);

      STR :=  FORMATFLOAT ('###,###,##0.00', JUROS + VERRECEBERTOTAL.Value);
      WHILE LENGTH(STR) < 10 DO
      BEGIN
           STR := ' ' + STR ;
      END;

      //VALOR
      IMPRESSORA.impf(Lin,74, STR ,[comp17]);

      TOTAL      := TOTAL      + VERRECEBERTOTAL.Value         ;
      TOTALGERAL := TOTALGERAL + VERRECEBERTOTAL.Value         ;
      JUROSGERAL := JUROSGERAL + JUROS ;
      TOTALJUROS := TOTALJUROS + JUROS ;

      VERRECEBER.NEXT ;

      IF (( ULTCOD <> VERRECEBERPESSOA_FJ.VALUE )AND(NOT VERRECEBER.EOF))
      THEN BEGIN
           IncLin;

           IMPRESSORA.impf(Lin,61, '-----------' ,[comp17]);
           IMPRESSORA.impf(Lin,68, '-----------' ,[comp17]);
           IMPRESSORA.impf(Lin,74, '-----------' ,[comp17]);

           IncLin;

           IMPRESSORA.impf(Lin,50, ' TOTAL CLIENTE' ,[comp17]);

           //VALOR
           STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL);

           WHILE LENGTH(STR) < 10 DO
           BEGIN
                STR := ' ' + STR ;
           END;

           IMPRESSORA.impf(Lin, 61, STR ,[comp17]);

           //JUROS
           STR :=  FORMATFLOAT ('###,###,##0.00', TOTALJUROS );

           WHILE LENGTH(STR) < 10 DO
           BEGIN
                STR := ' ' + STR ;
           END;

           IMPRESSORA.impf(Lin, 68, STR ,[comp17]);

           //TOTAL
           STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL + TOTALJUROS );

           WHILE LENGTH(STR) < 10 DO
           BEGIN
                STR := ' ' + STR ;
           END;

           IMPRESSORA.impf(Lin,74, STR ,[comp17]);

           IncLin;

           IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

           IMP := 'N' ;
      END
      ELSE BEGIN
           IF (VERRECEBER.EOF)
           THEN BEGIN
                IncLin;

                IMPRESSORA.impf(Lin,74, '-----------' ,[comp17]);

                IncLin;

                IMPRESSORA.impf(Lin,50, ' TOTAL CLIENTE' ,[comp17]);


                //VALOR
                STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL);

                WHILE LENGTH(STR) < 10 DO
                BEGIN
                     STR := ' ' + STR ;
                END;

                IMPRESSORA.impf(Lin, 61, STR ,[comp17]);

                //JUROS
                STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );

                WHILE LENGTH(STR) < 10 DO
                BEGIN
                     STR := ' ' + STR ;
                END;

                IMPRESSORA.impf(Lin, 68, STR ,[comp17]);

                //TOTAL
                STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL + JUROS );

                WHILE LENGTH(STR) < 10 DO
                BEGIN
                     STR := ' ' + STR ;
                END;

                IMPRESSORA.impf(Lin,74, STR ,[comp17]);

                IncLin;

                IMPRESSORA.impf(Lin,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);

                IMP := 'N' ;
           END;
      END;
    END;
    IncLin;
    IMPRESSORA.impf(Lin,61, '-----------' ,[comp17]);
    IMPRESSORA.impf(Lin,68, '-----------' ,[comp17]);
    IMPRESSORA.impf(Lin,74, '-----------' ,[comp17]);
    IncLin;
    IMPRESSORA.impf(Lin,51, ' TOTAL GERAL' ,[comp17]);
    //TOTAL GERAL
    STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );
    WHILE LENGTH(STR) < 10 DO
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin,61, STR ,[comp17]);
    //JUROS GERAL
    STR :=  FORMATFLOAT ('###,###,##0.00', JUROSGERAL );
    WHILE LENGTH(STR) < 10 DO
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin,68, STR ,[comp17]);
    //TOTAL GERAL
    STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL + JUROSGERAL );
    WHILE LENGTH(STR) < 10 DO
      STR := ' ' + STR ;
    IMPRESSORA.impf(Lin,74, STR ,[comp17]);
    IMPRESSORA.FECHAR;
    VERRECEBER.EnableControls ;
  END;
end;

procedure TFrmConsultaReceber.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  try
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);
     Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoas ;
     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
     end;
     Frm_Localizar_Cliente.free ;
     Frm_Localizar_Cliente := Nil ;
  Except
  end;
end;



procedure TFrmConsultaReceber.SelecionaReceber ;
var
  campo, filtro : string;
begin
  WITH DmFinanceiro DO
  BEGIN
    verreceber.oncalcfields := OnCalcDataSetReceber;
    if (datainicial.date <=0) then
      datainicial.date := strtodate('01/01/1901');
    if (datafinal.date <=0) then
      datafinal.date := strtodate('01/01/2050');

    verreceber.Close ;
    //-------------selecionando o tipo de procediemnto---------------//
    if EdTipo.Text = 'Lancamento' then
      verreceber.sql.text := ' SELECT * FROM VER_RECEBER(:CNPJ) pcd where (pcd.dt_lancto between :dini and :dfim) '
    else if EdTipo.Text = 'Vencimento' then
      verreceber.sql.text := 'SELECT * FROM VER_RECEBER(:CNPJ) pcd where (pcd.dt_vencto between :dini and :dfim) ';

    //-----------------------------------------------------------------//
    verreceber.parambyname('dini').value := datainicial.date;
    verreceber.parambyname('dfim').value := datafinal.date;
    verreceber.ParamByName('CNPJ').AsString := DmApp.Cnpj ;

    case rdArqMorto.ItemIndex of
      0 : Filtro := ' and arq_morto = ''S''';
      1 : Filtro := ' and arq_morto = ''N''';
    end;

    if TRIM(LBLCLIENTE.Caption) <> '' THEN
       filtro := filtro + ' and PESSOA_FJ = '+ trim(EdClienteInicial.text);

    if filtro <> '' then
      verreceber.sql.add(filtro);

    verreceber.sql.add (' ORDER BY NOME, PESSOA_FJ');
    verreceber.open ;
  END;
END;

procedure TFrmConsultaReceber.IncLin;
begin
     Lin := Lin + 1;
     If Lin > 60
     then
         Impressora.NovaPagina ;
end;

procedure TFrmConsultaReceber.EdClienteInicialExit(Sender: TObject);
begin
  //TROCA A COR PARA A COR SELECIONADA
  TIRACORFUNDO( SENDER );
  If ( trim(EdClienteInicial.Text) ) <> '' then
  begin
       if DmFinanceiro.SelPessoas.locate ( 'CODIGO', trim(EdClienteInicial.Text),[] )
       then begin
            LBLCLIENTE.Caption := DmFinanceiro.SelPessoasNOME_RAZAO.Value ;
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

procedure TFrmConsultaReceber.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DmFinanceiro.SelPessoas.Active
     then
         DmFinanceiro.SelPessoas.Open ;

     EdTipo.ItemIndex := 1;
     rdArqMorto.itemIndex := 2;
end;

procedure TFrmConsultaReceber.IMPRESSORANewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[Normal]);
     IMPRESSORA.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     IMPRESSORA.impf(03,01,'RELATORIO DE PENDENCIAS - ' + UPPERCASE(EDTIPO.TEXT),[Normal]);
     IMPRESSORA.impf(03,45,'DATA: '+ DATETIMETOSTR(NOW),[Normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     IMPRESSORA.impf(04,01,'(LANCAMENTO = ' + DATAINICIAL.Text + ' A ' + DATAFINAL.Text +' - Arquivo Morto = '+RdArqMorto.Items[RdArqMorto.itemindex]+')', [comp17]);
     IMPRESSORA.impf(05,01,'===============================================================================',[Normal]);

     IMPRESSORA.impf(06,01,'LANC', [COMP17]);
     IMPRESSORA.impf(06,08,'DOCUMENTO', [COMP17]);
     IMPRESSORA.impf(06,19,'VENCTO', [COMP17]);
     IMPRESSORA.impf(06,27,'ATRASO', [COMP17]);
     IMPRESSORA.impf(06,31,'PARC', [COMP17]);
     IMPRESSORA.impf(06,35,'DPL', [COMP17]);
     IMPRESSORA.impf(06,39,'HISTORICO', [COMP17]);

     IF CkVend.Checked
     THEN BEGIN
          IMPRESSORA.impf(06,50,'VENDEDOR', [COMP17]);
     END;

     IMPRESSORA.impf(06,61,'    VALOR', [COMP17]);
     IMPRESSORA.impf(06,68,'    JUROS', [COMP17]);
     IMPRESSORA.impf(06,74,'    TOTAL',[COMP17]);

     inc(pagina);
     Lin  := 7;
end;

procedure TFrmConsultaReceber.IMPRESSORABeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     IMPRESSORA.impf(63,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(64,01,dmApp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmConsultaReceber.EdTipoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );

end;

procedure TFrmConsultaReceber.EdTipoExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TFrmConsultaReceber.CkImpExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmConsultaReceber.GRIDCustomDrawCell(Sender: TObject;
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
       Aux := trim(ANode.Values[GRIDarq_morto.Index]);

       IF ( Aux = 'S' ) THEN
         AColor := clRed
       else
       begin
         Value := ANode.Values[GRIDVENCIMENTO.Index];

         if not VarIsNull(Value) then
         begin
           if Value < Date then
              AColor := $00ECAD84
            else
              AColor := clWhite;
         end
         else
           AFont.Color := clBlack;

       end;
     end;
end;

procedure TFrmConsultaReceber.ActPreviewExecute(Sender: TObject);
begin
  if (datainicial.Date <=0) then
    DATAINICIAL.Date := strtodate('01/01/1900') ;

  if (datafinal.Date <=0) then
     DATAFINAL.Date := strtodate('31/12/9999') ;

  SELECIONARECEBER ;

  if CkImp.Checked then
    IMPRIME ;  
end;

procedure TFrmConsultaReceber.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

end.


