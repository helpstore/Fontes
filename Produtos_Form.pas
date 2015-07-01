unit Produtos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet,   Buttons,
  dxExEdtr, dxDBEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, 
     IBQuery, DBCtrls, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMemo, cxDBEdit, cxImage, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxDBData,
  cxDBLookupComboBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxLabel,
  Menus, cxButtons, cxPC, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit;

type
  TFrmProdutos = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
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
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    pc: TcxPageControl;
    Pg1: TcxTabSheet;
    Pg2: TcxTabSheet;
    Pg3: TcxTabSheet;
    dsMarcas: TDataSource;
    ActLookup: TAction;
    dsGrupos: TDataSource;
    dsSubGrupos: TDataSource;
    dsReducao: TDataSource;
    dsUnidade: TDataSource;
    Label11: TcxLabel;
    EdQtdade1: TdxDBEdit;
    Label12: TcxLabel;
    EdQtdade2: TdxDBEdit;
    Label14: TcxLabel;
    edLocalizacao1: TdxDBEdit;
    Label15: TcxLabel;
    edLocalizacao2: TdxDBEdit;
    Label16: TcxLabel;
    b: TdxDBEdit;
    Label17: TcxLabel;
    edEstoqueMax: TdxDBEdit;
    Label20: TcxLabel;
    edUltCompra: TdxDBEdit;
    Label21: TcxLabel;
    edQtdUltCompra: TdxDBEdit;
    Label22: TcxLabel;
    edUltVenda: TdxDBEdit;
    edPrcVendaMed: TdxDBCalcEdit;
    Label29: TcxLabel;
    Label27: TcxLabel;
    edCustoAnt: TdxDBCalcEdit;
    Label25: TcxLabel;
    Label23: TcxLabel;
    EdMargem: TdxDBCalcEdit;
    Label28: TcxLabel;
    edPrcVendaAnt: TdxDBCalcEdit;
    edCustoMed: TdxDBCalcEdit;
    Label26: TcxLabel;
    Label24: TcxLabel;
    edPrcReposicao: TdxDBCalcEdit;
    Label7: TcxLabel;
    cmbUnidade: TdxDBLookupEdit;
    cmbMarca: TdxDBLookupEdit;
    Label8: TcxLabel;
    Label2: TcxLabel;
    EdNome: TdxDBEdit;
    Label1: TcxLabel;
    Label3: TcxLabel;
    btnMarca: TcxButton;
    BtnUnidade: TcxButton;
    Label32: TcxLabel;
    Label33: TcxLabel;
    edFrete: TdxDBCalcEdit;
    Label34: TcxLabel;
    edIPI: TdxDBCalcEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    edLocalizacao3: TdxDBEdit;
    RxLabel1: TcxLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label38: TcxLabel;
    ActNext: TAction;
    ActLast: TAction;
    ActFirst: TAction;
    ActPrior: TAction;
    dxDBCheckEdit1: TdxDBCheckEdit;
    DBCoolText3: TDBText;
    DBCoolText4: TDBText;
    CoolLabel1: TcxLabel;
    DBCoolText5: TDBText;
    Shape9: TShape;
    DBCoolText7: TDBText;
    DsSubUnidades: TDataSource;
    ActFiltrar: TAction;
    OpFiltrar: TdxBarButton;
    EdCodigo: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label18: TcxLabel;
    CmbFornecedor: TdxDBLookupEdit;
    DsFornecedor: TDataSource;
    dxBarButton1: TdxBarButton;
    dxDBEdit4: TdxDBEdit;
    Label19: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxDBCheckEdit4: TdxDBCheckEdit;
    Panel2: TPanel;
    BtnLote: TcxButton;
    ActLote: TAction;
    Label36: TcxLabel;
    Label39: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    Label40: TcxLabel;
    dxDBEdit7: TdxDBEdit;
    Label41: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    ActAgrupar: TAction;
    ActComissao: TAction;
    DBCoolText1: TDBText;
    CoolLabel2: TcxLabel;
    DsAgrupadores: TDataSource;
    dxDBCheckEdit8: TdxDBCheckEdit;
    SpeedButton2: TcxButton;
    ActGrade: TAction;
    Label45: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    Label46: TcxLabel;
    dxDBCalcEdit6: TdxDBCalcEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    ActIncluirporModelo: TAction;
    Label47: TcxLabel;
    SpeedButton3: TcxButton;
    dxDBEdit11: TdxDBEdit;
    Label48: TcxLabel;
    ActVerCusto: TAction;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label49: TcxLabel;
    lblComp1: TDBText;
    lblComp2: TcxLabel;
    dxDBEdit12: TdxDBEdit;
    Label42: TcxLabel;
    dxDBEdit13: TdxDBEdit;
    Label43: TcxLabel;
    Label13: TcxLabel;
    cmbModelo: TdxDBLookupEdit;
    Label37: TcxLabel;
    btnModelo: TcxButton;
    dsModelo: TDataSource;
    dxDBEdit1: TdxDBEdit;
    Label44: TcxLabel;
    btnSecao: TcxButton;
    cmbSecao: TdxDBLookupEdit;
    Label50: TcxLabel;
    dsSecoes: TDataSource;
    btnEditar: TdxBarButton;
    dxDBCalcEdit3: TdxDBCalcEdit;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    Label35: TcxLabel;
    dxDBCalcEdit4: TdxDBCalcEdit;
    dxDBCheckEdit7: TdxDBCheckEdit;
    dxTabSheet1: TcxTabSheet;
    cmbUndPrimaria: TdxDBLookupEdit;
    btnUndPrimaria: TcxButton;
    Label53: TcxLabel;
    Label52: TcxLabel;
    dxDBCalcEdit5: TdxDBCalcEdit;
    dsUnidadePrimaria: TDataSource;
    Label54: TcxLabel;
    dxDBCalcEdit7: TdxDBCalcEdit;
    btnUndCarga: TcxButton;
    cmbUndCarga: TdxDBLookupEdit;
    Label55: TcxLabel;
    dxTabSheet2: TcxTabSheet;
    GroupBox1: TGroupBox;
    BtnReducao: TcxButton;
    cmbReducao: TdxDBLookupEdit;
    Label6: TcxLabel;
    Label10: TcxLabel;
    cmbCTIE: TdxDBPickEdit;
    Label31: TcxLabel;
    dxDBCalcEdit9: TdxDBCalcEdit;
    dxDBCalcEdit8: TdxDBCalcEdit;
    Label30: TcxLabel;
    CmbCTE: TdxDBPickEdit;
    Label9: TcxLabel;
    Label56: TcxLabel;
    dxDBPickEdit1: TdxDBPickEdit;
    dxDBEdit2: TdxDBEdit;
    Label57: TcxLabel;
    CBECF: TDBComboBox;
    Label51: TcxLabel;
    tbsAplicao: TcxTabSheet;
    tbsImagens: TcxTabSheet;
    tbsSimilares: TcxTabSheet;
    tbsAgregados: TcxTabSheet;
    cxDBMemoContato: TcxDBMemo;
    GroupBox2: TGroupBox;
    img1: TcxDBImage;
    OpenDialog: TOpenDialog;
    img2: TcxDBImage;
    img3: TcxDBImage;
    img4: TcxDBImage;
    dxTabSheet3: TcxTabSheet;
    Label58: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    cbComplemento: TdxDBCheckEdit;
    dxDBCheckEdit10: TdxDBCheckEdit;
    Label5: TcxLabel;
    Label4: TcxLabel;
    btnGrupo: TcxButton;
    cmbSubgrupo: TdxDBLookupEdit;
    cmbGrupo: TdxDBLookupEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit5: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    cbEtiqueta: TdxDBCheckEdit;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxDBCheckEdit9: TdxDBCheckEdit;
    BtnMaterial: TcxButton;
    CmbMaterial: TdxDBLookupEdit;
    Label59: TcxLabel;
    Label60: TcxLabel;
    CmbCor: TdxDBLookupEdit;
    BtnCor: TcxButton;
    SpeedButton1: TcxButton;
    DsMaterial: TDataSource;
    DsCor: TDataSource;
    Label61: TcxLabel;
    dxDBPickEdit2: TdxDBPickEdit;
    dxDBPickEdit3: TdxDBPickEdit;
    Label62: TcxLabel;
    Label63: TcxLabel;
    dxDBPickEdit4: TdxDBPickEdit;
    edtDataBase: TdxDBDateEdit;
    Label64: TcxLabel;
    lkCSOSN: TdxDBPickEdit;
    Label65: TcxLabel;
    dxDBEdit14: TdxDBEdit;
    Label66: TcxLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    btnLocalizacao1: TcxButton;
    cbLocalizacao1: TcxDBLookupComboBox;
    qryLocalizacao1: TIBQuery;
    qryLocalizacao1CODIGO: TIntegerField;
    qryLocalizacao1CNPJ: TIBStringField;
    qryLocalizacao1DESCRICAO: TIBStringField;
    dsLocalizacao1: TDataSource;
    cbLocalizacao2: TcxDBLookupComboBox;
    cbLocalizacao3: TcxDBLookupComboBox;
    btnLocalizacao2: TcxButton;
    btnLocalizacao3: TcxButton;
    qryLocalizacao2: TIBQuery;
    dsLocalizacao2: TDataSource;
    qryLocalizacao3: TIBQuery;
    dsLocalizacao3: TDataSource;
    qryLocalizacao3CODIGO: TIntegerField;
    qryLocalizacao3CNPJ: TIBStringField;
    qryLocalizacao3DESCRICAO: TIBStringField;
    qryLocalizacao2CODIGO: TIntegerField;
    qryLocalizacao2CNPJ: TIBStringField;
    qryLocalizacao2DESCRICAO: TIBStringField;
    QryProdFornecedor: TIBDataSet;
    QryProdFornecedorCNPJ: TIBStringField;
    QryProdFornecedorCODIGO: TIntegerField;
    QryProdFornecedorPRODUTO: TIBStringField;
    QryProdFornecedorCOD_FORNECEDOR: TIntegerField;
    QryProdFornecedorFATOR: TFloatField;
    QryProdFornecedorUNIDADE: TIBStringField;
    QryProdFornecedorFORNECEDOR: TIBStringField;
    dsProdutosClientes: TDataSource;
    QryProdFornecedorCOD_PRD_FORNECEDOR: TIBStringField;
    GridProdutosClientes: TcxGrid;
    TVProdutosClientes: TcxGridDBTableView;
    TVProdutosClientesCNPJ: TcxGridDBColumn;
    TVProdutosClientesCODIGO: TcxGridDBColumn;
    TVProdutosClientesPRODUTO: TcxGridDBColumn;
    TVProdutosClientesCOD_FORNECEDOR: TcxGridDBColumn;
    TVProdutosClientesFATOR: TcxGridDBColumn;
    TVProdutosClientesUNIDADE: TcxGridDBColumn;
    TVProdutosClientesFORNECEDOR: TcxGridDBColumn;
    TVProdutosClientesCOD_PRD_FORNECEDOR: TcxGridDBColumn;
    LVProdutosClientes: TcxGridLevel;
    cmbTecnico: TcxDBLookupComboBox;
    cxLabel4: TcxLabel;
    SelTecnico: TIBQuery;
    SelTecnicoCODIGO: TIntegerField;
    SelTecnicoNOME: TIBStringField;
    SelTecnicoEMAIL: TIBStringField;
    SelTecnicoASSINATURA: TMemoField;
    dsTecnico: TDataSource;
    Shape4: TShape;
    DBText1: TDBText;
    cxLabel5: TcxLabel;
    DBText3: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnMarcaClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
    procedure BtnReducaoClick(Sender: TObject);
    procedure BtnUnidadeClick(Sender: TObject);
    procedure CmbCTEEnter(Sender: TObject);
    procedure EdSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure Pg1Enter(Sender: TObject);
    procedure Pg2Enter(Sender: TObject);
    procedure Pg3Enter(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure ActLoteExecute(Sender: TObject);
    procedure dxDBCheckEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure BtnAgrupadoresClick(Sender: TObject);
    procedure ActGradeExecute(Sender: TObject);
    procedure ActIncluirporModeloExecute(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure cmbReducaoExit(Sender: TObject);
    procedure dxDBCheckEdit9Exit(Sender: TObject);
    procedure CmbCTEExit(Sender: TObject);
    procedure btnModeloClick(Sender: TObject);
    procedure btnSecaoClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure btnUndPrimariaClick(Sender: TObject);
    procedure btnUndCargaClick(Sender: TObject);
    procedure RzButton1Click(Sender: TObject);
    procedure RzButton2Click(Sender: TObject);
    procedure BtnMaterialClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cmbSubgrupoExit(Sender: TObject);
    procedure dxDBCheckEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBCheckEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure edIPIKeyPress(Sender: TObject; var Key: Char);
    procedure CBECFEnter(Sender: TObject);
    procedure CBECFExit(Sender: TObject);
    procedure CBECFKeyPress(Sender: TObject; var Key: Char);
    procedure cbComplementoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbUndCargaKeyPress(Sender: TObject; var Key: Char);
    procedure qryLocalizacao1BeforeOpen(DataSet: TDataSet);
    procedure btnLocalizacao1Click(Sender: TObject);
    procedure btnLocalizacao2Click(Sender: TObject);
    procedure btnLocalizacao3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: String;
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Marcas_Form, Grupos_Form, Reducoes_Form, Unidades_Form,
  Lotes_Form, LocalizarProd_DM, Estoque_Dm, Agrupador_Form, Grades_Form,
  Produtos_Tribut_Revenda_Form, Localizar_Produto_Cadastro_Auto,
  Motores_Form, Servicos_DM, Modelo_Propriedade_Form, Cadastros_Dm2,
  Secoes_Produto_Form, Material_Form, Cor_Form, Localizacao_Est_Form;

{$R *.DFM}

procedure TFrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair da Tela de Cadastros?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          //
          FrmMain.Codigo_Str := Datasource.DataSet.FieldByName('CODIGO').asString;
          //
          If DataSource.DataSet.Tag = 0
          Then
              DataSource.DataSet.Close
          else
              DataSource.DataSet.tag := DataSource.DataSet.tag - 1;

          If dsMarcas.DataSet.Tag = 0
          Then
              dsMarcas.DataSet.Close
          else
              dsMarcas.DataSet.tag := dsMarcas.DataSet.tag - 1;

          If dsModelo.DataSet.Tag = 0 Then
            dsModelo.DataSet.Close
          else
            dsModelo.DataSet.tag := dsModelo.DataSet.tag - 1;

          If dsSecoes.DataSet.Tag = 0 Then
            dsSecoes.DataSet.Close
          else
            dsSecoes.DataSet.tag := dsSecoes.DataSet.tag - 1;

          If dsGrupos.DataSet.Tag = 0
          Then
              dsGrupos.DataSet.Close
          else
              dsGrupos.DataSet.tag := dsGrupos.DataSet.tag - 1;

          If dsReducao.DataSet.Tag = 0
          Then
              dsReducao.DataSet.Close
          else
              dsReducao.DataSet.tag := dsReducao.DataSet.tag - 1 ;

          If dsUnidade.DataSet.Tag = 0
          Then
              dsUnidade.DataSet.Close
          else
              dsUnidade.DataSet.tag := dsUnidade.DataSet.tag - 1;
   
          If DsFornecedor.DataSet.Tag = 0
          Then
              DsFornecedor.DataSet.Close
          else
              DsFornecedor.DataSet.tag := DsFornecedor.DataSet.tag - 1;

          If DsAgrupadores.DataSet.Tag = 0
          Then
              DsAgrupadores.DataSet.Close
          else
              DsAgrupadores.DataSet.tag := DsAgrupadores.DataSet.tag - 1;

           //
          Action := caFree;
          FrmProdutos := Nil;

          DMApp.Transaction.CommitRetaining;

     END
     ELSE BEGIN
          Action := CaNone ;
     END;
end;

procedure TFrmProdutos.ActIncluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;

  If pc.ActivePageIndex < 3 Then
  Begin
      pc.ActivePageIndex := 0;
      EdCodigo.SetFocus;
  End;

  Navigator.DataSource.DataSet.Append;
  CmbCTE.Text := '';
  CmbCTIE.Text := '';  
end;


procedure TFrmProdutos.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
     If Navigator.DataSource.Dataset.FieldByName('QTDADE_1').AsFloat > 0
     then begin
          MessageDlg('Este Produto Possui Estoque, Por tanto Não Pode Ser Apagado!', MtInformation, [MboK],0);
     end
     else begin
          //
          msg := 'e Produto';
          //
          If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
          Then Begin
               Navigator.DataSource.Dataset.Delete;
               DMApp.Transaction.CommitRetaining;
          end;
     End;
end;

procedure TFrmProdutos.ActPostExecute(Sender: TObject);
begin
  //
  Try
     if Navigator.DataSource.state in [ dsinsert, dsedit ]  then
     begin
         //-->> Retirar o foco dos objetos para verificar validação 
         if (pc.ActivePage = Pg1) then
           EdNome.SetFocus;
         //-->> Caso seja SERVICO não poderá conter REDUÇÃO E TRIBUTAÇÃO
         if(DMCadastros.ProdutosServico.text='S')then
         begin
            if(DMCadastros.ProdutosCTIE.value<>7)or(DMCadastros.ProdutosCTE.value<>7)then
            begin
              Application.messagebox('SERVIÇO deverá ser tributada como ISS','Aviso', mb_ok + mb_iconinformation);
              CmbCTE.SetFocus;
              exit;
            end;
            if(DMCadastros.ProdutosREDUCAO.value > 0)and(cmbReducao.text<>'')then
            begin
              Application.messagebox('SERVIÇO não poderá conter REDUÇÃO.','Aviso', mb_ok + mb_iconinformation);
              cmbReducao.SetFocus;
              exit;
            end;
         end;
         //-->> Caso a REDUÇÃO estiver preenchida não poderá ser TRIBUTADA INTEGRALMENTE nas tribut. Est/Interst
         if (trim(cmbReducao.text) <> '')and(DMCadastros.ProdutosREDUCAO.Value > 0)then
         begin
            if(DMCadastros.ProdutosSERVICO.Value='S')then
            begin
               Application.messagebox('Produto com REDUÇÃO NA BASE DE CÁLCULO não pode ser SERVIÇO.','Aviso', mb_ok + mb_iconinformation);
               cmbReducao.SetFocus;
               exit;
            end;
            if(DMCadastros.ProdutosCTIE.Value=1) and (DMCadastros.ProdutosCTE.Value=1)then
            begin
               Application.messagebox('Produto com REDUÇÃO NA BASE DE CÁLCULO não pode ser TRIBUTADA INTEGRALMENTE.','Aviso', mb_ok + mb_iconinformation);
               cmbReducao.SetFocus;
               exit;
            end;
            if(DMCadastros.ProdutosCTIE.Value=7) OR (DMCadastros.ProdutosCTE.Value=7)then
            begin
               Application.messagebox('Produto com REDUÇÃO NA BASE DE CÁLCULO não pode ser ISS.','Aviso', mb_ok + mb_iconinformation);
               cmbReducao.SetFocus;
               exit;
            end;
         end;
         //-->> Caso seja REDUÇÃO
         if(DMCadastros.ProdutosCTE.value=2)or(DMCadastros.ProdutosCTIE.value=2)or(trim(cmbReducao.text)<>'')then
         begin
            if(trim(cmbReducao.text)='')then
            begin
              Application.messagebox('Defina uma REDUÇÃO.','Aviso', mb_ok + mb_iconinformation);
              cmbReducao.SetFocus;
              exit;
            end;
            if(DMCadastros.ProdutosCTE.value<>2)and(DMCadastros.ProdutosCTIE.value<>2)then
            begin
              Application.messagebox('Defina uma tributação com REDUÇÃO NA BASE DE CÁLCULO.','Aviso', mb_ok + mb_iconinformation);
              cmbReducao.SetFocus;
              exit;
            end;
         end;
         //-->> Caso seja SERVICO
         if(DMCadastros.ProdutosCTE.value=7)or(DMCadastros.ProdutosCTIE.value=7)then
         begin
            if(DMCadastros.ProdutosREDUCAO.value > 0)and(cmbReducao.text<>'')then
            begin
              Application.messagebox('SERVIÇO não poderá conter REDUÇÃO.','Aviso', mb_ok + mb_iconinformation);
              cmbReducao.SetFocus;
              exit;
            end;
            if(DMCadastros.ProdutosSERVICO.text='N')then
            begin
              Application.messagebox('ISS deverá ser um SERVIÇO.','Aviso', mb_ok + mb_iconinformation);
              dxDBCheckEdit9.SetFocus;
              exit;
            end;
         end;
         
         DMCadastros.Produtos.Post;
     end;

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

procedure TFrmProdutos.ActCancelExecute(Sender: TObject);
begin
         If (Navigator.DataSource.DataSet.State in dsEditModes) Then
         Begin
              If (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES) Then
              Navigator.DataSource.DataSet.Cancel;
         End
         Else
             BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  SelTecnico.Close;
  SelTecnico.ParamByName('cnpj').value := dmapp.cnpj;
  SelTecnico.Open;

  QryProdFornecedor.Close;
  QryProdFornecedor.Open;

  qryLocalizacao1.Close;
  qryLocalizacao1.Open;

  qryLocalizacao2.Close;
  qryLocalizacao2.Open;

  qryLocalizacao3.Close;
  qryLocalizacao3.Open;
  
  If Not(DsMaterial.DataSet.Active) Then
     DsMaterial.DataSet.Open;

  If Not(DsCor.DataSet.Active) Then
     DsCor.DataSet.Open;

    If Not(DsAgrupadores.DataSet.Active)
    Then
       DsAgrupadores.DataSet.Open
    else
        DsAgrupadores.DataSet.tag := DsAgrupadores.DataSet.tag + 1;

    If Not(dsGrupos.DataSet.Active)
    Then
       dsGrupos.DataSet.Open
    else
        dsGrupos.DataSet.tag := dsGrupos.DataSet.tag + 1;

    dmCadastros.SubgruposProd.close;
    dmCadastros.SubgruposProd.Open;


    If Not(dsReducao.DataSet.Active)
    Then
       dsReducao.DataSet.Open
    else
        dsReducao.DataSet.tag := dsReducao.DataSet.tag + 1;

    If Not(dsUnidade.DataSet.Active) Then
      dsUnidade.DataSet.Open
    else
      dsUnidade.DataSet.tag := dsUnidade.DataSet.tag + 1;

    DMCadastros.UndPrimaria.Close;
    DMCadastros.UndPrimaria.Open;
      
    If Not(dsMarcas.DataSet.Active) Then
      dsMarcas.DataSet.Open
    else
      dsMarcas.DataSet.tag := dsMarcas.DataSet.tag + 1;

    If Not(dsModelo.DataSet.Active) Then
      dsModelo.DataSet.Open
    else
      dsModelo.DataSet.tag := dsModelo.DataSet.tag + 1;

    If Not(dsSecoes.DataSet.Active) Then
      dsSecoes.DataSet.Open
    else
      dsSecoes.DataSet.tag := dsSecoes.DataSet.tag + 1;



    If Not(dsFornecedor.DataSet.Active)
    Then
       dsFornecedor.DataSet.Open
    else
        dsFornecedor.DataSet.tag := dsFornecedor.DataSet.tag + 1;

    If Not DmCadastros.Produtos.Active then
    begin
      with DmCadastros do
      begin
        Produtos.Close;
        Produtos.SelectSQL.text := 'select * from pcd_lista_produto(:empresa, :produto)';
        Produtos.ParamByName ('PRODUTO').AsString := ' ';
        Produtos.open;
      end;
     end;

  //Datasource.AutoEdit := ActAlterar.Enabled;
  pc.ActivePageIndex := 0;
  EdCodigo.SetFocus;
  //---------------------------verificando se há controle de estoque comprometido-----------------------------//
  if (dmApp.CARREGAMENTO_PARCIAL = 'S') then
  begin
    lblComp1.visible := true;
    lblComp2.visible := true;
  end
  else
  begin
    lblComp1.visible := false;
    lblComp2.visible := false;
  end;
end;

procedure TFrmProdutos.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  Pg3.TabVisible := ActVerCusto.Enabled;
  lkCSOSN.ENABLED := ((copy(DmApp.NFE_REGIME,1,1) = '2') OR (copy(DmApp.NFE_REGIME,1,1) = '3'));
  
end;

procedure TFrmProdutos.ActLocalizarExecute(Sender: TObject);
var
 codigo : string;
begin
    FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
    FrmLocProdutoCadastro_Auto.Showmodal ;
    Codigo := (FrmLocProdutoCadastro_Auto.CampTrecho);
    FrmLocProdutoCadastro_Auto.Free   ;
    FrmLocProdutoCadastro_Auto := Nil ;
    with DmCadastros do
    begin
      Produtos.Close ;
      Produtos.SelectSQL.text := 'select * from pcd_lista_produto(:empresa, :produto)';
      Produtos.ParamByName ('PRODUTO').AsString := Codigo;
      Produtos.Open;
    end;
end;

procedure TFrmProdutos.EdCodigoKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmProdutos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmProdutos.DataSourceStateChange(Sender: TObject);
begin
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
       ActFiltrar.Enabled   := False;
       ActLote.Enabled      := False;
       ActAgrupar.Enabled   := False;
       ActComissao.Enabled  := False;
       ActGrade.Enabled     := False;
     End
  Else
     Begin
       ActComissao.Enabled  := True;
       ActLote.Enabled      := true;
       ActAgrupar.Enabled   := true;
       ActFiltrar.Enabled   := true;
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActGrade.Enabled     := ActGrade.Tag = 1;
       ActLocalizar.Enabled := True;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmProdutos.ActFecharExecute(Sender: TObject);
begin
  If FrmProdutos.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmProdutos.btnMarcaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  dsMarcas.DataSet.Tag    := dsMarcas.DataSet.Tag    + 1;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMarcas', False);
  { * * * * * }
  //
  FrmMarcas := TFrmMarcas.Create(Self);

  FrmMarcas.ShowModal;
  //
  Datasource.DataSet.FieldByName('Marca').asInteger := FrmMain.Codigo_Int ;



  dsMarcas.DataSet.Tag := dsMarcas.DataSet.Tag  - 1;

  FrmMarcas.Free;
  FrmMarcas := Nil;
  //
  cmbMarca.SetFocus;
end;

procedure TFrmProdutos.ActLookupExecute(Sender: TObject);
begin
  If FrmProdutos.ActiveControl = cmbMaterial Then
     BtnMaterial.OnClick(BtnMaterial);
  If FrmProdutos.ActiveControl = cmbCor Then
     BtnCor.OnClick(BtnCor);
  If FrmProdutos.ActiveControl = cmbMarca Then
     btnMarca.OnClick(btnMarca);
  If FrmProdutos.ActiveControl = cmbReducao Then
     btnReducao.OnClick(btnReducao);
  If FrmProdutos.ActiveControl = cmbUnidade Then
     btnUnidade.OnClick(btnUnidade);
  If (FrmProdutos.ActiveControl = cmbGrupo)or(FrmProdutos.ActiveControl = cmbSubgrupo)Then
     btnGrupo.OnClick(btnGrupo);
  If FrmProdutos.ActiveControl = cmbModelo Then
     btnModelo.OnClick(btnModelo);
  If FrmProdutos.ActiveControl = cmbUndPrimaria Then
     btnModelo.OnClick(btnUndPrimaria);
  If FrmProdutos.ActiveControl = cmbUndCarga Then
     btnUndCarga.OnClick(btnUndCarga);
  If cbLocalizacao1.Focused Then
     btnLocalizacao1.OnClick(btnLocalizacao1);
  If cbLocalizacao2.Focused Then
     btnLocalizacao2.OnClick(btnLocalizacao2);
  If cbLocalizacao3.Focused Then
     btnLocalizacao3.OnClick(btnLocalizacao3);

end;

procedure TFrmProdutos.btnGrupoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGrupos', False);
  { * * * * * }
  //
  dsGrupos.DataSet.Tag    := dsGrupos.DataSet.Tag    + 1;

  dsSubGrupos.DataSet.Tag := dsSubGrupos.DataSet.Tag + 1;

  DMCadastros.Tag         := DMCadastros.Tag         + 1;
  //
  FrmGrupos := TFrmGrupos.Create(Self);
  //
  FrmGrupos.ShowModal;

  Datasource.DataSet.FieldByName('GRUPO').asInteger := FrmMain.Codigo_Int ;


  dsGrupos.DataSet.Tag    := dsGrupos.DataSet.Tag    - 1;

  dsSubGrupos.DataSet.Tag := dsSubGrupos.DataSet.Tag - 1;

  DMCadastros.Tag         := DMCadastros.Tag         - 1;
  dsSubGrupos.DataSet.Close;
  dsSubGrupos.DataSet.Open;

  cmbGrupo.SetFocus ;
end;

procedure TFrmProdutos.BtnReducaoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmReducoes', False);
  { * * * * * }


  dsReducao.DataSet.Tag    := dsReducao.DataSet.Tag    + 1;

  FrmReducoes := TFrmReducoes.Create(Self);

  FrmReducoes.Showmodal ;

  Datasource.DataSet.FieldByName('REDUCAO').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  dsReducao.DataSet.Tag := dsReducao.DataSet.Tag  + 1;

  //
  FrmReducoes.Free ;
  FrmReducoes := Nil ;

  cmbReducao.SetFocus ;
end;

procedure TFrmProdutos.BtnUnidadeClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then

  dsUnidade.DataSet.Tag    := dsUnidade.DataSet.Tag    + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUnidades', False);


  FrmUnidades := TFrmUnidades.Create(Self);
  FrmUnidades.ShowModal;
  DMCadastros.Unidades.Close;
  DMCadastros.Unidades.Open;
  Datasource.DataSet.Edit;
  Datasource.DataSet.FieldByName('Unidade').asString := FrmMain.Codigo_Str;
  FrmUnidades.Free;
  FrmUnidades := Nil;

  cmbUnidade.SetFocus;
end;

procedure TFrmProdutos.CmbCTEEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
     (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
     (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmProdutos.EdSaldoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
     Begin
       pc.ActivePageIndex := 2;
       dxDBCalcEdit1.SetFocus;
     End;
end;

procedure TFrmProdutos.ActNextPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 2 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmProdutos.ActPreviousPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmProdutos.Pg1Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := DataSource;
    edCodigo.SetFocus;
  Except
  End;
end;

procedure TFrmProdutos.Pg2Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := DataSource;
    edLocalizacao1.SetFocus;
  Except
  End;
end;

procedure TFrmProdutos.Pg3Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := DataSource;
    dxDBCalcEdit1.SetFocus;

    if not ActVerCusto.Enabled
    then begin
         dxDBCalcEdit1.DataField  := '';
         edPrcReposicao.DataField := '';
         EdMargem.DataField       := '';
         edCustoAnt.DataField     := '';
         edCustoMed.DataField     := '';
     end
     else begin
         dxDBCalcEdit1.DataField  := 'CUSTO_AQUISICAO';
         edPrcReposicao.DataField := 'PRC_REPOS';
         EdMargem.DataField       := 'MARGEM_BRUTA';
         edCustoAnt.DataField     := 'PRC_CUSTO_ANT';
         edCustoMed.DataField     := 'PRC_CUSTO_MED';
     end;

  Except
  End;
end;

procedure TFrmProdutos.ActNextExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Eof ))
     then
         Navigator.DataSource.DataSet.Next ;
end;

procedure TFrmProdutos.ActPriorExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))
     then
         Navigator.DataSource.DataSet.Prior ;
end;

procedure TFrmProdutos.ActLastExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))
     then
         Navigator.DataSource.DataSet.Last ;
end;

procedure TFrmProdutos.ActFirstExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))
     then
         Navigator.DataSource.DataSet.First   ;
end;

procedure TFrmProdutos.ActFiltrarExecute(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmProdutos.EdCodigoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
     dmCadastros.SubgruposProd.close;
   dmCadastros.SubgruposProd.Open;
end;

procedure TFrmProdutos.EdCodigoExit(Sender: TObject);
var
   Aux, Aux1: String;
   P1, P2, P3, P4, P5: Integer;
begin
       //CRIA O CODIGO DO PRODUTO
       If ( DataSource.DataSet.State in [ dsinsert ] ) AND ( DMCadastros.ProdutosCODIGO.IsNull )
       then begin
            Aux := inttostr( DMCadastros.ProdutosCODIGO_INTERNO.value ) ;

            If DmApp.Elimina_Zeros = 'S'
            THEN BEGIN
                 While Copy ( Aux, 1, 1 ) = '0' DO
                 BEGIN
                      Aux := Copy ( Aux, 2, 15 );
                 End;
            END;

            If DmApp.Acrescenta_Zeros = 'S'
            THEN BEGIN
                 While Length ( Aux ) < 10 DO
                 BEGIN
                      Aux := '0' + Aux ;
                 End;
            END ;

            DMCadastros.ProdutosCodigo.value := Aux ;
       end;

       //CRIA O CODIGO DO PRODUTO
       If ( DataSource.DataSet.State in [ dsinsert ] )
       then begin
            IF DmApp.CODIFICA_PRODUTOS = 'S'
            THEN BEGIN
                 Aux := DMCadastros.ProdutosCodigo.value ;

                 IF Length ( Aux ) <= 5
                 THEN BEGIN
                      While Length ( Aux ) < 5 DO
                      BEGIN
                           Aux := Aux + '0';
                      End;

                      P1 := StrToInt(copy(aux,1,1));
                      P2 := StrToInt(copy(aux,2,1));
                      P3 := StrToInt(copy(aux,3,1));
                      P4 := StrToInt(copy(aux,4,1));
                      P5 := StrToInt(copy(aux,5,1));

                      P1 := ( P1 * 1 ) + ( P2 * 2 ) + ( P2 * 3 ) + ( P4 * 4 ) + ( P5 * 5 ) ;

                      P1 := TRUNC ( P1 / 14 );

                      Aux1 := copy(aux,3,3 ) ;

                      Aux  := copy(aux,1,2 ) ;

                      Aux := Aux + '.' + Aux1 + '-' + IntToStr(P1);

                      DMCadastros.ProdutosCodigo.value := Aux ;
                 END;
            END;
       END;
    dsSubGrupos.DataSet.Close;
    dsSubGrupos.DataSet.Open;
      TIRACORFUNDO( SENDER );

end;

procedure TFrmProdutos.ActLoteExecute(Sender: TObject);
begin
     If Datasource.DataSet.FieldByName('POSSUI_LOTE').asString = 'S'
     THEN BEGIN
          BtnLote.Enabled := TRUE  ;

          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLotes', False);
          with dmCadastros do
          begin
            Produto_Lote := ProdutosCODIGO.value;
            Peso_Lote := ProdutosPESO_LIQ.value;
          end;

          FrmLotes := TFrmLotes.Create(Self);
          FrmLotes.ShowModal;
          FrmLotes.Free;
          FrmLotes := Nil;
     END
     ELSE BEGIN
          MessageDlg('Este Produto Não Esta Configurado para Lotes!', mtError, [mbOK], 0);
     END;
end;

procedure TFrmProdutos.dxDBCheckEdit7KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
       pc.ActivePageIndex := 0;
       edCodigo.SetFocus;
     End;
end;

procedure TFrmProdutos.BtnAgrupadoresClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMCadastros.Tag         := DMCadastros.Tag         + 1;

  DsAgrupadores.DataSet.Tag    := DsAgrupadores.DataSet.Tag    + 1;

  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAgrupador', False);
  { * * * * * }
  //
  FrmAgrupador := TFrmAgrupador.Create(Self);
  FrmAgrupador.ShowModal;
  //
  Datasource.DataSet.FieldByName('COD_AGRUP').asString := FrmMain.Codigo_Str ;

  FrmAgrupador.Free;
  FrmAgrupador := Nil;

  DMCadastros.Tag         := DMCadastros.Tag - 1;

  DsAgrupadores.DataSet.Tag    := DsAgrupadores.DataSet.Tag  - 1;

end;

procedure TFrmProdutos.ActGradeExecute(Sender: TObject);
begin
     { * * * * * }
     DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGrades', False);
     FrmGrades := TFrmGrades.Create(Self);
     FrmGrades.ShowModal;
     FrmGrades.Free;
     FrmGrades := Nil;
end;

procedure TFrmProdutos.ActIncluirporModeloExecute(Sender: TObject);
Var
   Complemento,Possui_Lote, Debita_ICMS, Complemento_NF, Pesavel, Servico,
   Vende_Fracionado, Nome,codigo, Unidade, ECF, ETIQUETA, ESTNEG: String;
   Marca, Modelo, Reducao, secao, xcor, xmaterial, SubUnidade, GRUPO, SUBGRUPO,CTE, CTIE, ORIGEM: Integer;
   Est_Minimo, Est_Maximo: real;
begin
    FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
    FrmLocProdutoCadastro_Auto.Showmodal ;
    Codigo := (FrmLocProdutoCadastro_Auto.CampTrecho);
    FrmLocProdutoCadastro_Auto.Free   ;
    FrmLocProdutoCadastro_Auto := Nil ;
    with DmCadastros do
    begin
      Produtos.Close ;
      Produtos.SelectSQL.text := 'select * from pcd_lista_produto(:empresa, :produto)';
      Produtos.ParamByName ('PRODUTO').AsString := Codigo;
      Produtos.Open;
    end;

     With DmCadastros do
     Begin
          Nome        := ProdutosNOME.value ;
          Unidade     := ProdutosUNIDADE.value;
          CTE         := ProdutosCTE.value;
          CTIE        := ProdutosCTIE.value;
          ORIGEM      := ProdutosORIGEM.value;
          ECF         := ProdutosALIQUOTA_ECF.value;
          ETIQUETA    := ProdutosETIQUETA_ENT.value;
          ESTNEG      := ProdutosNEG_QTDADE_2.value;

          Marca       := ProdutosMARCA.value;
          secao       := ProdutosSECAO.value;
          Modelo      := ProdutosModelo.value;
          Reducao     := ProdutosREDUCAO.value;
          SubUnidade  := ProdutosSUBUNIDADE.value;
          GRUPO       := ProdutosGRUPO.value;
          SUBGRUPO    := ProdutosSUBGRUPO.value;
          Complemento := ProdutosCOMPLEMENTO.value;
          Possui_Lote := ProdutosPOSSUI_LOTE.value;
          Debita_ICMS := ProdutosDEBITA_ICMS.value;
          Complemento_NF := ProdutosCOMPLEMENTO_NF.value;
          Pesavel := ProdutosPROD_PESAVEL.value;
          Servico := ProdutosSERVICO.value;
          xcor := ProdutosCOR.value;
          xMATERIAL := ProdutosMATERIAL.value;
          Vende_Fracionado := ProdutosVENDE_FRACIONADO.value;
          Est_Minimo := ProdutosEST_MIN.value;
          Est_Maximo := ProdutosEST_MAX.value;

          ActIncluir.Execute ;
          ProdutosNOME.value         := Nome        ;
          ProdutosUNIDADE.value      := Unidade     ;
          ProdutosCTE.value          := CTE         ;
          ProdutosCTIE.value         := CTIE        ;
          ProdutosORIGEM.value       := ORIGEM      ;
          ProdutosALIQUOTA_ECF.value := ECF         ;
          ProdutosSECAO.value := secao         ;
          ProdutosETIQUETA_ENT.value := ETIQUETA    ;
          ProdutosNEG_QTDADE_2.value := ESTNEG      ;
          ProdutosCOR.value := xcor;
          ProdutosMATERIAL.value := xMATERIAL;

          ProdutosMARCA.value        := Marca       ;
          if (modelo > 0) then
            ProdutosMODELO.value       := Modelo    ;

          ProdutosREDUCAO.value      := Reducao     ;
          ProdutosSUBUNIDADE.value   := SubUnidade  ;
          ProdutosGRUPO.value        := GRUPO       ;
          ProdutosSUBGRUPO.value     := SUBGRUPO    ;

          ProdutosCOMPLEMENTO.value := Complemento;
          ProdutosPOSSUI_LOTE.value := Possui_Lote;
          ProdutosDEBITA_ICMS.value := Debita_ICMS;
          ProdutosCOMPLEMENTO_NF.value := Complemento_NF;
          ProdutosPROD_PESAVEL.value := Pesavel;
          ProdutosSERVICO.value := Servico;
          ProdutosVENDE_FRACIONADO.value := Vende_Fracionado;
          ProdutosEST_MIN.value := Est_Minimo;
          ProdutosEST_MAX.value := Est_Maximo;
     end;
end;

procedure TFrmProdutos.SpeedButton3Click(Sender: TObject);
begin
     { * * * * * }
     DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos_Tribut_Revenda', False);

     { * * * * * }
     //
     FrmProdutos_Tribut_Revenda := TFrmProdutos_Tribut_Revenda.Create(Self);

     FrmProdutos_Tribut_Revenda.ShowModal;
     //
     FrmProdutos_Tribut_Revenda.Free;
     FrmProdutos_Tribut_Revenda := Nil;
end;

procedure TFrmProdutos.cmbReducaoExit(Sender: TObject);
begin
  EdCodigoExit(Sender);
  //-->> Caso Redução esteja preenchida as combos de tributação ficarão disable
{  with DMCadastros do
  begin
    if (ProdutosREDUCAO.Text<>'')AND(ProdutosSERVICO.value = 'N')THen
    begin
        CmbCTE.ItemIndex  := 2; ProdutosCTE.value  := 2;
        CmbCTIE.ItemIndex := 2; ProdutosCTIE.value := 2;
    end;
    else
    begin
      CmbCTE.ItemIndex  := 1;
      CmbCTIE.ItemIndex := 1;
      ProdutosCTE.value  := 1;
      ProdutosCTIE.value := 1;
      ProdutosSERVICO.value := 'S';
      dxDBCheckEdit9.checked := true;
    end;
  end;
  }
end;

procedure TFrmProdutos.dxDBCheckEdit9Exit(Sender: TObject);
begin
  EdCodigoExit(Sender);
  with DMCadastros do
  begin
{    IF ProdutosSERVICO.value = 'S' THEN
    BEGIN
      ProdutosCTE.VALUE  := 7;
      ProdutosCTIE.VALUE := 7;
      ProdutosComplemento_Nf.Value := 'N' ;
      ProdutosReducao.text := '';
    END;
    }
  end;
    TIRACORFUNDO( SENDER );
end;

procedure TFrmProdutos.CmbCTEExit(Sender: TObject);
begin
  EdCodigoExit(Sender);
{  with DMCadastros do
  begin
    if(ProdutosCTE.value=1)AND(ProdutosSERVICO.value = 'N')then
      ProdutosCTIE.Value := 1;
    if(ProdutosCTIE.value=1)AND(ProdutosSERVICO.value = 'N')then
      ProdutosCTE.Value := 1;
  end;
  }
end;

procedure TFrmProdutos.btnModeloClick(Sender: TObject);
begin
  if ActAlterar.Tag = 0 then
     exit;
  //
  if Datasource.DataSet.State = dsBrowse then
     Datasource.DataSet.Edit;

  dsModelo.DataSet.Tag    := dsModelo.DataSet.Tag    + 1;
  dsSecoes.DataSet.Tag    := dsSecoes.DataSet.Tag    + 1;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotores', True);
  { * * * * * }
  //

  If FrmModelos_Propriedades = Nil Then
    FrmModelos_Propriedades := TFrmModelos_Propriedades.Create(Self);

  FrmModelos_Propriedades.ShowModal;
  DmServicos.SelModelosProduto.Close;
  DmServicos.SelModelosProduto.Open;

  Datasource.DataSet.FieldByName('Modelo').asInteger := FrmMain.Codigo_Int ;

  dsModelo.DataSet.Tag := dsModelo.DataSet.Tag  - 1;
  dsSecoes.DataSet.Tag := dsSecoes.DataSet.Tag  - 1;

  FrmModelos_Propriedades.Free;
  FrmModelos_Propriedades := Nil;

  cmbModelo.SetFocus;
end;

procedure TFrmProdutos.btnSecaoClick(Sender: TObject);
begin

  if ActAlterar.Tag = 0 then
     exit;
  //
  if Datasource.DataSet.State = dsBrowse then
     Datasource.DataSet.Edit;


  dsSecoes.DataSet.Tag    := dsSecoes.DataSet.Tag    + 1;
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmSecoes_Produtos', True);

  If FrmSecoes_Produtos = Nil Then
    FrmSecoes_Produtos := TFrmSecoes_Produtos.Create(Self);

  FrmSecoes_Produtos.ShowModal;

  DmCadastros2.qrySelSecoes.Close;
  DmCadastros2.qrySelSecoes.Open;

  Datasource.DataSet.FieldByName('SECAO').asInteger := FrmMain.Codigo_Int ;

  dsSecoes.DataSet.Tag := dsSecoes.DataSet.Tag  - 1;

  FrmSecoes_Produtos.Free;
  FrmSecoes_Produtos := Nil;

  cmbSecao.SetFocus;
end;

procedure TFrmProdutos.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;
  Try
    Navigator.DataSource.DataSet.Edit;
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

procedure TFrmProdutos.btnUndPrimariaClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     exit;


  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUnidades', False);

  FrmUnidades := TFrmUnidades.Create(Self);
  FrmUnidades.ShowModal;
  Datasource.DataSet.FieldByName('und_primaria').asString := FrmMain.Codigo_Str;
  FrmUnidades.Free;
  FrmUnidades := Nil;

  cmbUndPrimaria.SetFocus;
  dmCadastros.UndPrimaria.Close;
  dmCadastros.UndPrimaria.Open;
end;

procedure TFrmProdutos.btnUndCargaClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then

  dsUnidade.DataSet.Tag    := dsUnidade.DataSet.Tag    + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUnidades', False);


  FrmUnidades := TFrmUnidades.Create(Self);
  FrmUnidades.ShowModal;
  DMCadastros.Unidades.Close;
  DMCadastros.Unidades.Open;
  Datasource.DataSet.Edit;
  Datasource.DataSet.FieldByName('und_carregamento').asString := FrmMain.Codigo_Str;
  FrmUnidades.Free;
  FrmUnidades := Nil;

  cmbUndCarga.SetFocus;
end;

procedure TFrmProdutos.RzButton1Click(Sender: TObject);
begin
  with DMCadastros do
  begin
    if (OpenDialog.Execute) then
    begin
      if not (DataSource.DataSet.state in [ dsinsert, dsedit ])  then
        ActAlterar.execute;

      ProdutosIMG_1.LoadFromFile(OpenDialog.FileName);
      ActPost.Execute;
    end;
  end;
end;

procedure TFrmProdutos.RzButton2Click(Sender: TObject);
begin
 with DMCadastros do
  begin
      if not (DataSource.DataSet.state in [ dsinsert, dsedit ])  then
        ActAlterar.execute;

      ProdutosIMG_1.Clear;
      ActPost.Execute;
  end;
end;

procedure TFrmProdutos.BtnMaterialClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMateriais', False);
  FrmMateriais := TFrmMateriais.Create(Self);
  FrmMateriais.ShowModal;

  Datasource.DataSet.FieldByName('MATERIAL').asInteger := FrmMain.Codigo_Int;
  FrmMateriais.Free;
  FrmMateriais := Nil;
  CmbMaterial.SetFocus;
end;

procedure TFrmProdutos.SpeedButton1Click(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCores', False);
  FrmCores := TFrmCores.Create(Self);

  FrmCores.ShowModal;
  Datasource.DataSet.FieldByName('Cor').asInteger := FrmMain.Codigo_Int;

  FrmCores.Free;
  FrmCores := Nil;
  CmbCor.SetFocus;
end;

procedure TFrmProdutos.cmbSubgrupoExit(Sender: TObject);
begin
  //TROCA A COR DE FUNDO
  TIRACORFUNDO( SENDER );
end;

procedure TFrmProdutos.dxDBCheckEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  If Key = #13 Then
       pc.ActivePageIndex := 1;

end;

procedure TFrmProdutos.dxDBCheckEdit10KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
     Begin
       pc.ActivePageIndex := 2;
       dxDBCalcEdit1.SetFocus;
     End;
end;

procedure TFrmProdutos.edIPIKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
       pc.ActivePageIndex := 3;
       CmbCTE.SetFocus;
     End;
end;

procedure TFrmProdutos.CBECFEnter(Sender: TObject);
begin
    CORFUNDO ( SENDER );
end;

procedure TFrmProdutos.CBECFExit(Sender: TObject);
begin
  EdCodigoExit(Sender);
end;

procedure TFrmProdutos.CBECFKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then
       cbComplemento.SetFocus;
end;

procedure TFrmProdutos.cbComplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key =#13 then
    begin
        pc.ActivePageIndex := 4;
        cmbUndPrimaria.SetFocus;
    end;
end;

procedure TFrmProdutos.cmbUndCargaKeyPress(Sender: TObject; var Key: Char);
begin
      if key =#13 then
      begin
          pc.ActivePageIndex  := 5;
          cxDBMemoContato.SetFocus;
      end;
end;

procedure TFrmProdutos.qryLocalizacao1BeforeOpen(DataSet: TDataSet);
begin
  TIbQuery(Dataset).ParamByName('cnpj').value := dmApp.cnpj;
end;

procedure TFrmProdutos.btnLocalizacao1Click(Sender: TObject);
begin
  if ActAlterar.Tag = 0 then
     exit;

  if Datasource.DataSet.State = dsBrowse then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocalizacao', True);

  If FrmLocalizacao = Nil Then
    FrmLocalizacao := TFrmLocalizacao.Create(Self);

  FrmLocalizacao.ShowModal;

  qryLocalizacao1.Close;
  qryLocalizacao1.Open;

  Datasource.DataSet.FieldByName('COD_LOCALIZACAO_1').asInteger := FrmMain.Codigo_Int ;

  FrmLocalizacao.Free;
  FrmLocalizacao := Nil;

  cbLocalizacao1.SetFocus;
end;

procedure TFrmProdutos.btnLocalizacao2Click(Sender: TObject);
begin
  if ActAlterar.Tag = 0 then
     exit;

  if Datasource.DataSet.State = dsBrowse then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocalizacao', True);

  If FrmLocalizacao = Nil Then
    FrmLocalizacao := TFrmLocalizacao.Create(Self);

  FrmLocalizacao.ShowModal;

  qryLocalizacao2.Close;
  qryLocalizacao2.Open;

  Datasource.DataSet.FieldByName('COD_LOCALIZACAO_2').asInteger := FrmMain.Codigo_Int ;

  FrmLocalizacao.Free;
  FrmLocalizacao := Nil;

  cbLocalizacao2.SetFocus;
end;

procedure TFrmProdutos.btnLocalizacao3Click(Sender: TObject);
begin
  if ActAlterar.Tag = 0 then
     exit;

  if Datasource.DataSet.State = dsBrowse then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLocalizacao', True);

  If FrmLocalizacao = Nil Then
    FrmLocalizacao := TFrmLocalizacao.Create(Self);

  FrmLocalizacao.ShowModal;

  qryLocalizacao3.Close;
  qryLocalizacao3.Open;

  Datasource.DataSet.FieldByName('COD_LOCALIZACAO_3').asInteger := FrmMain.Codigo_Int ;

  FrmLocalizacao.Free;
  FrmLocalizacao := Nil;

  cbLocalizacao3.SetFocus;
end;

end.


