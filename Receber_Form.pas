 unit Receber_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids,   dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl,  Menus, cxPropertiesStore, ppParameter, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppRelatv, ppDBPipe, ppComm, ppEndUsr, variants, IBFilterDialog, dxTLClms,
     dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxButtons, cxLabel,
  cxSplitter, ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomPopupMenu,
  cxGridPopupMenu, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxDBEdit, IBQuery;


type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmReceber = class(TForm)
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
    ActBaixaSelecao: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    dsPessoas: TDataSource;
    DsTipoDocto: TDataSource;
    ActImprimeDuplicata: TAction;
    BtnFiltrar: TdxBarButton;
    ActFiltrar: TAction;
    ActLocalizarCliente: TAction;
    ActBaixar: TAction;
    ActBaixarParcial: TAction;
    ActDetalhes: TAction;
    ActParcelamento: TAction;
    DsLocal: TDataSource;
    dxBarButton1: TdxBarButton;
    ActRemessa: TAction;
    ActRetorno: TAction;
    ActArquivar: TAction;
    PopupMenu: TPopupMenu;
    Imprime: TMenuItem;
    ActBaixaConvenio: TAction;
    stgManReceber: TcxPropertiesStore;
    Panel5: TPanel;
    Panel3: TPanel;
    Label1: TcxLabel;
    Label16: TcxLabel;
    Label15: TcxLabel;
    Label14: TcxLabel;
    Label5: TcxLabel;
    BtnPessoa: TcxButton;
    Label8: TcxLabel;
    Label4: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    BTNLOCAL: TcxButton;
    BtnTipo: TcxButton;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label7: TcxLabel;
    Label2: TcxLabel;
    Label6: TcxLabel;
    Label3: TcxLabel;
    Label13: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    CMBpessoa: TdxDBButtonEdit;
    dxDBEdit4: TdxDBEdit;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    dxDBEdit8: TdxDBEdit;
    CmbBoleto: TdxDBPickEdit;
    CMBLOCAL: TdxDBLookupEdit;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    CmbTipo: TdxDBLookupEdit;
    dxDBEdit5: TdxDBEdit;
    EdVencimento: TdxDBDateEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    dxDBEdit13: TdxDBEdit;
    Panel10: TPanel;
    Panel2: TPanel;
    LblRegistros: TcxLabel;
    LblCaixa: TcxLabel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Image1: TImage;
    ActConfigFin: TAction;
    ActExporta: TAction;
    ActConfigura: TAction;
    btnExporta: TdxBarButton;
    btnConfigura: TdxBarButton;
    ActImprimeBoleto: TAction;
    dxBarButton2: TdxBarButton;
    Duplicata: TdxBarButton;
    Panel4: TPanel;
    BtnReimprime: TcxButton;
    BtnRecebimetos: TcxButton;
    RzBitBtn4: TcxButton;
    BtnLocalizar2: TcxButton;
    BtnParcelamento: TcxButton;
    cxSplitter1: TcxSplitter;
    cxGrid: TcxGrid;
    GridTV: TcxGridDBBandedTableView;
    GridLV: TcxGridLevel;
    GridTVCNPJ: TcxGridDBBandedColumn;
    GridTVCODIGO: TcxGridDBBandedColumn;
    GridTVANO: TcxGridDBBandedColumn;
    GridTVDT_EMISSAO: TcxGridDBBandedColumn;
    GridTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridTVDT_VENCTO: TcxGridDBBandedColumn;
    GridTVDT_LANCTO: TcxGridDBBandedColumn;
    GridTVDOCTO: TcxGridDBBandedColumn;
    GridTVPARCELA: TcxGridDBBandedColumn;
    GridTVHISTORICO: TcxGridDBBandedColumn;
    GridTVVALOR: TcxGridDBBandedColumn;
    GridTVBOLETO: TcxGridDBBandedColumn;
    GridTVORIGEM: TcxGridDBBandedColumn;
    GridTVCODIGO_VN: TcxGridDBBandedColumn;
    GridTVANO_VN: TcxGridDBBandedColumn;
    GridTVAVISO: TcxGridDBBandedColumn;
    GridTVDT_AVISO: TcxGridDBBandedColumn;
    GridTVSELECIONADO: TcxGridDBBandedColumn;
    GridTVVLR_PARCIAL: TcxGridDBBandedColumn;
    GridTVTotal: TcxGridDBBandedColumn;
    GridTVJUROS_REC: TcxGridDBBandedColumn;
    GridTVDESCONTOS: TcxGridDBBandedColumn;
    GridTVFATURA: TcxGridDBBandedColumn;
    GridTVTIPO_DOCTO: TcxGridDBBandedColumn;
    GridTVNUMBOLETO: TcxGridDBBandedColumn;
    GridTVNOME: TcxGridDBBandedColumn;
    GridTVNUMDUPLICATA: TcxGridDBBandedColumn;
    GridTVDATA_ULT_BAIXA: TcxGridDBBandedColumn;
    GridTVJUROS_CALCULADOS: TcxGridDBBandedColumn;
    GridTVTOTAL_NOMINAL: TcxGridDBBandedColumn;
    GridTVFLUXO_CAIXA: TcxGridDBBandedColumn;
    GridTVLOCAL_COBRANCA: TcxGridDBBandedColumn;
    GridTVARQUIVO_MORTO: TcxGridDBBandedColumn;
    GridTVJurosSozinho: TcxGridDBBandedColumn;
    GridTVMulta: TcxGridDBBandedColumn;
    GridTVSALDO_DESCTO: TcxGridDBBandedColumn;
    GridTVBLT_NOSSO_NUM: TcxGridDBBandedColumn;
    GridTVNUM_NF: TcxGridDBBandedColumn;
    GridTVNUM_CUPOM: TcxGridDBBandedColumn;
    GridTVCOD_INDEXADOR: TcxGridDBBandedColumn;
    GridTVIDX_DATABASE: TcxGridDBBandedColumn;
    GridTVIDX_COTACAO: TcxGridDBBandedColumn;
    GridTVIDX_QTDE: TcxGridDBBandedColumn;
    GridTV_Total_Geral_IDX: TcxGridDBBandedColumn;
    GridTVCOD_CONFIG_TITULO: TcxGridDBBandedColumn;
    GridTVVALOR_EXTENSO: TcxGridDBBandedColumn;
    cxGridPopupMenu: TcxGridPopupMenu;
    GridTVCONTA_CORRENTE: TcxGridDBBandedColumn;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    DsConta: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dsContrato: TDataSource;
    qryContratos: TIBQuery;
    qryContratosCODIGO: TIntegerField;
    qryContratosDESCRICAO: TIBStringField;
    cmbContrato: TdxDBLookupEdit;
    cxLabel2: TcxLabel;
    GridTVCTR_DESCRICAO: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActLookupExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnTipoClick(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CMBpessoaEnter(Sender: TObject);
    procedure CmbTipoEnter(Sender: TObject);
    procedure EdDocumentoEnter(Sender: TObject);
    procedure CmbTipoExit(Sender: TObject);
    procedure ActImprimeBoletoExecute(Sender: TObject);
    procedure ActImprimeDuplicataExecute(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure CMBpessoaExit(Sender: TObject);
    procedure ActLocalizarClienteExecute(Sender: TObject);
    procedure ActBaixarExecute(Sender: TObject);
    procedure ActBaixarParcialExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure dxDBEdit16Exit(Sender: TObject);
    procedure dxDBEdit16Enter(Sender: TObject);
    procedure ActBaixaSelecaoExecute(Sender: TObject);
    procedure ActDetalhesExecute(Sender: TObject);
    procedure ActParcelamentoExecute(Sender: TObject);
    procedure BTNLOCALClick(Sender: TObject);
    procedure ActRemessaExecute(Sender: TObject);
    procedure ActRetornoExecute(Sender: TObject);
    procedure ActArquivarExecute(Sender: TObject);
    procedure ActBaixaConvenioExecute(Sender: TObject);
    procedure ActConfigFinExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure GridTVCODIGOCustomDrawCell(Sender: TcxCustomGridTableView;
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
  FrmReceber: TFrmReceber;
  sqlOriginal: String;
implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Filtra_Baixa_Form,
     Tipo_Documento_Form,
     Localizar_Cliente,
     Clientes_Form,
     Dados_Baixa_Form,
     Dados_Baixa_Parcial_Form,
     Baixa_Receber_Multiplos_Parc_Form,
     ConfirmaExtorno_Form,
     Vendas_Dm,
     Receber_Parcelamento_Form,
     Local_Cobranca_Form,
     Remessa_FRel,
     Retorno_FRel, Procedures_DM, Baixa_Receber_Convenio_Form,
  Financeiro_Dm2, Vendas_DM2, Relatorios_DM2, SerieCustomizaveis_DM,
  ConfigFin_Form;

{$R *.DFM}


procedure TFrmReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair do Cadastro?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
     begin
       Frm_Localizar_Cliente.Free ;
       Frm_Localizar_Cliente := Nil ;

       Action := caFree;
       FrmReceber := Nil;

       dmApp.ZeraCaixaUsuario(owner);
       FrmMain.PnlClient.Visible := True;
     end
     else
       action := canone;

     dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdReceber.flt');


     DmFinanceiro.Contas_Receber.close;
     DmFinanceiro.Contas_Receber.SelectSql.text := sqlOriginal;
end;

procedure TFrmReceber.ActIncluirExecute(Sender: TObject);
begin
  cmbPessoa.setfocus;
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ', MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !', MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmReceber.ActExcluirExecute(Sender: TObject);
begin
     Application.CreateForm(TFrmConfirmaExtorno, FrmConfirmaExtorno);

     FrmConfirmaExtorno.Nome.Text            := DmFinanceiro.Contas_ReceberNOME.Value         ;
     FrmConfirmaExtorno.Documento.Text       := DmFinanceiro.Contas_ReceberDOCTO.Value        ;
     FrmConfirmaExtorno.Historico.Text       := DmFinanceiro.Contas_ReceberHISTORICO.Value    ;
     FrmConfirmaExtorno.DataBaixa.Text       := DmFinanceiro.Contas_ReceberDT_VENCTO.AsString ;
     FrmConfirmaExtorno.DataLancamento.Text  := DmFinanceiro.Contas_ReceberDT_LANCTO.AsString ;
     FrmConfirmaExtorno.Valor.Text           := DmFinanceiro.Contas_ReceberTotal.Text         ;
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

procedure TFrmReceber.ActPostExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes  then
  begin
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  end;
end;

procedure TFrmReceber.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmReceber.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';

  // Se o Usuário for Supervisor


  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  if not dmFinanceiro.DesmarcaReceber.transaction.active then
    dmFinanceiro.DesmarcaReceber.transaction.starttransaction;

  dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGrdReceber.flt',false);

  {dmfinanceiro.DesmarcaReceber.parambyname('cnpj').value := dmapp.cnpj;
  dmfinanceiro.DesmarcaReceber.ExecQuery;
  dmfinanceiro.DesmarcaReceber.transaction.CommitRetaining;}
end;


procedure TFrmReceber.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmReceber.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmReceber.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActBaixaSelecao.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
       ActImprimeBoleto.Enabled    := False;
       ActImprimeDuplicata.Enabled := False;
       ActFiltrar.Enabled := False;
       ActBaixar.Enabled := False;
       ActBaixarParcial.Enabled := False;
       ActBaixar.Enabled := False;
       ActParcelamento.Enabled := False;
     End
  Else
     Begin
       ActFiltrar.Enabled := TRUE;
       ActImprimeBoleto.Enabled    := True;
       ActImprimeDuplicata.Enabled := ActImprimeDuplicata.Tag = 1;;
       ActParcelamento.Enabled := true;
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActBaixaSelecao.Enabled := ActBaixaSelecao.Tag = 1;;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
       ActBaixar.Enabled := ActBaixar.Tag = 1;;
       ActBaixarParcial.Enabled := ActBaixarParcial.Tag = 1;
       ActBaixar.Enabled := ActBaixar.Tag = 1;;
     End;
  VerificaAcerto;
end;

procedure TFrmReceber.ActFecharExecute(Sender: TObject);
begin
  If FrmReceber.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmReceber.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmReceber.ActLookupExecute(Sender: TObject);
begin
  If FrmReceber.ActiveControl = cmbPessoa Then
     btnPessoa.OnClick(btnPessoa);
  If FrmReceber.ActiveControl = CmbTipo Then
     btnTipo.OnClick(btnTipo);
  If FrmReceber.ActiveControl = CMBLOCAL Then
     BTNLOCAL.OnClick(BTNLOCAL);
end;

procedure TFrmReceber.BtnPessoaClick(Sender: TObject);
begin
     Try
        //
        If ActAlterar.Tag = 0 Then
        Exit;

        //
        If Datasource.DataSet.State = dsBrowse   Then
            Datasource.DataSet.Edit;


        DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);

        FrmClientes := TFrmClientes.Create(Application);

        FrmClientes.Showmodal ;
        Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

        cmbPessoa.SetFocus;
     except
     end;
end;

procedure TFrmReceber.FormShow(Sender: TObject);
begin
  LblCaixa.Caption := DateToStr(DmApp.DataCaixa);
  IniciaComponentes ( Self as TForm );
  sqlOriginal := DmFinanceiro.Contas_Receber.SelectSql.text;

  Try
    qryContratos.Close;
    qryContratos.Open;
    cmbContrato.enabled := (dmApp.EXIBE_CTR_OBRAS = 'S');
    
    DsConta.DataSet.Close;
    DsConta.DataSet.Open;

    If Not(dsPessoas.DataSet.Active) Then
       dsPessoas.DataSet.Open;

    If Not(dsLocal.DataSet.Active) Then
       dsLocal.DataSet.Open;

    If Not(DsTipoDocto.DataSet.Active) Then
       DsTipoDocto.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ', MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !', MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  VerificaAcerto;
  cmbPessoa.SetFocus;
end;

procedure TFrmReceber.GRIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = 13
     then begin
          cmbPessoa.SetFocus ;
          DataSource.Edit ;
     end;
end;

procedure TFrmReceber.BtnTipoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  DsTipoDocto.DataSet.Tag := DsTipoDocto.DataSet.Tag + 1;

  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipoDoctos', False);
  { * * * * * }
  //
  FrmTipoDoctos := TFrmTipoDoctos.Create(Self);
  FrmTipoDoctos.ShowModal;
  //
  Datasource.DataSet.FieldByName('TIPO_DOCTO').asString := FrmMain.Codigo_Str;

  FrmTipoDoctos.Free;
  FrmTipoDoctos := Nil;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsTipoDocto.DataSet.Tag := DsTipoDocto.DataSet.Tag - 1;

  //
  CmbTipo.SetFocus;
end;

procedure TFrmReceber.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             //Chama a Tela Para Localizar Cliente
             Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

             if ( Frm_Localizar_Cliente.showmodal = mrOk )
             Then Begin
                  DmFinanceiro.Contas_ReceberPESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho) ;
             end;
        end;
     Except
     end;
end;

procedure TFrmReceber.CMBpessoaEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmReceber.CmbTipoEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmReceber.EdDocumentoEnter(Sender: TObject);
begin
     CorFundo( Sender );

end;

procedure TFrmReceber.CmbTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmReceber.ActImprimeBoletoExecute(Sender: TObject);
begin
  if (DmFinanceiro.Contas_ReceberCONTA_CORRENTE.asInteger = 0) then
  begin
    Application.MessageBox('Impossível imprimir boleto. Registro não possui uma conta corrente vinculada','Aviso',MB_OK+MB_ICONINFORMATION);
    exit;
  end;

  dmapp.ImprimeTitulo(DmFinanceiro.Contas_ReceberCODIGO.Value,DmFinanceiro.Contas_ReceberCONTA_CORRENTE.Value,'R',DmFinanceiro.Contas_Receber.Transaction);
  DmFinanceiro.Contas_Receber.Refresh;
end;

procedure TFrmReceber.ActImprimeDuplicataExecute(Sender: TObject);
begin
     If MessageDlg ('Confirmar a Emissão de Duplicata!', mtConfirmation	, [MbOk, MbCancel],0 ) = MROK  THEN
         DmFinanceiro2.ReceberDuplicata ;
end;

procedure TFrmReceber.ActFiltrarExecute(Sender: TObject);
var
  filtro : string;
begin
     Application.CreateForm(TFrmBaixaContas, FrmBaixaContas);
     FrmBaixaContas.dsPessoas.DataSet := DmFinanceiro.SelPessoasFj ;
     FrmBaixaContas.LblTitulo.Caption := 'Contas à Receber';

     with FrmBaixaContas do
     begin
        IF ShowModal = MROK THEN
        BEGIN
           if (Ini.date > 0) then
              filtro := filtro + ' and rec.DT_VENCTO >= '''+FormatDateTime('mm/dd/yyyy',ini.date)+'''';

           if (fim.date > 0) then
             filtro := filtro + ' and rec.DT_VENCTO <= '''+FormatDateTime('mm/dd/yyyy',Fim.date)+'''';

           if (Codigo.value <> 0) then
             filtro := filtro + ' and rec.Pessoa_Fj = '+ inttostr(trunc(codigo.Value))
           else begin
                if (cmbPessoa.text <> '') then
                   filtro := filtro + ' and rec.Pessoa_Fj = '+inttostr(cmbPessoa.lookupkeyvalue)
                else
                    if (cmbFantasia.text <> '') then
                       filtro := filtro + ' and rec.Pessoa_Fj = '+inttostr(cmbFantasia.lookupkeyvalue);
           end;

           if (EdDocumento.Text <> '') then
             filtro := filtro +' and rec.DOCTO Like ''%''||'+QuotedStr(upperCase(EdDocumento.Text))+'||''%''';
        end;
     end;
     With DmFinanceiro do
     begin
       Contas_Receber.Close ;
       Contas_Receber.SelectSql.text := sqlOriginal+filtro;
       Contas_Receber.Open;
     end;

     FrmBaixaContas.free ;
     FrmBaixaContas := Nil;
     cxGrid.SETFOCUS ;
end;

procedure TFrmReceber.EdValorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmReceber.CMBpessoaExit(Sender: TObject);
begin
     IF (( CMBpessoa.Text = '0' ) or ( CMBpessoa.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarCliente.Execute ;
     end;
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmReceber.ActLocalizarClienteExecute(Sender: TObject);
begin
     try
        If Not ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             DataSource.DataSet.Edit ;
        end;

        //Chama a Tela Para Localizar Fornecedor
        Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             DmFinanceiro.Contas_ReceberPESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho) ;
        end
        else begin
             If Frm_Localizar_Cliente.Cad = 'S'
             THEN
                 BtnPessoa.OnClick ( BtnPessoa );
        end;

     Except
     end;
end;

procedure TFrmReceber.ActBaixarExecute(Sender: TObject);
Var
  Cpf_Cnpj: String;
  conta : integer;
  SOMA_CHEQUES: Real;
begin

  if Not DmFinanceiro.Contas_ReceberCodigo.Isnull  then
  begin
    If DmFinanceiro.Contas_ReceberTOTAL.Value > 0 then
    begin
      Application.CreateForm(TFrmDadosBaixa, FrmDadosBaixa);
      SOMA_CHEQUES := DmApp.Soma_Cheques_Devolvidos (DataSource.DataSet.FieldByName ('PESSOA_FJ').AsInteger) ;
      if (SOMA_CHEQUES > 0) then
        Application.Messagebox('Atenção! Cliente possui cheques devolvidos. Verifique a tela de pendências','Aviso', mb_iconerror + mb_ok);

      FrmDadosBaixa.EdNome.text      := DataSource.DataSet.FieldByName ('NOME').AsString ;
      FrmDadosBaixa.EdDocumento.text := DataSource.DataSet.FieldByName ('DOCTO').AsString ;
      FrmDadosBaixa.edvencto.text    := DataSource.DataSet.FieldByName ('DT_VENCTO').AsString ;
      FrmDadosBaixa.EdPARCELA.text   := DataSource.DataSet.FieldByName ('PARCELA').AsString ;

      FrmDadosBaixa.Valor.Value      := DmFinanceiro.Contas_ReceberTOTAL.Value;
      FrmDadosBaixa.Valor.ReadOnly   := true ;

      FrmDadosBaixa.Juros_Calculados := DmFinanceiro.Contas_ReceberJUROS_CALCULADOS.Value ;
      FrmDadosBaixa.Total.value := ARREDONDA(FrmDadosBaixa.Valor.Value + FrmDadosBaixa.Juros_Calculados ,2);

      FrmDadosBaixa.Data.Date      := DmaPP.DataCaixa;
      FrmDadosBaixa.Data.Enabled   := False;

      FrmDadosBaixa.SaldoDescto.text := 'R$ '+formatfloat('###,##0.00',dmFinanceiro.Contas_ReceberSALDO_DESCTO.value);

      IF FrmDadosBaixa.ShowModal = MROK THEN
      BEGIN
        With DmFinanceiro do
        begin
          If FrmDadosBaixa.cmbConta.Text = '' then
             conta := dmapp.contacaixa
          else
             conta := FrmDadosBaixa.cmbConta.LookupKeyValue;

          DmFinanceiro2.Baixa_Receber(Contas_ReceberCodigo.Value,
                                        Contas_ReceberAno.Value,
                                        Contas_ReceberDocto.Value,
                                        FrmDadosBaixa.Historico.Text,
                                        FrmDadosBaixa.Data.Date,
                                        FrmDadosBaixa.Valor.Value,
                                        FrmDadosBaixa.Juros.Value,
                                        FrmDadosBaixa.Desconto.Value,
                                        DmApp.UsuarioCaixa,
                                        Contas_ReceberPessoa_Fj.Value,
                                        FrmDadosBaixa.Dinheiro.value,
                                        FrmDadosBaixa.Cheque.value,
                                        FrmDadosBaixa.Cartao.value,
                                        dmapp.contacaixa,
                                        DmApp.turnoCaixa,
                                        conta);

        end;
      END;

      FrmDadosBaixa.Free ;
      FrmDadosBaixa := Nil;

      DmFinanceiro.Contas_Receber.Close ;
      DmFinanceiro.Contas_Receber.Open  ;
    end
    else
    begin
      Application.CreateForm(TFrmConfirmaExtorno, FrmConfirmaExtorno);

      FrmConfirmaExtorno.Nome.Text            := DmFinanceiro.Contas_ReceberNOME.Value         ;
      FrmConfirmaExtorno.Documento.Text       := DmFinanceiro.Contas_ReceberDOCTO.Value        ;
      FrmConfirmaExtorno.Historico.Text       := DmFinanceiro.Contas_ReceberHISTORICO.Value    ;
      FrmConfirmaExtorno.DataBaixa.Text       := DmFinanceiro.Contas_ReceberDT_VENCTO.AsString ;
      FrmConfirmaExtorno.DataLancamento.Text  := DmFinanceiro.Contas_ReceberDT_LANCTO.AsString ;
      FrmConfirmaExtorno.Valor.Text           := DmFinanceiro.Contas_ReceberTotal.Text         ;
      FrmConfirmaExtorno.LBLVENCIMENTO.CAPTION:= 'Vencto'                                      ;

      FrmConfirmaExtorno.LblTitulo.Caption    := 'CONFIRMAR BAIXA'  ;
      FrmConfirmaExtorno.Caption              := 'Baixa de Crédito' ;

      If FrmConfirmaExtorno.Showmodal = MrOk then
      begin
        DmFinanceiro2.Baixa_Receber(DmFinanceiro.Contas_ReceberCodigo.Value, //Codigo
                                    DmFinanceiro.Contas_ReceberAno.Value, //ano
                                    DmFinanceiro.Contas_ReceberDocto.Value, //documento
                                    'Baixa de Crédito', //histórico
                                    DMApp.DataCaixa , //databaixa
                                    DmFinanceiro.Contas_ReceberTOTAL.Value, //valor
                                    0, //juros
                                    0, //desconto
                                    DmApp.UsuarioCaixa, //usuário
                                    DmFinanceiro.Contas_ReceberPessoa_Fj.Value, //cliente
                                    0, //dinheiro
                                    0, //cheque
                                    0,//cartao
                                    0, //conta
                                    DmApp.turnoCaixa, //turno
                                    0 ); //banco

        DmFinanceiro.Contas_Receber.Close ;
        DmFinanceiro.Contas_Receber.Open  ;
      end;

      FrmConfirmaExtorno.Free ;
      FrmConfirmaExtorno := Nil ;
    end;
  end;
end;

procedure TFrmReceber.ActBaixarParcialExecute(Sender: TObject);
Var
   Cpf_Cnpj: String;
   Book: TbookMark ;
   Pessoa, Banco,  Dias: Integer;
   juros, VlrConta,  valor_baixa, Juros_Conta, Aux1, Juros_Inicial : Real;
   Data, DtBaixa : Tdate;
   juros_cli, SOMA_CHEQUES, fDesconto : real;
begin
     {O código utilizado é semelhante ao utilizado e baixa seleção parcial, porque no momento
     desta modificação o procedimento lá funcionava corretamente}
     if Not DmFinanceiro.Contas_ReceberCodigo.Isnull then
     begin
       Application.CreateForm(TFrmDadosBaixaParcial, FrmDadosBaixaParcial);
       //Implementado para permitir baixa com descontos (America AgroSeeds)
       if (DmApp.DESC_BX_PARCIAL = 'S') then
         FrmDadosBaixaParcial.Desconto.enabled := true
       else
         FrmDadosBaixaParcial.Desconto.enabled := false;

       with dmFinanceiro do
       begin
         VlrConta := 0;
         Pessoa := DmFinanceiro.Contas_ReceberPESSOA_FJ.value;
         SOMA_CHEQUES := DmApp.Soma_Cheques_Devolvidos (Pessoa);
         if (SOMA_CHEQUES > 0) then
           Application.Messagebox('Atenção! Cliente possui cheques devolvidos. Verifique a tela de pendências','Aviso', mb_iconerror + mb_ok);


         frmDadosBaixaParcial.pnlAgrupada.Visible := false;
         frmDadosBaixaParcial.Label9.Visible := true;
         frmDadosBaixaParcial.Label3.Visible := true;
         FrmDadosBaixaParcial.EdNome.text      := DataSource.DataSet.FieldByName ('NOME').AsString ;
         FrmDadosBaixaParcial.EdDocumento.text := DataSource.DataSet.FieldByName ('DOCTO').AsString ;
         FrmDadosBaixaParcial.edvencto.text    := DataSource.DataSet.FieldByName ('DT_VENCTO').AsString ;
         FrmDadosBaixaParcial.EdPARCELA.text   := DataSource.DataSet.FieldByName ('PARCELA').AsString ;

         //-------------------selecionando a data para aplicar o juros------------------------//
         if (Contas_ReceberData_Ult_Baixa.value < Contas_ReceberDT_VENCTO.value) then
           Data := Contas_ReceberDT_VENCTO.Value
         else
           Data := Contas_ReceberData_Ult_Baixa.Value;

         VlrConta := Contas_ReceberValor.Value - (Contas_ReceberVlr_Parcial.Value - Contas_ReceberDescontos.VALUE);
         //Encontrado o juros da conta
         dias := trunc(DmaPP.DataCaixa - Data);
         if Dias < 0 then
           Dias := 0;

         if ((Dias > 0) and (dias > dmapp.TOLERANCIA_JUROS)) then
         begin
          juros_cli := dmapp.RetornaJuroCli(DmFinanceiro.Contas_ReceberPESSOA_FJ.value);
          Juros_Conta := CALCULAJUROS(Data, DmaPP.DataServidor, VlrConta,juros_cli);
         end
         else
          Juros_Conta := 0;

         if not DMApp.TransactionProc.active then
           DMApp.TransactionProc.StartTransaction;

         //Selecionando conta, já que utilizaremos o mesmo procedimento de Receber por seleção
         SelecionaConta.Transaction := DMApp.TransactionProc;
         SelecionaConta.parambyname('tipo').value := 'S';
         SelecionaConta.parambyname('juros').value := Juros_Conta;
         SelecionaConta.parambyname('cnpj').value := dmApp.cnpj;
         SelecionaConta.parambyname('pessoa').value := DmFinanceiro.Contas_ReceberPESSOA_FJ.value;
         SelecionaConta.parambyname('codigo').value := DmFinanceiro.Contas_ReceberCodigo.value;
         SelecionaConta.ExecQuery;

         DMProcs.Soma_SelecionadorecLoja.ParamByName('CNPJ'  ).asString   := DmApp.Cnpj ;
         DMProcs.Soma_SelecionadorecLoja.ParamByName('DINI'  ).asDate     := strtodate('01/01/1901');
         DMProcs.Soma_SelecionadorecLoja.ParamByName('DFIM'  ).asDate     := strtodate('01/01/2050');
         DMProcs.Soma_SelecionadorecLoja.ParamByName('PESSOA').asInteger  := pessoa;
         DMProcs.Soma_SelecionadorecLoja.ExecProc;

         FrmDadosBaixaParcial.Total.Value      := Contas_ReceberTotal.Value;//DMProcs.Soma_SelecionadorecLoja.ParamByName('SOMA').asFloat - Juros_Conta ;
         FrmDadosBaixaParcial.Juros_Calculados := Juros_Conta;
         Juros_Inicial := Juros_Conta;

         FrmDadosBaixaParcial.Valor.Value      := FrmDadosBaixaParcial.Total.Value;
         FrmDadosBaixaParcial.Valor.ReadOnly   := true ;
       end;

       FrmDadosBaixaParcial.Data.Date      := DmApp.DataCaixa ;
       FrmDadosBaixaParcial.Data.Enabled   := False ;

       IF FrmDadosBaixaParcial.ShowModal = MROK THEN
       BEGIN
         With DmFinanceiro do
         begin

           valor_baixa := FrmDadosBaixaParcial.baixa.value;// - FrmDadosBaixaParcial.juros.value;

           if (arredonda(juros_inicial,2) <> arredonda(FrmDadosBaixaParcial.juros_Cobrar,2)) then
           begin
             AcertaJuros.Transaction := DMApp.TransactionProc;

             //houve desconto no valor de juros
             if (arredonda(Juros_inicial,2) > arredonda(FrmDadosBaixaParcial.juros_Cobrar,2)) then
             begin
               Aux1 := (arredonda(Juros_inicial,2) - arredonda(FrmDadosBaixaParcial.juros_Cobrar,2));
               //descobrindo qnto porcento representa o desconto dos juros
               Aux1 := (Aux1 * 100)/Juros_inicial;
               AcertaJuros.parambyname('CNPJ').value := dmApp.cnpj;
               AcertaJuros.parambyname('CLIENTE').value := Pessoa;
               AcertaJuros.parambyname('PCT').value := (Aux1 * -1); //para haver um desconto no total de juros
               AcertaJuros.ExecQuery;
             end
             else if (arredonda(Juros_inicial,2) < arredonda(FrmDadosBaixaParcial.juros_Cobrar,2)) then
             begin
               //houve um acréscimo no valor de juros
               Aux1 := (arredonda(FrmDadosBaixaParcial.juros_Cobrar,2) - arredonda(Juros_inicial,2));
               //descobrindo a porcentagem de acréscimo nos valores
               Aux1 := (Aux1 * 100)/Juros_inicial;
               AcertaJuros.parambyname('CNPJ').value := dmApp.cnpj;
               AcertaJuros.parambyname('CLIENTE').value := Pessoa;
               AcertaJuros.parambyname('PCT').value := Aux1;
               AcertaJuros.ExecQuery;
             end
         end;

         If FrmDadosBaixaParcial.BAIXA.Value >= FrmDadosBaixaParcial.TOTAL.Value then
            MessageDlg('O Valor da Baixa Parcial não pode exceder o valor da Conta, Verifique!',MtError,[MbOk],0)
         else
         begin
           {Baixa de contas que não tem banco vinculado}
           If FrmDadosBaixaParcial.cmbConta.text = '' then
             banco := dmapp.contacaixa
           else
             banco := FrmDadosBaixaParcial.cmbConta.LookupKeyValue;

           if (DmApp.DESC_BX_PARCIAL = 'S') then
             fDesconto := FrmDadosBaixaParcial.Desconto.value
           else
             fDesconto := 0;


           dmfinanceiro2.Baixa_Receber_Selecao_ADM('Vencimento',
                                     Pessoa,
                                     FrmDadosBaixaParcial.Historico.Text,
                                     STRTODATE('01/01/1900'),
                                     STRTODATE('31/12/9999'),
                                     valor_baixa,
                                     0,
                                     fDesconto,
                                     DmApp.UsuarioCaixa,
                                     FrmDadosBaixaParcial.Dinheiro.Value,
                                     FrmDadosBaixaParcial.Cheque.Value,
                                     FrmDadosBaixaParcial.Cartao.Value,
                                     DmApp.ContaCaixa,
                                     DmApp.turnoCaixa,
                                     banco,
                                     dmFinanceiro.Contas_ReceberNOME.value );

         //desmarcando o a conta selecionada
         if not DMApp.TransactionProc.active then
          DMApp.TransactionProc.StartTransaction;

         DmFinanceiro.SelecionaConta.parambyname('tipo').value := 'N';
         DmFinanceiro.SelecionaConta.parambyname('juros').value := 0;
         DmFinanceiro.SelecionaConta.parambyname('cnpj').value := dmApp.cnpj;
         DmFinanceiro.SelecionaConta.parambyname('pessoa').value := Pessoa;
         DmFinanceiro.SelecionaConta.parambyname('codigo').value := DmFinanceiro.Contas_ReceberCodigo.value;
         DmFinanceiro.SelecionaConta.ExecQuery;
         DMApp.TransactionProc.commit;

       end;

          Book := Contas_Receber.GetBookmark ;

          Contas_Receber.Refresh;
          Contas_Receber.GotoBookmark ( Book );
          Contas_Receber.FreeBookmark ( Book );
     end;

END;
FrmDadosBaixaParcial.Free ;
FrmDadosBaixaParcial := Nil ;
end;
end;

procedure TFrmReceber.ActAlterarExecute(Sender: TObject);
begin
  Try
     If not ( DataSource.DataSet.State in dsEditModes )
     then begin
          DataSource.DataSet.edit;
     end;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ', MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !', MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmReceber.dxDBEdit16Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmReceber.dxDBEdit16Enter(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );

     IF ( DmFinanceiro.Contas_Receber.STATE IN [ DSINSERT ] )
     THEN BEGIN
          IF CmbTipo.Text = ''
          THEN BEGIN
               MESSAGEDLG ( 'Digite o Tipo de Docto', MtError, [mbok], 0 );
               CmbTipo.SetFocus ;
          END;
     END;
end;

procedure TFrmReceber.ActBaixaSelecaoExecute(Sender: TObject);
begin
     { * * * * * }
     If FrmBaixaReceberSelecaoParc = Nil Then
     Begin
       //
       Application.ProcessMessages;
       FrmBaixaReceberSelecaoParc := TFrmBaixaReceberSelecaoParc.Create(Self);
       //
       FrmBaixaReceberSelecaoParc.Showmodal ;

       DMFinanceiro.Contas_Receber.Close;
       DMFinanceiro.Contas_Receber.Open ;
     End;
end;

procedure TFrmReceber.ActDetalhesExecute(Sender: TObject);
begin

  If ( GridTVCODIGO_VN.DataBinding.Field.AsInteger > 0 ) then
    DmVendas2.Proc_Consulta_Venda(GridTVCODIGO_VN.DataBinding.Field.AsInteger)
  else
    Showmessage('Esta Pendência Não Possui Uma Venda Vinculada! ');
end;

procedure TFrmReceber.ActParcelamentoExecute(Sender: TObject);
Var
   Parcelas, Cont, Pessoa, Intervalo: Integer;
   ParcIni, ParcFim : integer; 
   Documento, Historico, Parcela: String;
   Data, Vencimento: TDateTime;
   Valor: Real;
begin
     FrmReceberParcelamento := TFrmReceberParcelamento.create(Self);
     FrmReceberParcelamento.dsPessoas.DataSet := DmFinanceiro.SelPessoasFj ;
     FrmReceberParcelamento.CmbCentro_Custo.Visible := false;
     FrmReceberParcelamento.Label7.visible := false;
     DsTipoDocto.DataSet.Open;
     IF FrmReceberParcelamento.ShowModal = MROK
     THEN BEGIN
          With DmFinanceiro do
          begin
               data := FrmReceberParcelamento.EdData.date;
               Intervalo := TRUNC(FrmReceberParcelamento.EdIntervalo.value)  ;
               Pessoa := FrmReceberParcelamento.CmbPessoa.LookupKeyValue ;
               Documento := FrmReceberParcelamento.eddocumento.text ;
               ParcIni := TRUNC(FrmReceberParcelamento.Parcelas.value)-1;
               ParcFim := TRUNC(FrmReceberParcelamento.ParcelasFim.value);
               Parcelas := (ParcFim - ParcIni)  ;
               Valor := (FrmReceberParcelamento.EdValor.value)  ;


               Historico  := (FrmReceberParcelamento.EdHistorico.text);
               Contas_Receber.DisableControls ;
               //FAZ O PARCELAMENTO
               DMAPP.Transaction.CommitRetaining ;
               TRY
                  Cont := 1;
                  while Cont <= Parcelas do
                  begin
                       Contas_Receber.Append ;
                       Contas_ReceberPESSOA_FJ.Value  := Pessoa ;

                       Contas_ReceberDT_EMISSAO.Value := dmapp.DataCaixa ;
                       Contas_ReceberDT_VENCTO.Value  := data            ;
                       Contas_ReceberDT_LANCTO.Value  := dmapp.DataCaixa ;
                       Contas_ReceberDOCTO.Value      := Documento       ;
                       Contas_ReceberPARCELA.Value    := inttostr(ParcIni+Cont) + '/' + inttostr(ParcFim);
                       Contas_ReceberHISTORICO.Value  := Historico       ;
                       Contas_ReceberTIPO_DOCTO.Value := FrmReceberParcelamento.CmbTipo.LookupKeyValue;
                       Contas_ReceberVALOR.Value      := Valor           ;
                       Contas_ReceberBOLETO.Value     := 'N'             ;
                       Contas_ReceberORIGEM.Value     := 'MAN'           ;
                       Contas_ReceberCOD_CONTRATO.Value     := FrmReceberParcelamento.CmbContrato.LookupKeyValue;

                       Contas_Receber.Post   ;
                       //se não houver sido definido um intervalo.. entao o mês será incrementado
                       if intervalo = 0 then
                         data := IncMonth(data,1)
                       else
                         data := data + intervalo;

                       Cont := Cont + 1;
                  end;

               EXCEPT
                     DMAPP.Transaction.RollbackRetaining ;
               END;

               Contas_Receber.EnableControls  ;
          END;
     END;

     FrmReceberParcelamento.free ;
     FrmReceberParcelamento := Nil;

     cxGrid.SETFOCUS ;
end;

procedure TFrmReceber.BTNLOCALClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DsLocal.DataSet.Tag := DsLocal.DataSet.Tag + 1;


  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocais_Cobranca', False);

  FrmLocais_Cobranca := TFrmLocais_Cobranca.Create(Self);
  FrmLocais_Cobranca.ShowModal;

  Datasource.DataSet.FieldByName('LOCAL_COBRANCA').asInteger := FrmMain.Codigo_Int;

  FrmLocais_Cobranca.Free;
  FrmLocais_Cobranca := Nil;

  DmFinanceiro.Local_Cobranca.Close;
  DmFinanceiro.Local_Cobranca.Open;


  CmbLocal.SetFocus;
end;

procedure TFrmReceber.ActRemessaExecute(Sender: TObject);
begin
  FRemessa := TFRemessa.create(Self);
  FRemessa.showmodal;
  FRemessa.release;
end;

procedure TFrmReceber.ActRetornoExecute(Sender: TObject);
begin
  FRetorno := TFRetorno.Create(Self);
  FRetorno.showmodal;
  FRetorno.release;//retorno de boletos
end;

procedure TFrmReceber.ActArquivarExecute(Sender: TObject);
begin
     //ARQUIVO MORTO
     If Datasource.DataSet.FieldByName('ARQUIVO_MORTO').asString = 'S'
     THEN BEGIN
          Datasource.DataSet.EDIT ;
          Datasource.DataSet.FieldByName('ARQUIVO_MORTO').asString := 'N';
          Datasource.DataSet.POST ;
     END
     ELSE BEGIN
          Datasource.DataSet.EDIT ;
          Datasource.DataSet.FieldByName('ARQUIVO_MORTO').asString := 'S';
          Datasource.DataSet.POST ;
     END;
end;

procedure TFrmReceber.ActBaixaConvenioExecute(Sender: TObject);
begin
  //baixar por convenio
  if FrmBaixaReceberConvenio = nil then
    FrmBaixaReceberConvenio := TFrmBaixaReceberConvenio.Create(Self);
       //
  FrmBaixaReceberConvenio.Showmodal ;
  FrmBaixaReceberConvenio.Free      ;
  FrmBaixaReceberConvenio := Nil    ;

  DMFinanceiro.Contas_Receber.Close;
  DMFinanceiro.Contas_Receber.Open ;
end;

procedure TFrmReceber.ActConfigFinExecute(Sender: TObject);
begin
  if (DmFinanceiro.Contas_ReceberCODIGO_VN.Value > 0) then
  begin
    Application.MessageBox('Impossível definir a configuração financeira. Registro gerado automaticamente pelo faturamento','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if (DmFinanceiro.Contas_ReceberVLR_PARCIAL.Value > 0) then
  begin
    Application.MessageBox('Impossível definir a configuração financeira. Registro já possui movimentações de baixa','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if not (DmFinanceiro.Contas_Receber.State in [ DsInsert, DsEdit ]) then
    DmFinanceiro.Contas_Receber.Edit;

  FrmConfigFinanceira := TFrmConfigFinanceira.Create(Self);
  FrmConfigFinanceira.DataSource.DataSet := DmFinanceiro.Contas_Receber;
  FrmConfigFinanceira.ShowModal;

  if not (DmFinanceiro.Contas_Receber.State in [ DsInsert, DsEdit ]) then
    DmFinanceiro.Contas_Receber.Edit;
end;

procedure TFrmReceber.VerificaAcerto;
begin
  if (dmApp.EXIBE_ACERTO = 'S') then
  begin
    ActBaixaSelecao.Enabled := false;
    ActBaixaConvenio.Enabled := false;
    ActBaixar.Enabled := false;
    ActBaixarParcial.Enabled := false;
  end;
end;

procedure TFrmReceber.ActExportaExecute(Sender: TObject);
begin
   dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Contas à Receber.xls', cxGrid)
end;

procedure TFrmReceber.GridTVCODIGOCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
Var
   Value: TDateTime ;
   Aux: String;
   ArqMorto, DtVencto : Variant;
begin
    if (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]) then
       exit;

     ACanvas.Canvas.Font.Color := clBlack;
     if GridTV.ViewData.Records[AviewInfo.GridRecord.Index].Selected then
     begin
       ACanvas.Canvas.Brush.Color := clYellow;
       exit;
     end;

     ArqMorto := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVARQUIVO_MORTO.Index];
     DtVencto := GridTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridTVDT_VENCTO.Index];


     if (ArqMorto = 'S') then
       ACanvas.Canvas.Brush.Color := clRed
     else
     begin
        if (DtVencto < Date) then
          ACanvas.Canvas.Brush.Color := $00ECAD84
        else
          ACanvas.Canvas.Brush.Color := clWhite;
     end;
end;

end.


