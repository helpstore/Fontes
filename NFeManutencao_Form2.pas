  unit NFeManutencao_Form2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery,    RzDBCmbo,
  Menus,  dxTLClms, cxPropertiesStore, Grids, DBGrids, FileCtrl,
  dxmdaset, Variants,pcnConversao, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, cxControls, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
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

  TFrmNFeManutencao2 = class(TForm)
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
    ActExcluir: TAction;
    ActImprimir: TAction;
    ActVendas: TAction;
    ActOrcamentos: TAction;
    ActPessoas: TAction;
    ActAlteraCliente: TAction;
    Panel4: TPanel;
    ActConsultaProduto: TAction;
    ActImportaOrcamento: TAction;
    ActCancelaOrc: TAction;
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
    stgNFeAut: TcxPropertiesStore;
    Panel9: TPanel;
    ActExportarExcel: TAction;
    SaveDialog: TSaveDialog;
    ActExportarHtml: TAction;
    btnExportar: TdxBarButton;
    btnSelecionar: TdxBarButton;
    ActExportarProdutos: TAction;
    ActSeleciona: TAction;
    ActExportar: TAction;
    ActExportarClientes: TAction;
    ActMarcarTodos: TAction;
    ActDesmarcaTodos: TAction;
    dsItens: TDataSource;
    ActExportarTransportadora: TAction;
    ActExportarFaturamentos: TAction;
    GroupLeg: TRzGroupBox;
    RzPanel1: TPanel;
    RzPanel3: TPanel;
    RzPanel2: TPanel;
    RzPanel4: TPanel;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    RzBitBtn4: TcxButton;
    RzBitBtn5: TcxButton;
    ActEnviarNFe: TAction;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDNUM_CF: TdxDBGridMaskColumn;
    GRIDCANCELADA: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDDESC_ACRESC: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDATA_CX: TdxDBGridDateColumn;
    GRIDSELECIONADO: TdxDBGridMaskColumn;
    GRIDID_AGRUPADOR: TdxDBGridMaskColumn;
    GRIDCFOP: TdxDBGridMaskColumn;
    GRIDDEST_CPF_CNPJ: TdxDBGridMaskColumn;
    GRIDDEST_CEP: TdxDBGridMaskColumn;
    GRIDDEST_LOGRADOURO: TdxDBGridMaskColumn;
    GRIDDEST_NUMERO: TdxDBGridMaskColumn;
    GRIDDEST_COMPLEMENTO: TdxDBGridMaskColumn;
    GRIDDEST_BAIRRO: TdxDBGridMaskColumn;
    GRIDDEST_COD_CIDADE: TdxDBGridMaskColumn;
    GRIDDEST_CIDADE: TdxDBGridMaskColumn;
    GRIDDEST_FONE: TdxDBGridMaskColumn;
    GRIDDEST_UF: TdxDBGridMaskColumn;
    GRIDDEST_IE: TdxDBGridMaskColumn;
    GRIDDEST_RAZAO_SOCIAL: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridMaskColumn;
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
    dxTabSheet1: TcxTabSheet;
    GridItens: TdxDBGrid;
    GridItensNITEM: TdxDBGridMaskColumn;
    GridItensCFOP: TdxDBGridMaskColumn;
    GridItensCPROD: TdxDBGridMaskColumn;
    GridItensCXPRODUTO: TdxDBGridMaskColumn;
    GridItensQCOM: TdxDBGridMaskColumn;
    GridItensUCOM: TdxDBGridMaskColumn;
    GridItensVPROD: TdxDBGridMaskColumn;
    GridItensVUNCOM: TdxDBGridMaskColumn;
    GridItensQTRIB: TdxDBGridMaskColumn;
    GridItensUTRIB: TdxDBGridMaskColumn;
    GridItensVUTRIB: TdxDBGridMaskColumn;
    GridItensTRIB_MODALIDADE: TdxDBGridMaskColumn;
    GridItensPICMS: TdxDBGridCurrencyColumn;
    GridItensVICMS: TdxDBGridCurrencyColumn;
    GridItensVBC: TdxDBGridCurrencyColumn;
    GridItensCST: TdxDBGridMaskColumn;
    pnlCamposFaturamento: TPanel;
    TLCustomizeFaturamento: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    RzBitBtn1: TcxButton;
    actDepec: TAction;
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
    procedure Panel3Exit(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edNDoctoOrcEnter(Sender: TObject);
    procedure edNDoctoOrcExit(Sender: TObject);
    procedure ActVendasExecute(Sender: TObject);
    procedure ActOrcamentosExecute(Sender: TObject);
    procedure ActPessoasExecute(Sender: TObject);
    procedure GRDICLIENTESKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActConsultaProdutoExecute(Sender: TObject);
    procedure GridProdutosCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure GridProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TLCustomizeFaturamentoDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeFaturamentoStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormActivate(Sender: TObject);
    procedure btnExportarClick(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure ActMarcarTodosExecute(Sender: TObject);
    procedure ActDesmarcaTodosExecute(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure ActEnviarNFeExecute(Sender: TObject);
    procedure TLCustomizeFaturamentoDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
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
  FrmNFeManutencao2: TFrmNFeManutencao2;
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
  NFeGera_Transportadora_Form, NFeGera_Faturamentos_Form,
  NFeManutencao_Form;

  {$R *.DFM}

Procedure TFrmNFeManutencao2.Filtrar;
Var
   Cont: Integer;
   filtro : string;
Begin
  with DmCadastros2 do
  begin
    NFe_Faturamentos2.Close;
    if trim(CmbCliente.Text) <> '' then
      filtro := ' and codigo = '+CmbCliente.Text;

    if (edDtInicial.Date > 0) then
      filtro := filtro + ' and data >= '''+FormatDateTime('mm/dd/yyyy',edDtInicial.Date)+'''';

    if (edDtFinal.Date > 0) then
      filtro := filtro + ' and data <= '''+FormatDateTime('mm/dd/yyyy',edDtFinal.Date)+'''';

    if Trim(edNDocto.Text) <> '' then
      filtro := filtro + ' and codigo = '+Trim(edNDocto.Text);

    NFe_Faturamentos2.SelectSQL.text := sqlOriginal + Filtro +' order by codigo, psa_codigo';
    NFe_Faturamentos2.Open;

    NFe_Faturamentos_Itens.Open;
  end;
  GRID.SetFocus;
End;

Procedure TFrmNFeManutencao2.FiltrarProdutos;
Begin
end;

procedure TFrmNFeManutencao2.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Deseja Sair da Tela de Venda?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
     begin
          If DataSource.DataSet.Tag = 0 Then
            DataSource.DataSet.Close;

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
     dmCadastros2.NFe_Faturamentos2.Close;
     dmCadastros2.NFe_Faturamentos2.SelectSQL.text := sqlOriginal;
end;

procedure TFrmNFeManutencao2.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     if (dmapp.ACBrNFe.Configuracoes.Arquivos.PathCan = '') then
     begin
       Application.MessageBox('Diretório de Arquivos NFe Cancelados não definido. Verifique','Aviso',mb_ok+mb_iconerror);
       Close;
     end;

     if (dmapp.ACBrNFe.Configuracoes.Arquivos.PathNFe = '') then
     begin
       Application.MessageBox('Diretório de Arquivos NFe não definido. Verifique','Aviso',mb_ok+mb_iconerror);
       Close;
     end;

     if (dmapp.ACBrNFe.Configuracoes.Arquivos.PathInu = '') then
     begin
       Application.MessageBox('Diretório de Arquivos NFe Inutizadas não definido. Verifique','Aviso',mb_ok+mb_iconerror);
       Close;
     end;

     if (dmapp.ACBrNFe.Configuracoes.Arquivos.PathDPEC = '') then
     begin
       Application.MessageBox('Diretório de Arquivos NFe DPEC não definido. Verifique','Aviso',mb_ok+mb_iconerror);
       Close;
     end;


     Try
         If Frm_Localizar_Cliente = Nil then
            Frm_Localizar_Cliente := TFrm_Localizar_Cliente.Create(Application) ;

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

procedure TFrmNFeManutencao2.FormCreate(Sender: TObject);
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
  sqlOriginal := dmCadastros2.NFe_Faturamentos2.SelectSQL.text;
  {if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGridOrca.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGridOrca.txt',Grid.Filter);
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGridFatura.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGridFatura.txt',Grid.Filter);}


end;

procedure TFrmNFeManutencao2.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmNFeManutencao2.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmNFeManutencao2.DataSourceStateChange(Sender: TObject);
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

procedure TFrmNFeManutencao2.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmNFeManutencao2.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmNFeManutencao2.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmNFeManutencao2.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmNFeManutencao2.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmNFeManutencao2.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMVendas.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmNFeManutencao2.CmbClienteExit(Sender: TObject);
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

procedure TFrmNFeManutencao2.Panel3Exit(Sender: TObject);
begin
     FiltrarProdutos;
end;

procedure TFrmNFeManutencao2.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmNFeManutencao2.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmNFeManutencao2.edNDoctoOrcEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmNFeManutencao2.edNDoctoOrcExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmNFeManutencao2.ActVendasExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 0;
     Grid.FullExpand;
     pnlCamposFaturamento.visible := false;
     Grid.setfocus ;
end;

procedure TFrmNFeManutencao2.ActOrcamentosExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 1;
     DataSource.DataSet.Close ;
end;

procedure TFrmNFeManutencao2.ActPessoasExecute(Sender: TObject);
begin
     Pc.ActivePageIndex := 2;
     DataSource.DataSet.Close ;
end;

procedure TFrmNFeManutencao2.GRDICLIENTESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then
         ActAlteraCliente.Execute ;
end;

procedure TFrmNFeManutencao2.ActConsultaProdutoExecute(Sender: TObject);
begin
     FrmMAin.ActConsultaProduto.Execute ;
end;

procedure TFrmNFeManutencao2.SetaControles;
begin
end;

procedure TFrmNFeManutencao2.GridProdutosCustomDrawCell(Sender: TObject;
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

procedure TFrmNFeManutencao2.GridProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = 13 then
         ActAlterar.Execute ;
end;

procedure TFrmNFeManutencao2.TLCustomizeFaturamentoDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmNFeManutencao2.TLCustomizeFaturamentoStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmNFeManutencao2.ActConfCamposExecute(Sender: TObject);
begin
  pnlCamposFaturamento.visible := (not pnlCamposFaturamento.visible);
end;

procedure TFrmNFeManutencao2.Synchronize;
begin
end;

procedure TFrmNFeManutencao2.SynchronizePessoa;
begin
end;

procedure TFrmNFeManutencao2.SynchronizeFaturamento;
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

procedure TFrmNFeManutencao2.ActExportarExcelExecute(Sender: TObject);
begin
  if pc.ActivePage = tbsVenda then
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'ExpGrid.xls', GRID.SaveToXLS);
end;

procedure TFrmNFeManutencao2.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmNFeManutencao2.FormActivate(Sender: TObject);
begin
   FrmNFeManutencao2.WindowState := wsMaximized;
end;

procedure TFrmNFeManutencao2.btnExportarClick(Sender: TObject);
begin
  ActExportarProdutos.Execute;
end;

procedure TFrmNFeManutencao2.ActSelecionaExecute(Sender: TObject);
var
  doc : boolean;
begin
        with dmCadastros2 do
        begin
          if not (NFe_Faturamentos2.State = dsEdit) then
            NFe_Faturamentos2.Edit;

          {if NFe_Faturamentos2.NFE_SELECIONADO.value = 'N' then
            NFe_FaturamentosNFE_SELECIONADO.value := 'S'
          else
            NFe_FaturamentosNFE_SELECIONADO.value := 'N';

          NFe_Faturamentos.post; }
        end;
end;

procedure TFrmNFeManutencao2.ActMarcarTodosExecute(Sender: TObject);
begin
   MarcarTodosFaturamentos('S');
end;

procedure TFrmNFeManutencao2.MarcarTodosClientes(X: String);
begin
end;

procedure TFrmNFeManutencao2.MarcarTodosTransportadoras(X:String);
begin
end;

procedure TFrmNFeManutencao2.MarcarTodosProdutos(X: String);
begin
end;

procedure TFrmNFeManutencao2.MarcarTodosFaturamentos(X: String);
begin
  with dmCadastros2 do
  begin
     NFe_Faturamentos2.DisableControls;
     NFe_Faturamentos2.first;
     while not NFe_Faturamentos2.eof do
     begin
       NFe_Faturamentos2.Edit;
       NFe_Faturamentos2SELECIONADO.value := X;
       NFe_Faturamentos2.Post;
       NFe_Faturamentos2.Next;
     end;
     NFe_Faturamentos2.EnableControls;
  end;
end;

procedure TFrmNFeManutencao2.ActDesmarcaTodosExecute(Sender: TObject);
begin
 MarcarTodosFaturamentos('N');
end;

procedure TFrmNFeManutencao2.GRIDEnter(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmNFeManutencao2.ActEnviarNFeExecute(Sender: TObject);
var
 vAux : String;
 ok :boolean;
begin
  with dmApp do
  begin
    ACBrNFe.NotasFiscais.Clear;

    with ACBrNFe.NotasFiscais.Add.NFe do
    begin
      infNFe.ID := dmCadastros2.NFe_Faturamentos2CODIGO.asString;

      Ide.natOp     := dmCadastros2.NFe_Faturamentos2NATUREZA.value;
      Ide.nNF       := dmCadastros2.NFe_Faturamentos2CODIGO.value;
      Ide.cNF       := dmCadastros2.NFe_Faturamentos2CODIGO.value;
      Ide.modelo    := 55;
      Ide.serie     := 1;
      Ide.dEmi      := Date;
      Ide.dSaiEnt   := Date;
      Ide.tpAmb     := StrToTpAmb(Ok,IntToStr(StrToInt(DMApp.NFE_WS_AMBIENTE)+1));
      Ide.tpNF      := tnSaida;
      Ide.indPag    := ipVista;
      Ide.verProc   := '1.0.0.0';
      Ide.cUF       := 50; //mato grosso do sul
      Ide.cMunFG    := StrToInt(DMApp.NFE_EMIT_COD_CIDADE);

      Emit.CNPJCPF           := DMApp.NFE_EMIT_CNPJ;
      Emit.IE                := DMApp.NFE_EMIT_INSC_ESTADUAL;
      Emit.xNome             := DMApp.NFE_EMIT_RAZAO_SOCIAL;
      Emit.xFant             := DMApp.NFE_EMIT_FANTASIA;
      Emit.EnderEmit.fone    := DMApp.NFE_EMIT_FONE;
      Emit.EnderEmit.CEP     := StrToInt(DMApp.NFE_EMIT_CEP);
      Emit.EnderEmit.xLgr    := DMApp.NFE_EMIT_LOGRADOURO;
      Emit.EnderEmit.nro     := DMApp.NFE_EMIT_NUMERO;
      Emit.EnderEmit.xCpl    := DMApp.NFE_EMIT_COMPLEMENTO;
      Emit.EnderEmit.xBairro := DMApp.NFE_EMIT_BAIRRO;
      Emit.EnderEmit.cMun    := StrToInt(DMApp.NFE_EMIT_COD_CIDADE);
      Emit.EnderEmit.xMun    := DMApp.NFE_EMIT_CIDADE;
      Emit.EnderEmit.UF      := DMApp.NFE_EMIT_UF;
      Emit.enderEmit.cPais   := 1058;
      Emit.enderEmit.xPais   := 'BRASIL';

      Dest.CNPJCPF           := dmCadastros2.NFe_Faturamentos2DEST_CPF_CNPJ.value;

      if (dmCadastros2.NFe_Faturamentos2DEST_CEP.AsString = '') then
      begin
        Application.Messagebox('Defina um CEP para o endereço do destinatário o','Aviso',mb_iconerror + mb_ok);
        exit;
      end;
      Dest.EnderDest.CEP     := StrToInt(StringReplace(dmCadastros2.NFe_Faturamentos2DEST_CEP.AsString,'-','',[rfReplaceAll]));

      Dest.EnderDest.xLgr    := dmCadastros2.NFe_Faturamentos2DEST_LOGRADOURO.value;

      if (dmCadastros2.NFe_Faturamentos2DEST_NUMERO.AsString = '') then
      begin
        Application.Messagebox('Defina um número para o endereço do destinatário ','Aviso',mb_iconerror + mb_ok);
        exit;
      end;

      Dest.EnderDest.nro     := dmCadastros2.NFe_Faturamentos2DEST_NUMERO.AsString;
      Dest.EnderDest.xCpl    := dmCadastros2.NFe_Faturamentos2DEST_COMPLEMENTO.value ;
      Dest.EnderDest.xBairro := dmCadastros2.NFe_Faturamentos2DEST_BAIRRO.value;
      Dest.EnderDest.cMun    := dmCadastros2.NFe_Faturamentos2DEST_COD_CIDADE.value;
      Dest.EnderDest.xMun    := dmCadastros2.NFe_Faturamentos2DEST_CIDADE.value;
      Dest.EnderDest.UF      := dmCadastros2.NFe_Faturamentos2DEST_UF.value;
      Dest.EnderDest.Fone    := dmCadastros2.NFe_Faturamentos2DEST_FONE.value;

      if (dmCadastros2.NFe_Faturamentos2DEST_IE.AsString = '') then
      begin
        Application.Messagebox('Defina uma Insc. Estadual do destinatário ','Aviso',mb_iconerror + mb_ok);
        exit;
      end;
      Dest.IE                := StringReplace(StringReplace(dmCadastros2.NFe_Faturamentos2DEST_IE.value,'.','',[rfReplaceAll]),'-','',[rfReplaceAll]);
      Dest.xNome             := dmCadastros2.NFe_Faturamentos2DEST_RAZAO_SOCIAL.value;
      Dest.EnderDest.cPais   := 1058;
      Dest.EnderDest.xPais   := 'BRASIL';

      dmCadastros2.NFe_Faturamentos_Itens.Open;
      dmCadastros2.NFe_Faturamentos_Itens.First;
      while not dmCadastros2.NFe_Faturamentos_Itens.Eof do
      begin
          with Det.Add do
          begin
            infAdProd     := '';
            Prod.nItem    := dmCadastros2.NFe_Faturamentos_ItensNITEM.Value;
            Prod.CFOP     := dmCadastros2.NFe_Faturamentos_ItensCFOP.asString;
            Prod.cProd    := dmCadastros2.NFe_Faturamentos_ItensCPROD.value;
            Prod.xProd    := dmCadastros2.NFe_Faturamentos_ItensCXPRODUTO.value;
            Prod.qCom     := Arredonda(dmCadastros2.NFe_Faturamentos_ItensQCOM.value,2);
            Prod.uCom     := dmCadastros2.NFe_Faturamentos_ItensUCOM.value;
            Prod.vProd    := dmCadastros2.NFe_Faturamentos_ItensVPROD.value;
            Prod.vUnCom   := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVUNCOM.value,2);
            Prod.qTrib    := Arredonda(dmCadastros2.NFe_Faturamentos_ItensQTRIB.value,2);
            Prod.uTrib    := dmCadastros2.NFe_Faturamentos_ItensUTRIB.value;
            Prod.vUnTrib  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVUTRIB.value,2);
            with Imposto do
            begin
              with ICMS do
              begin
                if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst00') then
                  CST := cst00
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst20') then
                  CST := cst20
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst40') then
                  CST := cst40
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst41') then
                  CST := cst41
                else if (dmCadastros2.NFe_Faturamentos_ItensCST.Value = 'cst60') then
                  CST := cst60;

                if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Margem Valor Agregado (%).') then
                  ICMS.modBC  := dbiMargemValorAgregado
                else if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Pauta (Valor).') then
                  ICMS.modBC  := dbiPauta
                else if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Preço Tabelado Máx. (Valor).') then
                  ICMS.modBC  := dbiPrecoTabelado
                else if (dmCadastros2.NFe_Faturamentos_ItensTRIB_MODALIDADE.value = 'Valor da operação.') then
                  ICMS.modBC  := dbiValorOperacao;

                ICMS.pICMS  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensPICMS.value,2);
                ICMS.vICMS  := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVICMS.Value,2);
                ICMS.vBC    := Arredonda(dmCadastros2.NFe_Faturamentos_ItensVBC.value,2);
              end;
              IPI.CST := ipi01;
            end;
          end;
          dmCadastros2.NFe_Faturamentos_Itens.Next;
      end;

      Total.ICMSTot.vBC   := Arredonda(dmCadastros2.NFe_Faturamentos2BASE_ICM.value,2);
      Total.ICMSTot.vICMS := Arredonda(dmCadastros2.NFe_Faturamentos2ICM.value,2);

      Total.ICMSTot.vBCST   := Arredonda(dmCadastros2.NFe_Faturamentos2BASE_ICM_SUBST.value,2);

      Total.ICMSTot.vNF   := Arredonda(dmCadastros2.NFe_Faturamentos2TOTAL_NF.value,2);
      Total.ICMSTot.vProd := Arredonda(dmCadastros2.NFe_Faturamentos2TOTAL.value,2);
    end;
    ACBrNFe.NotasFiscais.Valida;
    ACBrNFe.NotasFiscais.Items[0].SaveToFile;
    ACBrNFe.Enviar(0);
    
    ShowMessage(ACBrNFe.WebServices.Retorno.Protocolo);
    ShowMessage(ACBrNFe.WebServices.Retorno.Recibo);

   // MemoResp.Lines.Text := UTF8Encode(ACBrNFe.WebServices.Retorno.RetWS);
   // LoadXML(MemoResp, WBResposta);

     ACBrNFe.NotasFiscais.Clear;
  end
end;

procedure TFrmNFeManutencao2.TLCustomizeFaturamentoDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomizeFaturamento.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomizeFaturamento.FocusedNode <> nil) then
    column.Index := TLCustomizeFaturamento.FocusedNode.AbsoluteIndex
  else column.Index := 0;

end;

procedure TFrmNFeManutencao2.TLCustomizeIsVisibleToggleClick(
  Sender: TObject; const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomizeFaturamento.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmNFeManutencao2.TLCustomizeDragDrop(Sender, Source: TObject;
  X, Y: Integer);
var
  column : TdxTreeListColumn;
begin
  DragNode.MoveTo(TLCustomizeFaturamento.FocusedNode, natlInsert);
  column := TdxTreeListColumn(DragNode.Data);
  if (TLCustomizeFaturamento.FocusedNode <> nil) then
    column.Index := TLCustomizeFaturamento.FocusedNode.AbsoluteIndex
  else column.Index := 0;
end;

end.
