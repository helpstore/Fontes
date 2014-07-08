  unit SelFin_Cheques_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   RDprint,  
   dxTLClms, FileCtrl, cxPropertiesStore, Variants, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, cxPC, cxButtons,
  cxLabel,  cxGroupBox;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelFinCheques = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    Actions: TActionList;
    Bevel1: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    btnAlterar: TdxBarButton;
    DsClientes: TDataSource;
    opIncluir: TdxBarButton;
    Panel4: TPanel;
    BtnAcerta: TcxButton;
    BtnDevolve: TcxButton;
    ActImprimir: TAction;
    DsMotivos: TDataSource;
    ActDevolver: TAction;
    ActAcertar: TAction;
    IMPRESSORA: TRDprint;
    BtnCopia: TcxButton;
    RzBitBtn2: TcxButton;
    BtnAcertados: TcxButton;
    BtnRelDevolvidos: TcxButton;
    ActLancarConciliacao: TAction;
    RzBitBtn3: TcxButton;
    actMarcar: TAction;
    actRemessa: TAction;
    RzBitBtn4: TcxButton;
    ActReapresentar: TAction;
    RzBitBtn5: TcxButton;
    actDesmarcarTodos: TAction;
    RzBitBtn6: TcxButton;
    ActTrocarEstado: TAction;
    BtnRelEstado: TcxButton;
    RzBitBtn7: TcxButton;
    ActConciliar: TAction;
    dsFornecedor: TDataSource;
    RzLabel1: TcxLabel;
    RzGroupBox1: TcxGroupBox;
    RzPanel1: TPanel;
    RzPanel3: TPanel;
    RzPanel2: TPanel;
    RzPanel4: TPanel;
    RzBitBtn1: TcxButton;
    ActEstConciliacao: TAction;
    RzPanel5: TPanel;
    Panel5: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Panel3: TPanel;
    Image1: TImage;
    LblTitulo: TcxLabel;
    b2: TBevel;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Panel6: TPanel;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    lblnome: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    lblFornecedor: TcxLabel;
    Label11: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    edNDocto: TdxEdit;
    CmbCliente: TdxButtonEdit;
    CmbMotivo: TdxLookupEdit;
    cmbTipo: TdxPickEdit;
    EdOrdem: TdxPickEdit;
    cmbFornecedor: TdxLookupEdit;
    Data: TdxDateEdit;
    GRID: TdxDBGrid;
    GRIDBANCO: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDCHEQUE: TdxDBGridMaskColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    GRIDCONCILIADO: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDPRE_DATE: TdxDBGridDateColumn;
    GRIDAGENCIA: TdxDBGridMaskColumn;
    GRIDEMISSAO: TdxDBGridDateColumn;
    GRIDDATA_CONCILIACAO: TdxDBGridDateColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDDATA_ACERTO: TdxDBGridDateColumn;
    GRIDPLANILHA: TdxDBGridMaskColumn;
    GRIDDIGITO_AGENCIA: TdxDBGridMaskColumn;
    GRIDDIGITO_CHEQUE: TdxDBGridMaskColumn;
    GRIDDATA_DEVOLUCAO: TdxDBGridDateColumn;
    GRIDVEZES_DEVOLUCAO: TdxDBGridMaskColumn;
    GRIDPROCESSADO: TdxDBGridMaskColumn;
    GRIDID: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDFONE: TdxDBGridMaskColumn;
    GRIDFAX: TdxDBGridMaskColumn;
    GRIDCELULAR: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    GRIDRG_IE: TdxDBGridMaskColumn;
    GRIDLOCAL_TRABALHO: TdxDBGridMaskColumn;
    GRIDFONE_TRABALHO: TdxDBGridMaskColumn;
    GRIDMOTIVO_DEVOLUCAO: TdxDBGridMaskColumn;
    GRIDtotal: TdxDBGridColumn;
    GRIDCMC7: TdxDBGridMaskColumn;
    GRIDDATA_REAPRES: TdxDBGridDateColumn;
    GRIDINDICE: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDJUROS: TdxDBGridMaskColumn;
    GRIDTROCA: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDCONTA_CONC: TdxDBGridMaskColumn;
    GRIDFORNECEDOR: TdxDBGridMaskColumn;
    GRIDNOME_FORNECEDOR: TdxDBGridMaskColumn;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    GRIDMARCADO: TdxDBGridCheckColumn;
    stgManutCheque: TcxPropertiesStore;
    RzBitBtn8: TcxButton;
    RzBitBtn13: TcxButton;
    RzBitBtn11: TcxButton;
    Panel15: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbClienteExit(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure cmbTipoChange(Sender: TObject);
    procedure ActDevolverExecute(Sender: TObject);
    procedure ActAcertarExecute(Sender: TObject);
    procedure ActConciliarExecute(Sender: TObject);
    procedure BtnCopiaClick(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure BtnAcertadosClick(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);    
    procedure BtnRelDevolvidosClick(Sender: TObject);
    procedure ActLancarConciliacaoExecute(Sender: TObject);
    procedure GRID_CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure Marcar(Sender: TObject);
    procedure actRemessaExecute(Sender: TObject);
    procedure ActReapresentarExecute(Sender: TObject);
    procedure actDesmarcarTodosExecute(Sender: TObject);
    procedure ActTrocarEstadoExecute(Sender: TObject);
    procedure BtnRelEstadoClick(Sender: TObject);
    procedure ActEstConciliacaoExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure Synchronize;
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActExportarHtmlExecute(Sender: TObject);

  private
    { Private declarations }
    DragNode: TdxTreeListNode;    
    Procedure Filtrar;
    procedure MontaConsulta;
    procedure OrdenaConsulta;
    procedure SetParametros;
    Procedure ImprimeCopia ;
  public
    { Public declarations }
  end;

var
  FrmSelFinCheques: TFrmSelFinCheques;

implementation

uses Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     Cadastros_DM,
     Relatorios_DM,
     Financeiro_Dm,
     Localizar_Cliente,
     Dados_Devolucao_Form,
     Dados_Acerto_Form,
     Cheques_FRel,
     ChequesAcertados_FRel,
     ChequesDevolvidos_FRel, Entra_Conciliacao_Cheque_Form,
     Dados_Baixa_Form, Entra_EstadoCheque_Form, ChequesEstados_FRel,
  Cheque_Financeiro_Form;

  {$R *.DFM}

procedure TFrmSelFinCheques.Filtrar;
begin
  with DmFinanceiro do
  begin
    VerCheque.Close;
    VerCheque.SelectSql.Clear;
    VerCheque.SelectSql.Add (SelectVerCheque);
    MontaConsulta;
    OrdenaConsulta;
    SetParametros;
    VerCheque.Open;
  end;
end;

procedure TFrmSelFinCheques.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If application.messagebox('Deseja Sair do Cadastro?','Aviso', mb_yesno + mb_iconquestion) = id_yes then
     begin
          dmApp.ZeraCaixaUsuario(owner);

          If DataSource.DataSet.Tag = 0
          Then
              DataSource.DataSet.Close;

          If DsClientes.DataSet.Tag = 0
          Then
              DsClientes.DataSet.Close;

          If DsMotivos.DataSet.Tag = 0
          Then
              DsMotivos.DataSet.Close;

{          DMCadastros.Free;
          DMCadastros := Nil;}

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          Action := caFree;
          FrmSelFinCheques := Nil;

          dmApp.ZeraCaixaUsuario(owner);

          If FrmMain.MDIChildCount = 1 Then
          FrmMain.PnlClient.Visible := True;

          ACTION := CAFREE ;
     end
     else
          abort;

     Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
     if not DirectoryExists(Diretorio) then
     begin
       ForceDirectories(Diretorio);
       MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
     end;
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdManutCheque.txt',Grid.Filter);
end;

procedure TFrmSelFinCheques.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  data.date := date ;
  Try
     If Not(DsClientes.DataSet.Active) Then
        DsClientes.DataSet.Open;

     If Not(dsFornecedor.DataSet.Active) Then
        dsFornecedor.DataSet.Open;

     If Not(DsMotivos.DataSet.Active) Then
        DsMotivos.DataSet.Open;

     If DmApp.CARREGAR_ARQ = 'S'
     THEN begin
         GRID.Options := GRID.Options + [egoLoadAllRecords] ;

         //Cria o Formulario de Localizar Cliente
         Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

         Frm_Localizar_Cliente.GRID.Options := Frm_Localizar_Cliente.GRID.Options + [egoLoadAllRecords] ;
     end
     ELSE BEGIN
         //Cria o Formulario de Localizar Cliente
         Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;
     END;
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

  CmbCliente.SetFocus ;
end;

procedure TFrmSelFinCheques.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdManutCheque.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdManutCheque.txt',GRID.Filter);
end;

procedure TFrmSelFinCheques.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelFinCheques.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelFinCheques.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelFinCheques.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelFinCheques.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmSelFinCheques.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelFinCheques.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = '-' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date -1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
  If Key = '+' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date +1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
end;

procedure TFrmSelFinCheques.Panel2Exit(Sender: TObject);
begin
  //Desmarcando todos os cheques antes de filtra-los
  with dmFinanceiro do
  begin
    if not upDesmarcarTodos.Transaction.active then
      upDesmarcarTodos.Transaction.startTransaction;

    upDesmarcarTodos.ParamByName('cnpj').Value := dmApp.Cnpj;
    upDesmarcarTodos.ExecQuery;
    upDesmarcarTodos.Transaction.CommitRetaining;
  end;
  Filtrar;
end;

procedure TFrmSelFinCheques.Panel2Enter(Sender: TObject);
begin
     DataSource.DataSet.Close;
end;

procedure TFrmSelFinCheques.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelFinCheques.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

     Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMFinanceiro.SelPessoasFjNOME_RAZAO.value ;
     end;

     Frm_Localizar_Cliente.Free ;
     Frm_Localizar_Cliente := Nil;
end;

procedure TFrmSelFinCheques.CmbClienteExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     With DmFinanceiro do
     begin
          If Trim(CmbCliente.Text) <> ''
          then begin
               If SelPessoasFJ.locate ( 'CODIGO', CmbCliente.Text, [] )
               then begin
                    CmbCliente.Text  := SelPessoasFJCodigo.Text      ;
                    lblnome.Caption  := SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbCliente.Text  := '' ;
                    lblnome.Caption  := '' ;
               end;
          end
          else begin
               CmbCliente.Text  := ''  ;
               lblnome.Caption  := ''  ;
          end;
     end;
end;

procedure TFrmSelFinCheques.edDtInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmSelFinCheques.cmbTipoChange(Sender: TObject);
begin
     IF cmbTipo.Text = 'DE'
     THEN BEGIN
          CmbMotivo.Enabled := true  ;
     END
     ELSE BEGIN
          CmbMotivo.LookupKeyValue := 0 ;
          CmbMotivo.Enabled := False ;
     END
end;

procedure TFrmSelFinCheques.ActDevolverExecute(Sender: TObject);
begin
  if (DmFinanceiro.VerChequePROCESSADO.asstring <> 'S') then
  begin
    application.messagebox('A devolução não é possível. Cheque não foi processado','Aviso',mb_ok+mb_iconinformation);
    exit;
  end;

  if ( not DmFinanceiro.VerChequeCheque.Isnull ) and (( DmFinanceiro.VerChequeVEZES_DEVOLUCAO.Value < 1 ) or
      ((DmFinanceiro.VerChequeVEZES_DEVOLUCAO.Value = 1) and (not DmFinanceiro.VerChequeDATA_REAPRES.IsNull))) then
  begin
    Application.CreateForm(TFrmDadosDevolucao, FrmDadosDevolucao);

    FrmDadosDevolucao.EdNome.text      := DataSource.DataSet.FieldByName ('NOME').AsString ;
    FrmDadosDevolucao.EdDocumento.text := DataSource.DataSet.FieldByName ('CHEQUE').AsString ;
    FrmDadosDevolucao.edvencto.text    := DataSource.DataSet.FieldByName ('PRE_DATE').AsString ;
    FrmDadosDevolucao.EdPARCELA.text   := DataSource.DataSet.FieldByName ('BANCO').AsString ;
    FrmDadosDevolucao.EdConta.text     := DataSource.DataSet.FieldByName ('CONTA').AsString ;
    FrmDadosDevolucao.Valor.Value      := DataSource.DataSet.FieldByName ('VALOR').Value;
    FrmDadosDevolucao.Data.Date        := DmApp.DataCaixa ;
    FrmDadosDevolucao.Data.Enabled     := false ;

    if FrmDadosDevolucao.ShowModal = MROK then
    begin

      DmApp.Devolve_Cheque(DataSource.DataSet.FieldByName('BANCO').AsString,
                           DataSource.DataSet.FieldByName('CONTA').AsString,
                           DataSource.DataSet.FieldByName('CHEQUE').AsString,
                           FrmDadosDevolucao.Data.Date,
                           FrmDadosDevolucao.cmbMotivo.LookupKeyValue);
      DataSource.DataSet.Refresh;
      ImprimeCopia ;
    end;
    FrmDadosDevolucao.Free   ;
    FrmDadosDevolucao := nil ;
  end
  else begin
    if ( DataSource.DataSet.FieldByName ('VEZES_DEVOLUCAO').Value > 0 ) then
      MessageDlg('Este Cheque Já Foi Devolvido '+DataSource.DataSet.FieldByName ('VEZES_DEVOLUCAO').AsString + ' Vez(es), verifique!', mterror, [mbok],0);
  end;
end;

procedure TFrmSelFinCheques.ImprimeCopia ;
Var
   ENDERECO, CIDADE, FONE, FONE2, FONETRAB, CEL, FAX, BAIRRO, NOME: STRING;
Begin
     IMPRESSORA.ABRIR;

     WITH DMFINANCEIRO DO
     BEGIN
          VERPESSOA ( DmFinanceiro.VerChequePessoa_Fj.Value );

          ENDERECO  := Ver_PessoaENDERECO.value + ', N ' + Ver_PessoaNUMERO.VALUE ;
          CIDADE    := Ver_PessoaCIDADE.VALUE     ;
          FONE      := Ver_PessoaFONE.VALUE       ;
          FONE2     := Ver_PessoaFONE_CLIENTE.VALUE;
          FONETRAB  := Ver_PessoaFONE_TRABALHO.VALUE;
          CEL     := Ver_PessoaCELULAR.VALUE    ;
          FAX     := Ver_PessoaFAX.Value;
          BAIRRO    := Ver_PessoaBAIRRO.VALUE     ;
          NOME      := Ver_PessoaNOME_RAZAO.VALUE ;

          IMPRESSORA.impf( 02 ,18, 'CÓPIA DE CHEQUE' ,[EXPANDIDO, NEGRITO]);

          IMPRESSORA.impf( 04 ,45, DATETIMETOSTR(NOW) ,[comp17, NEGRITO]);

          IMPRESSORA.impf( 05 ,01, 'EMPRESA:          ' + DMAPP.NOME ,[comp17]);

          IMPRESSORA.impf( 06 ,01, 'CLIENTE:          ' + NOME ,[comp17]);

          IMPRESSORA.impf( 07 ,01, 'CPF    :          ' + DmFinanceiro.VerChequeCPF_CGC.Value ,[comp17]);

          IMPRESSORA.impf( 07 ,45, 'RG     :'           + DmFinanceiro.VerChequeRG_IE.Value ,[comp17]);

          IMPRESSORA.impf( 08 ,01, 'END    :          ' + ENDERECO ,[comp17]);

          IMPRESSORA.impf( 09 ,01, 'BAIRRO :          ' + BAIRRO ,[comp17]);

          IMPRESSORA.impf( 09 ,45, 'CIDADE :'           + CIDADE ,[comp17]);

          IMPRESSORA.impf( 10 ,01, 'FONES  :          ' + FONE + ' / ' + FONE2 + ' FONE TRAB.: ' + FONETRAB + ' CEL: ' + CEL + ' FAX:  ' + FAX ,[comp17]);

//          IF TRIM(FONE2) <> '' THEN
//              IMPRESSORA.impf( 10 ,45, 'FONE   :' + TRIM(FONE2) ,[comp17]);

//          IMPRESSORA.impf( 11 ,01, 'BANCO  :  ' + VerChequeBANCO.Value + ' '+CHEQUEBANCO.VALUE ,[comp17]);
          IMPRESSORA.impf( 11 ,01, '-------Dados do Cheque------:' ,[comp17]);
          IMPRESSORA.impf( 12 ,05, 'banco: ' + VerChequeBANCO.Value +  '     agencia: ' + VerChequeAGENCIA.Value +
          '     c/c: ' + VerChequeCONTA.Value + '     cheque: ' + VerChequeCHEQUE.AsString +
          '     valor: ' + FORMATFLOAT('###,###,##0.00',VerChequeVALOR.Value) +
          '     data vcto: '+ DateToStr(VerChequePRE_DATE.Value), [comp17]);

          IMPRESSORA.impf( 13 ,05, 'juros ao dia: ' + FORMATFLOAT('R$ ###,###,##0.00', (DMApp.TAXA /30)* VerChequeVALOR.Value/100) +   '     ultima devolucao:  ' + DATETOSTR(VerChequeDATA_DEVOLUCAO.VALUE) + '     nº devolucoes:  ' + VerChequeVEZES_DEVOLUCAO.AsString, [comp17]);

          IMPRESSORA.impf( 14 ,05, 'motivo: ' + VerChequeMOTIVO_DEVOLUCAO.value, [comp17]);

          IMPRESSORA.impf( 16,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          IMPRESSORA.impf( 18,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          IMPRESSORA.impf( 20,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          IMPRESSORA.impf( 22,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          IMPRESSORA.impf( 24,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          IMPRESSORA.impf( 26,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          IMPRESSORA.impf( 28,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          IMPRESSORA.impf( 30,01, '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -'  ,[comp17]);

          DmFinanceiro.Ver_Pessoa.Close ;
     END;
     IMPRESSORA.FECHAR;

end;

procedure TFrmSelFinCheques.ActAcertarExecute(Sender: TObject);
Var
   Msg: String;
   juros_cli : real;
begin
  if (not DmFinanceiro.VerChequeCheque.Isnull ) and ((DmFinanceiro.VerChequeTIPO.Value =  'DE') or ( DmFinanceiro.VerChequeTIPO.Value =  'D2')) then
  begin
    Application.CreateForm(TFrmDadosBaixa, FrmDadosBaixa);
    with FrmDadosBaixa do
    begin
      EdNome.Text := DmFinanceiro.VerChequeNOME.Value;
      EdDocumento.Text := 'Chq ' + DmFinanceiro.VerChequeCheque.text;
      edvencto.Text := FormatDateTime('dd/mm/yyyy', DmFinanceiro.VerChequePRE_DATE.Value);
      Valor.Value := DmFinanceiro.VerChequeVALOR.Value;
      juros_cli := dmApp.RetornaJuroCli(DmFinanceiro.VerChequePessoa_FJ.value);
      Juros_Calculados := CALCULAJUROS(DmFinanceiro.VerChequePRE_DATE.Value, DmaPP.DataCaixa, DmFinanceiro.VerChequeVALOR.Value,juros_cli);
      desconto.Value := 0;
      Juros.Value := Juros_Calculados;
      Total.Value      := Valor.Value + Juros.Value ;
      Data.Date        := DmApp.DataCaixa ;
      cmbConta.LookupKeyValue := 0;
      cmbConta.Enabled := True;
      ShowModal;

      if FrmDadosBaixa.ModalResult = mrok then
        with DmFinanceiro do
        begin
          with DmFinanceiro.upAcertaCheque do
          begin
            try
              If Arredonda(FrmDadosBaixa.Cheque.value,2) > 0 then
              begin
                 FrmCheque_Planilha := TFrmCheque_Planilha.Create(Self);
                 FrmCheque_Planilha.TotalDesdobrar := Arredonda(FrmDadosBaixa.Cheque.value,2);
                 if (DmApp.EXIBE_ACERTO = 'S') then
                   FrmCheque_Planilha.Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
                 else
                   FrmCheque_Planilha.Planilha       := DMApp.GerarCodigo('PLANILHA', 1);
                 FrmCheque_Planilha.Cliente        := VerChequePESSOA_FJ.value;
                 FrmCheque_Planilha.Data_Caixa     := DmApp.DataCaixa     ;
                 FrmCheque_Planilha.Usuario        := DmApp.UsuarioCaixa  ;
                 FrmCheque_Planilha.Origem         := 'CH'               ;
                 FrmCheque_Planilha.ShowModal                             ;

                 FrmCheque_Planilha.Free                                  ;
                 FrmCheque_Planilha := Nil                                ;
              end;

              Transaction := DMApp.txnCritica;
              Transaction.StartTransaction;
              //fabiano - mudei no dataset id p/indice na procedure tambem
              ParamByName('indice').Value := VerChequeIndice.Value;
              ParamByName('cnpj').Value := DMApp.Cnpj;
              ParamByName('data').Value := DMApp.DataCaixa;
              if (cmbConta.LookupKeyValue > 0) then
                ParamByName('contacaixa').Value := cmbConta.LookupKeyValue
              else
                ParamByName('contacaixa').Value := DMApp.ContaCaixa;

              ParamByName('usuario').Value := DMApp.UsuarioCaixa;
              ParamByName('turno').Value := DMApp.TurnoCaixa;
              ParamByName('valor').Value := Dinheiro.Value;
              ParamByName('juros').Value := FrmDadosBaixa.Juros.Value;
              ParamByName('descontos').Value := desconto.Value;
              
              if ( FrmDadosBaixa.cmbConta.Text <> '' )
              then
                  ParamByName('contadev').Value := cmbConta.LookupKeyValue
              else
                  ParamByName('contadev').Value := 0 ;

              ExecQuery;

              Transaction.Commit;
              Filtrar;
            except
              Transaction.Rollback;
              Application.HandleException(self);
            end;
          end;
          VerCheque.Refresh;
        end;
    end;
    FrmDadosBaixa.Free   ;
    FrmDadosBaixa := Nil ;
  end
  else begin
       Msg := 'Chq ' + DmFinanceiro.VerChequeCheque.Value + ' Vencto ' + FormatDateTime('dd/mm/yyyy', DmFinanceiro.VerChequePRE_DATE.Value)
       + ' Valor ' + DmFinanceiro.VerChequeVALOR.text ;

       Showmessage( ' O Cheque ' + Msg + #13 + 'Não Está Devolvido, Verifique' );
  end;
end;

procedure TFrmSelFinCheques.ActConciliarExecute(Sender: TObject);
begin
     IF ((DATA.TEXT <> '  /  /  ') AND (DATA.TEXT <> '  /  /    '))
     THEN BEGIN
          With DmFinanceiro do
          begin
               if Not ( VerCheque.state in [ dsinsert, dsedit ] )
               then begin
                    //Data da Conciliacao
                    If VerChequeConciliado.Value = 'S'
                    THEN BEGIN
                         DmApp.Concilia_Cheque( VerChequeBanco.Value, VerChequeConta.Value, VerChequeCheque.Value, Data.Date, 'N' ) ;
                    END
                    ELSE BEGIN
                         DmApp.Concilia_Cheque( VerChequeBanco.Value, VerChequeConta.Value, VerChequeCheque.Value, Data.Date, 'S' ) ;
                    END;
                    VerCheque.Refresh;
               end;
          End;
     END;
end;

procedure TFrmSelFinCheques.BtnCopiaClick(Sender: TObject);
begin
     ImprimeCopia ;
end;

procedure TFrmSelFinCheques.RzBitBtn2Click(Sender: TObject);
begin
  { * * * * * }
  If FRelCheque = Nil Then
     Begin
       //
       DmFinanceiro.SelPessoasFJ.tag := DmFinanceiro.SelPessoasFJ.tag + 1;
       FRelCheque   := TFRelCheque.Create(Self);
       FRelCheque.ShowModal;
     End;
end;

procedure TFrmSelFinCheques.BtnAcertadosClick(Sender: TObject);
begin
  { * * * * * }
  If FRelChequesAcertados = Nil Then
     Begin
       //
       Application.ProcessMessages;
       //
       DmFinanceiro.SelPessoasFJ.tag := DmFinanceiro.SelPessoasFJ.tag + 1;
       FRelChequesAcertados := TFRelChequesAcertados.Create(Self);
       FRelChequesAcertados.ShowModal;
     End;
end;

procedure TFrmSelFinCheques.BtnRelDevolvidosClick(Sender: TObject);
begin
  { * * * * * }
  If FRelChequeDevolvido = Nil Then
     Begin
       //
       Application.ProcessMessages;
       //
       DmFinanceiro.SelPessoasFJ.tag := DmFinanceiro.SelPessoasFJ.tag + 1;
       FRelChequeDevolvido := TFRelChequeDevolvido.Create(Self);
       FRelChequeDevolvido.ShowModal;
     End;
end;

procedure TFrmSelFinCheques.ActLancarConciliacaoExecute(Sender: TObject);
var
  Posicao : Pointer;
begin
  Application.CreateForm( TFrmConciliacaoCheque, FrmConciliacaoCheque );
  FrmConciliacaoCheque.DATA.Date := Data.Date;
  if FrmConciliacaoCheque.showmodal = MROK then
  begin
    DmFinanceiro.VerCheque.transaction.CommitRetaining;
    Posicao := DmFinanceiro.VerCheque.GetBookmark;
    DmFinanceiro.VerCheque.close;
    DmFinanceiro.VerCheque.open;
    DmFinanceiro.VerCheque.GotoBookmark(posicao);
    DmFinanceiro.VerCheque.FreeBookmark(posicao);
  end;
  FrmConciliacaoCheque.free;
  FrmConciliacaoCheque := Nil;
end;

procedure TFrmSelFinCheques.GRID_CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
   Value: String ;
begin
  if ANode.HasChildren then
    Exit;


  if ( not ASelected  ) AND ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ])) then
  begin
    //pinta de azul se estiver processado
    Value := ANode.Values[GRIDPROCESSADO.Index];
    if not VarIsNull(Value) then
    begin
      if Value = 'S' then
        AColor := $00ECAD84
      else
        AColor := clWhite;
    end //caso não esteje fica em brnco
    else AFont.Color := clBlack;

    //pinta de vermelho pois foi devolvido 1 vez
    if ANode.Values[GRIDVEZES_DEVOLUCAO.Index] = '1' then
    begin
      if not VarIsNull(ANode.Values[GRIDDATA_REAPRES.Index]) then
        AColor := $002CD2E0
      else
        AColor := $008080FF;
    end
    else  //pinta de roxo pois foi devolvido + de 1 vez
      if ANode.Values[GRIDVEZES_DEVOLUCAO.Index] = '2' then
        AColor := $00970097;
    //pinta de verde se tiver mudado mais de
    if not VarIsNull(ANode.Values[GRIDDATA_ACERTO.Index]) then
      AColor := $004B9696;

  end;
end;

procedure TFrmSelFinCheques.Marcar(Sender: TObject);
var
  a : TbookMark;
begin
  with DmFinanceiro do
  begin
    if (not(DmFinanceiro.VerChequeDATA_CONCILIACAO.IsNull) and (DmFinanceiro.VerChequeMARCADO.Value = 'N')) then
    begin
      application.messagebox('Cheque já se encontra conciliado','Aviso',mb_Ok);
      exit;
    end;

    upMarcarCheque.ParamByName('indice').Value := VerChequeINDICE.AsString;
    if VerChequeMARCADO.Value = 'S' then
      upMarcarCheque.ParamByName('marca').Value := 'N'
    else
      upMarcarCheque.ParamByName('marca').Value := 'S';

    upMarcarCheque.ExecQuery;
    upMarcarCheque.Transaction.CommitRetaining;
    VerCheque.Transaction.CommitRetaining;
    a := verCheque.GetBookmark;
    filtrar;
    verCheque.GotoBookmark(a);

  end;
end;

procedure TFrmSelFinCheques.MontaConsulta;
var
  Cont : Integer;
begin
  Cont := 0;
  with DmFinanceiro.VerCheque do
  begin
    if ( edDtInicial.Text <> '  /  /    ' ) then
        SelectSql.Add ( ' And  C.PRE_DATE >= :DT_INICIAL ' );
    if ( edDtFinal.Text <> '  /  /    ' ) then
        SelectSql.Add ( ' And  C.PRE_DATE <= :DT_FINAL ' );
    if trim(CmbCliente.Text) <> '' then
        SelectSql.Add ( ' And C.PESSOA_FJ = :CLIENTE ' );
    if trim(cmbFornecedor.Text) <> '' then
        SelectSql.Add ( ' And C.FORNECEDOR = :FORNECEDOR ' );
    if Trim(edNDocto.Text) <> '' then
        SelectSql.Add ( ' and C.CHEQUE = :CHEQUE ' );
    if Trim(CMBTIPO.text) <> '' then
        SelectSql.Add ( ' and C.TIPO = :TIPO ' );
  end;
end;

procedure TFrmSelFinCheques.OrdenaConsulta;
begin
  with DmFinanceiro.VerCheque do
  begin
    if ( EdOrdem.Text = 'Cheque' ) then
        SelectSql.Add ( ' Order By c.Cheque ' );

    if ( EdOrdem.Text = 'Pré-Date' ) then
        SelectSql.Add ( ' Order By c.Pre_Date ' );

    if ( EdOrdem.Text = 'Nome' ) then
        SelectSql.Add ( ' Order By c.Nome ' );

    if ( EdOrdem.Text = 'Cheque, Nome' ) then
        SelectSql.Add ( ' Order By c.Cheque, c.Nome ' );

    if ( EdOrdem.Text = 'Pré-Date, Cheque' ) then
        SelectSql.Add ( ' Order By c.Pre_Date, c.Cheque ' );

    if ( EdOrdem.Text = '' ) then
        SelectSql.Add ( ' Order By c.Pre_Date, c.Cheque ' );
  end;
end;

procedure TFrmSelFinCheques.SetParametros;
begin
  with DmFinanceiro.VerCheque do
  begin
    ParamByName('CNPJ').Value := DmaPP.Cnpj;

    if ( edDtInicial.Text <> '  /  /    ' ) then
      ParamByName ( 'DT_INICIAL' ).AsDate := edDtInicial.Date;

    if ( edDtFinal.Text <> '  /  /    ' ) then
      ParamByName ( 'DT_FINAL' ).AsDate := edDtFinal.Date;

    if trim(CmbCliente.Text) <> '' then
      ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

    if trim(CmbFORNECEDOR.Text) <> '' then
      ParamByName ( 'FORNECEDOR' ).AsInteger := cmbfornecedor.LookupKeyValue;

    if Trim(edNDocto.Text) <> '' then
      ParamByName ( 'CHEQUE' ).AsString := edNDocto.Text;

    if Trim(CMBTIPO.text) <> '' then
      ParamByName ( 'TIPO' ).AsString := CmbTipo.Text;
  end;
end;

procedure TFrmSelFinCheques.actRemessaExecute(Sender: TObject);
begin
{  Application.CreateForm( TfrmGeraRemessa, frmGeraRemessa);
  frmGeraRemessa.DATA.Date := Data.Date;
  if frmGeraRemessa.showmodal = MROK then
    DmFinanceiro.VerCheque.Refresh;
  frmGeraRemessa.free;
  frmGeraRemessa := Nil;}    
end;

procedure TFrmSelFinCheques.ActReapresentarExecute(Sender: TObject);
begin
  with dmFinanceiro do
  begin
    if (VerChequeVEZES_DEVOLUCAO.Value = 1) and (VerChequeDATA_REAPRES.isNull) then
    begin
      with DmFinanceiro.upReapresentaCheque do
      begin
        try
          Transaction := DMApp.txnCritica;
          Transaction.StartTransaction;
          //fabiano - mudei id p/indice no dataset e na procudre tbem 
          ParamByName('indice').Value := dmFinanceiro.VerChequeIndice.Value;
          ParamByName('data').Value := Data.Date;
          ParamByName('cnpj').Value := DMApp.Cnpj;
          ExecQuery;
          Transaction.Commit;
          Application.MessageBox('Reapresentação Concluída!!!','Erro',MB_OK + MB_ICONINFORMATION);
        except
          Transaction.Rollback;
          Application.HandleException(self);
        end;                                                
      end;
      VerCheque.Refresh;
    end
    else Application.MessageBox('Cheque já reapresentado, não devolvido ou devolvido 2 vezes. Confira!','Erro',MB_OK + MB_ICONERROR);
  end;
end;

procedure TFrmSelFinCheques.actDesmarcarTodosExecute(Sender: TObject);
begin
  if Application.MessageBox('Desmarcar todos os cheques marcados','Confirma',MB_YESNO + MB_ICONQUESTION) = mryes then
    with DmFinanceiro.upDesmarcarTodos do
      try
        Transaction := DMApp.txnCritica;
        Transaction.StartTransaction;
        ParamByName('cnpj').Value := DMApp.Cnpj;
        ExecQuery;
        Transaction.Commit;
        Filtrar;
      except
        Transaction.Rollback;
        Application.HandleException(self);
      end;
end;

procedure TFrmSelFinCheques.ActTrocarEstadoExecute(Sender: TObject);
          function TrataEstado ( EstadoAtual, Estado: String ):Boolean ;
          begin
               If UpperCase(EstadoAtual) = 'NO'
               then begin
                    Showmessage('O Estado Normal só pode Ser Alterado com a Devolução do Cheque, verifique!');
                    Result := False ;
               end
               else begin
                    If ( Estado <> 'DE' ) and
                       ( Estado <> 'CR' ) and
                       ( Estado <> 'PT' ) and
                       ( Estado <> 'SR' ) and
                       ( Estado <> 'SP' )
                    Then begin
                         Showmessage('Novo Estado ' + Estado + ' inválido, verifique!');
                         Result := False ;
                    end
                    else begin
                         Result := true  ;
                    end;
               end;
          end;
Var
   NovoEstado: String;
begin
  with DmFinanceiro do
  begin
    FrmEntraEstadoCheque := TFrmEntraEstadoCheque.Create(Self);

    FrmEntraEstadoCheque.CHEQUE.TEXT := VERCHEQUECHEQUE.Value ;
    FrmEntraEstadoCheque.VALOR.TEXT  := VERCHEQUEVALOR.Text   ;
    FrmEntraEstadoCheque.NOME.TEXT   := VERCHEQUENOME.Text    ;

    IF FrmEntraEstadoCheque.Showmodal = MrOk
    then begin
         NovoEstado := Uppercase(FrmEntraEstadoCheque.cmbTipo.Text );
         {If TrataEstado (VerChequePROCESSADO, VerChequeTIPO.Value, NovoEstado)
         then begin}
              //fabiano - mudei no dataset o parametro id p/indice (so dataset)
              upTrocaEstado.ParamByName('indice').Value := trim(VerChequeINDICE.Value);
              upTrocaEstado.ParamByName('Tipo').Value := copy(NovoEstado,1,2);
              upTrocaEstado.ExecQuery;

              upTrocaEstado.Transaction.CommitRetaining;
              VerCheque.Transaction.CommitRetaining;
              VerCheque.Refresh;
         //end
    end ;

    FrmEntraEstadoCheque.Free   ;
    FrmEntraEstadoCheque := Nil ;
  end;
end;

procedure TFrmSelFinCheques.BtnRelEstadoClick(Sender: TObject);
begin
  { * * * * * }
  If FRelChequeEstado = Nil Then
     Begin
       //
       Application.ProcessMessages;
       //
       DmFinanceiro.SelPessoasFJ.tag := DmFinanceiro.SelPessoasFJ.tag + 1;
       FRelChequeEstado := TFRelChequeEstado.Create(Self);
       FRelChequeEstado.ShowModal;
     End;
end;

procedure TFrmSelFinCheques.ActEstConciliacaoExecute(Sender: TObject);
var
  Estornar : boolean;
begin
 //Estornando conciliação
 Estornar := true;
 with dmFinanceiro do
 begin
    if not ((VerChequeVEZES_DEVOLUCAO.asInteger = 0) and (VerChequeDATA_ACERTO.IsNull) and (VerChequePROCESSADO.asString = 'S')) then
      Estornar := false;
    if not(Estornar) then
    begin
      Application.MessageBox(Pchar('Impossível estornar o cheque selecionado.'+#13+'Ele não se encontra conciliado'),'',mb_ok + mb_iconerror);
      exit;
    end
    else //
    begin
      if Application.MessageBox(Pchar('O Estorno dos cheques fará com que os respectivos movimentos bancários também sejam estornados.'+#13+'Deseja continuar?'),'',mb_yesno + mb_iconquestion) = id_yes then
      begin
        pcd_estorna_ch.ParamByName('cnpj').value := dmapp.cnpj;
        pcd_estorna_ch.ParamByName('cheque').value := VerChequeCHEQUE.asString;
        pcd_estorna_ch.ParamByName('banco').value := VerChequeBANCO.asString;
        pcd_estorna_ch.ParamByName('conta').value := VerChequeCONTA.asString;
        pcd_estorna_ch.ExecProc;
      end
    end;
    Filtrar;
 end


end;

procedure TFrmSelFinCheques.TLCustomizeDragDrop(Sender, Source: TObject; X,
  Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomize.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomize.FocusedNode <> nil) then
    column.Index := TLCustomize.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

procedure TFrmSelFinCheques.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmSelFinCheques.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmSelFinCheques.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmSelFinCheques.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to Grid.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmSelFinCheques.ActConfCamposExecute(Sender: TObject);
begin
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelFinCheques.ActExportarExcelExecute(Sender: TObject);
begin
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ManutencaoCheque.xls', GRID.SaveToXLS);
end;

procedure TFrmSelFinCheques.ActExportarHtmlExecute(Sender: TObject);
begin
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'ManutencaoCheque.htm', GRID.SaveToHTML);
end;

procedure TFrmSelFinCheques.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin
    DefaultExt := ADefaultExt;
    Filter := AFilter;
    FileName := AFileName;
    if Execute then
      AMethod(FileName, true);
  end;
end;

end.


