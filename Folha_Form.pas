 unit Folha_Form;

interface

uses
  Windows, Messages, SysUtils, Classes,  Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids,   dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl,  Menus, cxPropertiesStore, ppParameter, ppBands,
  ppCtrls, ppVar, ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppDB,
  ppRelatv, ppDBPipe, ppComm, ppEndUsr, variants, IBFilterDialog, dxTLClms,
     cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel;


type

  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmFolha = class(TForm)
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
    BtnFiltrar: TdxBarButton;
    ActFiltrar: TAction;
    ActLocalizarCliente: TAction;
    DsLocal: TDataSource;
    PopupMenu: TPopupMenu;
    Imprime: TMenuItem;
    stgFolhaPagto1: TcxPropertiesStore;
    Panel5: TPanel;
    Panel3: TPanel;
    Label1: TcxLabel;
    Label5: TcxLabel;
    BtnPessoa: TcxButton;
    Label8: TcxLabel;
    Label4: TcxLabel;
    Label10: TcxLabel;
    BtnTipo: TcxButton;
    Label7: TcxLabel;
    Label2: TcxLabel;
    Label6: TcxLabel;
    Label13: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    CMBpessoa: TdxDBButtonEdit;
    dxDBEdit4: TdxDBEdit;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    CmbBoleto: TdxDBPickEdit;
    dxDBEdit15: TdxDBEdit;
    CmbTipo: TdxDBLookupEdit;
    EdVencimento: TdxDBDateEdit;
    dxDBEdit2: TdxDBEdit;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Image1: TImage;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    ActConfigura: TAction;
    btnExporta: TdxBarButton;
    btnConfigura: TdxBarButton;
    SaveDialog: TSaveDialog;
    LblRegistros: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TcxLabel;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDDT_VENCTO: TdxDBGridDateColumn;
    GRIDDT_EMISSAO: TdxDBGridDateColumn;
    GRIDNDOCTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDTIPO_MOVTO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
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
    procedure ActAlterarExecute(Sender: TObject);
    procedure dxDBEdit16Exit(Sender: TObject);
    procedure dxDBEdit16Enter(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ActConfiguraExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
     procedure Synchronize;

  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmFolha: TFrmFolha;
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
  ConfigFin_Form, Tipo_MovtoFolha_Form, Filtra_Folha_Form;

{$R *.DFM}


procedure TFrmFolha.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmFolha.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
     If MessageDlg('Deseja Sair do Cadastro?', mtConfirmation, [mbOK, mbCancel], 0) = MROK then
     begin
       Frm_Localizar_Cliente.Free ;
       Frm_Localizar_Cliente := Nil ;

       Action := caFree;
       FrmFolha := Nil;

       FrmMain.PnlClient.Visible := True;
     end
     else
       action := canone;

      Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
     if not DirectoryExists(Diretorio) then
     begin
       ForceDirectories(Diretorio);
       MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
     end;
     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdReceber.txt',Grid.Filter);

     dmFinanceiro2.FolhaPagto.close;
     dmFinanceiro2.FolhaPagto.SelectSql.text := sqlOriginal;
end;

procedure TFrmFolha.ActIncluirExecute(Sender: TObject);
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

procedure TFrmFolha.ActPostExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes  then
  begin
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
  end;
end;

procedure TFrmFolha.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmFolha.FormCreate(Sender: TObject);
begin
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';

  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

   Synchronize;
   if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdFolha.txt') then
     LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdFolha.txt',Grid.Filter);

end;

procedure TFrmFolha.Synchronize;
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

procedure TFrmFolha.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFolha.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmFolha.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActListagem.Enabled  := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
       ActFiltrar.Enabled := False;
     End
  Else
     Begin
       ActFiltrar.Enabled := TRUE;
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmFolha.ActFecharExecute(Sender: TObject);
begin
  If FrmFolha.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmFolha.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmFolha.ActLookupExecute(Sender: TObject);
begin
  If FrmFolha.ActiveControl = cmbPessoa Then
     btnPessoa.OnClick(btnPessoa);
  If FrmFolha.ActiveControl = CmbTipo Then
     btnTipo.OnClick(btnTipo);
end;

procedure TFrmFolha.BtnPessoaClick(Sender: TObject);
begin
     Try
        If ActAlterar.Tag = 0 Then
          exit;

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

procedure TFrmFolha.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  sqlOriginal := dmFinanceiro2.FolhaPagto.SelectSql.text;

  Try
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
  cmbPessoa.SetFocus;
end;

procedure TFrmFolha.GRIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = 13
     then begin
          cmbPessoa.SetFocus ;
          DataSource.Edit ;
     end;
end;

procedure TFrmFolha.BtnTipoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;


  DsTipoDocto.DataSet.Tag := DsTipoDocto.DataSet.Tag + 1;
  DMApp.Verificar_Login(FileName(Application.ExeName), 'frmTipoMovimentoFolha', False);
  frmTipoMovimentoFolha := TfrmTipoMovimentoFolha.Create(Self);
  frmTipoMovimentoFolha.ShowModal;
  dmFinanceiro2.FolhaPagtoTIPO_MOVTO.Value := FrmMain.Codigo_Int;

  FrmTipoDoctos.Free;
  FrmTipoDoctos := Nil;

  CmbTipo.SetFocus;
end;

procedure TFrmFolha.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             //Chama a Tela Para Localizar Cliente
             Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

             if ( Frm_Localizar_Cliente.showmodal = mrOk ) then
                dmFinanceiro2.FolhaPagtoPESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho) ;
        end;
     Except
     end;
end;

procedure TFrmFolha.CMBpessoaEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFolha.CmbTipoEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmFolha.EdDocumentoEnter(Sender: TObject);
begin
     CorFundo( Sender );

end;

procedure TFrmFolha.CmbTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmFolha.ActImprimeBoletoExecute(Sender: TObject);
begin
   // dmapp.ReceberBoleto;
end;

procedure TFrmFolha.ActImprimeDuplicataExecute(Sender: TObject);
begin
     If MessageDlg ('Confirmar a Emissão de Duplicata!', mtConfirmation	, [MbOk, MbCancel],0 ) = MROK  THEN
         DmFinanceiro2.ReceberDuplicata ;
end;

procedure TFrmFolha.ActFiltrarExecute(Sender: TObject);
var
  filtro : string;
begin
     Application.CreateForm(TFrmFiltraFolha, FrmFiltraFolha);
     FrmFiltraFolha.dsPessoas.DataSet := DmFinanceiro.SelPessoasFj ;
     with FrmFiltraFolha do
     begin
        IF ShowModal = MROK THEN
        BEGIN
           if (Rd1.checked) then
           begin
             if (Ini.date > 0) then
                filtro := filtro + ' and fl.DT_VENCTO >= '''+FormatDateTime('mm/dd/yyyy',ini.date)+'''';

             if (fim.date > 0) then
               filtro := filtro + ' and fl.DT_VENCTO <= '''+FormatDateTime('mm/dd/yyyy',Fim.date)+'''';
           end
           else
           begin
             if (Ini.date > 0) then
                filtro := filtro + ' and fl.dt_emissao >= '''+FormatDateTime('mm/dd/yyyy',ini.date)+'''';

             if (fim.date > 0) then
               filtro := filtro + ' and fl.dt_emissao <= '''+FormatDateTime('mm/dd/yyyy',Fim.date)+'''';
           end;

           if (cmbPessoa.text <> '') then
              filtro := filtro + ' and fl.Pessoa_Fj = '+inttostr(cmbPessoa.lookupkeyvalue);

           if (rd3.checked) then
             filtro := filtro +' and (select sum(fl2.valor) from FIN_FOLHA_PAGTO fl2 where fl2.cnpj = fl.cnpj and fl2.pessoa_fj = fl.pessoa_fj) > 0 '
           else if (rd4.checked) then
             filtro := filtro +' and (select sum(fl2.valor) from FIN_FOLHA_PAGTO fl2 where fl2.cnpj = fl.cnpj and fl2.pessoa_fj = fl.pessoa_fj) < 0 ';

        end;
     end;
     With DmFinanceiro2 do
     begin
       FolhaPagto.Close ;
       FolhaPagto.SelectSql.text := sqlOriginal+filtro;
       FolhaPagto.Open;
     end;

     FrmFiltraFolha.free ;
     FrmFiltraFolha := Nil;
     GRID.SETFOCUS ;
end;

procedure TFrmFolha.EdValorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFolha.CMBpessoaExit(Sender: TObject);
begin
     IF (( CMBpessoa.Text = '0' ) or ( CMBpessoa.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ]) then
       ActLocalizarCliente.Execute ;
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFolha.ActLocalizarClienteExecute(Sender: TObject);
begin
     try
        If Not ( DataSource.State in [ dsinsert, dsedit ] ) then
          DataSource.DataSet.Edit ;

        //Chama a Tela Para Localizar Fornecedor
        Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk ) Then
           dmFinanceiro2.FolhaPagtoPESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho)
        else
        begin
          If Frm_Localizar_Cliente.Cad = 'S'  THEN
            BtnPessoa.OnClick ( BtnPessoa );
        end;

     Except
     end;
end;

procedure TFrmFolha.ActAlterarExecute(Sender: TObject);
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

procedure TFrmFolha.dxDBEdit16Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFolha.dxDBEdit16Enter(Sender: TObject);
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

procedure TFrmFolha.GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
Var
   Value: TDateTime ;
   Aux: String;
begin
    if ANode.HasChildren then
    Exit;

     if ( not ASelected  ) AND ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ])) then
     begin
               Value := ANode.Values[GRIDDT_VENCTO.Index];

               if not VarIsNull(Value) then
               begin
                    if Value < Date  then
                        AColor := $00ECAD84
                    else
                        AColor := clWhite;
               end
               else
                    AFont.Color := clBlack;
     end;
end;

procedure TFrmFolha.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmFolha.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := Source = Sender;
end;

procedure TFrmFolha.ActConfiguraExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmFolha.ActExportaExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Folha de Pagamento.xls', Grid.SaveToXLS);
end;

procedure TFrmFolha.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmFolha.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

end.
