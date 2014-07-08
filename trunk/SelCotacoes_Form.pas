 unit SelCotacoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery, IBSQL, dxTLClms, FileCtrl,
  cxPropertiesStore, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxControls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxSkinsdxBarPainter, cxClasses, cxLabel, cxPC, cxButtons, cxMaskEdit,
  cxButtonEdit, cxTextEdit, cxDropDownEdit, cxCalendar;

type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmSelCotacoes = class(TForm)
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
    ActIncluir: TAction;
    ActAlterar: TAction;
    Bevel1: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    kdofoco: TAction;
    ActExcluir: TAction;
    ActImprimir: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    BtnExtornaVenda: TcxButton;
    RzBitBtn1: TcxButton;
    RzBitBtn4: TcxButton;
    ActFechaCotacao: TAction;
    ActEstorna: TAction;
    Panel5: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    lblnome: TcxLabel;
    rdAberto: TRadioButton;
    rdFechado: TRadioButton;
    Panel3: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    BtnExportarExcel: TcxButton;
    BtnExportarHtml: TcxButton;
    RzBitBtn5: TcxButton;
    ActConfCampos: TAction;
    ActExportarExcel: TAction;
    ActExportarHtml: TAction;
    SaveDialog: TSaveDialog;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDUSUARIO: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDDESC_ACRESC: TdxDBGridMaskColumn;
    GRIDFECHADO: TdxDBGridMaskColumn;
    GRIDOBSERVACAO: TdxDBGridMaskColumn;
    Panel15: TPanel;
    stgFrmSelCotacoes: TcxPropertiesStore;
    edNDocto: TcxTextEdit;
    CmbFornecedor: TcxButtonEdit;
    edDtInicial: TcxDateEdit;
    edDtFinal: TcxDateEdit;
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
    procedure FormActivate(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure GRID2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure CmbFornecedorButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbFornecedorExit(Sender: TObject);
    procedure edNDoctoEnter(Sender: TObject);
    procedure edNDoctoExit(Sender: TObject);
    procedure ActFechaCotacaoExecute(Sender: TObject);
    procedure ActEstornaExecute(Sender: TObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    Procedure Filtrar;
    procedure Synchronize;    
  public
    { Public declarations }
  end;

var
  FrmSelCotacoes: TFrmSelCotacoes;

implementation

uses Vendas_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     Cotacoes_Form,
     EnviaCaixa_FRel,
     Cadastros_DM,
     LocalizarProd_DM,
     Localizar_Cliente, Cotacao_FRel,
  Localizar_Fornecedor, Financeiro_Dm, Localizar_Produto_Cadastro_Auto;

  {$R *.DFM}

Procedure TFrmSelCotacoes.Filtrar;
var
  sqlFiltro : string;
Begin
  with dmVendas do
  begin
    SelCotacoes.close;
    sqlFiltro := '';
    SelCotacoes.sql.text := ' SELECT CO.CNPJ, CO.PESSOA_FJ, P.NOME_RAZAO, CO.CODIGO, CO.DATA, CO.USUARIO, CO.TOTAL,'+
                            ' CO.DESC_ACRESC, CO.FECHADO, OBSERVACAO FROM FAT_COTACOES CO '+
                            ' INNER JOIN GLO_PESSOAS_FJ P ON (P.CODIGO = CO.PESSOA_FJ AND P.CNPJ = CO.CNPJ) '+
                            ' WHERE CO.CNPJ = :CNPJ ';

    If trim(CmbFornecedor.Text) <> '' Then
      sqlfiltro := sqlFiltro + ' AND CO.PESSOA_FJ = ' + trim(CmbFornecedor.Text);

    If (edDtInicial.date > 0) then
      sqlFiltro := sqlFiltro + ' AND cast (co.data as date) >= ''' + FormatDateTime('mm/dd/yyyy', edDtInicial.Date) + '''';

    If edDtFinal.date > 0 Then
      sqlFiltro :=  sqlFiltro +' AND cast (co.data as date) <= ''' + FormatDateTime('mm/dd/yyyy', edDtFinal.Date) + '''';

    If Trim(edNDocto.Text) <> '' Then
     sqlFiltro := sqlFiltro + ' AND CO.CODIGO = ''' + edNDocto.Text + '''';

    if (rdAberto.Checked) then
      sqlFiltro := sqlfiltro + ' and coalesce(co.fechado,''N'') = ''N'''
    else
      sqlFiltro := sqlFiltro + ' and coalesce(co.fechado,''N'') = ''S''';

    if (sqlFiltro <> '' ) then
      SelCotacoes.sql.add(sqlFiltro);

    SelCotacoes.open;
  end;
End;

procedure TFrmSelCotacoes.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio :string;
begin
    //
    If DataSource.DataSet.Tag = 0 Then
     DataSource.DataSet.Close;

    Frm_Localizar_Cliente.Free ;
    Frm_Localizar_Cliente := Nil ;

    //
    FrmLocProdutoCadastro_Auto.Free    ;
    FrmLocProdutoCadastro_Auto := Nil  ;

    Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
    if not DirectoryExists(Diretorio) then
    begin
      ForceDirectories(Diretorio);
      MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
    end;
    SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroCotacao.txt',Grid.Filter);

    //
    Action := caFree;
    FrmSelCotacoes := Nil;
    //

    FrmMain.PnlClient.Visible := True;
end;

procedure TFrmSelCotacoes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
     rdAberto.checked := true;
     With DmVendas do
     begin
       SelPessoasFJ.Close;
      // SelPessoasFJ.Sql.text := ' SELECT * FROM VER_PESSOA_FJ (:CNPJ ) ORDER BY NOME_RAZAO ';
       SelPessoasFJ.Open;

       SelTransportadora.Close;
       SelTransportadora.Open;
     end;

     //localizar produtos
     If FrmLocProdutoCadastro_Auto = Nil  then
         FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application);

     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;

  //
  edNDocto.SetFocus;
end;

procedure TFrmSelCotacoes.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FiltroCotacao.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroCotacao.txt',Grid.Filter);
end;

procedure TFrmSelCotacoes.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmSelCotacoes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelCotacoes.DataSourceStateChange(Sender: TObject);
begin
  //
  If Navigator.DataSource.State in dsEditModes Then
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

procedure TFrmSelCotacoes.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelCotacoes.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelCotacoes.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelCotacoes.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmSelCotacoes.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelCotacoes.ActIncluirExecute(Sender: TObject);
begin
  //
  DMVendas.NDocto   := 0;
  DMVendas.Tag      := 1;
  //
  FrmCotacoes := TFrmCotacoes.Create(Self);
  FrmCotacoes.Showmodal ;

  FrmCotacoes.Free ;
  FrmCotacoes := Nil ;
end;

procedure TFrmSelCotacoes.ActAlterarExecute(Sender: TObject);
begin
  //
  If (Not DataSource.DataSet.Active) Or
   (DataSource.DataSet.RecordCount = 0) Then
  Begin
     ShowMessage('Você deve selecionar um Cotação para alterá-la !');
     cmbFornecedor.SetFocus;
     Exit;
  End;

  DMVendas.NDocto   := DataSource.DataSet.FieldByName('CODIGO').asInteger;
  DMVendas.Tag      := 1;
  //
  FrmCotacoes := TFrmCotacoes.Create(Self);
  FrmCotacoes.Showmodal ;
  FrmCotacoes.Free ;
  FrmCotacoes := Nil ;

end;

procedure TFrmSelCotacoes.FormActivate(Sender: TObject);
begin
  Try
    FrmSelCotacoes.WindowState := wsMaximized;
  Except
  End;
end;

procedure TFrmSelCotacoes.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelCotacoes.ActExcluirExecute(Sender: TObject);
begin
     if (DmVendas.SelCotacoesCodigo.asInteger <= 0) then
        exit;

     if (DmVendas.SelCotacoesFechado.asString = 'S') then
     begin
       application.messagebox('Impossível excluir. Cotação se encontra fechada!','Aviso',mb_ok+mb_iconerror);
       exit;
     end;

     If MessageDlg ('Excluir esta Cotação?',MtInformation,[MbOk, MbCancel],1) = MrOk
     then begin
          DmApp.Exclui_Cotacao ( DmApp.Cnpj, DataSource.DataSet.fieldbyname('Codigo').Value );
          DataSource.DataSet.Close ;
          DataSource.DataSet.Open  ;
     END;
end;

procedure TFrmSelCotacoes.ActImprimirExecute(Sender: TObject);
begin
     If DataSource.DataSet.FieldByName('CODIGO').asInteger > 0
     then begin
          FRelImprimeCotacao              := TFRelImprimeCotacao.Create(Self);
          FRelImprimeCotacao.Tipo         := 'Cotacao' ;
          FRelImprimeCotacao.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').asInteger ;
          FRelImprimeCotacao.Showmodal ;
          FRelImprimeCotacao.Free ;
          FRelImprimeCotacao := Nil ;
     end
     else begin
          MessageDlg('Selecione uma Cotação!', mtError, [mbOK], 0);
     end;
end;

procedure TFrmSelCotacoes.GRID2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     IF KEY = 13
     THEN
         ActAlterar.Execute ;
end;

procedure TFrmSelCotacoes.CmbFornecedorButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin

     Frm_Localizar_Fornecedor := TFrm_Localizar_Fornecedor.create(Self);
     Frm_Localizar_Fornecedor.DSource.dataset := DmVendas.SelFornecedor ;

     if ( Frm_Localizar_Fornecedor.showmodal = mrOk )
     Then Begin
          CmbFornecedor.Text := IntToStr(Frm_Localizar_Fornecedor.CampTrecho)    ;
          lblnome.Caption := DmVendas.SelFornecedorNOME_RAZAO.value ;
     end;
     Frm_Localizar_Fornecedor.free;
     Frm_Localizar_Fornecedor := nil;
end;

procedure TFrmSelCotacoes.CmbFornecedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmVendas do
     begin
          If Trim(CmbFornecedor.Text) <> ''
          then begin
               If SelPessoasFJ.locate ( 'CODIGO', CmbFornecedor.Text, [] )
               then begin
                    CmbFornecedor.Text  := DMVendas.SelPessoasFJCodigo.Text      ;
                    lblnome.Caption  := DMVendas.SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbFornecedor.Text  := '' ;
                    lblnome.Caption  := '' ;
               end;
          end
          else begin
               CmbFornecedor.Text  := ''  ;
               lblnome.Caption  := ''  ;
          end;
     end;
end;


procedure TFrmSelCotacoes.edNDoctoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmSelCotacoes.edNDoctoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmSelCotacoes.ActFechaCotacaoExecute(Sender: TObject);
begin
  with dmVendas do
  begin
    if SelCotacoesFECHADO.asString = 'S' then
    begin
      application.messagebox('Cotação já se encontra fechada.','Aviso', mb_ok + mb_iconinformation);
      exit;                                                                                                           
    end;

    try
      ExecSql('update fat_cotacoes ct set ct.fechado = ''S'' where ct.codigo ='+SelCotacoesCODIGO.AsString+' and ct.cnpj ='''+dmapp.cnpj+'''',SelCotacoes.transaction);
      application.messagebox('Cotação fechada com sucesso','Aviso', mb_ok + mb_iconinformation);
    except
      application.messagebox('Cotação não pode ser fechada','Aviso', mb_ok + mb_iconerror);
    end;

    SelCotacoes.transaction.commitretaining;
    Filtrar;
  end;
end;

procedure TFrmSelCotacoes.ActEstornaExecute(Sender: TObject);
begin
  with dmVendas do
  begin
    if SelCotacoesFECHADO.asString = 'N' then
    begin
      application.messagebox('Cotação não está fechada. Não pode ser estornada','Aviso', mb_ok + mb_iconinformation);
      exit;
    end;
    try
      ExecSql('update fat_cotacoes ct set ct.fechado = ''N'' where ct.codigo ='+SelCotacoesCODIGO.AsString+' and ct.cnpj ='''+dmapp.cnpj+'''',SelCotacoes.transaction);
      application.messagebox('Cotação estornada com sucesso','Aviso', mb_ok + mb_iconinformation);
    except
      application.messagebox('Cotação não pode ser estornada','Aviso', mb_ok + mb_iconerror);
    end;

    SelCotacoes.transaction.commitretaining;
    filtrar;
  end;
end;

procedure TFrmSelCotacoes.ActConfCamposExecute(Sender: TObject);
begin
    pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmSelCotacoes.ActExportarExcelExecute(Sender: TObject);
begin
    Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Cotacao.xls', Grid.SaveToXLS);
end;

procedure TFrmSelCotacoes.ActExportarHtmlExecute(Sender: TObject);
begin
    Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Cotacao.html', Grid.SaveToHTML);
end;

procedure TFrmSelCotacoes.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmSelCotacoes.Synchronize;
var
  I: Integer;
  Node: TdxTreeListNode;
begin
  TLCustomize.ClearNodes;
  for I := 0 to GRID.ColumnCount - 1 do
  begin
    Node := TLCustomize.Add;
    Node.Values[TLCustomizeColumn.Index] := GRID.Columns[I].Caption;
    if GRID.Columns[I].Visible then
      Node.Values[TLCustomizeIsVisible.Index] := TLCustomizeIsVisible.ValueChecked;
    Node.Data := GRID.Columns[I];
  end;
end;

procedure TFrmSelCotacoes.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

end.
