unit Baixa_Pagar_Multiplos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     cxPropertiesStore, variants, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxLabel;

type
  TFrmBaixaPagarSelecao = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    ActLocalizar: TAction;
    Bevel1: TBevel;
    Label1: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    ActLookup: TAction;
    Label8: TcxLabel;
    Label4: TcxLabel;
    Bevel2: TBevel;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label6: TcxLabel;
    ActBaixar: TAction;
    Label10: TcxLabel;
    dxBarEdit1: TdxBarEdit;
    Label13: TcxLabel;
    Label3: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    Label9: TcxLabel;
    DATAINICIAL: TdxDateEdit;
    DATAFINAL: TdxDateEdit;
    Label11: TcxLabel;
    LBLCLIENTE: TcxLabel;
    EdTipo: TdxPickEdit;
    Label12: TcxLabel;
    BtnOk: TcxButton;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    EdDocumento: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    EdParcela: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    LBLNUMARQ: TcxLabel;
    LBLSOMA: TcxLabel;
    CKSELECIONADO: TCheckBox;
    ActSelecionados: TAction;
    Bevel3: TBevel;
    ActSeleciona: TAction;
    Label5: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label17: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    GRIDPARCIAL: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDDESCONTOS: TdxDBGridColumn;
    GRIDJUROS: TdxDBGridColumn;
    LblCaixa: TcxLabel;
    Panel4: TPanel;
    BtnRecebimetos: TcxButton;
    RzBitBtn1: TcxButton;
    stgFrmBaixaPagarSelecao: TcxPropertiesStore;
    GRIDCOD_INDEXADOR: TdxDBGridMaskColumn;
    GRIDIDX_DATABASE: TdxDBGridDateColumn;
    GRIDIDX_COTACAO: TdxDBGridCurrencyColumn;
    GRIDIDX_QTDE: TdxDBGridCurrencyColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActBaixarExecute(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;  AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure EdTipoKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure DATAINICIALExit(Sender: TObject);
    procedure DATAFINALExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure ActSelecionadosExecute(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure EdTipoEnter(Sender: TObject);
    procedure EdTipoExit(Sender: TObject);
    procedure CKSELECIONADOExit(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure SelecionaLancamento ;
    procedure SelecionaVencimento ;
    Procedure Soma_Pagar (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
    procedure DesmarcaSelecionados;
    procedure LocalizarFornecedor;
  public
    { Public declarations }
    SOMATOTAL  : REAL ;
    QUANTIDADE : INTEGER ;
  end;

var
  FrmBaixaPagarSelecao: TFrmBaixaPagarSelecao;
implementation

uses 
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Dados_Baixa_Form,
     Financeiro_Dm,
     Procedures_DM,
     Dados_Baixa_Pagar_Multiplos_Form,
     Localizar_Fornecedor, Cheque_Contabilidade , Financeiro_Dm2;

{$R *.DFM}

procedure TFrmBaixaPagarSelecao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    DesmarcaSelecionados;
     If MessageDlg('Sair da Tela', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          Datasource.Dataset.Close;

          dmApp.ZeraCaixaUsuario(owner);
          Action := caFree;
          FrmBaixaPagarSelecao := Nil;

          FrmMain.PnlClient.Visible := True;
     end
     else
         action := canone ;
end;

procedure TFrmBaixaPagarSelecao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    DmFinanceiro.SelFornecedor.Close;
    DmFinanceiro.SelFornecedor.Open;

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
  Datasource.AutoEdit := false;
  EdTipo.ItemIndex := 0;
end;

procedure TFrmBaixaPagarSelecao.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmBaixaPagarSelecao.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmBaixaPagarSelecao.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBaixaPagarSelecao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmBaixaPagarSelecao.ActFecharExecute(Sender: TObject);
begin
  If FrmBaixaPagarSelecao.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmBaixaPagarSelecao.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmBaixaPagarSelecao.ActBaixarExecute(Sender: TObject);
Var
   Planilha: Integer ;
   Banco   : String  ;
begin
  if SomaTotal > 0 then
  begin
    CKSELECIONADO.Checked := True ;
    SELECIONAVENCIMENTO ;
    //SOMA OS VALORES
    SOMA_Pagar ( 'VENCIMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)) );


    Application.CreateForm(TFrmDadosBaixaPagarSelecao, FrmDadosBaixaPagarSelecao);
    FrmDadosBaixaPagarSelecao.Valor.Value       := SomaTotal ;
    FrmDadosBaixaPagarSelecao.Valor.ReadOnly    := true ;
    FrmDadosBaixaPagarSelecao.Data.Date         := DmApp.DataCaixa ;
    FrmDadosBaixaPagarSelecao.LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE) ;
    FrmDadosBaixaPagarSelecao.lblnome.caption   := LBLCLIENTE.caption   ;
    FrmDadosBaixaPagarSelecao.HISTORICO.Text    := COMPLETA(COPY(LBLCLIENTE.Caption,1,20),' ', 20) + '  REF PAGTO ' + DmFinanceiro.VerPagarHISTORICO.Value ;

    if FrmDadosBaixaPagarSelecao.ShowModal = MROK then
    begin
      with DmFinanceiro do
      begin
        if trim(FrmDadosBaixaPagarSelecao.cmbconta.text) <> '' then
        begin
          if DmFinanceiro.SelPlanoBanco.Value <> '' then
            Banco := DmFinanceiro.SelPlanoBanco.Value ;

          Planilha := dmfinanceiro2.Baixa_Pagar_Selecao( EdTipo.Text, STRTOINT(trim(EdClienteInicial.Text)), FrmDadosBaixaPagarSelecao.Historico.Text,  FrmDadosBaixaPagarSelecao.Data.Date, DATAINICIAL.Date , DATAFINAL.Date, FrmDadosBaixaPagarSelecao.Valor.Value, FrmDadosBaixaPagarSelecao.Juros.Value, FrmDadosBaixaPagarSelecao.Desconto.Value, DmApp.UsuarioCaixa, StrToInt(FrmDadosBaixaPagarSelecao.cmbConta.LookupKeyValue) , FrmDadosBaixaPagarSelecao.cheque.value, banco, DmApp.turnoCaixa, 0, 'N',LBLCLIENTE.caption);
        end
        else
           dmFinanceiro2.Baixa_Pagar_Selecao('Vencimento' , STRTOINT(trim(EdClienteInicial.Text)), FrmDadosBaixaPagarSelecao.Historico.Text,  FrmDadosBaixaPagarSelecao.Data.Date, DATAINICIAL.Date , DATAFINAL.Date, FrmDadosBaixaPagarSelecao.Valor.Value, FrmDadosBaixaPagarSelecao.Juros.Value, FrmDadosBaixaPagarSelecao.Desconto.Value, DmApp.UsuarioCaixa, dmapp.contacaixa, FrmDadosBaixaPagarSelecao.cheque.value, '', DmApp.turnoCaixa, 0, 'S',LBLCLIENTE.caption);

        Cria_ReciboPagar(FrmDadosBaixaPagarSelecao.Data.Date, EdDocumento.Text, FrmDadosBaixaPagarSelecao.Data.Date, FrmDadosBaixaPagarSelecao.Dinheiro.Value + FrmDadosBaixaPagarSelecao.Cheque.Value, FrmDadosBaixaPagarSelecao.Historico.Text, STRTOINT(trim(EdClienteInicial.Text)));
        VerPagar.Close;
        VerPagar.Open ;
        SelPlano.close ;
      end;
    end;
    FrmDadosBaixaPagarSelecao.Free ;
    FrmDadosBaixaPagarSelecao := Nil ;
  end
  else
  begin
    MessageDlg('Não Existem Valores Selecionados!',MtError,[MbOk],0);
  end;
end;

procedure TFrmBaixaPagarSelecao.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  LocalizarFornecedor;
end;

procedure TFrmBaixaPagarSelecao.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
     If (trim(EdClienteInicial.Text)) <> ''
     then begin
          if DmFinanceiro.SelFornecedor.locate ( 'PESSOA_FJ', trim(EdClienteInicial.Text), [] )
          then begin
               LBLCLIENTE.Caption := DmFinanceiro.SelFornecedorNOME_RAZAO.Value ;
          end
          else begin
               MessageDlg('Fornecedor Não Cadastrado!',MtError,[MbOk],0);
               EdClienteInicial.SetFocus ;
          end;
     end
     else
       LocalizarFornecedor;

end;

procedure TFrmBaixaPagarSelecao.EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBaixaPagarSelecao.DATAINICIALExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
     TRY
        IF (DATAINICIAL.TEXT <> '  /  /    ' ) AND (DATAINICIAL.TEXT <> '  /  /  ')
        THEN BEGIN
             DATA := STRTODATE ( DATAINICIAL.TEXT ) ;
        END;
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAINICIAL.SETFOCUS ;
     END;
end;

procedure TFrmBaixaPagarSelecao.DATAFINALExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
     TRY
        IF ( DATAFINAL.TEXT <> '  /  /    ' ) AND ( DATAFINAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAFINAL.TEXT ) ;
        END;
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAFINAL.SETFOCUS ;
     END;
end;

procedure TFrmBaixaPagarSelecao.SelecionaLancamento ;
begin
  
END;


procedure TFrmBaixaPagarSelecao.SelecionaVencimento ;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          VERPagar.Close ;
          VERPagar.SQL.CLEAR ;
          VERPagar.Params.CLEAR ;
          VERPagar.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERPagar.Params.CreateParam ( FtDate, 'DFIM', PtInput );
          VERPagar.SQL.ADD ( ' SELECT * FROM VER_Pagar_VENCIMENTO ( :CNPJ, :DINI, :DFIM ) ' );
          VERPagar.ParamByName ( 'DINI' ).AsDate := DATAINICIAL.Date ;
          VERPagar.ParamByName ( 'DFIM' ).AsDate := DATAFINAL.Date ;

          IF trim(EdClienteInicial.Text) <> ''
          THEN BEGIN
               VERPagar.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

               VERPagar.SQL.Add (' Where PESSOA_FJ = :PES ');

               VERPagar.ParamByName ('PES').asInteger := STRTOINT(trim(EdClienteInicial.Text)) ;
          END;

          IF CKSELECIONADO.Checked
          THEN BEGIN
               VERPagar.Params.CreateParam ( FtString, 'SEL', PtInputOutPut );

               VERPagar.SQL.Add (' and SELECIONADO = :SEL ');

               VERPagar.ParamByName ('SEL').asString := 'S' ;
          END;

          VERPagar.SQL.ADD ( ' ORDER BY DT_VENCTO, DOCTO ' );

          VERPagar.Prepare ;
          VERPagar.Open ;

          //SOMA OS VALORES
          FrmBaixaPagarSelecao.SOMA_Pagar ( 'VENCIMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)) );
     END;
END;


procedure TFrmBaixaPagarSelecao.BtnOkClick(Sender: TObject);
begin
     IF EdTipo.TEXT = ''
     THEN BEGIN
          MessageDlg('Digite o Tipo de Seleção!',MtError,[MbOk],0);
          Edtipo.SetFocus ;
          EXIT;
     END;

     IF ( trim(EdClienteInicial.text) = '' )
     THEN BEGIN
          MessageDlg('Digite o Fornecedor!',MtError,[MbOk],0);
          EdClienteInicial.SetFocus ;
          EXIT;
     END;

     IF ((DATAINICIAL.Text = '  /  /  ' )OR(DATAINICIAL.Text = '  /  /    ' ))
     THEN BEGIN
          DATAINICIAL.Date := strtodate('01/01/1900') ;
     END;

     IF ((DATAFINAL.Text = '  /  /  ' )OR(DATAFINAL.Text = '  /  /    ' ))
     THEN BEGIN
          DATAFINAL.Date := strtodate('31/12/9999') ;
     END;

     DesmarcaSelecionados;



     IF EdTipo.Text = 'Vencimento'
     THEN BEGIN
          SELECIONAVENCIMENTO ;
     END;

     GRID.SETFOCUS ;
end;

procedure TFrmBaixaPagarSelecao.ActSelecionadosExecute(Sender: TObject);
begin
     CKSELECIONADO.Checked := TRUE ;
     BtnOk.OnClick (Sender) ;
end;

Procedure TFrmBaixaPagarSelecao.Soma_Pagar (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
begin
  //
  {f DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}

  //PARA SABER QUAL PROCEDURE PEGAR
  DMProcs.Soma_Selecionadopgr.StoredProcName := 'SOMA_PAGAR_' +  TIPO;
  //
  DMProcs.Soma_Selecionadopgr.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
  DMProcs.Soma_Selecionadopgr.ParamByName('DINI').asDate        := DIni       ;
  DMProcs.Soma_Selecionadopgr.ParamByName('DFIM').asDate        := DFim       ;
  DMProcs.Soma_Selecionadopgr.ParamByName('PESSOA').asInteger   := Pessoa     ;

  DMProcs.Soma_Selecionadopgr.ExecProc;

  SOMATOTAL  := DMProcs.Soma_Selecionadopgr.ParamByName('SOMA').asFloat;
  QUANTIDADE := DMProcs.Soma_Selecionadopgr.ParamByName('QUANTIDADE').asInteger;

  LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE);
  LBLSOMA.Caption   := FORMATFLOAT('###,###,##0.00', SOMATOTAL );
  //
  //
{ DMProcs.Free;
  DMProcs := Nil;}
end;


procedure TFrmBaixaPagarSelecao.ActSelecionaExecute(Sender: TObject);
Var
   Book: TbookMark ;
begin
     with DmFinanceiro do
     begin
          Seleciona_Pagar (VerPagarCODIGO.VALUE, VerPagarANO.VALUE, VerPagarSELECIONADO.VALUE);

          Book := VerPagar.GetBookmark ;

          VerPagar.Close;
          VerPagar.Open ;

          VerPagar.GotoBookmark ( Book );
          VerPagar.FreeBookmark ( Book );

          IF EdTipo.Text = 'Lancamento'
          THEN BEGIN
               //SOMA OS VALORES
               FrmBaixaPagarSelecao.SOMA_Pagar ( 'LANCAMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)) );
          END
          ELSE BEGIN
               //SOMA OS VALORES
               FrmBaixaPagarSelecao.SOMA_Pagar ( 'VENCIMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)) );
          END;
     end;
end;

procedure TFrmBaixaPagarSelecao.EdTipoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmBaixaPagarSelecao.EdTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmBaixaPagarSelecao.CKSELECIONADOExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmBaixaPagarSelecao.GRIDCustomDrawCell(Sender: TObject;
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



procedure TFrmBaixaPagarSelecao.DesmarcaSelecionados;
begin
  ExecSql('UPDATE fin_contas_pagar SET SELECIONADO = ''N'' WHERE SELECIONADO = ''S'' and CNPJ ='''+dmapp.Cnpj+'''',DmFinanceiro.VerPagar.transaction);
end;

procedure TFrmBaixaPagarSelecao.LocalizarFornecedor;
begin
  Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor);
  Frm_Localizar_Fornecedor.DSource.DataSet := DmFinanceiro.SelFornecedor;

  if (Frm_Localizar_Fornecedor.showmodal = mrOk) then
     EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Fornecedor.CampTrecho);

  frm_Localizar_Fornecedor.free ;
  frm_Localizar_Fornecedor := Nil ;
end;

end.
