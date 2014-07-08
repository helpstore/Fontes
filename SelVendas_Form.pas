 unit SelVendas_Form;


interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,   
  Menus,  dxTLClms, cxPropertiesStore, Grids, DBGrids, FileCtrl, Variants,
  dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxButtons, cxControls, cxContainer, cxEdit,
  cxLabel, dxSkinscxPCPainter, cxPC,  cxTextEdit,
  cxMaskEdit, cxDropDownEdit,  cxGroupBox, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridLevel, cxGridCustomView, cxGrid, SHDocVw,  cxFilterControl, cxDBFilterControl,cxGridExportLink,
  cxGridCustomPopupMenu, cxGridPopupMenu;

type


  TFrmSelVendas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarMgr: TdxBarManager;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    Bevel1: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    dsClientes: TDataSource;
    ActExcluir: TAction;
    ActImprimir: TAction;
    DsOrcamentos: TDataSource;
    ActVendas: TAction;
    ActOrcamentos: TAction;
    ActPessoas: TAction;
    ActAlteraCliente: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    BtnExCLUIVenda: TcxButton;
    btnImpOrc: TcxButton;
    ActConsultaProduto: TAction;
    ActImportaOrcamento: TAction;
    ActCancelaOrc: TAction;
    RzBitBtn1: TcxButton;
    ActConfCampos: TAction;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    b2: TBevel;
    pc: TcxPageControl;
    tbsVenda: TcxTabSheet;
    Shape1: TShape;
    tbsOrcamento: TcxTabSheet;
    Panel5: TPanel;
    Panel3: TPanel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    lblnomeOrc: TcxLabel;
    Label10: TcxLabel;
    edDtInicialOrc: TdxDateEdit;
    edDtFinalOrc: TdxDateEdit;
    edNDoctoOrc: TdxEdit;
    CmbClienteOrc: TdxButtonEdit;
    tbsClientes: TcxTabSheet;
    stgFatProduto: TcxPropertiesStore;
    Panel9: TPanel;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    lblnome: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    edNDocto: TdxEdit;
    CmbCliente: TdxButtonEdit;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    RzBitBtn5: TcxButton;
    ActLocalizarProduto: TAction;
    cmbStatus: TcxComboBox;
    GroupLeg: TCxGroupBox;
    RzPanel1: TPanel;
    RzPanel2: TPanel;
    RzPanel4: TPanel;
    RzPanel3: TPanel;
    SelVendas: TIBQuery;
    SelVendasCODIGO: TIntegerField;
    SelVendasFECHADA: TIBStringField;
    SelVendasHISTORICO: TIBStringField;
    SelVendasPESSOA_FJ: TIntegerField;
    SelVendasUSUARIO: TIntegerField;
    SelVendasVENDEDOR: TIntegerField;
    SelVendasNUM_NF: TIntegerField;
    SelVendasNUM_CUPOM: TIntegerField;
    SelVendasNATUREZA: TIntegerField;
    SelVendasTIPO_VENDA: TIBStringField;
    SelVendasNOME_CONSUMIDOR: TIBStringField;
    SelVendasORCAMENTO: TIntegerField;
    SelVendasLOCAL: TIntegerField;
    SelVendasNOMEVENDEDOR: TIBStringField;
    SelVendasNOME: TIBStringField;
    SelVendasNOMENATUREZA: TIBStringField;
    SelVendasDESC_ACRES: TIBBCDField;
    SelVendasTOTAL: TIBBCDField;
    SelVendasVLR_TOTAL: TIBBCDField;
    SelVendasOBSERVACAO: TIBStringField;
    SelVendasPSA_ATIVIDADE: TIntegerField;
    SelVendasPSA_BAIRRO: TIntegerField;
    SelVendasPSA_CELULAR: TIBStringField;
    SelVendasPSA_CEP: TIBStringField;
    SelVendasPSA_CIDADE: TIntegerField;
    SelVendasPSA_COMPLEMENTO: TIBStringField;
    SelVendasPSA_CONTATO: TIBStringField;
    SelVendasPSA_CONVENIO: TIntegerField;
    SelVendasPSA_CPF_CGC: TIBStringField;
    SelVendasPSA_DT_CADASTRO: TDateTimeField;
    SelVendasPSA_DT_NASCIMENTO: TDateTimeField;
    SelVendasPSA_EMISSOR: TIBStringField;
    SelVendasPSA_ENDERECO: TIntegerField;
    SelVendasPSA_FANTASIA: TIBStringField;
    SelVendasPSA_FAX: TIBStringField;
    SelVendasPSA_FONE: TIBStringField;
    SelVendasPSA_INSC_MUNIC: TIBStringField;
    SelVendasPSA_NOME_RAZAO: TIBStringField;
    SelVendasPSA_NUMERO: TIBStringField;
    SelVendasPSA_PESSOA: TIBStringField;
    SelVendasPSA_RG_IE: TIBStringField;
    SelVendasPSA_UF: TIBStringField;
    SelVendasLGD_NOME: TIBStringField;
    SelVendasBAI_NOME: TIBStringField;
    SelVendasCID_NOME: TIBStringField;
    SelVendasDATA: TDateTimeField;
    SelVendasHORA: TTimeField;
    SelVendasNFE_CHAVE: TIBStringField;
    SelVendasNFE_SELECIONADO: TIBStringField;
    SelVendasNFE_VALIDADA: TIBStringField;
    SelVendasNFE_ASSINADA: TIBStringField;
    SelVendasNFE_TRANSMITIDA: TIBStringField;
    SelVendasNFE_AUTORIZADA: TIBStringField;
    SelVendasNFE_DANFE_IMPRESSO: TIBStringField;
    SelVendasN_SEQ_ECF: TIBStringField;
    SelVendasN_SERIE_ECF: TIBStringField;
    SelVendasNFE_PROTOCOLO: TIBStringField;
    SelVendasNFE_XML: TBlobField;
    SelVendasNFE_RECIBO: TIBStringField;
    SelVendasDT_EMISSAO_NF: TDateField;
    Grid: TcxGrid;
    GridTV: TcxGridDBBandedTableView;
    GridLV: TcxGridLevel;
    GridTVCODIGO: TcxGridDBBandedColumn;
    GridTVFECHADA: TcxGridDBBandedColumn;
    GridTVHISTORICO: TcxGridDBBandedColumn;
    GridTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridTVUSUARIO: TcxGridDBBandedColumn;
    GridTVVENDEDOR: TcxGridDBBandedColumn;
    GridTVNUM_NF: TcxGridDBBandedColumn;
    GridTVNUM_CUPOM: TcxGridDBBandedColumn;
    GridTVNATUREZA: TcxGridDBBandedColumn;
    GridTVTIPO_VENDA: TcxGridDBBandedColumn;
    GridTVNOME_CONSUMIDOR: TcxGridDBBandedColumn;
    GridTVORCAMENTO: TcxGridDBBandedColumn;
    GridTVLOCAL: TcxGridDBBandedColumn;
    GridTVNOMEVENDEDOR: TcxGridDBBandedColumn;
    GridTVNOME: TcxGridDBBandedColumn;
    GridTVNOMENATUREZA: TcxGridDBBandedColumn;
    GridTVDESC_ACRES: TcxGridDBBandedColumn;
    GridTVTOTAL: TcxGridDBBandedColumn;
    GridTVVLR_TOTAL: TcxGridDBBandedColumn;
    GridTVOBSERVACAO: TcxGridDBBandedColumn;
    GridTVPSA_ATIVIDADE: TcxGridDBBandedColumn;
    GridTVPSA_BAIRRO: TcxGridDBBandedColumn;
    GridTVPSA_CELULAR: TcxGridDBBandedColumn;
    GridTVPSA_CEP: TcxGridDBBandedColumn;
    GridTVPSA_CIDADE: TcxGridDBBandedColumn;
    GridTVPSA_COMPLEMENTO: TcxGridDBBandedColumn;
    GridTVPSA_CONTATO: TcxGridDBBandedColumn;
    GridTVPSA_CONVENIO: TcxGridDBBandedColumn;
    GridTVPSA_CPF_CGC: TcxGridDBBandedColumn;
    GridTVPSA_DT_CADASTRO: TcxGridDBBandedColumn;
    GridTVPSA_DT_NASCIMENTO: TcxGridDBBandedColumn;
    GridTVPSA_EMISSOR: TcxGridDBBandedColumn;
    GridTVPSA_ENDERECO: TcxGridDBBandedColumn;
    GridTVPSA_FANTASIA: TcxGridDBBandedColumn;
    GridTVPSA_FAX: TcxGridDBBandedColumn;
    GridTVPSA_FONE: TcxGridDBBandedColumn;
    GridTVPSA_INSC_MUNIC: TcxGridDBBandedColumn;
    GridTVPSA_NOME_RAZAO: TcxGridDBBandedColumn;
    GridTVPSA_NUMERO: TcxGridDBBandedColumn;
    GridTVPSA_PESSOA: TcxGridDBBandedColumn;
    GridTVPSA_RG_IE: TcxGridDBBandedColumn;
    GridTVPSA_UF: TcxGridDBBandedColumn;
    GridTVLGD_NOME: TcxGridDBBandedColumn;
    GridTVBAI_NOME: TcxGridDBBandedColumn;
    GridTVCID_NOME: TcxGridDBBandedColumn;
    GridTVDATA: TcxGridDBBandedColumn;
    GridTVHORA: TcxGridDBBandedColumn;
    GridTVNFE_CHAVE: TcxGridDBBandedColumn;
    GridTVNFE_SELECIONADO: TcxGridDBBandedColumn;
    GridTVNFE_VALIDADA: TcxGridDBBandedColumn;
    GridTVNFE_ASSINADA: TcxGridDBBandedColumn;
    GridTVNFE_TRANSMITIDA: TcxGridDBBandedColumn;
    GridTVNFE_AUTORIZADA: TcxGridDBBandedColumn;
    GridTVNFE_DANFE_IMPRESSO: TcxGridDBBandedColumn;
    GridTVN_SEQ_ECF: TcxGridDBBandedColumn;
    GridTVN_SERIE_ECF: TcxGridDBBandedColumn;
    GridTVNFE_PROTOCOLO: TcxGridDBBandedColumn;
    GridTVNFE_XML: TcxGridDBBandedColumn;
    GridTVNFE_RECIBO: TcxGridDBBandedColumn;
    GridTVDT_EMISSAO_NF: TcxGridDBBandedColumn;
    GridOrc: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    GridOrcTV: TcxGridDBBandedTableView;
    GridOrcLV: TcxGridLevel;
    GridOrcTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridOrcTVCODIGO: TcxGridDBBandedColumn;
    GridOrcTVDATA: TcxGridDBBandedColumn;
    GridOrcTVTOTAL: TcxGridDBBandedColumn;
    GridOrcTVOBSERVACAO: TcxGridDBBandedColumn;
    GridOrcTVVENDEDOR: TcxGridDBBandedColumn;
    GridOrcTVVLR_TOTAL: TcxGridDBBandedColumn;
    GridOrcTVDESC_ACRESC: TcxGridDBBandedColumn;
    GridOrcTVPESO: TcxGridDBBandedColumn;
    GridOrcTVVOLUME: TcxGridDBBandedColumn;
    GridOrcTVFORMA: TcxGridDBBandedColumn;
    GridOrcTVVALIDADE: TcxGridDBBandedColumn;
    GridOrcTVDESC_ACRESC_2: TcxGridDBBandedColumn;
    GridOrcTVCLIENTE: TcxGridDBBandedColumn;
    GridOrcTVNOME_CONSUMIDOR: TcxGridDBBandedColumn;
    GridOrcTVCOMPROMETER_ESTOQUE: TcxGridDBBandedColumn;
    GridOrcTVNOME_RAZAO: TcxGridDBBandedColumn;
    GridOrcTVNOME_VENDEDOR: TcxGridDBBandedColumn;
    GridOrcTVNOME_FORMA: TcxGridDBBandedColumn;
    GridOrcTVSTATUS: TcxGridDBBandedColumn;
    GridPessoa: TcxGrid;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    GridPessoaTV: TcxGridDBBandedTableView;
    GridPessoaLV: TcxGridLevel;
    GridPessoaTVEMPRESA: TcxGridDBBandedColumn;
    GridPessoaTVCODIGO: TcxGridDBBandedColumn;
    GridPessoaTVNOME_RAZAO: TcxGridDBBandedColumn;
    GridPessoaTVFANTASIA: TcxGridDBBandedColumn;
    GridPessoaTVCPF_CGC: TcxGridDBBandedColumn;
    GridPessoaTVBLOQUEADO: TcxGridDBBandedColumn;
    GridPessoaTVCLASSIFICACAO: TcxGridDBBandedColumn;
    GridPessoaTVUF: TcxGridDBBandedColumn;
    GridPessoaTVFONE: TcxGridDBBandedColumn;
    GridPessoaTVORDEM: TcxGridDBBandedColumn;
    GridPessoaTVENDERECO: TcxGridDBBandedColumn;
    GridPessoaTVEMAIL: TcxGridDBBandedColumn;
    GridPessoaTVRG_IE: TcxGridDBBandedColumn;
    GridPessoaTVREGIAO: TcxGridDBBandedColumn;
    GridPessoaTVNOME_REGIAO: TcxGridDBBandedColumn;
    GridPessoaTVATIVIDADE: TcxGridDBBandedColumn;
    GridPessoaTVNOME_ATIVIDADE: TcxGridDBBandedColumn;
    GridPessoaTVBAIRRO: TcxGridDBBandedColumn;
    GridPessoaTVNOME_BAIRRO: TcxGridDBBandedColumn;
    GridPessoaTVDT_NASCIMENTO: TcxGridDBBandedColumn;
    GridPessoaTVCELULAR: TcxGridDBBandedColumn;
    GridPessoaTVPESSOA_FJ: TcxGridDBBandedColumn;
    GridPessoaTVPESSOA: TcxGridDBBandedColumn;
    GridPessoaTVCIDADE: TcxGridDBBandedColumn;
    GridPessoaTVNOME_CIDADE: TcxGridDBBandedColumn;
    btnExportaExcel: TdxBarButton;
    PopPupGrid: TcxGridPopupMenu;
    GridOrcTVCOD_PEDIDO: TcxGridDBBandedColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActImportaOrcamentoExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure CmbClienteExit(Sender: TObject);
    procedure Panel3Enter(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edNDoctoOrcEnter(Sender: TObject);
    procedure edNDoctoOrcExit(Sender: TObject);
    procedure CmbClienteOrcButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbClienteOrcExit(Sender: TObject);
    procedure ActVendasExecute(Sender: TObject);
    procedure ActOrcamentosExecute(Sender: TObject);
    procedure ActPessoasExecute(Sender: TObject);
    procedure ActConsultaProdutoExecute(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure ActImprimeCustoExecute(Sender: TObject);
    procedure ActCancelaOrcExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    
    procedure FormActivate(Sender: TObject);
    procedure ActLocalizarProdutoExecute(Sender: TObject);
    procedure SelVendasBeforeOpen(DataSet: TDataSet);
    procedure GridPessoaTVEditKeyDown(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var Key: Word;
      Shift: TShiftState);
    procedure GridOrcTVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridOrcTVPESSOA_FJCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  private
    DragNode: TdxTreeListNode;
    { Private declarations }
    Procedure Filtrar;
    Procedure FiltrarOrcamento;
    Procedure SetaControles;
    //-----------------------------
  public
    Importa: Boolean ;
    { Public declarations }
  end;

var
  FrmSelVendas: TFrmSelVendas;
   Exc: Boolean;
implementation

uses
    Vendas_DM,
    Main,
    Usuarios_DM,
    Funcoes,
    Application_DM,
    Vendas_Form,
    EnviaCaixa_FRel,
    Cadastros_DM,
    LocalizarProd_DM,
    EntraNumeroOrcamento_Form,
    Localizar_Cliente,
    VendasItens_Form,
    Orcamentos_Form,
    OrcamentosItens_Form,
    Pendencias_Form,
    Financeiro_Dm,
    EnviaCaixaCusto_FRel,
  MensagemClassificacao_Form, FaturaVenda_Form,
  Localizar_Produto_Cadastro_Auto, Vendas_DM2;

  {$R *.DFM}

Procedure TFrmSelVendas.Filtrar;
Var
   Cont: Integer;
Begin
  //
  If DataSource.DataSet.Active Then
     DataSource.DataSet.Close;

       Cont := 0;
       SelVendas.Sql.Clear    ;
       SelVendas.Params.Clear ;

       SelVendas.Params.CreateParam (FtString, 'CNPJ', PtInput);
       SelVendas.Params.CreateParam (FtString, 'TP'  , PtInput);

       SelVendas.Sql.Add(' SELECT * FROM VER_VENDAS ( :CNPJ, :TP ) ');

       SelVendas.ParamByName ( 'TP' ).AsString := 'N';

       //VENDAS ENVIADAS NO CAIXA
       If DmApp.VER_ENVIADAS <> 'S'
       Then begin
            SelVendas.Params.CreateParam (FtString, 'ENV', PtInput);

            SelVendas.Sql.Add ( ' Where ENVIADA_CX = :ENV ' );

            SelVendas.ParamByName ( 'ENV' ).AsString := 'N' ;

            Cont := 1;
       end;

       //
       If trim(CmbCliente.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 SelVendas.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelVendas.Sql.Add ( ' Where PESSOA_FJ = :CLIENTE ' );

                 SelVendas.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END
            ELSE BEGIN
                 SelVendas.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 SelVendas.Sql.Add ( ' And PESSOA_FJ = :CLIENTE ' );

                 SelVendas.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END;
       end;

       //
       If edDtInicial.Text <> '  /  /    '
       Then begin
            If Cont = 0
            then begin
                 SelVendas.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelVendas.Sql.Add ( ' Where DATA >= :DTINI ' );

                 SelVendas.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 SelVendas.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 SelVendas.Sql.Add ( ' And DATA >= :DTINI ' );

                 SelVendas.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;
            end;
       end ;

       //
       If edDtFinal.Text <> '  /  /    '
       Then Begin
            If Cont = 0
            then begin
                 SelVendas.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 SelVendas.Sql.Add ( ' Where DATA <= :DTFIM ' );

                 SelVendas.ParamByName ( 'DTFIM' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 SelVendas.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 SelVendas.Sql.Add ( ' And DATA <= :DTFIM ' );

                 SelVendas.ParamByName ( 'DTFIM' ).AsDate := edDtFinal.Date;
            end;
       end;

       //
       If Trim(edNDocto.Text) <> ''
       Then begin
            If Cont = 0
            then begin
                 SelVendas.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelVendas.Sql.Add ( ' Where CODIGO >= :COD ' );

                 SelVendas.ParamByName ( 'COD' ).AsInteger := strtoint(trim(edNDocto.Text));

                 Cont := 1;
            end
            else begin
                 SelVendas.Params.CreateParam (FtInteger, 'COD', PtInput);

                 SelVendas.Sql.Add ( ' and CODIGO >= :COD ' );

                 SelVendas.ParamByName ( 'COD' ).AsInteger := strtoint(trim(edNDocto.Text));
            end;
       end;
       //Nome do cliente
       SelVendas.Sql.Add ( ' order by NOME ' );

      
  DataSource.DataSet.Open;
  GRID.SetFocus;
End;

Procedure TFrmSelVendas.FiltrarOrcamento;
var
   Cont: Integer;
   sFiltro : string;
Begin
  if DsOrcamentos.DataSet.Active then
     DsOrcamentos.DataSet.Close;

  with DmVendas do
  begin
    SelOrcamentos.close;
    SelOrcamentos.Sql.text := ' select oc.pessoa_fj, oc.codigo, oc.data, oc.total, oc.STATUS, oc.observacao, oc.vendedor, '+
                              ' (oc.total + oc.desc_acresc) vlr_total, oc.desc_acresc, oc.peso, oc.volume, oc.forma_pgto forma, oc.validade, '+
                              ' oc.desc_acresc_2,  oc.cliente, oc.nome_consumidor, oc.comprometer_estoque, psa.nome_razao, vdd.nome nome_vendedor, '+
                              ' pgt.nome nome_forma, '+
                              ' (select count(*) from fat_vendas vd where vd.cnpj = oc.cnpj and vd.orcamento = oc.codigo) cod_pedido '+
                              ' from fat_orcamentos oc   '+
                              ' left join glo_pessoas_fj psa on (psa.cnpj = oc.cnpj and psa.codigo = oc.pessoa_fj)'+
                              ' left join fat_vendedor vdd on (vdd.cnpj = oc.cnpj and vdd.codigo = oc.vendedor)'+
                              ' left join fin_formas_pagto pgt on (pgt.cnpj = oc.cnpj and pgt.codigo = oc.forma_pgto)'+
                              ' where oc.cnpj = :cnpj';



    sFiltro := '';
    If trim(CmbClienteOrc.Text) <> '' then
      sfiltro := ' and oc.PESSOA_FJ = '+trim(CmbClienteOrc.text);

    //-----------------------------Datas-----------------------------------//
    if (edDtInicialOrc.Text <> '  /  /    ') Then
      sFiltro := sFiltro +' and DATA >= '+QuotedStr(DateToStr(edDtInicialOrc.Date));

    if (edDtFinalOrc.Text <> '  /  /    ') then
        sFiltro := sFiltro + ' and DATA <= '+QuotedStr(DateToStr(edDtFinalOrc.Date));


    sFiltro := StringReplace(sFiltro,'/','.',[rfReplaceAll]);
    //-----------------------------Nº Docto---------------------------------//
    if (Trim(edNDoctoOrc.Text) <> '') then
       sFiltro := sFiltro + ' and oc.CODIGO = '+trim(edNDoctoOrc.Text);

    //-----------------------------Status---------------------------------//
    if (cmbStatus.Text = 'Aberto') then
       sFiltro := sFiltro + ' and coalesce(Status,1) = 1'
    else if (cmbStatus.Text = 'Parc. Faturado') then
       sFiltro := sFiltro + ' and coalesce(Status,1) = 2'
    else if (cmbStatus.Text = 'Faturado') then
       sFiltro := sFiltro +' and coalesce(Status,1) = 3'
    else if (cmbStatus.Text = 'Cancelado') then
       sFiltro := sFiltro + ' and coalesce(Status,1) = 4';

    SelOrcamentos.sql.Add(sFiltro+' order by NOME_RAZAO ');
    SelOrcamentos.Open;
  end;
end;

procedure TFrmSelVendas.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Deseja sair do formulário?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
     begin
          dmApp.ZeraCaixaUsuario(Owner);

          If DataSource.DataSet.Tag = 0 Then
            DataSource.DataSet.Close;

          If dsClientes.DataSet.Tag = 0 Then
          dsClientes.DataSet.Close;

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          Action := caFree;
          FrmSelVendas := Nil;


          FrmMain.PnlClient.Visible := True;
     END
     ELSE BEGIN
          Action := caNone;
     END;
     dmApp.ManFilterGrid(GridOrcTV,'C:\Sistemas\HelpStore\filtros\FiltroGridOrca.flt');
     dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGridPedidos.flt');
end;

procedure TFrmSelVendas.FormShow(Sender: TObject);
begin
     Importa := False ;
     IniciaComponentes ( Self as TForm );
     cmbStatus.ItemIndex := 0 ;
     Try
         If Not(dsClientes.DataSet.Active) Then
           dsClientes.DataSet.Open;

         If DmApp.CARREGAR_ARQ = 'S' THEN
         begin
              ( dsClientes.DataSet as TIbQuery ).FetchAll ;
              //Cria o Formulario de Localizar Cliente
              Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

              Frm_Localizar_Cliente.GRID.Options := Frm_Localizar_Cliente.GRID.Options + [egoLoadAllRecords] ;
         end
         ELSE
          Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;



         If FrmLocProdutoCadastro_Auto = Nil then
            FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;

         cmbCliente.SetFocus;
     Except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
                Exit;
           End
           Else Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
                Exit;
           End;
     End;
     SetaControles;
end;

procedure TFrmSelVendas.FormCreate(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;

  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  exc := ActExcluir.Enabled ;

  dmApp.ManFilterGrid(GridOrcTV,'C:\Sistemas\HelpStore\filtros\FiltroGridOrca.flt',false);
  dmApp.ManFilterGrid(GridTV,'C:\Sistemas\HelpStore\filtros\FiltroGridPedidos.flt',false);
end;

procedure TFrmSelVendas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelVendas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelVendas.DataSourceStateChange(Sender: TObject);
begin
  //
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmSelVendas.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelVendas.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelVendas.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelVendas.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelVendas.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelVendas.ActIncluirExecute(Sender: TObject);
begin
     If Pc.ActivePageIndex = 0 then
     begin
          //
          DMVendas2.NDocto := 0;
          DMVendas.Tag    := 1;
          //
          FrmVendas := TFrmVendas.Create(Self);
          FrmVendas.Showmodal ;
     end;

     If Pc.ActivePageIndex = 1 THEN
     begin
       //
       DMVendas2.NDocto := 0;
       DMVendas.Tag    := 1;
       //
       FrmOrcamentos := TFrmOrcamentos.Create(Self);
       FrmOrcamentos.DataSource.DataSet.Close ;
       FrmOrcamentos.DataSource.DataSet.Open ;
       FrmOrcamentos.DataSource.DataSet.Insert ;

       FrmOrcamentos.dsItens.DataSet.Close;
       FrmOrcamentos.dsItens.DataSet.Open;

       FrmOrcamentos.Showmodal ;
       FiltrarOrcamento;
     end;
end;

procedure TFrmSelVendas.ActAlterarExecute(Sender: TObject);
begin
     If pc.ActivePage = tbsVenda then
     begin
          If (Not DataSource.DataSet.Active) Or (DataSource.DataSet.RecordCount = 0) Then
          Begin
               MessageDlg('Você deve selecionar uma venda alterá-la !',MtError,[MbOk],0);
               cmbCliente.SetFocus;
               Exit;
          End;

          if (SelVendasCODIGO.AsInteger = 0) then
          begin
            Application.MessageBox('Selecione um pedido para edição','Aviso',mb_ok+mb_iconerror);
            exit;
          end;
          FrmVendas := TFrmVendas.Create(Self);
          FrmVendas.CodVenda := SelVendasCODIGO.AsInteger;
          FrmVendas.Showmodal;

     END;

     If pc.ActivePage = tbsOrcamento
     THEN BEGIN
          //
          If (Not DsOrcamentos.DataSet.Active) Or
             (DsOrcamentos.DataSet.RecordCount = 0) Then
          Begin
               ShowMessage('Você deve selecionar um Orçamento para alterá-lo !');
               CmbClienteOrc.SetFocus;
               Exit;
          End;
          //

          DMVendas2.NDocto   := DsOrcamentos.DataSet.FieldByName('CODIGO').Value;

          FrmOrcamentos := TFrmOrcamentos.Create(Self);
          FrmOrcamentos.Orcamentos.Close ;
          FrmOrcamentos.Orcamentos.parambyname('cnpj').value := dmApp.cnpj;
          FrmOrcamentos.Orcamentos.parambyname('codigo').value := DsOrcamentos.DataSet.FieldByName('CODIGO').Value;
          FrmOrcamentos.Orcamentos.Open ;
          FrmOrcamentos.Orcamentos.Edit ;

          FrmOrcamentos.dsItens.DataSet.Close;
          FrmOrcamentos.dsItens.DataSet.Open;

          FrmOrcamentos.Showmodal ;
     END;
end;

procedure TFrmSelVendas.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelVendas.ActExcluirExecute(Sender: TObject);
var
   Codigo: Integer;
begin
     IF DmApp.PEDE_SEN_GER_CX = 'S'
     THEN BEGIN
          Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

          FrmMensagemClassificacao.MEMO.Lines.Add ('DIGITE A SENHA GERENCIAL');

          FrmMensagemClassificacao.EdSenha.Visible := true ;
          FrmMensagemClassificacao.Label6.Visible  := true ;
          //Se o Nível ou a Classificacao exigir senha e não foi digitada
          if FrmMensagemClassificacao.Showmodal = MrCancel
          then Begin
               MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
               EXIT ;
          end;

          FrmMensagemClassificacao.Free ;
          FrmMensagemClassificacao := Nil;
     END;

     If FrmSelVendas.pc.ActivePage = tbsVenda
     THEN BEGIN
          If MessageDlg ('Excluir Esta Venda? = ' + inttostr(DataSource.DataSet.FieldByName('CODIGO').Value),MtInformation,[MbOk, MbCancel],1) = MrOk
          then begin
               Codigo := DataSource.DataSet.FieldByName('CODIGO').Value;//GRIDCODIGO.Field.Value ;
               DataSource.DataSet.Close ;
               DmApp.Exclui_Venda( DmApp.Cnpj, Codigo );
               DataSource.DataSet.Open  ;
          END;
     END;

     If FrmSelVendas.pc.ActivePage = tbsOrcamento
     THEN BEGIN
          If MessageDlg ('Excluir Este Orçamento? = ' + inttostr(DsOrcamentos.DataSet.FieldByName('CODIGO').Value),MtInformation,[MbOk, MbCancel],1) = MrOk
          then begin
               DmApp.Exclui_Orcamento ( DmApp.Cnpj, DmVendas.SelOrcamentosCodigo.value );
               FiltrarOrcamento;

          END;
     END;
end;

procedure TFrmSelVendas.ActImportaOrcamentoExecute(Sender: TObject);
Var
   Aux,Aux2, CodVenda: Integer;
begin
  Application.CreateForm(TFrmEntraNumeroOrcamento, FrmEntraNumeroOrcamento);

  FrmEntraNumeroOrcamento.LblTitulo.Caption := 'Orçamento';
  FrmEntraNumeroOrcamento.LBLPROMPT.Caption := 'Número'   ;
  if FrmEntraNumeroOrcamento.ShowModal = MROK then
  begin
    Aux := (FrmEntraNumeroOrcamento.Numero);
    Aux2 := FrmEntraNumeroOrcamento.CFOP;
  end;


  FrmEntraNumeroOrcamento.Free ;
  FrmEntraNumeroOrcamento := Nil;

  CodVenda := DmApp.Importa_Orcamento(Aux,aux2);

  If CodVenda > 0  then
  begin
    Importa := True ;

    DMVendas2.NDocto   := CodVenda;
    DMVendas.Tag      := 1;
    FrmVendas := TFrmVendas.Create(Self);
    FrmVendas.CodVenda   := CodVenda;
    FrmVendas.Showmodal ;

    Importa := False ;
  end
  else
       MessageDlg('Orçamento não encontrado',MtError,[MbOk],0);
end;

procedure TFrmSelVendas.ActImprimirExecute(Sender: TObject);
begin
     If pc.Activepageindex = 0
     then begin
          If DataSource.DataSet.FieldByName('CODIGO').Value > 0 then //CODIGO.Field.Value > 0
          begin
               FRelEnviaCaixa := TFRelEnviaCaixa.Create(Self);
               FRelEnviaCaixa.Tipo         := 'FATURA' ;
               FRelEnviaCaixa.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').Value;//GRIDCODIGO.Field.Value ;
               FRelEnviaCaixa.Aba := 0;
               FRelEnviaCaixa.Showmodal ;
          end;
     end
     else begin
          If pc.Activepageindex = 1
          then begin
               If DsOrcamentos.DataSet.FieldByName('CODIGO').Value > 0 then //GridOrcaCODIGO.Field.Value > 0
               begin
                    FRelEnviaCaixa := TFRelEnviaCaixa.Create(Self);

                    //ORCAMENTO EM SERIE "Grafico"
                    IF DmApp.ITENSORCAMENTOORC = 33 THEN
                         FRelEnviaCaixa.Tipo  := 'SERIE'
                    ELSE
                         FRelEnviaCaixa.Tipo  := 'ORCAMENTO' ;

                    FRelEnviaCaixa.PedidoNumero := DsOrcamentos.DataSet.FieldByName('CODIGO').Value;
                    FRelEnviaCaixa.Aba := 1;
                    FRelEnviaCaixa.Showmodal ;
               end;
          end;
     end;
end;

procedure TFrmSelVendas.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmSelVendas.CmbClienteExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbCliente.Text) <> ''
          then begin
               If SelPessoasFJ.state in [dsInactive] then
                  SelPessoasFJ.Open;
                  
               If SelPessoasFJ.locate ( 'CODIGO', CmbCliente.Text, [] )
               then begin
                    CmbCliente.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
                    lblnome.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
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

procedure TFrmSelVendas.Panel3Enter(Sender: TObject);
begin
     DsOrcamentos.DataSet.Close;
end;

procedure TFrmSelVendas.Panel3Exit(Sender: TObject);
begin
     FiltrarOrcamento;
end;

procedure TFrmSelVendas.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelVendas.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmSelVendas.edNDoctoOrcEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelVendas.edNDoctoOrcExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmSelVendas.CmbClienteOrcButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk ) Then
     Begin
       CmbClienteOrc.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
       lblnomeOrc.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end;
end;

procedure TFrmSelVendas.CmbClienteOrcExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbClienteOrc.Text) <> ''
          then begin
               If SelPessoasFJ.state in [dsInactive] then
                  SelPessoasFJ.Open;
                  
               If SelPessoasFJ.locate ( 'CODIGO', CmbClienteOrc.Text, [] )
               then begin
                    CmbClienteOrc.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
                    lblnomeOrc.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbClienteOrc.Text  := '' ;
                    lblnomeOrc.Caption  := '' ;
               end;
          end
          else begin
               CmbClienteOrc.Text  := ''  ;
               lblnomeOrc.Caption  := ''  ;
          end;
     end;
end;

procedure TFrmSelVendas.ActVendasExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 0;
     DsOrcamentos.DataSet.Close ;
     GridTV.ViewData.Expand(True);
     Grid.setfocus ;
end;

procedure TFrmSelVendas.ActOrcamentosExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 1;
     DataSource.DataSet.Close ;
     GridOrcTV.ViewData.Expand(True);
end;

procedure TFrmSelVendas.ActPessoasExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 2;
     DataSource.DataSet.Close ;
     DsOrcamentos.DataSet.Close ;
end;

procedure TFrmSelVendas.ActConsultaProdutoExecute(Sender: TObject);
begin
      FrmMAin.ActConsultaProduto.Execute ;
end;

procedure TFrmSelVendas.pcChange(Sender: TObject);
begin
  SetaControles;
end;

procedure TFrmSelVendas.ActImprimeCustoExecute(Sender: TObject);
begin
     If pc.Activepageindex = 0
     then begin
          If DataSource.DataSet.FieldByName('CODIGO').Value > 0
          then begin
               FRelEnviaCaixaOrcamento := TFRelEnviaCaixaOrcamento.Create(Self);
               FRelEnviaCaixaOrcamento.Tipo         := 'FATURA' ;
               FRelEnviaCaixaOrcamento.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').Value  ;
               FRelEnviaCaixaOrcamento.Showmodal ;
          end;
     end
     else begin
          If pc.Activepageindex = 1
          then begin
               If DsOrcamentos.DataSet.FieldByName('CODIGO').Value > 0
               then begin
                    FRelEnviaCaixaOrcamento := TFRelEnviaCaixaOrcamento.Create(Self);
                    FRelEnviaCaixaOrcamento.Tipo         := 'ORCAMENTO' ;
                    FRelEnviaCaixaOrcamento.PedidoNumero := DsOrcamentos.DataSet.FieldByName('CODIGO').Value ;
                    FRelEnviaCaixaOrcamento.Showmodal ;
               end;
          end;
     end;
end;

procedure TFrmSelVendas.ActCancelaOrcExecute(Sender: TObject);
var
  codigo : integer;
begin
   //---------------------------Orçamento não selecionado-----------------------------//
   if DMVendas.SelOrcamentosCodigo.asInteger <= 0 then
   begin
     application.messagebox('Selecione um registro para o cancelamento','Aviso',mb_ok+mb_iconinformation);
     exit;
   end;

   //---------------------------Orçamento já faturado--------------------------------//
   if DMVendas.SelOrcamentosStatus.asInteger = 3 then
   begin
     application.messagebox('Não é possível cancelar um orçamento faturado','Aviso',mb_ok+mb_iconinformation);
     exit;
   end;

   //---------------------------Orçamento já cancelado--------------------------------//
   if DMVendas.SelOrcamentosStatus.asInteger = 4 then
   begin
     application.messagebox('Orçamento já se encontra cancelado','Aviso',mb_ok+mb_iconinformation);
     exit;
   end;

   if (application.messagebox(Pchar('Tem certeza que deseja cancelar este orçamento: '+dmVendas.SelOrcamentosCodigo.asString+' ?'),'Aviso',mb_iconquestion + mb_yesno)) = id_yes then
   begin
      try
        ExecSql('update fat_orcamentos oc set oc.status = 4 where oc.cnpj = '+QuotedStr(dmApp.cnpj)+' and oc.codigo ='+IntToStr(DmVendas.SelOrcamentosCodigo.asInteger),dmApp.Transaction);
        application.messagebox('Orçamento cancelado com sucesso','Aviso',mb_ok+mb_iconinformation);
        FiltrarOrcamento;
      except
        on E : Exception do
          application.messagebox(Pchar('Orçamento não pode ser cancelado. Erro:'+E.message),'Aviso',mb_ok+mb_iconerror);
      end;
   end;
end;

procedure TFrmSelVendas.SetaControles;
begin
     CmbClienteOrc.Clear ;
     lblnomeOrc.Caption := '';
     edDtInicialOrc.Clear ;
     edDtFinalOrc.Clear ;
     edNDoctoOrc.Clear ;
     CmbCliente.Clear ;
     edDtInicial.Clear ;
     edDtFinal.Clear ;
     edNDocto.Clear ;
     lblnome.Caption := '';


     GroupLeg.visible := false;

     if pc.ActivePageIndex = 0 then
     begin
       PopPupGrid.Grid := Grid;
       ActCancelaOrc.enabled := false;
       ActImportaOrcamento.enabled := true;
     end
     else if pc.ActivePageIndex = 1 then
     begin
       PopPupGrid.Grid := GridOrc;
       ActImportaOrcamento.enabled := false;
       ActCancelaOrc.enabled := true;
       GroupLeg.visible := true;
     end
     else if pc.ActivePageIndex = 2 then
     begin
       PopPupGrid.Grid := GridPessoa;
       ActImprimir.enabled := false;
       ActAlterar.enabled := false;
       ActImportaOrcamento.enabled := false;
       ActCancelaOrc.enabled := false;
       ActIncluir.enabled := false;
       ActExcluir.enabled := false;
     end;


    if pc.ActivePageIndex <> 2 then
    begin
      ActImprimir.enabled := true;
      ActAlterar.enabled := true;
      ActIncluir.enabled := true;
      ActExcluir.enabled := true;
    end;
       // Se o Usuário for Supervisor
    If DMUsuarios.Direito = 'SUPERVISOR' Then
       DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
    Else If DMUsuarios.Objeto = Self.Name Then
       AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmSelVendas.ActExportarExcelExecute(Sender: TObject);
begin
  if pc.ActivePage = tbsVenda then
   dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Lista de Ordens de Pedidos.xls', Grid)
  else if pc.ActivePage = tbsOrcamento then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Lista de Orçamentos.xls', GridOrc)
  else if pc.ActivePage = tbsClientes then
    dmApp.Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Lista de Clientes.xls', GridPessoa);
end;



procedure TFrmSelVendas.FormActivate(Sender: TObject);
begin
    FrmSelVendas.WindowState := wsMaximized;
end;

procedure TFrmSelVendas.ActLocalizarProdutoExecute(Sender: TObject);
begin
 FrmMain.ActConsultaProduto.execute;
end;

procedure TFrmSelVendas.SelVendasBeforeOpen(DataSet: TDataSet);
begin
  (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
end;

procedure TFrmSelVendas.GridPessoaTVEditKeyDown(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  AEdit: TcxCustomEdit; var Key: Word; Shift: TShiftState);
begin
  if Key = 13  then
     ActAlteraCliente.Execute ;
end;

procedure TFrmSelVendas.GridOrcTVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   If Key = 13 then
     ActAlterar.Execute ;
end;

procedure TFrmSelVendas.GridOrcTVPESSOA_FJCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
  Value : Variant;
begin
  ACanvas.Canvas.Brush.Style := bsSolid;
  Value := GridOrcTV.ViewData.Records[AViewInfo.GridRecord.Index].Values[GridOrcTVSTATUS.Index];

  if (not VarIsNull(Value)) then
  begin
    if Value = 1 then
       ACanvas.Canvas.Brush.Color := $00CAF0D7
    else if (Value = 2) then
       ACanvas.Canvas.Brush.Color := $00B1D2E9
    else if (Value = 3) then
       ACanvas.Canvas.Brush.Color := $00FFE2A8
    else if (Value = 4) then
       ACanvas.Canvas.Brush.Color := $008080FF;
  end
end;

end.
