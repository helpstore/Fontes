 unit Pagar_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, IBQuery,   dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl,  cxPropertiesStore,variants,  
    dxTLClms, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel, cxSplitter, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxCalendar, cxCalc,
  cxButtonEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
  
  TFrmPagar = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    DataSource: TDataSource;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    ActPeriodo: TAction;
    dsPessoas: TDataSource;
    DsCentro: TDataSource;
    ActFiltrar: TAction;
    OpFiltrar: TdxBarButton;
    ActLocalizarFornecedor: TAction;
    ActBaixar: TAction;
    ActBaixaParcial: TAction;
    ActParcelamento: TAction;
    DsTipoDocto: TDataSource;
    ActBaixarSelecao: TAction;
    stgManPagar: TcxPropertiesStore;
    Panel5: TPanel;
    Panel3: TPanel;
    Label1: TcxLabel;
    Label8: TcxLabel;
    BtnPessoa: TcxButton;
    Label5: TcxLabel;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label4: TcxLabel;
    Label6: TcxLabel;
    Label9: TcxLabel;
    Label11: TcxLabel;
    Label13: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label14: TcxLabel;
    BTNCENTRO: TcxButton;
    Label12: TcxLabel;
    Label3: TcxLabel;
    Label35: TcxLabel;
    Label10: TcxLabel;
    Panel2: TPanel;
    LblRegistros: TcxLabel;
    Image1: TImage;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel10: TPanel;
    BtnTipo: TcxButton;
    ActConfigFin: TAction;
    btnConfig: TdxBarButton;
    ActExporta: TAction;
    ActConfigura: TAction;
    btnExporta: TdxBarButton;
    btnConfigura: TdxBarButton;
    Panel4: TPanel;
    BtnRecebimetos: TcxButton;
    RzBitBtn4: TcxButton;
    BtnParcelamento: TcxButton;
    RzBitBtn1: TcxButton;
    cxSplitter1: TcxSplitter;
    cxGrid: TcxGrid;
    GridTV: TcxGridDBBandedTableView;
    GridLV: TcxGridLevel;
    GridTVCNPJ: TcxGridDBBandedColumn;
    GridTVCODIGO_VN: TcxGridDBBandedColumn;
    GridTVCODIGO: TcxGridDBBandedColumn;
    GridTVANO: TcxGridDBBandedColumn;
    GridTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridTVDT_EMISSAO: TcxGridDBBandedColumn;
    GridTVDT_VENCTO: TcxGridDBBandedColumn;
    GridTVDT_LANCTO: TcxGridDBBandedColumn;
    GridTVDOCTO: TcxGridDBBandedColumn;
    GridTVPARCELA: TcxGridDBBandedColumn;
    GridTVHISTORICO: TcxGridDBBandedColumn;
    GridTVVALOR: TcxGridDBBandedColumn;
    GridTVVLR_PARCIAL: TcxGridDBBandedColumn;
    GridTVJUROS_PAG: TcxGridDBBandedColumn;
    GridTVDESCONTOS: TcxGridDBBandedColumn;
    GridTVBOLETO: TcxGridDBBandedColumn;
    GridTVORIGEM: TcxGridDBBandedColumn;
    GridTVCODIGO_ENT: TcxGridDBBandedColumn;
    GridTVANO_ENT: TcxGridDBBandedColumn;
    GridTVAVISO: TcxGridDBBandedColumn;
    GridTVDT_AVISO: TcxGridDBBandedColumn;
    GridTVSELECIONADO: TcxGridDBBandedColumn;
    GridTVCENTRO_CUSTO: TcxGridDBBandedColumn;
    GridTVNOME: TcxGridDBBandedColumn;
    GridTVDUPLICATA: TcxGridDBBandedColumn;
    GridTVCONFERIDA: TcxGridDBBandedColumn;
    GridTVTOTAL_ENTRADA: TcxGridDBBandedColumn;
    GridTVPLANILHA: TcxGridDBBandedColumn;
    GridTVFLUXO_CAIXA: TcxGridDBBandedColumn;
    GridTVCONTABILIDADE: TcxGridDBBandedColumn;
    GridTVDT_ULTIMA_BAIXA: TcxGridDBBandedColumn;
    GridTVTIPO_DOCTO: TcxGridDBBandedColumn;
    GridTVCOD_INDEXADOR: TcxGridDBBandedColumn;
    GridTVIDX_DATABASE: TcxGridDBBandedColumn;
    GridTVIDX_COTACAO: TcxGridDBBandedColumn;
    GridTVIDX_QTDE: TcxGridDBBandedColumn;
    GridTVCOD_CONFIG_TITULO: TcxGridDBBandedColumn;
    GridTVTotal: TcxGridDBBandedColumn;
    GridTV_Total_Geral_IDX: TcxGridDBBandedColumn;
    GridTVNOME_RAZAO: TcxGridDBBandedColumn;
    GridTVVALOR_EXTENSO: TcxGridDBBandedColumn;
    cxGridPopupMenu: TcxGridPopupMenu;
    Label17: TcxLabel;
    GridTVCTR_DESCRICAO: TcxGridDBBandedColumn;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    dsContrato: TDataSource;
    cxLabel2: TcxLabel;
    GridTVCC_DESCRICAO: TcxGridDBBandedColumn;
    dxDBEdit1: TcxDBTextEdit;
    dxDBEdit3: TcxDBTextEdit;
    dxDBEdit6: TcxDBTextEdit;
    dxDBEdit2: TcxDBTextEdit;
    CmbConferida: TcxDBComboBox;
    dxDBEdit11: TcxDBTextEdit;
    CMBpessoa: TcxDBButtonEdit;
    dxDBEdit4: TcxDBTextEdit;
    EdValor: TcxDBCalcEdit;
    EdVencimento2: TcxDBDateEdit;
    CmbTipo: TcxDBLookupComboBox;
    dxDBEdit16: TcxDBTextEdit;
    EdData: TcxDBDateEdit;
    dxDBEdit7: TcxDBTextEdit;
    dxDBEdit5: TcxDBTextEdit;
    dxDBEdit10: TcxDBTextEdit;
    dxDBEdit9: TcxDBTextEdit;
    dxDBEdit8: TcxDBTextEdit;
    dxDBEdit15: TcxDBTextEdit;
    dxDBDateEdit1: TcxDBDateEdit;
    cmbcentro: TcxDBLookupComboBox;
    cmbContrato: TcxDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActLookupExecute(Sender: TObject);
    procedure ActPeriodoExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTNCENTROClick(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure CMBpessoaExit(Sender: TObject);
    procedure CMBpessoaEnter(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure ActLocalizarFornecedorExecute(Sender: TObject);
    procedure ActBaixarExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActBaixaParcialExecute(Sender: TObject);
    procedure ActParcelamentoExecute(Sender: TObject);
    procedure ActBaixarSelecaoExecute(Sender: TObject);
    procedure BtnTipoClick(Sender: TObject);
    procedure ActConfigFinExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure GridTVCNPJCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
    procedure VerificaAcerto;
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmPagar: TFrmPagar;
  sqlOriginal : string;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Filtra_Baixa_Form,
     Centro_Custo_Form,
     Localizar_Fornecedor,
     Fornecedores_Form,
     Dados_Baixa_Form,
     Dados_Baixa_Parcial_Form,
     ConfirmaExtorno_Form,  Plano_DM,
  Receber_Parcelamento_Form, Dados_Baixa_Pagar_Multiplos_Form,
  Baixa_Pagar_Multiplos_Form, Cheque_Contabilidade, Tipo_Documento_Form,
  ConfigFin_Form, Financeiro_Dm2;

{$R *.DFM}

procedure TFrmPagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair do Cadastro?', mtConfirmation, [mbOK, mbCancel], 0) = MROK THEN
     BEGIN
           //
           Datasource.Dataset.Close;
           dsPessoas.DataSet.Close;
           dsCentro.DataSet.Close;
           DsTipoDocto.DataSet.Close;
           //
           Frm_Localizar_Fornecedor.Free ;
           Frm_Localizar_Fornecedor := Nil ;

           Action := caFree;
           FrmPagar := Nil;

           dmApp.ZeraCaixaUsuario(owner);

           FrmMain.PnlClient.Visible := True;
     end
     else
        action := canone ;
     dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdPagar.flt');
     DmFinanceiro.Contas_Pagar.Selectsql.text := sqlOriginal;
end;

procedure TFrmPagar.ActIncluirExecute(Sender: TObject);
begin
  cmbPessoa.setfocus;
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
end;

procedure TFrmPagar.ActExcluirExecute(Sender: TObject);
begin
     Application.CreateForm(TFrmConfirmaExtorno, FrmConfirmaExtorno);

     FrmConfirmaExtorno.Nome.Text            := DmFinanceiro.Contas_PAGARNOME.Value         ;
     FrmConfirmaExtorno.Documento.Text       := DmFinanceiro.Contas_PAGARDOCTO.Value        ;
     FrmConfirmaExtorno.Historico.Text       := DmFinanceiro.Contas_PAGARHISTORICO.Value    ;
     FrmConfirmaExtorno.DataBaixa.Text       := DmFinanceiro.Contas_PAGARDT_VENCTO.AsString ;
     FrmConfirmaExtorno.DataLancamento.Text  := DmFinanceiro.Contas_PAGARDT_LANCTO.AsString ;
     FrmConfirmaExtorno.Valor.Text           := DmFinanceiro.Contas_PAGARTotal.Text         ;
     FrmConfirmaExtorno.LBLVENCIMENTO.CAPTION:= 'Vencto'                                      ;

     FrmConfirmaExtorno.LblTitulo.Caption    := 'CONFIRMAR EXCLUSÃO' ;
     FrmConfirmaExtorno.Caption              := 'Exclusão'           ;
     If FrmConfirmaExtorno.Showmodal = MrOk
     then begin
          DataSource.Dataset.Delete;
     end;

     FrmConfirmaExtorno.Free ;
     FrmConfirmaExtorno := Nil ;
end;

procedure TFrmPagar.ActPostExecute(Sender: TObject);
begin
  if not(DataSource.State in [ dsinsert, dsedit ])then
      Exit;
  DataSource.DataSet.Post;
  DMApp.Transaction.CommitRetaining;
end;

procedure TFrmPagar.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmPagar.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdPagar.flt',false);

  sqlOriginal := DmFinanceiro.Contas_Pagar.Selectsql.text;
end;


procedure TFrmPagar.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmPagar.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmPagar.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmPagar.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
       ActBaixar.Enabled    := False ;
       ActBaixaParcial.Enabled  := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
       ActBaixar.Enabled    := ActBaixar.Tag = 1;
       ActBaixaParcial.Enabled  := ActBaixaPARCIAL.Tag = 1;
     End;
     VerificaAcerto;
end;

procedure TFrmPagar.ActFecharExecute(Sender: TObject);
begin
  If FrmPagar.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmPagar.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmPagar.ActLookupExecute(Sender: TObject);
begin
  If FrmPagar.ActiveControl = cmbPessoa Then
     btnPessoa.OnClick(btnPessoa);
  If FrmPagar.ActiveControl = cmbCentro Then
     btnCentro.OnClick(btnCentro);
end;

procedure TFrmPagar.ActPeriodoExecute(Sender: TObject);
var
  CodCliente : integer;
  Filtro : string;
begin
     Application.CreateForm(TFrmBaixaContas, FrmBaixaContas);
     FrmBaixaContas.dsPessoas.DataSet := DmFinanceiro.SelFornecedor ;
     FrmBaixaContas.LblTitulo.Caption := 'Contas a Pagar';
     FrmBaixaContas.cbCentroCusto.Enabled := true;
     FrmBaixaContas.lblCentroCusto.Enabled := true;
     DMCadastros.Pessoas_FJ.Close;
     DMCadastros.Pessoas_FJ.Open;
     if FrmBaixaContas.ShowModal = MROK then
     begin
       if (FrmBaixaContas.codigo.value > 0) then
         Filtro := ' and pgr.Pessoa_Fj = '+FrmBaixaContas.codigo.text
       else if (FrmBaixaContas.CmbPessoa.Text <> '') then
         Filtro := ' and pgr.Pessoa_Fj = '+IntToStr(FrmBaixaContas.CmbPessoa.lookupKeyValue)
       else if (FrmBaixaContas.CmbFantasia.Text <> '') then
         Filtro := ' and pgr.Pessoa_Fj = '+IntToStr(FrmBaixaContas.CmbFantasia.lookupKeyValue)
       else if (FrmBaixaContas.cbCentroCusto.Text <> '') then
         Filtro := ' and pgr.centro_custo = '+IntToStr(FrmBaixaContas.cbCentroCusto.lookupKeyValue);


      With DmFinanceiro do
      begin
        Contas_Pagar.Close ;
       Contas_Pagar.SelectSql.text := sqlOriginal;
        if (FrmBaixaContas.Ini.date > 0) then
          filtro := filtro + ' and DT_VENCTO >= '''+FormatDateTime('mm/dd/yyyy',FrmBaixaContas.Ini.date)+'''';

        if (FrmBaixaContas.Fim.date > 0) then
          filtro := filtro + ' and DT_VENCTO <= '''+FormatDateTime('mm/dd/yyyy',FrmBaixaContas.fim.date)+'''';

        if (FrmBaixaContas.EdDocumento.Text <> '' ) then
          filtro := filtro +' and DOCTO Like ' + char(39) + '%' + FrmBaixaContas.EdDocumento.Text+'%'+ char(39);

        Contas_Pagar.selectSql.add(Filtro);
        Contas_Pagar.Open;
      end;
     end;

     FrmBaixaContas.free ;
     FrmBaixaContas := Nil;

     cxGrid.SetFocus ;
end;

procedure TFrmPagar.BtnPessoaClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFornecedores', False);

  FrmFornecedores := TFrmFornecedores.Create(Application);

  FrmFornecedores.Showmodal ;
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  DsPessoas.DataSet.Close ;
  DsPessoas.DataSet.Open  ;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  cmbPessoa.SetFocus;
end;

procedure TFrmPagar.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    qryContratos.Close;
    qryContratos.Open;
    
    If Not(dsPessoas.DataSet.Active) Then
       dsPessoas.DataSet.Open;

    If Not(dsCentro.DataSet.Active) Then
       dsCentro.DataSet.Open;

    If Not(DsTipoDocto.DataSet.Active) Then
       DsTipoDocto.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

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
//  Datasource.AutoEdit := ActAlterar.Enabled;
  cmbPessoa.SetFocus;
end;

procedure TFrmPagar.BTNCENTROClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  Datasource.DataSet.FieldByName('CENTRO_CUSTO').asInteger := FrmMain.Codigo_Int;
  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentro.DataSet.Close ;
  dsCentro.DataSet.Open  ;
  cmbCentro.SetFocus;
end;

procedure TFrmPagar.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  ActLocalizarFornecedor.Execute ;
end;

procedure TFrmPagar.CMBpessoaExit(Sender: TObject);
begin
     IF (( CMBpessoa.Text = '0' ) or ( CMBpessoa.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarFornecedor.Execute ;
     end;
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmPagar.CMBpessoaEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmPagar.ActFiltrarExecute(Sender: TObject);
begin
    //FilterDialog.Execute;
    DMApp.Filtrar(DataSource);
end;

procedure TFrmPagar.ActLocalizarFornecedorExecute(Sender: TObject);
begin
  try
     If ( DataSource.State in [ dsinsert, dsedit ] )
     Then begin
          //Chama a Tela Para Localizar Fornecedor
          Frm_Localizar_Fornecedor.DSource.dataset := DmFinanceiro.SelFornecedor ;

          if ( Frm_Localizar_Fornecedor.showmodal = mrOk )
          Then Begin
               DmFinanceiro.Contas_PagarPESSOA_FJ.Value := (Frm_Localizar_Fornecedor.CampTrecho) ;
          end
          else begin
               If Frm_Localizar_Fornecedor.Cad = 'S'
               THEN
                   BtnPessoa.OnClick ( BtnPessoa );
          end;
     end;
  Except
  end;
end;

procedure TFrmPagar.ActBaixarExecute(Sender: TObject);
var
  conta : integer;
begin
  if Not DmFinanceiro.Contas_PagarCodigo.Isnull then
  begin
    Application.CreateForm(TFrmDadosBaixa, FrmDadosBaixa);

    FrmDadosBaixa.EdNome.text      := DataSource.DataSet.FieldByName ('NOME'     ).AsString ;
    FrmDadosBaixa.EdDocumento.text := DataSource.DataSet.FieldByName ('DOCTO'    ).AsString ;
    FrmDadosBaixa.edvencto.text    := DataSource.DataSet.FieldByName ('DT_VENCTO').AsString ;
    FrmDadosBaixa.EdPARCELA.text   := DataSource.DataSet.FieldByName ('PARCELA'  ).AsString ;
    FrmDadosBaixa.Historico.Text   := DataSource.DataSet.FieldByName ('HISTORICO').AsString ;

    FrmDadosBaixa.Valor.Value      := DmFinanceiro.Contas_PagarTOTAL.Value ;
    FrmDadosBaixa.Juros.Value      := 0;
    FrmDadosBaixa.valor.ReadOnly   := true ;

    if DmApp.PAGAR_CAIXA = 'S' then
      FrmDadosBaixa.Data.Date := DmApp.DataCaixa
    else
      FrmDadosBaixa.Data.Date := DmApp.Data_Servidor ;

    if FrmDadosBaixa.ShowModal = MROK then
    begin
      with DmFinanceiro do
      begin
        if trim(FrmDadosBaixa.cmbconta.text) <> ''  then
          conta := FrmDadosBaixa.cmbConta.LookupKeyValue
        else
          conta := dmapp.contacaixa;

        //Baixando contas à pagar
        DmFinanceiro2.Baixa_Pagar(DmFinanceiro.Contas_PagarCodigo.Value,
                    DmFinanceiro.Contas_PagarAno.Value,
                    DmFinanceiro.Contas_PagarDocto.Value,
                    FrmDadosBaixa.Historico.Text,
                    FrmDadosBaixa.Data.Date,
                    FrmDadosBaixa.Valor.Value,
                    FrmDadosBaixa.Juros.Value,
                    FrmDadosBaixa.Desconto.Value,
                    DmaPP.UsuarioCaixa,
                    conta,
                    DmApp.turnoCaixa,
                    conta,
                    FrmDadosBaixa.Cheque.value,
                    DmFinanceiro.Contas_PagarPESSOA_FJ.asinteger,
                    DmFinanceiro.Contas_PagarNOME.asString);

                  //criando recibo do pagamento
        Cria_ReciboPagar(FrmDadosBaixa.Data.Date,
                             Contas_PagarDocto.Value,
                             FrmDadosBaixa.Data.Date,
                             FrmDadosBaixa.Total.Value,
                             FrmDadosBaixa.Historico.Text,
                             Contas_PAGARPESSOA_FJ.Value);

            Contas_Pagar.Close;
            Contas_Pagar.Open ;
           end;
          END;
          FrmDadosBaixa.DsConta.DataSet.close ;
          FrmDadosBaixa.Free ;
          FrmDadosBaixa := Nil;
     end;
end;

procedure TFrmPagar.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Edit;
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
end;

procedure TFrmPagar.ActBaixaParcialExecute(Sender: TObject);
var
  Data : TDate;
  Conta : integer;
begin
     if Not DmFinanceiro.Contas_PagarCodigo.Isnull
     then begin
          Application.CreateForm(TFrmDadosBaixaParcial, FrmDadosBaixaParcial);

          //Implementado para permitir baixa com descontos (America AgroSeeds)
          if (DmApp.DESC_BX_PARCIAL = 'S') then
            FrmDadosBaixaParcial.Desconto.enabled := true
          else
            FrmDadosBaixaParcial.Desconto.enabled := false;

          FrmDadosBaixaParcial.EdNome.text      := DataSource.DataSet.FieldByName ('NOME'     ).AsString ;
          FrmDadosBaixaParcial.EdDocumento.text := DataSource.DataSet.FieldByName ('DOCTO'    ).AsString ;
          FrmDadosBaixaParcial.edvencto.text    := DataSource.DataSet.FieldByName ('DT_VENCTO').AsString ;
          FrmDadosBaixaParcial.EdPARCELA.text   := DataSource.DataSet.FieldByName ('PARCELA'  ).AsString ;
          FrmDadosBaixaParcial.Historico.Text   := DataSource.DataSet.FieldByName ('HISTORICO').AsString ;

          FrmDadosBaixaParcial.Valor.ReadOnly := true ;
          FrmDadosBaixaParcial.Valor.Value    := DmFinanceiro.Contas_PagarTOTAL.Value ;

          if ((DmFinanceiro.Contas_PagarDT_VENCTO.value < DmFinanceiro.Contas_PagarDT_ULTIMA_BAIXA.value) and (DmFinanceiro.Contas_PagarDT_ULTIMA_BAIXA.value > 0)) then
            Data := DmFinanceiro.Contas_PagarDT_ULTIMA_BAIXA.value
          else
            Data := DmFinanceiro.Contas_PagarDT_VENCTO.Value;


          FrmDadosBaixaParcial.Juros.Value    := 0;
          FrmDadosBaixaParcial.juros.enabled := false;
          FrmDadosBaixaParcial.Total.Value    := FrmDadosBaixaParcial.Valor.Value + FrmDadosBaixaParcial.Juros.Value ;

          IF DmApp.DataCaixa <= STRTODATE('01/01/2000')
          THEN BEGIN
               FrmDadosBaixaParcial.Data.Date      := DmApp.Data_Servidor ;
          END
          ELSE BEGIN
               FrmDadosBaixaParcial.Data.Date      := DmApp.DataCaixa ;
          END;

          IF FrmDadosBaixaParcial.ShowModal = MROK
          THEN BEGIN
               With DmFinanceiro do
               begin
                    If FrmDadosBaixaParcial.BAIXA.Value >= FrmDadosBaixaParcial.TOTAL.Value
                    then begin
                         MessageDlg('O Valor da Baixa Parcial não pode exceder o valor da Conta, Verifique!',MtError,[MbOk],0);
                    end
                    else begin
                         If trim(FrmDadosBaixaParcial.cmbconta.text) <> '' then
                           conta := FrmDadosBaixaParcial.cmbConta.LookupKeyValue
                         else
                           conta := DmApp.ContaCaixa;


                        DmFinanceiro.Baixa_Pagar_Parcial( Contas_PagarCodigo.Value,
                                                          Contas_PagarAno.Value,
                                                          Contas_PagarDocto.Value,
                                                          FrmDadosBaixaParcial.Historico.Text,
                                                          FrmDadosBaixaParcial.Data.Date,
                                                          FrmDadosBaixaParcial.Baixa.Value,
                                                          FrmDadosBaixaParcial.Juros.Value,
                                                          FrmDadosBaixaParcial.Desconto.Value,
                                                          DmApp.UsuarioCaixa,
                                                          Conta,
                                                          DmApp.turnoCaixa,
                                                          conta,
                                                          FrmDadosBaixaParcial.cheque.value,
                                                          Contas_PagarPESSOA_FJ.value,
                                                          Contas_PagarNOME.value);
                    end;

                    Cria_ReciboPagar
                    (
                    FrmDadosBaixaParcial.Data.Date,
                    Contas_PagarDocto.Value,
                    FrmDadosBaixaParcial.Data.Date,
                    FrmDadosBaixaParcial.Baixa.Value,
                    FrmDadosBaixaParcial.Historico.Text,
                    Contas_PAGARPESSOA_FJ.Value
                    );

                    Contas_Pagar.Close;
                    Contas_Pagar.Open ;
                    SelPlano.close ;
               end;
          END;
          FrmDadosBaixaParcial.Free ;
          FrmDadosBaixaParcial := Nil ;
     end;
end;

procedure TFrmPagar.ActParcelamentoExecute(Sender: TObject);
Var
   Parcelas, contrato, Cont, Pessoa, Intervalo, Centro_Custo: Integer;
   ParcIni, ParcFim : integer;
   Documento, Historico, Parcela: String;
   Data, Lancto, Vencimento: TDateTime;
   Valor: Real;
begin
     Application.CreateForm(TFrmReceberParcelamento, FrmReceberParcelamento);
     FrmReceberParcelamento.caption           :=  'Lançar Parcelas do Pagar';
     FrmReceberParcelamento.LblTitulo.Caption := 'Lançar Parcelas do Pagar';

     FrmReceberParcelamento.dsPessoas.DataSet := DmFinanceiro.SelFornecedor ;
     FrmReceberParcelamento.dsCentro.DataSet  := DmFinanceiro.SelCentro ;
     FrmReceberParcelamento.CmbTipo.ListSource :=  dsTipoDocto;
     dsTipoDocto.dataset.close;
     dsTipoDocto.dataset.open;
     if (FrmReceberParcelamento.ShowModal = MROK) then
     begin
       with DmFinanceiro do
       begin
         if (FrmReceberParcelamento.EdData.date <= 0) then
         begin
           application.messagebox('Defina a Data Inicial!','Aviso',mb_iconerror + mb_ok);
           Exit;
         end
         else
           Data := FrmReceberParcelamento.EdData.date ;

         If (FrmReceberParcelamento.EdIntervalo.Value < 0) then
         begin
           application.messagebox('Digite o Intervalo Entre as Parcelas!','Aviso',mb_iconerror + mb_ok);
           Exit;
         end
         else
           Intervalo := TRUNC(FrmReceberParcelamento.EdIntervalo.value);

         If FrmReceberParcelamento.CmbPessoa.Text = '' then
         begin
           application.messagebox('Selecione um Cliente!','Aviso',mb_iconerror + mb_ok);
           Exit;
         end
         else
           Pessoa := FrmReceberParcelamento.CmbPessoa.LookupKeyValue ;


         contrato := FrmReceberParcelamento.CmbContrato.LookupKeyValue ;
         if Trim(FrmReceberParcelamento.eddocumento.Text) = '' then
         begin
          application.messagebox('Digite um Documento!','Aviso',mb_iconerror + mb_ok);
          exit;
         end
         else
           Documento := FrmReceberParcelamento.eddocumento.text ;

         if (FrmReceberParcelamento.parcelas.Value <= 0) then
         begin
           application.messagebox('Digite o número de parcelas!','Aviso',mb_iconerror + mb_ok);
           exit;
         end
         else
         begin
           ParcIni := TRUNC(FrmReceberParcelamento.Parcelas.value)-1;
           ParcFim := TRUNC(FrmReceberParcelamento.ParcelasFim.value);
           Parcelas := (ParcFim - ParcIni)  ;
         end;

         If (FrmReceberParcelamento.EdValor.Value)  <= 0 then
         begin
           application.messagebox('Digite o valor das parcelas!','Aviso',mb_iconerror + mb_ok);
           Exit;
         end
         else
           Valor := (FrmReceberParcelamento.EdValor.value)  ;

         if (FrmReceberParcelamento.CmbCentro_Custo.Text = '') then
         begin
           application.messagebox('Digite o Centro de Custo!','Aviso',mb_iconerror + mb_ok);
           exit;
         end
         else
           Centro_Custo := (FrmReceberParcelamento.CmbCentro_Custo.LookupKeyValue )  ;


         Historico  := (FrmReceberParcelamento.EdHistorico.text);
         Contas_Receber.DisableControls ;

         //FAZ O PARCELAMENTO
         DMAPP.Transaction.CommitRetaining ;

         TRY
           Cont := 1;

           if dmapp.Pagar_Caixa = 'S' then
             Lancto := dmapp.DataCaixa
           else
             Lancto := Date;

           while Cont <= Parcelas do
           begin
             Contas_Pagar.Append ;
             Contas_PagarPESSOA_FJ.Value    := Pessoa ;

             Contas_PagarDT_EMISSAO.Value   := Lancto;
             Contas_PagarDT_VENCTO.Value    := data;
             Contas_PagarDT_LANCTO.Value    := Lancto;
             Contas_PagarDOCTO.Value        := Documento       ;
             Contas_PagarPARCELA.Value      := inttostr(ParcIni+Cont) + '/' + inttostr(ParcFim);
             Contas_PagarHISTORICO.Value    := Historico       ;
             Contas_PagarVALOR.Value        := Valor           ;
             Contas_PagarBOLETO.Value       := 'N'             ;
             Contas_PagarORIGEM.Value       := 'MAN'           ;
             Contas_PagarCentro_Custo.Value := Centro_Custo    ;
             Contas_PagarCOD_CONTRATO.Value := Contrato    ;
             Contas_Pagar.Post   ;

             //se não houver sido definido um intervalo.. entao o mês será incrementado
             if intervalo = 0 then
               data := IncMonth(data,1)
             else
               data := data + intervalo ;

             Cont := Cont + 1;
           end;

         except
           DMAPP.Transaction.RollbackRetaining ;
         end;

         Contas_Receber.EnableControls  ;
       end;
     end;

     FrmReceberParcelamento.free ;
     FrmReceberParcelamento := Nil;

     cxGrid.SetFocus ;
end;

procedure TFrmPagar.ActBaixarSelecaoExecute(Sender: TObject);
begin
    if FrmBaixaPagarSelecao = nil then
      FrmBaixaPagarSelecao := TFrmBaixaPagarSelecao.Create(Self);

    if (FrmBaixaPagarSelecao.ActBaixar.Tag = 1 ) and ( DMAPP.Pagar_Caixa = 'S') THEN
    begin
        if DMApp.VerificarCaixa = 'N' then
             Exit ;
    end;

    FrmBaixaPagarSelecao.Showmodal ;
    FrmBaixaPagarSelecao.Free      ;
    FrmBaixaPagarSelecao := Nil    ;
    DmFinanceiro.Contas_Pagar.close;
    DmFinanceiro.Contas_Pagar.open;
end;

procedure TFrmPagar.BtnTipoClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DsTipoDocto.DataSet.Tag := DsTipoDocto.DataSet.Tag + 1;
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipoDoctos', False);
  FrmTipoDoctos := TFrmTipoDoctos.Create(Self);
  FrmTipoDoctos.ShowModal;
  //
  Datasource.DataSet.FieldByName('TIPO_DOCTO').asString := FrmMain.Codigo_Str;

  FrmTipoDoctos.Free;
  FrmTipoDoctos := Nil;

  If DMCadastros <> Nil then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsTipoDocto.DataSet.Tag := DsTipoDocto.DataSet.Tag - 1;
  //
  CmbTipo.SetFocus;
end;

procedure TFrmPagar.ActConfigFinExecute(Sender: TObject);
begin
  if (DmFinanceiro.Contas_PagarCODIGO_VN.Value > 0) then
  begin
    Application.MessageBox('Impossível definir a configuração financeira. Registro gerado automaticamente pelo faturamento','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if (DmFinanceiro.Contas_PagarVLR_PARCIAL.Value > 0) then
  begin
    Application.MessageBox('Impossível definir a configuração financeira. Registro já possui movimentações de baixa','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if not (DmFinanceiro.Contas_Pagar.State in [ DsInsert, DsEdit ]) then
    DmFinanceiro.Contas_Pagar.Edit;

  FrmConfigFinanceira := TFrmConfigFinanceira.Create(Self);
  FrmConfigFinanceira.DataSource.DataSet := DmFinanceiro.Contas_Pagar;
  FrmConfigFinanceira.ShowModal;

  if not (DmFinanceiro.Contas_Pagar.State in [ DsInsert, DsEdit ]) then
    DmFinanceiro.Contas_Pagar.Edit;
end;

procedure TFrmPagar.VerificaAcerto;
begin
  if (dmApp.EXIBE_ACERTO = 'S') then
  begin
    ActBaixarSelecao.Enabled := false;
    ActBaixar.Enabled := false;
    ActBaixaParcial.Enabled := false;
  end;
end;

procedure TFrmPagar.ActExportaExecute(Sender: TObject);
begin
  dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Contas à Pagar.xls', cxGrid)
end;

procedure TFrmPagar.GridTVCNPJCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var
   Aux: String;
   DtVencto : Variant;
begin
     if (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]) then
       exit;

     
     ACanvas.Canvas.Font.Color := clBlack;
     if GridTV.ViewData.Records[AviewInfo.GridRecord.Index].Selected then
     begin
       ACanvas.Canvas.Brush.Color := clYellow;
       exit;
     end;
       
     DtVencto := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVDT_VENCTO.Index];

     if VarIsNull(DtVencto) then
       exit;

    ACanvas.Canvas.Font.Color := clBlack;
    if (DtVencto < Date) then
      ACanvas.Canvas.Brush.Color := $00ECAD84
    else
      ACanvas.Canvas.Brush.Color := clWhite;
end;

end.
