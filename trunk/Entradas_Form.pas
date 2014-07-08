unit Entradas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  DBCtrls, dxmdaset, Mask,    
    Grids, DBGrids, cxPropertiesStore, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxPC, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, IBQuery;

type
  TFrmEntradas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
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
    b2: TBevel;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    dsParametros: TDataSource;
    dsFornecedores: TDataSource;
    dsFaturamento: TDataSource;
    DataSource: TDataSource;
    LblTitulo: TcxLabel;
    Image1: TImage;
    actLookup: TAction;
    dsItens: TDataSource;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    dxTabSheet2: TcxTabSheet;
    Shape2: TShape;
    dsNaturezas: TDataSource;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    dxTabSheet3: TcxTabSheet;
    Shape3: TShape;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label9: TcxLabel;
    btnNatureza: TcxButton;
    BtnFornecedor: TcxButton;
    Label3: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label8: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label7: TcxLabel;
    Label19: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    cmbNatureza: TdxDBLookupEdit;
    EdDataNota: TdxDBDateEdit;
    EdSerie: TdxDBEdit;
    EdDataReferencia: TdxDBDateEdit;
    EdDataEntrada: TdxDBDateEdit;
    EdTotalMercadoria: TdxDBCalcEdit;
    EdDescontos: TdxDBCalcEdit;
    EdEmbalagem: TdxDBCalcEdit;
    cbFrete: TdxDBCheckEdit;
    EdSeguro: TdxDBCalcEdit;
    EdIpi: TdxDBCalcEdit;
    EdBaseIcm: TdxDBCalcEdit;
    EdPorcIcm: TdxDBCalcEdit;
    EdIcm: TdxDBCalcEdit;
    EdLocal: TdxDBPickEdit;
    EdTaxas: TdxDBCalcEdit;
    EdIcmSubstituicao: TdxDBCalcEdit;
    GridItens: TdxDBGrid;
    Panel2: TPanel;
    Label20: TcxLabel;
    Label21: TcxLabel;
    Label22: TcxLabel;
    Label23: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Panel3: TPanel;
    dxDBEdit5: TdxDBEdit;
    edtIPILancado: TdxDBEdit;
    edtIPIDesdobrado: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    Label24: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    Label27: TcxLabel;
    GridItensCNPJ: TdxDBGridMaskColumn;
    GridItensNDOCTO: TdxDBGridMaskColumn;
    GridItensPESSOA_FJ: TdxDBGridMaskColumn;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNOME_PRODUTO: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensPRC_TOTAL: TdxDBGridColumn;
    GridItensPERC_LUCRO: TdxDBGridMaskColumn;
    GridItensPRC_VENDA: TdxDBGridMaskColumn;
    GridItensPRC_VENDA_ANT: TdxDBGridMaskColumn;
    GridItensPRC_CUSTO: TdxDBGridMaskColumn;
    GridItensICM: TdxDBGridMaskColumn;
    GridItensICM_SUBS: TdxDBGridMaskColumn;
    GridItensIPI: TdxDBGridMaskColumn;
    GridItensIPI_PRODUTO: TdxDBGridMaskColumn;
    GridItensTAXAS: TdxDBGridMaskColumn;
    GridItensDESCONTOS: TdxDBGridMaskColumn;
    GridItensEMBALAGEM: TdxDBGridMaskColumn;
    GridItensFRETE: TdxDBGridMaskColumn;
    GridItensSEGURO: TdxDBGridMaskColumn;
    btnAlterar: TdxBarButton;
    Shape5: TShape;
    dsTipoDoctos: TDataSource;
    Shape6: TShape;
    Shape7: TShape;
    RxLabel1: TcxLabel;
    DBCoolText1: TDBText;
    ActAtQtd: TAction;
    ActAtCusto: TAction;
    ActAtFinanceiro: TAction;
    ActAtTodas: TAction;
    edDocumento: TdxDBEdit;
    edFornecedor: TdxDBEdit;
    edNatureza: TdxDBEdit;
    dsUnidades: TDataSource;
    GridItensUNIDADE: TdxDBGridMaskColumn;
    ActLocalizarNatureza: TAction;
    ActLocalizarFornecedor: TAction;
    DsSubUnidades: TDataSource;
    Label29: TcxLabel;
    cmbTipoDocto: TdxDBLookupEdit;
    BtnDocumento: TcxButton;
    Label35: TcxLabel;
    cmbcentro: TdxDBLookupEdit;
    BTNCENTRO: TcxButton;
    DsCentro: TDataSource;
    edFrete: TdxDBCalcEdit;
    GridItensLote: TdxDBGridColumn;
    dxDBEdit9: TdxDBEdit;
    Panel6: TPanel;
    Label39: TcxLabel;
    dxDBEdit11: TdxDBEdit;
    GridItensCODIGO_2: TdxDBGridMaskColumn;
    ActParcelar: TAction;
    PanelTop: TPanel;
    Panel8: TPanel;
    ckfinanceiro: TCheckBox;
    Panel4: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    RzBitBtn4: TcxButton;
    ckcusto: TCheckBox;
    CkQntde: TCheckBox;
    Panel5: TPanel;
    RxLabel2: TcxLabel;
    Shape11: TShape;
    DBCoolText5: TDBText;
    dxDBEdit10: TdxDBEdit;
    PanelBotton: TPanel;
    PanelCenter: TPanel;
    GridFaturamento: TdxDBGrid;
    GridFaturamentoCNPJ: TdxDBGridMaskColumn;
    GridFaturamentoNDOCTO: TdxDBGridMaskColumn;
    GridFaturamentoPESSOA_FJ: TdxDBGridMaskColumn;
    GridFaturamentoCODIGO_CP: TdxDBGridMaskColumn;
    GridFaturamentoANO_CP: TdxDBGridMaskColumn;
    GridFaturamentoPARCELA: TdxDBGridMaskColumn;
    GridFaturamentoVALOR: TdxDBGridMaskColumn;
    GridFaturamentoCentro: TdxDBGridColumn;
    GridFaturamentoDuplicata: TdxDBGridColumn;
    GridFaturamentoObs: TdxDBGridColumn;
    Shape9: TShape;
    DBCoolText3: TDBText;
    Label34: TcxLabel;
    DBCoolText4: TDBText;
    Shape10: TShape;
    Label36: TcxLabel;
    DBCoolText2: TDBText;
    Shape8: TShape;
    Label37: TcxLabel;
    GridFaturamentoConferida: TdxDBGridCheckColumn;
    Panel7: TPanel;
    Label28: TcxLabel;
    Label30: TcxLabel;
    Label33: TcxLabel;
    edtValor: TdxDBCalcEdit;
    Label31: TcxLabel;
    dxDBEdit7: TdxDBEdit;
    edtDuplicata: TdxDBEdit;
    edtDataBase: TdxDBDateEdit;
    Panel9: TPanel;
    Label40: TcxLabel;
    cmbForma: TdxDBLookupEdit;
    edtForma: TdxDBEdit;
    DsForma: TDataSource;
    GridFaturamentoDT_VENCTO: TdxDBGridDateColumn;
    btnConfigFinanceira: TdxBarButton;
    ActConfigFinanceira: TAction;
    cmbPessoa: TdxDBLookupEdit;
    Label32: TcxLabel;
    BtnForma: TcxButton;
    btnCredor: TcxButton;
    GridFaturamentoCOD_CREDOR: TdxDBGridMaskColumn;
    GridFaturamentoCREDOR: TdxDBGridMaskColumn;
    dsPessoas: TDataSource;
    Label38: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    stgFrmEntradas4: TcxPropertiesStore;
    btnNFe: TdxBarButton;
    ActImprimirNFe: TAction;
    dxDBEdit6: TdxDBEdit;
    cxLabel1: TcxLabel;
    CmbTipo2: TcxDBLookupComboBox;
    cxLabel2: TcxLabel;
    btnDocto2: TcxButton;
    dsTipoDocto: TDataSource;
    QryTipoDocto: TIBQuery;
    QryTipoDoctoCNPJ: TIBStringField;
    QryTipoDoctoSIGLA: TIBStringField;
    QryTipoDoctoNOME: TIBStringField;
    QryTipoDoctoBLT: TIBStringField;
    QryTipoDoctoCODIGO_FISCAL: TIBStringField;
    GridFaturamentoNOME_TIPO_DOCTO: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure dxTabSheet1Enter(Sender: TObject);
    procedure dxTabSheet2Enter(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure dxTabSheet3Enter(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure ActAtQtdExecute(Sender: TObject);
    procedure ActAtCustoExecute(Sender: TObject);
    procedure ActAtFinanceiroExecute(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure btnNaturezaClick(Sender: TObject);
    procedure ActAtTodasExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure edNaturezaExit(Sender: TObject);
    procedure ActLocalizarNaturezaExecute(Sender: TObject);
    procedure edFornecedorExit(Sender: TObject);
    procedure ActLocalizarFornecedorExecute(Sender: TObject);
    procedure edDocumentoEnter(Sender: TObject);
    procedure edDocumentoExit(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure BtnDocumentoClick(Sender: TObject);
    procedure GridFaturamentoEnter(Sender: TObject);
    procedure EdIcmSubstituicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure BTNCENTROClick(Sender: TObject);
    procedure edFornecedorEnter(Sender: TObject);
    procedure cmbcentroKeyPress(Sender: TObject; var Key: Char);
    procedure edFornecedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActParcelarExecute(Sender: TObject);
    procedure edtFormaExit(Sender: TObject);
    procedure Panel9Exit(Sender: TObject);
    procedure BtnFormaClick(Sender: TObject);
    procedure cmbFormaEnter(Sender: TObject);
    procedure ActConfigFinanceiraExecute(Sender: TObject);
    procedure btnCredorClick(Sender: TObject);
    procedure ActImprimirNFeExecute(Sender: TObject);
    procedure btnDocto2Click(Sender: TObject);
    procedure QryTipoDoctoBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    Procedure Calcular_Itens;
    Procedure Bloquear_Campos_NF(Enabled: Boolean);
    function VerificaCentroCusto:Boolean;
    function ConfereValores: Boolean ;
    function ConfereFinanceiro: Boolean ;

  public
    { Public declarations }
    Retorno: Integer;
    Incluir, LocNat, LocFor: Boolean ;
    Procedure Calcular_Parcelas;
  end;

var
  FrmEntradas: TFrmEntradas;

implementation

uses Entradas_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  EntradasItens_Form, EntradasFat_Form, Cadastros_DM, NaturezaOper_Form,
  Fornecedores_Form, Localizar_Natureza, Localizar_Fornecedor,
  Tipo_Documento_Form, Centro_Custo_Form, Plano_DM,
  Entrada_Parcelamento_Form, Financeiro_Dm, Vendas_Dm, Localizar_Forma,
  FormasPagto_Form, ConfigFin_Form, Cadastros_Dm2, PessoasFJ_Form;

  {$R *.DFM}

procedure TFrmEntradas.Bloquear_Campos_NF(Enabled: Boolean);
begin
  edTotalMercadoria.ReadOnly := Enabled;
  edEmbalagem.ReadOnly       := Enabled;
  edSeguro.ReadOnly          := Enabled;
  edIPI.ReadOnly             := Enabled;
  edPorcIcm.ReadOnly         := Enabled;
  edTaxas.ReadOnly           := Enabled;
  edDescontos.ReadOnly       := Enabled;
  edFrete.ReadOnly           := Enabled;
  cbFrete.ReadOnly           := Enabled;
  edBaseICM.ReadOnly         := Enabled;
  edIcm.ReadOnly             := Enabled;
  edIcmSubstituicao.ReadOnly := Enabled;
end;

procedure TFrmEntradas.Calcular_Itens;
Var bReg: Pointer;
    tProdutos, teste, tIPI, tFrete: Extended;
begin
  //
  If dsItens.DataSet.RecordCount > 1 Then
     bReg := dsItens.DataSet.GetBookmark;
  //
  dsItens.DataSet.DisableControls;
  //
  tProdutos := 0;
  tIPI      := 0;
  tFrete    := 0;

  //
  dsItens.DataSet.First;
  //
  While Not dsItens.DataSet.Eof Do
        Begin
          //
          tProdutos := tProdutos + arredonda(dsItens.DataSet.FieldByName('PRC_TOTAL').asFloat,2) ;
          tIPI      := tIPI      + arredonda(( dsItens.DataSet.FieldByName('VLR_IPI').asFloat * dsItens.DataSet.FieldByName('QUANTIDADE').asFloat),4);
          tFrete    := tFrete    + arredonda(( dsItens.DataSet.FieldByName('FRETE').asFloat *dsItens.DataSet.FieldByName('QUANTIDADE').asFloat ),4) ;

          //
          dsItens.DataSet.Next;
        End;
  //
  If Not ( DataSource.DataSet.State in [ dsinsert, dsedit ] )
  then begin
       DataSource.DataSet.Edit ;
  end;

  DataSource.DataSet.FieldByName('VLR_PRODUTOS_LC').asFloat := tProdutos;
  DataSource.DataSet.FieldByName('VLR_IPI_LC').asFloat      := tIPI     ;
  DataSource.DataSet.FieldByName('VLR_FRETE_LC').asFloat    := tFrete   ;

  //
  If dsItens.DataSet.RecordCount > 1 Then
     Begin
       dsItens.DataSet.GotoBookmark(bReg);
       dsItens.DataSet.FreeBookmark(bReg);
     End;
  //
  dsItens.DataSet.EnableControls;
end;

Procedure TFrmEntradas.Calcular_Parcelas;
Var bReg: Pointer;
    eTotal: Extended;
begin
  //
  If dsFaturamento.DataSet.RecordCount > 0 Then
     bReg := dsFaturamento.DataSet.GetBookmark;
  //
//  dsFaturamento.DataSet.DisableControls;
  //
  eTotal := 0;
  //
  if not(dsFaturamento.DataSet.Active) then
    exit;
  dsFaturamento.DataSet.First;
  //
  While Not dsFaturamento.DataSet.Eof Do
        Begin
          //
          eTotal := eTotal + dsFaturamento.DataSet.FieldByName('VALOR').asFloat;
          //
          dsFaturamento.DataSet.Next;
        End;

  If Not ( DataSource.DataSet.State in [ dsinsert, dsedit ] )
  then begin
       DataSource.DataSet.Edit ;
  end;
  //
  DataSource.DataSet.FieldByName('VLR_PARC_LC').asFloat := eTotal;
  //
  If dsFaturamento.DataSet.RecordCount > 0 Then
     Begin
       dsFaturamento.DataSet.GotoBookmark(bReg);
       dsFaturamento.DataSet.FreeBookmark(bReg);
     End;
  
//  dsFaturamento.DataSet.EnableControls;
End;

procedure TFrmEntradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //

  If dsFaturamento.DataSet.Tag = 0 Then
     dsFaturamento.DataSet.Close;
  If dsItens.DataSet.Tag = 0 Then
     dsItens.Dataset.Close;
  If DataSource.DataSet.Tag = 0 Then
     DataSource.DataSet.Close;
  If dsUnidades.DataSet.Tag = 0 Then
     dsUnidades.DataSet.Close;
  If dsSubUnidades.DataSet.Tag = 0 Then
     dsSubUnidades.DataSet.Close;
  If dsTipoDoctos.DataSet.Tag = 0 Then
     dsTipoDoctos.DataSet.Close;
  If dsFornecedores.DataSet.Tag = 0 Then
     dsFornecedores.DataSet.Close;
  If dsNaturezas.DataSet.Tag = 0 Then
     dsNaturezas.DataSet.Close;
  If dsParametros.DataSet.Tag = 0 Then
     dsParametros.DataSet.Close;
  If dsCentro.DataSet.Tag = 0 Then
     dsCentro.DataSet.Close;
  //
  Action := caFree;
  FrmEntradas := Nil;
end;

procedure TFrmEntradas.ActIncluirExecute(Sender: TObject);
begin
  //
  with dmEntradas do
  begin
    If ((EntradasPROC_QTD.Value = 'S') OR (EntradasPROC_CUSTO.Value = 'S') OR (EntradasPROC_FIN.Value = 'S')) then
    begin
      Application.MessageBox('Impossível inserir. NF está fechada','Aviso',mb_ok+mb_iconerror);
      exit;
    end;
  end;

  If (pc.ActivePageIndex <> 0) And
     (DataSource.DataSet.FieldByName('VLR_PRODUTOS').IsNull) Then
     Begin
       MessageDlg('Você deve informar corretamente o Valor Total dos Produtos !',MtError,[MbOk],0);
       pc.ActivePageIndex := 0;
       edTotalMercadoria.SetFocus;
     End;

  //
  If pc.ActivePageIndex = 0
  Then begin
       If dsItens.DataSet.RecordCount <= 0
       then begin
            EdDocumento.Enabled := True ;
            edFornecedor.Enabled := True ;
            EdDocumento.SetFocus;
       end
       else begin
            EdDocumento.Enabled := False ;
            edFornecedor.Enabled := False ;
            cmbTipoDocto.SetFocus;
       end ;
  end ;

  If pc.ActivePageIndex = 1 Then
     Begin
       //
       FrmEntradasItens := TFrmEntradasItens.Create(Self);

       If Navigator.DataSource.State in dsEditModes Then
          Exit;

       Navigator.DataSource.DataSet.Append;

       FrmEntradasItens.ShowModal;
       //
       If Not (DataSource.State in dsEditModes) Then
          DataSource.DataSet.Edit;
       //
       Calcular_Itens;
     End;

  If Navigator.DataSource.State in dsEditModes Then Exit;

  If pc.ActivePageIndex = 0 Then
  begin
    EdDocumento.Enabled := True ;
    edFornecedor.Enabled := True ;
    EdDocumento.SetFocus;
  end;

end;

procedure TFrmEntradas.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
  //
  if pc.ActivePageIndex = 0 then
  begin
    with DMEntradas do
    begin
      if ((EntradasPROC_FIN.value = 'S') or (EntradasPROC_QTD.value = 'S') or (EntradasPROC_CUSTO.value = 'S')) then
      begin
        Application.MessageBox('Impossível excluir. NF está fechada','Atenção',mb_iconerror+mb_ok);
        exit;
      end;

      if (Application.MessageBox('Deseja realmente excluir esta Nota Fiscal?','Atenção',mb_iconquestion+mb_yesno)=id_no) then
        exit;

      Entradas.Delete;
      DMApp.Transaction.CommitRetaining;
    end;
  end;

  if pc.ActivePageIndex = 1 Then
  begin
    with dmEntradas do
    begin
      if ((EntradasPROC_FIN.value = 'S') or (EntradasPROC_QTD.value = 'S') or (EntradasPROC_CUSTO.value = 'S')) then
      begin
        Application.MessageBox('Impossível excluir item. NF está fechada','Atenção',mb_iconerror+mb_ok);
        exit;
      end;

      if (Application.MessageBox('Deseja realmente excluir este item?','Atenção',mb_iconquestion+mb_yesno)=id_no) then
        exit;

      Entradas_Itens.Delete;
      DMApp.Transaction.CommitRetaining;
    end;
    Calcular_Itens;
  end;

  if pc.ActivePageIndex = 2 Then
  begin
    with dmEntradas do
    begin
      if ((EntradasPROC_FIN.value = 'S') or (EntradasPROC_QTD.value = 'S') or (EntradasPROC_CUSTO.value = 'S')) then
      begin
        Application.MessageBox('Impossível excluir a parcela. NF está fechada','Atenção',mb_iconerror+mb_ok);
        exit;
      end;

      if (Application.MessageBox('Deseja realmente excluir esta parcela?','Atenção',mb_iconquestion+mb_yesno)=id_no) then
        exit;

      Entradas_Fat.Delete;
      DMApp.Transaction.CommitRetaining;
    end;
  end;
end;

procedure TFrmEntradas.ActPostExecute(Sender: TObject);
begin
   If not(Navigator.DataSource.DataSet.State in [ dsinsert, dsedit ]) then
     exit;

  if (pc.ActivePageIndex = 0)  Then
  begin
    if (DataSource.State in [ dsinsert, dsedit ]) then
    begin
      DMEntradas.Entradas_Itens.DataSource := Nil;
      DMEntradas.EntradAs_Fat.DataSource   := Nil;
      DataSource.DataSet.Post;
      DMEntradas.Entradas_Itens.DataSource := DMEntradas.dsEntradas;
      DMEntradas.Entradas_Fat.DataSource   := DMEntradas.dsEntradas;
    end;
  end
  else
    Navigator.DataSource.DataSet.Post;

  ActAtTodas.enabled := true;
  DMApp.Transaction.CommitRetaining;

end;

procedure TFrmEntradas.ActCancelExecute(Sender: TObject);
begin
  If Navigator.DataSource.DataSet.State in dsEditModes Then
     Begin
       If pc.ActivePageIndex = 0 Then
          Begin
            DataSource.DataSet.Cancel;
          End
       Else
          Navigator.DataSource.DataSet.Cancel
     End
  Else
     Begin
       If pc.ActivePageIndex <> 0 Then
          pc.ActivePageIndex := 0
       Else
          BtnFechar.OnClick(BtnFechar);
     End;
end;

procedure TFrmEntradas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    If Not(dsParametros.DataSet.Active) Then
       dsParametros.DataSet.Open;
    If Not(dsCentro.DataSet.Active) Then
       dsCentro.DataSet.Open;
    If Not(dsNaturezas.DataSet.Active) Then
       dsNaturezas.DataSet.Open;
    If Not(dsTipoDoctos.DataSet.Active) Then
       dsTipoDoctos.DataSet.Open;
    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
    If Not(dsItens.DataSet.Active) Then
       dsItens.DataSet.Open;
    If Not(dsFaturamento.DataSet.Active) Then
       dsFaturamento.DataSet.Open;

    DmVendas.SelFormaPgto.close;
    DmVendas.SelFormaPgto.Open;

    dmCadastros2.SelClientes.Close;
    dmCadastros2.SelClientes.Open;
    
    DMEntradas.Entradas_Itens.Close;
    DMEntradas.Entradas_Itens.Open;

    QryTipoDocto.Close;
    QryTipoDocto.Open;

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
  Datasource.AutoEdit := ActAlterar.Enabled;

  pc.ActivePageIndex  := 0;

  If dsItens.DataSet.RecordCount <= 0
  then begin
       EdDocumento.Enabled := True ;
       edFornecedor.Enabled := True ;
  end
  else begin
       EdDocumento.Enabled := False ;
       edFornecedor.Enabled := False ;
  end ;

  If Incluir
  then begin
       DataSource.DataSet.Append ;

       EdDocumento.Enabled := True  ;
       edFornecedor.Enabled := True ;
       EdDocumento.SetFocus ;
  end;
end;

procedure TFrmEntradas.FormCreate(Sender: TObject);
begin
    LocNat := False ;
    LocFor := False ;

    //
    ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
    // Se o Usuário for Supervisor
    If DMUsuarios.Direito = 'SUPERVISOR' Then
       DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
    Else If DMUsuarios.Objeto = Self.Name Then
       AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmEntradas.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGeneros;
  DMListagens.Free;
  DMListagens := Nil; }
end;

procedure TFrmEntradas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TFrmEntradas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
//  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmEntradas.DataSourceStateChange(Sender: TObject);
begin
  If dsItens.DataSet.RecordCount > 0
  then begin
      edDocumento.Enabled  := False ;
      edFornecedor.Enabled := False ;
  end;

  //
  If DataSource.State in dsEditModes Then
  Begin
    ActAtQtd.Enabled        := False;
    ActAtCusto.Enabled      := False;
    ActAtFinanceiro.Enabled := False;
    ActAtTodas.Enabled      := False;
  End
  else
  begin
    ActAtQtd.Enabled        := (ActAtQtd.Tag        = 1) And (DataSource.DataSet.FieldByName('PROC_QTD').asString = 'N');
    ActAtCusto.Enabled      := (ActAtCusto.Tag      = 1) And (DataSource.DataSet.FieldByName('PROC_CUSTO').asString = 'N');
    ActAtFinanceiro.Enabled := (ActAtFinanceiro.Tag = 1) And (DataSource.DataSet.FieldByName('PROC_FIN').asString = 'N');
    ActAtTodas.Enabled      := (ActAtTodas.Tag = 1);
 end;
  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
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
     End;
end;

procedure TFrmEntradas.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmEntradas.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmEntradas.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmEntradas.actLookupExecute(Sender: TObject);
begin
  If FrmEntradas.ActiveControl = edFornecedor Then
     btnFornecedor.OnClick(btnFornecedor);

  If ((FrmEntradas.ActiveControl = cmbNatureza) or (FrmEntradas.ActiveControl = edNatureza)) Then
    btnNatureza.OnClick(btnNatureza);

  If FrmEntradas.ActiveControl = cmbTipoDocto Then
     BtnDocumento.OnClick(BtnDocumento);

  If FrmEntradas.ActiveControl = cmbCentro Then
     BtnCentro.OnClick(BtnCentro);

  If FrmEntradas.ActiveControl = cmbPessoa Then
     BtnCentro.OnClick(btnCredor);

  If FrmEntradas.ActiveControl = cmbForma Then
     BtnForma.OnClick(btnCredor);

  If FrmEntradas.ActiveControl = CmbTipo2 Then
     btnDocto2.OnClick(btnDocto2);

end;

procedure TFrmEntradas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmEntradas.dxTabSheet1Enter(Sender: TObject);
begin
  Try
    Navigator.DataSource := DataSource;
    DataSource.OnStateChange(DataSource);
    If dsItens.DataSet.RecordCount <= 0
    then begin
         EdDocumento.Enabled := True ;
         edFornecedor.Enabled := True ;
         EdDocumento.SetFocus;
    end
    else begin
         EdDocumento.Enabled := False ;
         edFornecedor.Enabled := False ;
         cmbTipoDocto.SetFocus;
    end ;
    ActAlterar.Visible := False;
  Except
  End;
end;

procedure TFrmEntradas.dxTabSheet2Enter(Sender: TObject);
begin
  Try
    Navigator.DataSource := dsItens;
    dsItens.OnStateChange(dsItens);
    ActAlterar.Visible := True;
    GridItens.SetFocus;
  Except
  End;
end;

procedure TFrmEntradas.ActNextPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 2 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1
end;

procedure TFrmEntradas.ActPreviousPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1
end;

procedure TFrmEntradas.dxTabSheet3Enter(Sender: TObject);
begin
  Try
    Navigator.DataSource := dsFaturamento;
    dsFaturamento.OnStateChange(dsFaturamento);
    ActAlterar.Visible := True;
  Except
  End;
end;

procedure TFrmEntradas.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;


  with dmEntradas do
  begin
    If ((EntradasPROC_QTD.Value = 'S') OR (EntradasPROC_CUSTO.Value = 'S') OR (EntradasPROC_FIN.Value = 'S')) then
    begin
      Application.MessageBox('Impossível Editar. NF está fechada','Aviso',mb_ok+mb_iconerror);
    //  exit;
    end;
  end;

  //
  If pc.ActivePageIndex = 0
  Then begin
       Navigator.DataSource.DataSet.Edit;
       If dsItens.DataSet.RecordCount <= 0
       then begin
            EdDocumento.Enabled := True ;
            edFornecedor.Enabled := True ;
            EdDocumento.SetFocus;
       end
       else begin
            EdDocumento.Enabled := False ;
            edFornecedor.Enabled := False ;
            cmbTipoDocto.SetFocus;
       end ;
  end ;
  //
  If pc.ActivePageIndex = 1 Then
  Begin
       If ( DataSource.DataSet.State in [ dsinsert, dsedit ] )
       then begin
            DataSource.DataSet.Post ;
       end;

       //
       FrmEntradasItens := TFrmEntradasItens.Create(Self);
       FrmEntradasItens.ShowModal;
       Calcular_Itens;
     End;
  //
  If pc.ActivePageIndex = 2 Then
  Begin
       If ( DataSource.DataSet.State in [ dsinsert, dsedit ] )  then
          DataSource.DataSet.Post ;

       DMEntradas.Entradas_Fat.Edit;
       cmbPessoa.SetFocus;
  end;
end;

procedure TFrmEntradas.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmEntradas.ActAtQtdExecute(Sender: TObject);
begin
     If Not ConfereValores
     then begin
          MessageDlg('Valores Desdobrados Não Conferem, Verifique os Produtos!', mtError, [mbOK], 0);
          Pc.ActivePageIndex := 1;
          Exit ;
     end;

     If ckfinanceiro.Checked
     then begin
           if not VerificaCentroCusto then
            exit;

          If Not ConfereFinanceiro
          then begin
               MessageDlg('Valores Desdobrados Não Conferem, Verifique as Parcelas e a Entrada!', mtError, [mbOK], 0);
               Pc.ActivePageIndex := 2;
               Exit ;
          end;
     END;

     If DMApp.At_NF_Ent_Qtd(DataSource.DataSet.FieldByName('CNPJ').asString,
                         DataSource.DataSet.FieldByName('NDOCTO').asString,
                         DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger) = 1
     Then Begin
          //
          //
          DMApp.Transaction.CommitRetaining;
          //
          MessageDlg('Atualização efetuada com sucesso !',MtInformation,[MbOk],0);
          Close ;
     End
     Else Begin
          //
          MessageDlg('Ocorreu um erro na tentativa de atualização, contate o suporte técnico !',MtError,[MbOk],0);
     End;
end;

procedure TFrmEntradas.ActAtCustoExecute(Sender: TObject);
begin
     If Not ConfereValores
     then begin
          MessageDlg('Valores Desdobrados Não Conferem, Verifique os Produtos!', mtError, [mbOK], 0);
          Pc.ActivePageIndex := 1;
          Exit ;
     end;

      IF ckfinanceiro.Checked
     THEN BEGIN
          if not VerificaCentroCusto then
            exit;

          If Not ConfereFinanceiro
          then begin
               MessageDlg('Valores Desdobrados Não Conferem, Verifique as Parcelas e a Entrada!', mtError, [mbOK], 0);
               Pc.ActivePageIndex := 2;
               Exit ;
          end;
     end;

     If DMApp.At_NF_Ent_Cus(DataSource.DataSet.FieldByName('CNPJ').asString,
                         DataSource.DataSet.FieldByName('NDOCTO').asString,
                         DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger) = 1
     Then Begin
          //
          DMApp.Transaction.CommitRetaining;
          //
          MessageDlg('Atualização efetuada com sucesso !',MtInformation,[MbOk],0);
          Close ;
     End
     Else Begin
          //
          MessageDlg('Ocorreu um erro na tentativa de atualização, contate o suporte técnico !',MtError,[MbOk],0);
     End;
end;

procedure TFrmEntradas.ActAtFinanceiroExecute(Sender: TObject);
begin
     If CkQntde.Checked
     then begin
          If Not ConfereValores
          then begin
               MessageDlg('Valores Desdobrados Não Conferem, Verifique os Produtos!', mtError, [mbOK], 0);
               Pc.ActivePageIndex := 1;
               Exit ;
          End;
     end;

     If Not ConfereFinanceiro
     then begin
          MessageDlg('Valores Desdobrados Não Conferem, Verifique as Parcelas e a Entrada!', mtError, [mbOK], 0);
          Pc.ActivePageIndex := 2;
          Exit ;
     end;

     If DMApp.At_NF_Ent_Fin(DataSource.DataSet.FieldByName('CNPJ').asString,
                         DataSource.DataSet.FieldByName('NDOCTO').asString,
                         DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger,
                         DmApp.DataCaixa) = 1
     Then Begin
          //
          DMApp.Transaction.CommitRetaining;
          //
          MessageDlg('Atualização efetuada com sucesso !',MtInformation,[MbOk],0);
          Close ;
     End
     Else Begin
          //
          MessageDlg('Ocorreu um erro na tentativa de atualização, contate o suporte técnico !',MtError,[MbOk],0);
     End;
end;

procedure TFrmEntradas.GridItensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = VK_RETURN Then
     ActAlterar.Execute;
end;

procedure TFrmEntradas.BtnFornecedorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFornecedores', False);


  If DMPLANO = Nil
  then
      DMPLANO := TDMPLANO.Create(Self)
  else
      DMPLANO.Tag := DMPLANO.Tag + 1;


  FrmFornecedores := TFrmFornecedores.Create(Application);

  FrmFornecedores.Showmodal ;

  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;
end;

procedure TFrmEntradas.btnNaturezaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  dsNaturezas.DataSet.Tag := dsNaturezas.DataSet.Tag + 1;

  { * *  * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmNaturezaOper', False);
  { * * * * * }
  //
  FrmNaturezaOper             := TFrmNaturezaOper.Create(Application);

  FrmNaturezaOper.Showmodal ;

  Datasource.DataSet.FieldByName('NATUREZA').asInteger := FrmMain.Codigo_Int;

  dsNaturezas.DataSet.Tag := dsNaturezas.DataSet.Tag - 1;

  If DMCadastros <> Nil then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  EdNatureza.SetFocus;

  DsNaturezas.DataSet.Close;
  DsNaturezas.DataSet.Open ;
end;

procedure TFrmEntradas.ActAtTodasExecute(Sender: TObject);
Var
   Retorno: Integer;
   total1, total2: real;
begin
    if ((dmEntradas.EntradasIDX_COTACAO.AsFloat > 0) or (dmEntradas.EntradasIDX_QTDE.AsFloat > 0)) then
    begin
       total1 := (dmEntradas.EntradasIDX_COTACAO.AsFloat * dmEntradas.EntradasIDX_QTDE.AsFloat);
       total2 := dmEntradas.Entradas_Total_Geral_IDX.asFloat;
       if (arredonda(total1,2) <> arredonda(total2,2)) then
       begin
         Application.messagebox('Configuração financeira do faturamento está inconsistente','Aviso',mb_ok+mb_iconerror);
         abort;
         exit;
       end;
    end;

    if  (trim(edtIPIDesdobrado.Text) <> trim(edtIPILancado.Text)) and (DMEntradas.Entradas_Itens.RecordCount > 0) then
    begin
      if application.messagebox(Pchar('Confira os dados da Nota. Vlr. IPI lançado difere do Vlr. IPI desdobrado.'+#13+'Deseja continuar?'),'Aviso',MB_ICONERROR + mb_yesno) = idno then
        exit;
    end;

     If CkQntde.Checked then
     begin
          If Not ConfereValores then
          begin
               MessageDlg('Valores Desdobrados Não Conferem, Verifique os Produtos!', mtError, [mbOK], 0);
               Pc.ActivePageIndex := 1;
               Exit ;
          end;
     END;

     IF ckfinanceiro.Checked THEN
     BEGIN
           if not VerificaCentroCusto then
            exit;

          If Not ConfereFinanceiro then
          begin
               MessageDlg('Valores Desdobrados Não Conferem, Verifique as Parcelas e a Entrada!', mtError, [mbOK], 0);
               Pc.ActivePageIndex := 2;
               Exit ;
          END;
     end;

     If CkCusto.Checked then
     begin
          // Tentativa de Atualização do Custo
          If DMApp.At_NF_Ent_Cus(DataSource.DataSet.FieldByName('CNPJ').asString,
                         DataSource.DataSet.FieldByName('NDOCTO').asString,
                         DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger) = 1 Then
          Begin
               //

               //
          End
          Else Begin
               //
               MessageDlg('Ocorreu um erro na tentativa de atualização do Custo, contate o suporte técnico !',MtError,[MbOk],0);
               //
               DMApp.Transaction.RollbackRetaining;
               //
               Close ;
               exit  ;
          End;
     end;

     If CkQntde.Checked
     then begin
          Retorno := DMApp.At_NF_Ent_Qtd(DataSource.DataSet.FieldByName('CNPJ').asString,
                         DataSource.DataSet.FieldByName('NDOCTO').asString,
                         DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger);
          // Tentativa de Atualização da Quantidade
          If Retorno = 1
          Then Begin
          //

          //
          End
          Else Begin
               //
               MessageDlg('Ocorreu um erro na tentativa de atualização da Quantidade, contate o suporte técnico !',MtError,[MbOk],0);
               //
               DMApp.Transaction.RollbackRetaining;
               //
               Close ;
               Exit;
          End;
     end;

     If ckfinanceiro.Checked
     then begin
           if not VerificaCentroCusto then
            exit;
          //Tentativa de Atualização do Financeiro
          If DMApp.At_NF_Ent_Fin(DataSource.DataSet.FieldByName('CNPJ').asString,
                         DataSource.DataSet.FieldByName('NDOCTO').asString,
                         DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger,
                         DmApp.DataCaixa) = 1
          Then Begin
               //

               //
          End
          Else Begin
               //
               MessageDlg('Ocorreu um erro na tentativa de atualização do Financeiro, contate o suporte técnico !',MtError,[MbOk],0);
               //
               DMApp.Transaction.RollbackRetaining;
               //
               Close ;
               Exit;
          End;
     end;

     // Fim
     Close ;
end;

procedure TFrmEntradas.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  //
{  If dsItens.DataSet.RecordCount > 0 Then
     Bloquear_Campos_NF(True)
  Else
     Bloquear_Campos_NF(False);}
end;

procedure TFrmEntradas.edNaturezaExit(Sender: TObject);
begin
     IF (( EdNatureza.Text = '0' ) or ( EdNatureza.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarNatureza.Execute ;
     end;

     If ((Sender as TDxDbEdit).Text <> '') and ( Datasource.DataSet.State in [ dsedit, dsinsert ])
     then
         Perform(WM_NEXTDLGCTL, 0, 0);

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmEntradas.ActLocalizarNaturezaExecute(Sender: TObject);
begin
     try
        If ((FrmEntradas.ActiveControl = EdNatureza)or(LocNat)or ( EdNatureza.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocNat := False ;
             //Chama a Tela Para Localizar Naturezas
             Application.CreateForm(TFrm_Localizar_Natureza, Frm_Localizar_Natureza);

             Frm_Localizar_Natureza.DSource.dataset := DmEntradas.SelNatureza ;

             if ( Frm_Localizar_Natureza.showmodal = mrOk )
             Then Begin
                  DmEntradas.EntradasNATUREZA.Value := (Frm_Localizar_Natureza.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Natureza.Cad = 'S'
                  THEN
                      btnNatureza.OnClick(btnNatureza);
             end;
             Frm_Localizar_Natureza.free   ;
             Frm_Localizar_Natureza := Nil ;
        end;
  Except
  end;
end;

procedure TFrmEntradas.edFornecedorExit(Sender: TObject);
begin
     IF (( EdFornecedor.Text = '0' ) or ( EdFornecedor.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarFornecedor.Execute ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmEntradas.ActLocalizarFornecedorExecute(Sender: TObject);
begin
     try
        If ((FrmEntradas.ActiveControl = edFornecedor)or(LocFor)or( EdFornecedor.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocFor := False ;
             //Chama a Tela Para Localizar Fornecedor
             Application.CreateForm(TFrm_Localizar_Fornecedor, Frm_Localizar_Fornecedor);

             Frm_Localizar_Fornecedor.DSource.dataset := DmEntradas.SelFornecedor ;

             if ( Frm_Localizar_Fornecedor.showmodal = mrOk )
             Then Begin
                  DmEntradas.EntradasPessoa_Fj.Value := (Frm_Localizar_Fornecedor.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Fornecedor.Cad = 'S'
                  THEN
                      BtnFornecedor.OnClick(BtnFornecedor);
             end;
             Frm_Localizar_Fornecedor.free   ;
             Frm_Localizar_Fornecedor := Nil ;
        end;
  Except
  end;
end;

procedure TFrmEntradas.edDocumentoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmEntradas.edDocumentoExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmEntradas.pcChange(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, DsEdit ] then
       DataSource.DataSet.Post ;

     if PC.ActivePageIndex = 0 then
     begin
       Navigator.DataSource := DataSource;
       DataSource.OnStateChange(DataSource);
       If edDocumento.Enabled then
         edDocumento.SetFocus
       else
         cmbTipoDocto.SetFocus ;

       ActAlterar.Visible := False;
     end
     else
     begin
       if PC.ActivePageIndex = 1 then
       begin
         Navigator.DataSource := dsItens;
         dsItens.OnStateChange(dsItens);
         ActAlterar.Visible := True;
         GridItens.SetFocus;
       end
       else
       begin
         dmEntradas.Entradas.Edit;
         Navigator.DataSource := dsFaturamento;
         edtForma.SetFocus;
         dsFaturamento.OnStateChange(dsFaturamento);
         ActAlterar.Visible := True;
         with dmEntradas do
         begin
           Entradas_Fat.Close;
           Entradas_Fat.Open;
         end;
         If DataSource.State in [ dsinsert, DsEdit ] then
           DataSource.DataSet.Post ;
         with dmEntradas do
          begin
            If ((EntradasPROC_QTD.Value = 'S') OR (EntradasPROC_CUSTO.Value = 'S') OR (EntradasPROC_FIN.Value = 'S')) then
            begin
                RzBitBtn4.Enabled  := False;
            end;
          end;
       end;
     end;
end;

procedure TFrmEntradas.BtnDocumentoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

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

  dsTipoDoctos.DataSet.Tag := dsTipoDoctos.DataSet.Tag - 1;

  dsTipoDoctos.DataSet.Close ;
  dsTipoDoctos.DataSet.Open  ;

  //
  cmbTipoDocto.SetFocus;
end;

function TFrmEntradas.ConfereValores: Boolean;
VAR
   MAIOR, MENOR, DIFERENCA: REAL ;
begin
     With DmEntradas do
     begin
          MAIOR     := Arredonda ( EntradasVLR_PRODUTOS.Value, 1 ) + 0.05 ;
          MENOR     := Arredonda ( EntradasVLR_PRODUTOS.Value, 1 ) - 0.05 ;
          DIFERENCA := Arredonda ( EntradasVLR_PRODUTOS_LC.Value, 1 );

          If (( DIFERENCA >= MENOR ) AND ( DIFERENCA <= MAIOR ))
          then begin
               Result := TRUE ;
          end
          else begin
               Result := FALSE  ;
          end;
     end;
end;

function TFrmEntradas.ConfereFinanceiro: Boolean;
VAR
   MAIOR, MENOR, DIFERENCA: REAL ;
begin
     With DmEntradas do
     begin
          MAIOR     := Arredonda ( EntradasVLR_DIFERENCA.Value, 1 ) + 0.05 ;
          MENOR     := Arredonda ( EntradasVLR_DIFERENCA.Value, 1 ) - 0.05 ;
          DIFERENCA := Arredonda ( EntradasVLR_DIFERENCA.Value, 1 )  ;

          If ( ARREDONDA(DIFERENCA, 2 ) = 0 )
          then begin
               Result := TRUE ;
          end
          else begin
               Result := FALSE ;
          end;
     end;
end;

procedure TFrmEntradas.GridFaturamentoEnter(Sender: TObject);
begin
 If DataSource.State in [ dsinsert, DsEdit ] then
   DataSource.DataSet.Post ;
end;

procedure TFrmEntradas.EdIcmSubstituicaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN)
  Then Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
  End;

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);

end;

procedure TFrmEntradas.DataSourceUpdateData(Sender: TObject);
begin     If Datasource.DataSet.FieldByName('NDOCTO').IsNull
     then begin
          Pc.ActivePageIndex := 0;
          edDocumento.SetFocus ;
          Abort ;
     end;

     If Datasource.DataSet.FieldByName('PESSOA_FJ').IsNull
     then begin
          Pc.ActivePageIndex := 0;
          edFornecedor.SetFocus ;
          Abort ;
     end;

     If Datasource.DataSet.FieldByName('SERIE_NF').IsNull
     then begin
          Pc.ActivePageIndex := 0;
          EdSerie.SetFocus ;
          Abort ;
     end;

     If Datasource.DataSet.FieldByName('NATUREZA').IsNull
     then begin
          Pc.ActivePageIndex := 0;
          EdNatureza.SetFocus ;
          Abort ;
     end;

     If Datasource.DataSet.FieldByName('VLR_PRODUTOS').Value = 0
     then begin
          Pc.ActivePageIndex := 0;
          EdTotalMercadoria.SetFocus ;
          Abort ;
     end;

     {If Datasource.DataSet.FieldByName('CENTRO_CUSTO').Value = 0
     then begin
          Pc.ActivePageIndex := 0;
          CMBCENTRO.SetFocus ;
          Abort ;
     end;}

end;

procedure TFrmEntradas.BTNCENTROClick(Sender: TObject);
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

  dsCentro.DataSet.Tag := dsCentro.DataSet.Tag + 1;

  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  { * * * * * }
  //
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  //
  Datasource.DataSet.FieldByName('CENTRO_CUSTO').asInteger := FrmMain.Codigo_Int;

  FrmCCusto.Free;
  FrmCCusto := Nil;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  dsCentro.DataSet.Tag := dsCentro.DataSet.Tag - 1;

  dsCentro.DataSet.Close ;
  dsCentro.DataSet.Open  ;

  //
  cmbCentro.SetFocus;
end;

procedure TFrmEntradas.edFornecedorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmEntradas.cmbcentroKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
          If DataSource.State in [ dsinsert, DsEdit ]
          then begin
               DataSource.DataSet.Post ;
          end;

          pc.ActivePageIndex := 1;
          GridItens.SetFocus;
     End;
end;

procedure TFrmEntradas.edFornecedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;



procedure TFrmEntradas.ActParcelarExecute(Sender: TObject);
begin
   FrmEntradasFat := TFrmEntradasFat.Create(Self);
   FrmEntradasFat.ShowModal;
   FrmEntradasFat.Free;
   FrmEntradasFat := nil;
end;

procedure TFrmEntradas.edtFormaExit(Sender: TObject);
begin
  if ((edtForma.Text = '' ) AND (DataSource.State in [ dsinsert, dsedit ])) then
  begin
    Application.CreateForm(TFrm_Localizar_FormaPagto, Frm_Localizar_FormaPagto);
    Frm_Localizar_FormaPagto.DSource.dataset := DmVendas.SelFormaPgto ;

    if ( Frm_Localizar_FormaPagto.showmodal = mrOk )Then
      dmEntradas.EntradasCOD_FORMA_PAGTO.Value := (Frm_Localizar_FormaPagto.CampTrecho) ;

    Frm_Localizar_FormaPagto.free   ;
    Frm_Localizar_FormaPagto := Nil ;
  end;
   TiraCorFundo ( Sender );
end;

procedure TFrmEntradas.Panel9Exit(Sender: TObject);
begin
  if dmEntradas.Entradas_Fat.RecordCount <= 0 then
    dmEntradas.Parcela_Entradas(dmEntradas.EntradasNATUREZA.asInteger,dmEntradas.EntradasCOD_FORMA_PAGTO.asInteger,dmEntradas.EntradasDATA_NF.Value);
  dmEntradas.Entradas_Fat.Close;
  dmEntradas.Entradas_Fat.Open;
  dmEntradas.Entradas_Fat.Edit;
end;

procedure TFrmEntradas.BtnFormaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);


  DsForma.DataSet.Tag := DsForma.DataSet.Tag + 1;

  //
  FrmFormasPagto := TFrmFormasPagto.Create(Application);
  FrmFormasPagto.Showmodal ;

  Datasource.DataSet.FieldByName('COD_FORMA_PAGTO').asInteger := FrmMain.Codigo_Int;

  DsForma.DataSet.Tag := DsForma.DataSet.Tag - 1;
  cmbForma.SetFocus;
  DsForma.DataSet.Close;
  DsForma.DataSet.Open;
end;

procedure TFrmEntradas.cmbFormaEnter(Sender: TObject);
begin
       CorFundo ( Sender );
end;

procedure TFrmEntradas.ActConfigFinanceiraExecute(Sender: TObject);
begin
  with dmEntradas do
  begin
    If ((EntradasPROC_QTD.Value = 'S') OR (EntradasPROC_CUSTO.Value = 'S') OR (EntradasPROC_FIN.Value = 'S')) then
    begin
      Application.MessageBox('Impossível Editar. NF está fechada','Aviso',mb_ok+mb_iconerror);
      exit;
    end;
  end;


  if not (dmEntradas.Entradas.State in [ DsInsert, DsEdit ]) then
    dmEntradas.Entradas.Edit;

  FrmConfigFinanceira := TFrmConfigFinanceira.Create(Self);
  FrmConfigFinanceira.DataSource.DataSet := dmEntradas.Entradas;
  FrmConfigFinanceira.ShowModal;


  if not (dmEntradas.Entradas.State in [ DsInsert, DsEdit ]) then
    dmEntradas.Entradas.Edit;
end;

procedure TFrmEntradas.btnCredorClick(Sender: TObject);
begin
 If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;


  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPessoasFJ', False);


  FrmPessoasFJ := TFrmPessoasFJ.Create(Application);

  FrmPessoasFJ.Showmodal ;

  Datasource.DataSet.FieldByName('COD_CREDOR').asInteger := FrmMain.Codigo_Int;
end;

function TFrmEntradas.VerificaCentroCusto: Boolean;
begin
  if DMEntradas.EntradasCENTRO_CUSTO.asInteger = 0 then
  begin
    MessageDlg('Impossível gerar financeiro, Centro de Custo não definido. Verifique', mtError, [mbOK], 0);
    Pc.ActivePageIndex := 0;
    cmbcentro.SetFocus;
    DMEntradas.Apagar_Parcelas;
    result := false;
  end
  else
    result := true;
end;

procedure TFrmEntradas.ActImprimirNFeExecute(Sender: TObject);
var
  strPath : string;
begin
  if DMEntradas.EntradasNFE_XML.IsNull then
  begin
    Application.MessageBox('Entrada não possui NFe vinculada. Verifique','Aviso',mb_ok+mb_iconerror);
    exit;
  end;
  strPath := ExtractFilePath(Application.ExeName);
  DMEntradas.EntradasNFE_XML.SaveToFile(strPath+'\NFe_Entrada_TMP.xml');
  dmApp.ImprimeNFE('',0,0,Date,'',strPath+'\NFe_Entrada_TMP.xml');
end;

procedure TFrmEntradas.btnDocto2Click(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If dsFaturamento.DataSet.State = dsBrowse Then
     dsFaturamento.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTipoDoctos', False);
  FrmTipoDoctos := TFrmTipoDoctos.Create(Self);
  FrmTipoDoctos.ShowModal;
  //
  dsFaturamento.DataSet.FieldByName('TIPO_DOCTO').asString := FrmMain.Codigo_Str;

  FrmTipoDoctos.Free;
  FrmTipoDoctos := Nil;

  CmbTipo2.SetFocus;
end;

procedure TFrmEntradas.QryTipoDoctoBeforeOpen(DataSet: TDataSet);
begin
  QryTipoDocto.ParamByName('cnpj').value := dmApp.cnpj;
end;

End.
