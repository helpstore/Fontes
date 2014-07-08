   unit NFeManutencao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,    RzDBCmbo,
  Menus,  dxTLClms, cxPropertiesStore, Grids, DBGrids, FileCtrl,
  dxmdaset, Variants, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  cxControls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxSkinsdxBarPainter, cxClasses, cxLabel, cxPC, cxButtons;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmNFeManutencao = class(TForm)
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
    dsProdutos: TDataSource;
    ActVendas: TAction;
    ActOrcamentos: TAction;
    ActPessoas: TAction;
    ActAlteraCliente: TAction;
    Panel4: TPanel;
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
    lblnomeOrc: TcxLabel;
    Label10: TcxLabel;
    CmbClienteOrc: TdxButtonEdit;
    cmbStatus: TRzComboBox;
    GridProdutos: TdxDBGrid;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    dxTabSheet3: TcxTabSheet;
    stgNFeMan: TcxPropertiesStore;
    pnlCamposPessoa: TPanel;
    TLCustomizePessoa: TdxTreeList;
    dxTreeListColumn1: TdxTreeListColumn;
    dxTreeListCheckColumn1: TdxTreeListCheckColumn;
    GridPessoa: TdxDBGrid;
    pnlCamposFaturamento: TPanel;
    TLCustomizeFaturamento: TdxTreeList;
    dxTreeListColumn2: TdxTreeListColumn;
    dxTreeListCheckColumn2: TdxTreeListCheckColumn;
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
    GRID: TdxDBGrid;
    ActExportarExcel: TAction;
    SaveDialog: TSaveDialog;
    ActExportarHtml: TAction;
    dxTabSheet1: TcxTabSheet;
    GridTrasportadoras: TdxDBGrid;
    btnExportar: TdxBarButton;
    btnSelecionar: TdxBarButton;
    ActExportarProdutos: TAction;
    mtbProduto: TdxMemData;
    mtbProdutoCOD_PRODUTO: TStringField;
    mtbProdutoDESCRICAO: TStringField;
    ActSeleciona: TAction;
    GridProdutosCNPJ: TdxDBGridMaskColumn;
    GridProdutosCODIGO: TdxDBGridMaskColumn;
    GridProdutosNOME: TdxDBGridMaskColumn;
    GridProdutosMARCA: TdxDBGridMaskColumn;
    GridProdutosGRUPO: TdxDBGridMaskColumn;
    GridProdutosSELECIONADO: TdxDBGridCheckColumn;
    GridProdutosEXPORTADO: TdxDBGridCheckColumn;
    ActExportar: TAction;
    mtbCliente: TdxMemData;
    mtbClienteCOD_CLIENTE: TIntegerField;
    mtbClienteNOME: TStringField;
    GridPessoaCODIGO: TdxDBGridMaskColumn;
    GridPessoaNOME_RAZAO: TdxDBGridMaskColumn;
    GridPessoaCNPJ: TdxDBGridMaskColumn;
    GridPessoaSELECIONADO: TdxDBGridCheckColumn;
    GridPessoaNFE_EXP: TdxDBGridCheckColumn;
    ActExportarClientes: TAction;
    mtbClienteCNPJ: TStringField;
    ActMarcarTodos: TAction;
    ActDesmarcaTodos: TAction;
    PopMarcar: TPopupMenu;
    MenuItem2: TMenuItem;
    MarcarmensagemcomoLida1: TMenuItem;
    dsTrasnportadora: TDataSource;
    GridTrasportadorasCODIGO: TdxDBGridMaskColumn;
    GridTrasportadorasNOME: TdxDBGridMaskColumn;
    GridTrasportadorasCPF_CNPJ: TdxDBGridMaskColumn;
    GridTrasportadorasCNPJ: TdxDBGridMaskColumn;
    mtbTransportadora: TdxMemData;
    mtbTransportadoraCODIGO: TIntegerField;
    mtbTransportadoraNOME: TStringField;
    mtbTransportadoraCPF_CNPJ: TStringField;
    ActExportarTransportadora: TAction;
    GridTrasportadorasNFE_EXP: TdxDBGridCheckColumn;
    GridTrasportadorasSELECIONADO: TdxDBGridCheckColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNUM_CUPOM: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDFECHADA: TdxDBGridMaskColumn;
    GRIDCANCELADA: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDDESC_ACRES: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDATA_CAIXA: TdxDBGridDateColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDCPF_CGC: TdxDBGridMaskColumn;
    GRIDID_AGRUPADOR: TdxDBGridMaskColumn;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridMaskColumn;
    GRIDUF: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDPROPRIEDADE: TdxDBGridMaskColumn;
    mtbFaturamentos: TdxMemData;
    mtbFaturamentosCODIGO: TIntegerField;
    mtbFaturamentosDATA: TDateField;
    mtbFaturamentosTOTAL: TBCDField;
    mtbFaturamentosCLIENTE: TStringField;
    mtbFaturamentosCPF_CNPJ: TStringField;
    mtbFaturamentosNUM_NF: TIntegerField;
    mtbFaturamentosDATA_CAIXA: TDateField;
    ActExportarFaturamentos: TAction;
    GRIDNFE_SELECIONADO: TdxDBGridCheckColumn;
    GroupLeg: TRzGroupBox;
    RzPanel1: TPanel;
    RzPanel3: TPanel;
    RzPanel2: TPanel;
    RzPanel4: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Enter(Sender: TObject);
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
    procedure GRDICLIENTESKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActConsultaProdutoExecute(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure GridProdutosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure GridProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure dxTreeListCheckColumn1ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure dxTreeListCheckColumn2ToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormActivate(Sender: TObject);
    procedure ActExportarProdutosExecute(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure ActExportarExecute(Sender: TObject);
    procedure ActExportarClientesExecute(Sender: TObject);
    procedure ActMarcarTodosExecute(Sender: TObject);
    procedure ActDesmarcaTodosExecute(Sender: TObject);
    procedure ActExportarTransportadoraExecute(Sender: TObject);
    procedure ActExportarFaturamentosExecute(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
  private
    DragNode: TdxTreeListNode;

    { Private declarations }
    Procedure Filtrar;
    Procedure FiltrarProdutos;
    Procedure SetaControles;
    //-----------------------------
    procedure Synchronize;
    procedure SynchronizePessoa;
    procedure SynchronizeFaturamento;
    procedure MarcarTodosProdutos(X:String);
    procedure MarcarTodosFaturamentos(X:String); 
    procedure MarcarTodosClientes(X:String);
    procedure MarcarTodosTransportadoras(X:String);
  public
    Importa: Boolean ;
    { Public declarations }
  end;

var
  FrmNFeManutencao: TFrmNFeManutencao;
  FinalArq, FinalCli, Exc: Boolean;
  sqlOriginal : string;
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
  MensagemClassificacao_Form,
  Localizar_Produto_Cadastro_Auto, Vendas_DM2, SelVendas_Form,
  Cadastros_Dm2, NFeGera_Produtos_Form, NFeGera_Clientes_Form,
  NFeGera_Transportadora_Form, NFeGera_Faturamentos_Form;

  {$R *.DFM}

Procedure TFrmNFeManutencao.Filtrar;
Var
   Cont: Integer;
   filtro : string;
Begin
  with DmCadastros2 do
  begin
    NFe_Faturamentos.Close;
    if trim(CmbCliente.Text) <> '' then
      filtro := ' and psa.codigo = '+CmbCliente.Text;

    if (edDtInicial.Date > 0) then
      filtro := filtro + ' and vd.data >= '''+FormatDateTime('mm/dd/yyyy',edDtInicial.Date)+'''';

    if (edDtFinal.Date > 0) then
      filtro := filtro + ' and vd.data <= '''+FormatDateTime('mm/dd/yyyy',edDtFinal.Date)+'''';

    if Trim(edNDocto.Text) <> '' then
      filtro := filtro + ' and vd.codigo = '+Trim(edNDocto.Text);

    NFe_Faturamentos.SelectSQL.text := sqlOriginal + Filtro +' order by vd.codigo, vd.pessoa_fj';
    NFe_Faturamentos.Open;
  end;
  GRID.SetFocus;
End;

Procedure TFrmNFeManutencao.FiltrarProdutos;
var
   Cont: Integer;
   sFiltro : string;
Begin
  if dsProdutos.DataSet.Active then
     dsProdutos.DataSet.Close;

  dmCadastros2.NFe_Produtos.Close;
  dmCadastros2.NFe_Produtos.Open;
 { with DmVendas do
  begin
    SelOrcamentos.close;
    SelOrcamentos.Sql.text := ' select oc.pessoa_fj, oc.codigo, oc.data, oc.total, coalesce(oc.Status,1) Status, oc.observacao, oc.vendedor, '+
                              ' (oc.total + oc.desc_acresc) vlr_total, oc.desc_acresc, oc.peso, oc.volume, '+
                              ' oc.forma_pgto forma, oc.validade, oc.desc_acresc_2,  oc.cliente, oc.nome_consumidor, '+
                              ' oc.comprometer_estoque, psa.nome_razao, vdd.nome nome_vendedor, pgt.nome nome_forma '+
                              ' from fat_orcamentos oc '+
                              ' left join glo_pessoas_fj psa on (psa.cnpj = oc.cnpj and psa.codigo = oc.pessoa_fj) '+
                              ' left join fat_vendedor vdd on (vdd.cnpj = oc.cnpj and vdd.codigo = oc.vendedor) '+
                              ' left join fin_formas_pagto pgt on (pgt.cnpj = oc.cnpj and pgt.codigo = oc.forma_pgto) '+
                              ' where oc.cnpj = :cnpj ';



    sFiltro := '';
    If trim(CmbClienteOrc.Text) <> '' then
      sfiltro := ' and oc.PESSOA_FJ = '+trim(CmbClienteOrc.text);






    //-----------------------------Status---------------------------------//
    if (cmbStatus.Text = 'Aberto') then
       sFiltro := sFiltro + ' and coalesce(Status,1) = 1'
    else if (cmbStatus.Text = 'Parc. Faturado') then
       sFiltro := sFiltro + ' coalesce(Status,1) = 2'
    else if (cmbStatus.Text = 'Faturado') then
       sFiltro := sFiltro +' coalesce(Status,1) = 3'
    else if (cmbStatus.Text = 'Cancelado') then
       sFiltro := sFiltro + ' coalesce(Status,1) = 4';

    SelOrcamentos.sql.Add(sFiltro+' order by NOME_RAZAO ');
    SelOrcamentos.Open;
  end;}
end;

procedure TFrmNFeManutencao.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Deseja Sair da Tela de Venda?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
     begin
          If DataSource.DataSet.Tag = 0 Then
            DataSource.DataSet.Close;

          If dsClientes.DataSet.Tag = 0 Then
          dsClientes.DataSet.Close;

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          Action := caFree;
          FrmNFeManutencao := Nil;

          dmApp.ZeraCaixaUsuario(owner);

          FrmMain.PnlClient.Visible := True;
     END
     ELSE BEGIN
          Action := caNone;
     END;
     Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
     if not DirectoryExists(Diretorio) then
     begin
       ForceDirectories(Diretorio);
       MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
     end;
     {SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGridProdutos.txt',GridProdutos.Filter);
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGridFatura.txt',GRID.Filter);}
     dmCadastros2.NFe_Faturamentos.Close;
     dmCadastros2.NFe_Faturamentos.SelectSQL.text := sqlOriginal;
end;

procedure TFrmNFeManutencao.FormShow(Sender: TObject);
begin
     Importa := False ;
     IniciaComponentes ( Self as TForm );
     FrmNFeManutencao.PopupMenu := PopMarcar;
     cmbStatus.ItemIndex := 0 ;

     Try
         with dmCadastros2 do
         begin
           NFe_Transportadoras.Close;
           NFe_Transportadoras.Open;

           NFe_Clientes.Close;
           NFe_Clientes.Open;

         end;
         If Frm_Localizar_Cliente = Nil then
            Frm_Localizar_Cliente := TFrm_Localizar_Cliente.Create(Application) ;

         If FrmLocProdutoCadastro_Auto = Nil then
            FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;

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

procedure TFrmNFeManutencao.FormCreate(Sender: TObject);
begin
  Pc.ActivePageIndex := 0;

  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);


  Synchronize;
  SynchronizePessoa;
  SynchronizeFaturamento;
  sqlOriginal := dmCadastros2.NFe_Faturamentos.SelectSQL.text;
  {if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGridOrca.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGridOrca.txt',Grid.Filter);
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGridFatura.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGridFatura.txt',Grid.Filter);}


end;

procedure TFrmNFeManutencao.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmNFeManutencao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmNFeManutencao.DataSourceStateChange(Sender: TObject);
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

procedure TFrmNFeManutencao.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmNFeManutencao.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmNFeManutencao.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmNFeManutencao.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmNFeManutencao.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmNFeManutencao.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmNFeManutencao.CmbClienteExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbCliente.Text) <> ''
          then begin
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

procedure TFrmNFeManutencao.Panel3Enter(Sender: TObject);
begin
     dsProdutos.DataSet.Close;
end;

procedure TFrmNFeManutencao.Panel3Exit(Sender: TObject);
begin
     FiltrarProdutos;
end;

procedure TFrmNFeManutencao.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmNFeManutencao.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmNFeManutencao.edNDoctoOrcEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmNFeManutencao.edNDoctoOrcExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmNFeManutencao.CmbClienteOrcButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk ) Then
     Begin
       CmbClienteOrc.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
       lblnomeOrc.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end;
end;

procedure TFrmNFeManutencao.CmbClienteOrcExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbClienteOrc.Text) <> ''
          then begin
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

procedure TFrmNFeManutencao.ActVendasExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 0;
     dsProdutos.DataSet.Close ;
     Grid.FullExpand;
     pnlCamposFaturamento.visible := false;
     Grid.setfocus ;
end;

procedure TFrmNFeManutencao.ActOrcamentosExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 1;
     DataSource.DataSet.Close ;
     GridProdutos.FullExpand;
     pnlCampos.visible := false;
end;

procedure TFrmNFeManutencao.ActPessoasExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 2;
     DataSource.DataSet.Close ;
     dsProdutos.DataSet.Close ;
end;

procedure TFrmNFeManutencao.GRDICLIENTESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then
         ActAlteraCliente.Execute ;
end;

procedure TFrmNFeManutencao.ActConsultaProdutoExecute(Sender: TObject);
begin
     FrmMAin.ActConsultaProduto.Execute ;
end;

procedure TFrmNFeManutencao.pcChange(Sender: TObject);
begin
  SetaControles;
end;

procedure TFrmNFeManutencao.SetaControles;
begin
     CmbClienteOrc.Clear ;
     lblnomeOrc.Caption := '';
     CmbCliente.Clear ;
     edDtInicial.Clear ;
     edDtFinal.Clear ;
     edNDocto.Clear ;
     lblnome.Caption := '';

     ActImprimir.enabled := true;
     ActAlterar.enabled := true;
     ActIncluir.enabled := true;
     ActExcluir.enabled := true;
     GroupLeg.visible := false;

     if pc.ActivePageIndex = 0 then
     begin
       ActImportaOrcamento.enabled := true;
       ActCancelaOrc.enabled := false;
       GroupLeg.visible := true;
     end
     else if pc.ActivePageIndex = 1 then
     begin
       ActImportaOrcamento.enabled := false;
       ActCancelaOrc.enabled := true;
     end
     else if pc.ActivePageIndex = 2 then
     begin
       ActImprimir.enabled := false;
       ActAlterar.enabled := false;
       ActImportaOrcamento.enabled := false;
       ActCancelaOrc.enabled := false;
       ActIncluir.enabled := false;
       ActExcluir.enabled := false;
     end;
end;

procedure TFrmNFeManutencao.GridProdutosCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Value : variant;
begin
    //if ANode.HasChildren then
    Exit;

    if ( not ASelected  ) AND ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))  then
    begin
    //  Value := ANode.Values[GridOrcaSTATUS.Index];

      if not VarIsNull(Value) then
      begin
        if Value = 1 then
           AColor := $00CAF0D7
        else if (Value = 2) then
           AColor := $00B1D2E9
        else if (Value = 3) then
           AColor := $00FFE2A8
        else if (Value = 4) then
           AColor := $008080FF
      end
    end;
end;

procedure TFrmNFeManutencao.GridProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = 13 then
         ActAlterar.Execute ;
end;

procedure TFrmNFeManutencao.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmNFeManutencao.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmNFeManutencao.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmNFeManutencao.ActConfCamposExecute(Sender: TObject);
begin
  if pc.ActivePage = tbsOrcamento then
    pnlCampos.visible := (not pnlCampos.visible);
  if pc.ActivePage = dxTabSheet3 then
    pnlCamposPessoa.visible := (not pnlCamposPessoa.visible);
  if pc.ActivePage = tbsVenda then
    pnlCamposFaturamento.visible := (not pnlCamposFaturamento.visible);
end;

procedure TFrmNFeManutencao.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to GridProdutos.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GridProdutos.Columns[I].Caption;
    if GridProdutos.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GridProdutos.Columns[I];
  end;
end;

procedure TFrmNFeManutencao.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmNFeManutencao.dxTreeListCheckColumn1ToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomizePessoa.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmNFeManutencao.SynchronizePessoa;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomizePessoa.ClearNodes;
  for I := 0 to GridPessoa.ColumnCount - 1 do
  begin
    Node := TLCustomizePessoa.Add;
    Node.Values[TLCustomizeColumn.Index] := GridPessoa.Columns[I].Caption;
    if GridPessoa.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GridPessoa.Columns[I];
  end;
end;

procedure TFrmNFeManutencao.dxTreeListCheckColumn2ToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomizeFaturamento.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmNFeManutencao.SynchronizeFaturamento;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomizeFaturamento.ClearNodes;
  for I := 0 to GRID.ColumnCount - 1 do
  begin
    Node := TLCustomizeFaturamento.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmNFeManutencao.ActExportarExcelExecute(Sender: TObject);
begin
  if pc.ActivePage = tbsVenda then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', GRID.SaveToXLS);
  if pc.ActivePage = tbsOrcamento then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', GridProdutos.SaveToXLS);
  if pc.ActivePage = dxTabSheet3 then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', GridPessoa.SaveToXLS);
end;

procedure TFrmNFeManutencao.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmNFeManutencao.FormActivate(Sender: TObject);
begin
   FrmNFeManutencao.WindowState := wsMaximized;
end;

procedure TFrmNFeManutencao.ActExportarProdutosExecute(Sender: TObject);
begin
   with dmCadastros2 do
   begin
     mtbProduto.Open;
     if not mtbProduto.IsEmpty then
        mtbProduto.data.Values.Clear;

     NFe_Produtos.DisableControls;
     NFe_Produtos.first;
     while not NFe_Produtos.eof do
     begin
       if NFe_ProdutosSELECIONADO.value = 'S' then
       begin
         mtbProduto.Append;
         mtbProdutoCOD_PRODUTO.value := NFe_ProdutosCODIGO.value;
         mtbProdutoDESCRICAO.value := NFe_ProdutosNOME.value;
         mtbProduto.Post;
       end;

       NFe_Produtos.Next;
     end;
     NFe_Produtos.EnableControls;
   end;

   if (mtbProduto.RecordCount <= 0) then
   begin
     Application.MessageBox('Impossível exportar. Não existem registros selecionados!','Aviso',mb_iconerror + mb_iconinformation);
     exit;
   end;

   frmNFeGeraProdutos := TfrmNFeGeraProdutos.Create(Self);
   frmNFeGeraProdutos.ShowModal;
   frmNFeGeraProdutos.Free;
   frmNFeGeraProdutos :=  nil;
end;

procedure TFrmNFeManutencao.btnExportarClick(Sender: TObject);
begin
  ActExportarProdutos.Execute;
end;

procedure TFrmNFeManutencao.ActSelecionaExecute(Sender: TObject);
var
  doc : boolean;
begin
  case pc.ActivePageIndex of
   0: begin
        with dmCadastros2 do
        begin
          if not (NFe_Faturamentos.State = dsEdit) then
            NFe_Faturamentos.Edit;

          if NFe_FaturamentosNFE_SELECIONADO.value = 'N' then
            NFe_FaturamentosNFE_SELECIONADO.value := 'S'
          else
            NFe_FaturamentosNFE_SELECIONADO.value := 'N';

          NFe_Faturamentos.post;
        end;
      end;
   1: begin
        with dmCadastros2 do
        begin
          if not (dmCadastros2.NFe_Produtos.State = dsEdit) then
            dmCadastros2.NFe_Produtos.Edit;

          if dmCadastros2.NFe_ProdutosSELECIONADO.value = 'N' then
            dmCadastros2.NFe_ProdutosSELECIONADO.value := 'S'
          else
            dmCadastros2.NFe_ProdutosSELECIONADO.value := 'N';

          dmCadastros2.NFe_Produtos.post;
        end;
      end;
   2:begin
       with dmCadastros2 do
       begin
         if (NFe_ClientesCNPJ.asString = '' ) then
         begin
           Application.MessageBox('Impossível selecionar. Registro não possui CPF/CNPJ definido.','Aviso',mb_ok+mb_iconerror);
           exit;
         end;

         if (NFe_ClientesNOME_RAZAO.AsString = '' ) then
         begin
           Application.MessageBox('Impossível selecionar. Registro não possui Nome/Razão Social definido.','Aviso',mb_ok+mb_iconerror);
           exit;
         end;

         if NFe_ClientesPESSOA.value = 'J' then
           doc := CGC_Valido(NFe_ClientesCNPJ.AsString)
         else
           doc := CPF_Valido(NFe_ClientesCNPJ.AsString);
         if not(doc) then
         begin
           Application.MessageBox('Impossível selecionar. Registro não possui um nº de documento válido','Aviso',mb_ok+mb_iconerror);
           exit;
         end;

         if not (dmCadastros2.NFe_Clientes.State = dsEdit) then
           dmCadastros2.NFe_Clientes.Edit;

         if dmCadastros2.NFe_ClientesSELECIONADO.value = 'N' then
           dmCadastros2.NFe_ClientesSELECIONADO.value := 'S'
         else
           dmCadastros2.NFe_ClientesSELECIONADO.value := 'N';

         dmCadastros2.NFe_Clientes.post;
       end
     end;
   3:begin
       with dmCadastros2 do
       begin
         if (NFe_TransportadorasCPF_CNPJ.value = '' ) then
         begin
           Application.MessageBox('Impossível selecionar. Registro não possui CPF/CNPJ definido.','Aviso',mb_ok+mb_iconerror);
           exit;
         end;

         if (NFe_TransportadorasNOME.value = '' ) then
         begin
           Application.MessageBox('Impossível selecionar. Registro não possui Nome/Razão Social definido.','Aviso',mb_ok+mb_iconerror);
           exit;
         end;

         if not (dmCadastros2.NFe_Transportadoras.State = dsEdit) then
           NFe_Transportadoras.Edit;

         if NFe_TransportadorasSELECIONADO.value = 'N' then
           NFe_TransportadorasSELECIONADO.value := 'S'
         else
           NFe_TransportadorasSELECIONADO.value := 'N';

         NFe_Transportadoras.Post;
       end
     end
  end;
end;

procedure TFrmNFeManutencao.ActExportarExecute(Sender: TObject);
begin
  case pc.ActivePageIndex of
   0 : ActExportarFaturamentos.Execute;
   1 : ActExportarProdutos.Execute;
   2 : ActExportarClientes.Execute;
   3 : ActExportarTransportadora.Execute;
  end;
end;

procedure TFrmNFeManutencao.ActExportarClientesExecute(Sender: TObject);
begin
  with dmCadastros2 do
  begin
    mtbCliente.Open;
    if not mtbCliente.IsEmpty then
      mtbCliente.data.Values.Clear;

    NFe_Clientes.DisableControls;
    NFe_Clientes.first;
    while not NFe_Clientes.eof do
    begin
      if NFe_ClientesSELECIONADO.value = 'S' then
      begin
        mtbCliente.Append;
        mtbClienteCOD_CLIENTE.value := NFe_ClientesCODIGO.value;
        mtbClienteNOME.value := NFe_ClientesNOME_RAZAO.value;
        mtbClienteCNPJ.value := NFe_ClientesCNPJ.value;
        mtbCliente.Post;
      end;

      NFe_Clientes.Next;
    end;
    NFe_Clientes.EnableControls;
  end;

   if (mtbCliente.RecordCount <= 0) then
   begin
     Application.MessageBox('Impossível exportar. Não existem registros selecionados!','Aviso',mb_iconerror + mb_iconinformation);
     exit;
   end;

   frmNFeGeraClientes := TfrmNFeGeraClientes.Create(Self);
   frmNFeGeraClientes.ShowModal;
   frmNFeGeraClientes.Free;
   frmNFeGeraClientes :=  nil;
end;

procedure TFrmNFeManutencao.ActMarcarTodosExecute(Sender: TObject);
begin
  case pc.ActivePageIndex of
   0 : MarcarTodosFaturamentos('S');
   1 : MarcarTodosProdutos('S');
   2 : MarcarTodosClientes('S');
   3 : MarcarTodosTransportadoras('S');
  end;
end;

procedure TFrmNFeManutencao.MarcarTodosClientes(X: String);
var
  doc : boolean;
begin
  with dmCadastros2 do
  begin
    NFe_Clientes.DisableControls;
    NFe_Clientes.first;
    while not NFe_Clientes.eof do
    begin
      if ((NFe_ClientesNOME_RAZAO.AsString <> '') and (NFe_ClientesCNPJ.AsString <> '')) then
      begin
        if NFe_ClientesPESSOA.value = 'J' then
          doc := CGC_Valido(NFe_ClientesCNPJ.AsString)
        else
          doc := CPF_Valido(NFe_ClientesCNPJ.AsString);

        if (doc) then
        begin
          NFe_Clientes.Edit;
          NFe_ClientesSELECIONADO.value := X ;
          NFe_Clientes.Post;
        end;
      end;
      NFe_Clientes.Next;
    end;
    NFe_Clientes.EnableControls;
  end;
end;

procedure TFrmNFeManutencao.MarcarTodosTransportadoras(X:String);
begin
  with dmCadastros2 do
  begin
    NFe_Transportadoras.DisableControls;
    NFe_Transportadoras.first;
    while not NFe_Transportadoras.eof do
    begin
      if ((NFe_TransportadorasNOME.AsString <> '') and (NFe_TransportadorasCPF_CNPJ.AsString <> '')) then
      begin
        NFe_Transportadoras.Edit;
        NFe_TransportadorasSELECIONADO.value := X ;
        NFe_Transportadoras.Post;
      end;
      NFe_Transportadoras.Next;
    end;
    NFe_Transportadoras.EnableControls;
  end;
end;

procedure TFrmNFeManutencao.MarcarTodosProdutos(X: String);
begin
  with dmCadastros2 do
  begin
     NFe_Produtos.DisableControls;
     NFe_Produtos.first;
     while not NFe_Produtos.eof do
     begin
       NFe_Produtos.Edit;
       NFe_ProdutosSELECIONADO.value := X;
       NFe_Produtos.Post;
       NFe_Produtos.Next;
     end;
     NFe_Produtos.EnableControls;
  end;
end;

procedure TFrmNFeManutencao.MarcarTodosFaturamentos(X: String);
begin
  with dmCadastros2 do
  begin
     NFe_Faturamentos.DisableControls;
     NFe_Faturamentos.first;
     while not NFe_Faturamentos.eof do
     begin
       NFe_Faturamentos.Edit;
       NFe_FaturamentosNFE_SELECIONADO.value := X;
       NFe_Faturamentos.Post;
       NFe_Faturamentos.Next;
     end;
     NFe_Faturamentos.EnableControls;
  end;
end;

procedure TFrmNFeManutencao.ActDesmarcaTodosExecute(Sender: TObject);
begin
  case pc.ActivePageIndex of
   0 : MarcarTodosFaturamentos('N');
   1 : MarcarTodosProdutos('N');
   2 : MarcarTodosClientes('N');
   3 : MarcarTodosTransportadoras('N');
  end;
end;

procedure TFrmNFeManutencao.ActExportarTransportadoraExecute(
  Sender: TObject);
begin
  with dmCadastros2 do
  begin
    mtbTransportadora.Open;
    if not mtbTransportadora.IsEmpty then
      mtbTransportadora.data.Values.Clear;

    NFe_Transportadoras.DisableControls;
    NFe_Transportadoras.first;
    while not NFe_Transportadoras.eof do
    begin
      if NFe_TransportadorasSELECIONADO.value = 'S' then
      begin
        mtbTransportadora.Append;
        mtbTransportadoraCODIGO.value := NFe_TransportadorasCODIGO.value;
        mtbTransportadoraNOME.value := NFe_TransportadorasNOME.value;
        mtbTransportadoraCPF_CNPJ.value := NFe_TransportadorasCPF_CNPJ.value;
        mtbTransportadora.Post;
      end;

      NFe_Transportadoras.Next;
    end;
    NFe_Transportadoras.EnableControls;
  end;

   if (mtbTransportadora.RecordCount <= 0) then
   begin
     Application.MessageBox('Impossível exportar. Não existem registros selecionados!','Aviso',mb_iconerror + mb_iconinformation);
     exit;
   end;

   frmNFeGeraTransportadora := TfrmNFeGeraTransportadora.Create(Self);
   frmNFeGeraTransportadora.ShowModal;
   frmNFeGeraTransportadora.Free;
   frmNFeGeraTransportadora :=  nil;
end;

procedure TFrmNFeManutencao.ActExportarFaturamentosExecute(
  Sender: TObject);
begin
  with dmCadastros2 do
  begin
    mtbFaturamentos.Open;
    if not mtbFaturamentos.IsEmpty then
      mtbFaturamentos.data.Values.Clear;

    NFe_Faturamentos.DisableControls;
    NFe_Faturamentos.first;
    while not NFe_Faturamentos.eof do
    begin
      if NFe_FaturamentosNFE_SELECIONADO.value = 'S' then
      begin
        mtbFaturamentos.Append;
        mtbFaturamentosCODIGO.value := NFe_FaturamentosCODIGO.value;
        mtbFaturamentosCLIENTE.value := NFe_FaturamentosNOME_RAZAO.value;
        mtbFaturamentosCPF_CNPJ.value := NFe_FaturamentosCPF_CGC.value;
        mtbFaturamentosNUM_NF.value := NFe_FaturamentosNUM_NF.Value;
        mtbFaturamentosDATA.Value := NFe_FaturamentosDATA.value;
        mtbFaturamentosDATA_CAIXA.value := NFe_FaturamentosDATA_CAIXA.value;
        mtbFaturamentosTOTAL.value := NFe_FaturamentosTOTAL.value;
        mtbFaturamentos.Post;
      end;

      NFe_Faturamentos.Next;
    end;
    NFe_Faturamentos.EnableControls;
  end;

   if (dmCadastros2.NFe_Faturamentos.RecordCount <= 0) then
   begin
     Application.MessageBox('Impossível exportar. Não existem registros selecionados!','Aviso',mb_iconerror + mb_iconinformation);
     exit;
   end;

   frmNFeGeraFaturamentos := TfrmNFeGeraFaturamentos.Create(Self);
   frmNFeGeraFaturamentos.ShowModal;
   frmNFeGeraFaturamentos.Free;
   frmNFeGeraFaturamentos :=  nil;
end;

procedure TFrmNFeManutencao.GRIDEnter(Sender: TObject);
begin
  Filtrar;
end;

end.
