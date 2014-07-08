 unit Cheque_Ctb_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms,
    ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, RDprint, myChkBox, IBQuery,
  cxPropertiesStore, dxTLClms, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, ppParameter, cxClasses,
  cxButtons, cxLabel;

type
  
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TFrmCheques_Ctb = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
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
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    DsConta: TDataSource;
    DsFornecedor: TDataSource;
    ActListagem: TAction;
    Configuracao: TdxBarButton;
    ActMarcar: TAction;
    Marcar: TdxBarButton;
    rptCopiaCheque: TppReport;
    ppTitleBand1: TppTitleBand;
    ppEmpresa: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLine3: TppLine;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppVALOR_EXTENSO: TppLabel;
    ppVALOR: TppLabel;
    ppLabel6: TppLabel;
    ppLine5: TppLine;
    ppLabel7: TppLabel;
    ppLine4: TppLine;
    ppMUNICIPIO: TppLabel;
    IMPRESSORA_COPIA: TRDprint;
    ppDBText6: TppDBText;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppBANCO: TppLabel;
    ppLine6: TppLine;
    ppDBText2: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppCopiaCheque: TppDBPipeline;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBText3: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    LayoutCopiaCheque: TppDBPipeline;
    dsLayoutCopiaCheque: TDataSource;
    ppDBText4: TppDBText;
    Panel2: TPanel;
    Image1: TImage;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel3: TPanel;
    Label1: TcxLabel;
    CmbConta: TdxLookupEdit;
    Label4: TcxLabel;
    EdData: TdxDBDateEdit;
    Label2: TcxLabel;
    EDCHEQUE: TdxDBEdit;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    Label5: TcxLabel;
    CMBpessoa: TdxDBButtonEdit;
    BtnFornecedor: TcxButton;
    dxDBEdit5: TdxDBEdit;
    Label3: TcxLabel;
    dxDBEdit15: TdxDBEdit;
    dxDBPickEdit1: TdxDBPickEdit;
    Label6: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    BtnCheque: TcxButton;
    stgFrmCheques_Ctb: TcxPropertiesStore;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    ActExporta: TAction;
    ActConfigura: TAction;
    SaveDialog: TSaveDialog;
    btnExporta: TdxBarButton;
    btnConfigura: TdxBarButton;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDCONTABILIDADE: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDIMPRESSO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDORIGEM: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDPLANILHA: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDCHEQUE: TdxDBGridMaskColumn;
    GRIDPRE_DATE: TdxDBGridDateColumn;
    GRIDNOMINAL: TdxDBGridMaskColumn;
    GRIDExtenso: TdxDBGridColumn;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure IMPRIMECOPIA_CHEQUE;    
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure IMPRIMECHEQUE(Conta: Integer);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EDCHEQUEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CmbContaChange(Sender: TObject);
    procedure BtnFornecedorClick(Sender: TObject);
    procedure ConfiguracaoClick(Sender: TObject);
    procedure BtnChequeClick(Sender: TObject);
    procedure ActMarcarExecute(Sender: TObject);
    procedure CmbContaEnter(Sender: TObject);
    procedure CmbContaExit(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
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
    procedure BtnContaClick(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
     procedure Synchronize;
  public
    { Public declarations }
    Alterar : Boolean ;
  end;

var
  FrmCheques_Ctb: TFrmCheques_Ctb;

implementation

uses 
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,

     Filtra_Baixa_Form,
     PessoasFJ_Form,
     Plano_DM,
     Financeiro_Dm,
     Cadastros_DM,
     Fornecedores_Form,
     Filtra_Cheques_Form,
     ImpCheques_Form,
     Localizar_Fornecedor , Caixas_Form, Plano_Form, Variants;

{$R *.DFM}
procedure TFrmCheques_Ctb.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmCheques_Ctb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
     Datasource.Dataset.Close;
     dsConta.DataSet.Close;

     dsFornecedor.DataSet.Close;

     Frm_Localizar_Fornecedor.Free   ;
     Frm_Localizar_Fornecedor := Nil ;

     DmPlano.Free;
     DMPlano := Nil;

     //
     Action := caFree;
     FrmCheques_Ctb := Nil;

     SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FiltroGrdChequeCTB.txt',Grid.Filter);
     //
end;

procedure TFrmCheques_Ctb.ActIncluirExecute(Sender: TObject);
begin
  if VarToStr(CmbConta.Text) = '' then
  begin
    MessageBox(Handle,'Defina a conta corrente',
                       'Aviso',MB_OK+MB_ICONerror);

    CmbConta.SetFocus;
    exit;
  end;
  If DataSource.State in dsEditModes Then
     Exit;

  DataSource.DataSet.Append;
  EdData.setfocus;
end;

procedure TFrmCheques_Ctb.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Cheque ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCheques_Ctb.ActPostExecute(Sender: TObject);
begin
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
end;

procedure TFrmCheques_Ctb.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCheques_Ctb.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

   Synchronize;
   if fileExists('C:\Sistemas\HelpStore\filtros\FiltroGrdChequesCTB.txt') then
     LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FiltroGrdChequesCTB.txt',Grid.Filter);

  Alterar := false ;
end;


procedure TFrmCheques_Ctb.Synchronize;
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

procedure TFrmCheques_Ctb.ActLocalizarExecute(Sender: TObject);
var
 filtro,tipo : string;
begin
     Filtro := '';
     Application.CreateForm(TFrmBaixaContas, FrmBaixaContas);
     FrmBaixaContas.dsPessoas.DataSet := DmFinanceiro.SelFornecedor ;
     FrmBaixaContas.Caption := 'Cheques Contabilidade';
     FrmBaixaContas.rdData1.Visible := true;
     FrmBaixaContas.rdData2.Visible := true;
     FrmBaixaContas.LblTitulo.Caption := 'Cheques Contabilidade';
     DMCadastros.Pessoas_FJ.Close;
     DMCadastros.Pessoas_FJ.Open;
     if FrmBaixaContas.ShowModal = MROK then
     begin

       if (FrmBaixaContas.codigo.value > 0) then
         Filtro := ' and Pessoa_Fj = '+FrmBaixaContas.codigo.text
       else if (FrmBaixaContas.CmbPessoa.Text <> '') then
         Filtro := ' and Pessoa_Fj = '+IntToStr(FrmBaixaContas.CmbPessoa.lookupKeyValue)
       else if (FrmBaixaContas.CmbFantasia.Text <> '') then
         Filtro := ' and Pessoa_Fj = '+IntToStr(FrmBaixaContas.CmbFantasia.lookupKeyValue);


      With DmFinanceiro do
      begin
        if FrmBaixaContas.rdData2.checked then
          tipo := 'pre_date'
        else
          tipo := 'data';
        if (FrmBaixaContas.Ini.date > 0) then
          filtro := filtro + ' and '+tipo+' >= '''+FormatDateTime('mm/dd/yyyy',FrmBaixaContas.Ini.date)+'''';

        if (FrmBaixaContas.Fim.date > 0) then
          filtro := filtro + ' and '+tipo+' <= '''+FormatDateTime('mm/dd/yyyy',FrmBaixaContas.fim.date)+'''';

        if (FrmBaixaContas.EdDocumento.Text <> '' ) then
          filtro := filtro +' and CHEQUE Like ' + char(39) + '%' + FrmBaixaContas.EdDocumento.Text+'%'+ char(39);

        Cheque_Ctb.Close ;
        Cheque_Ctb.SelectSQL.text :=  ' SELECT * from CTB_CHEQUE Where CNPJ = :CNPJ AND CONTA = :CONTA '+filtro;
        Cheque_Ctb.Params.ByName ('CNPJ' ).asString  := DmaPP.Cnpj ;
        Cheque_Ctb.Params.ByName ('CONTA').asInteger := DmFinanceiro.SelPlanoConta.Value ;
        Cheque_Ctb.Open
      end;
     end;

     FrmBaixaContas.free ;
     FrmBaixaContas := Nil;
end;

procedure TFrmCheques_Ctb.EDCHEQUEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCheques_Ctb.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCheques_Ctb.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       Configuracao.Enabled := False;
       BtnCheque.Enabled    := False;
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
       BtnCheque.Enabled    := true;
       Configuracao.Enabled := true;
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

procedure TFrmCheques_Ctb.ActFecharExecute(Sender: TObject);
begin
  If FrmCheques_Ctb.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCheques_Ctb.ActLookupExecute(Sender: TObject);
begin
  If FrmCheques_Ctb.ActiveControl = CMBpessoa then
     btnFornecedor.OnClick(btnFornecedor);
end;

procedure TFrmCheques_Ctb.FormShow(Sender: TObject);
begin
  //
    If Not(dsConta.DataSet.Active) Then
       dsConta.DataSet.Open;

    If Not(dsFornecedor.DataSet.Active) Then
       dsFornecedor.DataSet.Open;

    With DmFinanceiro do
    begin
      Cheque_Ctb.Close ;
      Cheque_Ctb.SelectSQL.text :=  ' SELECT * from CTB_CHEQUE Where CNPJ = :CNPJ AND CONTA = :CONTA ';
      Cheque_Ctb.Params.ByName ('CNPJ' ).asString  := DmaPP.Cnpj ;
      Cheque_Ctb.Params.ByName ('CONTA').asInteger := DmFinanceiro.SelPlanoConta.Value ;
      Cheque_Ctb.Open    ;
    End;
  //
  Datasource.AutoEdit := ActAlterar.Enabled;
  CmbConta.Text := DmFinanceiro.SelPlanoNome.Value ;
  eddata.SetFocus;
end;

procedure TFrmCheques_Ctb.CmbContaChange(Sender: TObject);
begin
    With DmFinanceiro do
    begin
         Cheque_Ctb.Close ;
         Cheque_Ctb.SelectSQL.text := ' SELECT * from CTB_CHEQUE Where CNPJ = :CNPJ AND CONTA = :CONTA ';
         Cheque_Ctb.Params.ByName ('CNPJ' ).asString  := DmaPP.Cnpj ;
         Cheque_Ctb.Params.ByName ('CONTA').asInteger := DmFinanceiro.SelPlanoConta.Value ;
         Cheque_Ctb.Open;
    End;
end;

procedure TFrmCheques_Ctb.BtnFornecedorClick(Sender: TObject);
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

  If DMPLANO = Nil then
      DMPLANO := TDMPLANO.Create(Self)
  else
      DMPLANO.Tag := DMPLANO.Tag + 1;

  FrmFornecedores := TFrmFornecedores.Create(Application);

  FrmFornecedores.Showmodal ;
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;
  DsFornecedor.DataSet.Close ;
  DsFornecedor.DataSet.Open  ;

  If DMCadastros <> Nil then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  cmbPessoa.SetFocus;
end;

procedure TFrmCheques_Ctb.ConfiguracaoClick(Sender: TObject);
begin
     FrmImpressaoChq := TFrmImpressaoChq.Create(Self);
     FrmImpressaoChq.ShowModal;
     //
     FrmImpressaoChq.Free;
     FrmImpressaoChq := Nil;
end;

procedure TFrmCheques_Ctb.BtnChequeClick(Sender: TObject);
begin
    { * * * * * }
    DMApp.Verificar_Login(FileName(Application.ExeName), 'Filtra_Cheques_Frm', False);
    DmListagens     := TDmListagens.Create(Self);
    IMPRIMECHEQUE (DmFinanceiro.SelPlanoCONTA.VALUE);
    DmListagens.Free ;
    DmListagens := Nil ;
    
    //-->> Refresh no FORM
    DataSource.DataSet.Close ;
    DataSource.DataSet.Open  ;
end;

procedure TFrmCheques_Ctb.ActMarcarExecute(Sender: TObject);
begin
     If FrmCheques_Ctb.ActiveControl = Grid then
     begin
       Alterar := true ;

       IF DATASOURCE.DataSet.FieldByName ( 'IMPRESSO' ).Value = 'N' THEN
       BEGIN
         DATASOURCE.DataSet.EDIT ;
         DATASOURCE.DataSet.FieldByName ( 'IMPRESSO' ).Value := 'S';
         DATASOURCE.DataSet.POST ;
       END
       ELSE
       BEGIN
         DATASOURCE.DataSet.EDIT ;
         DATASOURCE.DataSet.FieldByName ( 'IMPRESSO' ).Value := 'N';
         DATASOURCE.DataSet.POST ;
       END;

       Alterar := False ;
     end;
end;

procedure TFrmCheques_Ctb.CmbContaEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmCheques_Ctb.CmbContaExit(Sender: TObject);
begin
     TiraCorFundo( Sender );
end;

procedure TFrmCheques_Ctb.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin

  If not (DataSource.State in [ dsinsert, dsedit ]) then
    DataSource.DataSet.Edit;

  //Chama a Tela Para Localizar Fornecedor
  Frm_Localizar_Fornecedor.DSource.dataset := DmFinanceiro.SelFornecedor ;

  if ( Frm_Localizar_Fornecedor.showmodal = mrOk )Then
     DmFinanceiro.Cheque_CtbPESSOA_FJ.Value := (Frm_Localizar_Fornecedor.CampTrecho)
  else
  begin
    If Frm_Localizar_Fornecedor.Cad = 'S' THEN
      BtnFornecedor.OnClick ( BtnFornecedor );
  end;
end;

procedure TFrmCheques_Ctb.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  Aux: String;
  Data : TDateTime;
begin
    if ANode.HasChildren then
    Exit;
    
    if(not ASelected) AND (NOT(DataSource.DataSet.STATE IN [DSINSERT, DSEDIT])) then
    begin
      Aux := ANode.Values[GRIDIMPRESSO.Index];
      if (Aux = 'S') then
        AColor := $00BBDFC6
      else
        AColor := clWhite;

      AFont.Color := clBlack;
    end;
end;

procedure TFrmCheques_Ctb.IMPRIMECHEQUE(Conta: Integer);
VAR
   Fav, dia, mes, ano, Data :String ;
   VALORALT, VALORDST :Integer ;
   EXTENSOALT, EXTENSODST :Integer ;
   FAVALT, FAVDST : Integer ;
   CIDALT, CIDDST: Integer ;
   DIAALT, DIADST: Integer ;
   MESALT, MESDST: Integer ;
   ANOALT, ANODST: Integer ;
   I:Integer ;
   AUX, AUX2 : STRING ;
begin


  with DMListagens do
  begin

     CHEQUE.Close ;
     CHEQUE.SQL.text := ' SELECT * from VER_CTB_CHEQUE ( :CNPJ, :CONTA ) WHERE IMPRESSO = :OPCAO ORDER BY CHEQUE';
     CHEQUE.ParamByName ( 'CNPJ'  ).ASSTRING   := DmApp.Cnpj ;
     CHEQUE.ParamByName ( 'CONTA' ).ASInteger  := Conta      ;
     CHEQUE.ParamByName ( 'OPCAO' ).ASString   := 'N'        ;
     CHEQUE.Open;

     if ( CHEQUE.recordcount <= 0 )
     Then Begin
          MessageDlg('Não Há Cheques Selecionados!',MtInformation,[MbOk],0);
          Exit ;
     end;


     TBImpressora.Close ;
     TBImpressora.SelectSQL.text := ' SELECT * from SIS_CONF_CHEQUE where CONTA = :CONTA ';
     TBImpressora.Params.ByName ( 'CONTA' ).ASInteger := Conta ;
     TBImpressora.Open ;

     for i:= 0 to 13 do
     Begin
          if ( TBImpressora.fields[i].isnull )
          Then bEGIN
               tbimpressora.Edit ;
               TBImpressora.fields[i].value := 0 ;
               TBImpressoraCONTA.value := conta;
               tbimpressora.Post ;
           END;
    end;

    VALORALT   := TBIMPRESSORAValorAlt.Value ;
    VALORDST   := TBIMPRESSORAVALORDST.Value ;
    EXTENSOALT := TBIMPRESSORAEXTENSOALT.Value ;
    EXTENSODST := TBIMPRESSORAEXTENSODST.Value ;
    FAVALT     := TBIMPRESSORAFAVALT.Value ;
    FAVDST     := TBIMPRESSORAFAVDST.Value ;
    CIDALT     := TBIMPRESSORACIDALT.Value ;
    CIDDST     := TBIMPRESSORACIDDST.Value ;
    DIAALT     := TBIMPRESSORADIAALT.Value ;
    DIADST     := TBIMPRESSORADIADST.Value ;
    MESALT     := TBIMPRESSORAMESALT.Value ;
    MESDST     := TBIMPRESSORAMESDST.Value ;
    ANOALT     := TBIMPRESSORAANOALT.Value ;
    ANODST     := TBIMPRESSORAANODST.Value ;

    IMPRESSORA_COPIA.TamanhoQteLinhas  := TBIMPRESSORAALTURA.Value ;
    IMPRESSORA_COPIA.TamanhoQteColunas := TBIMPRESSORADISTANCIA.Value ;

    FAV := CHEQUENOMINAL.AsString;

    TBIMPRESSORA.CLOSE ;

    IF ( TBIMPRESSORAPRECISAO.Value = 'Seis' )
    Then
        Impressora_COPIA.TamanhoQteLPP := Seis
    Else
        Impressora_COPIA.TamanhoQteLPP := Oito;

    IMPRESSORA_COPIA.TamanhoQteColunas := 136  ;

    IMPRESSORA_COPIA.abrir;

    //PRIMEIRA PÁGINA
    CHEQUE.First ;

    while not CHEQUE.eof do
    begin
         Data := datetostr ( CHEQUEDATA.value );

         If Length(Data) = 8
         then begin
              DATA := COPY ( DATA, 1, 6 ) + '20' + COPY ( DATA, 7, 2 ) ;
         end;

         dia := copy ( DATA, 1, 2 );
         ano := copy ( DATA, 7, 4 );

         case ( strtoint( (copy ( DATA, 4, 2 )))) of
             1 : mes := 'Janeiro';
             2 : mes := 'Fevereiro';
             3 : mes := 'Março';
             4 : mes := 'Abril';
             5 : mes := 'Maio';
             6 : mes := 'Junho';
             7 : mes := 'Julho';
             8 : mes := 'Agosto';
             9 : mes := 'Setembro';
             10: mes := 'Outubro';
             11: mes := 'Novembro';
             12: mes := 'Dezembro';
         end;

         //ESCREVE O VALOR
         IMPRESSORA_COPIA.impF (VALORALT, VALORDST,'R$ '+ formatfloat('###,###,###0.00',CHEQUEVALOR.VALUE),[COMP12, NEGRITO]);

         VALOR.VALOR := CHEQUEVALOR.VALUE ;

         AUX  := '';
         AUX2 := '';

         AUX := COPY ( VALOR.TEXTO, 1,  64 );
         AUX2:= COPY ( VALOR.TEXTO, 65, 100);

         AUX2 := trim ( AUX2 ) ;
         REPEAT
               AUX2 := CONCAT ( AUX2, '*' );
         UNTIL LENGTH ( AUX2 ) >= 64 ;

         IF ( TRIM( AUX2 )  <> ''  )
         THEN BEGIN
              IMPRESSORA_COPIA.impF (EXTENSOALT, EXTENSODST, AUX,[COMP12, NEGRITO]);
              IMPRESSORA_COPIA.impF (EXTENSOALT + 2, EXTENSODST, AUX2,[COMP12, NEGRITO]);
         END
         ELSE
              IMPRESSORA_COPIA.impF (EXTENSOALT, EXTENSODST, AUX,[COMP12, NEGRITO]);

         IF ( FAV = 'S' )
         Then Begin
              IF NOT ( CHEQUEPESSOA_FJ.ISNULL )
              THEN
                  IMPRESSORA_COPIA.IMPF ( FAVALT, FAVDST, CHEQUENOME.Value ,[COMP12, NEGRITO])
//                  ELSE
  //                    IMPRESSORA_copia.IMPF ( FAVALT, FAVDST, CHEQUECLIENTE.Value ,[COMP12, NEGRITO]);
         end;

         IMPRESSORA_COPIA.IMPF (CIDALT, CIDDST, DmApp.CIDADE,[COMP12]);
         IMPRESSORA_COPIA.IMPF (DIAALT, DIADST, dia,[COMP12]);
         IMPRESSORA_COPIA.IMPF (MESALT, MESDST, mes,[COMP12]);
         IMPRESSORA_COPIA.IMPF (ANOALT, ANODST, ano,[COMP12]);

         CHEQUE.Next ;

         IMPRESSORA_COPIA.novapagina;

    END;

    IMPRESSORA_COPIA.fechar;


    IF ( MessageDlg('Imprimir Cópias dos Cheques? ', mtConfirmation, [mbOK, mbCancel], 0) = MrOk )
    THEN BEGIN
        IMPRIMECOPIA_CHEQUE ;
    END;

    IF ( MessageDlg(' Cheques Impressos Com Sucesso? ', mtConfirmation, [mbOK, mbCancel], 0) = MrOk )
    THEN BEGIN
         GERAL.CLOSE ;
         GERAL.SQL.CLEAR ;
         GERAL.PARAMS.CLEAR ;

         GERAL.Params.CreateParam ( FTSTRING, 'CNPJ'   , ptInputOutPut );
         GERAL.Params.CreateParam ( FTInteger, 'CONTA' , ptInputOutPut );
         GERAL.Params.CreateParam ( FTSTRING, 'OPCAO'  , ptInputOutPut );

         GERAL.SQL.ADD ( ' UPDATE CTB_CHEQUE SET IMPRESSO = :OPCAO WHERE CNPJ = :CNPJ AND CONTA = :CONTA ' );

         GERAL.ParamByName ( 'CNPJ'  ).ASString  := DmaPP.Cnpj ;
         GERAL.ParamByName ( 'CONTA' ).ASInteger := Conta      ;
         GERAL.ParamByName ( 'OPCAO' ).ASString  := 'S'        ;

         GERAL.PREPARE ;
         GERAL.EXECSQL ;
    END;

    CHEQUE.Close ;
    TBIMPRESSORA.Close ;
  end;
end;

procedure TFrmCheques_Ctb.IMPRIMECOPIA_CHEQUE;
var
   dia, mes, ano:String ;
   VALORCHEQUE: STRING;
begin
  with DMListagens do
  begin
     CHEQUE.FIRST;
     //-->> IMPRIME COPIA DE CHEQUE (MOVIMENTOS REALIZADOS COM O CHEQUE)
     WHILE NOT CHEQUE.EOF DO
     BEGIN
       dia := copy ( datetostr ( chequedata.value ), 1, 2 );
       ano := copy ( datetostr ( chequedata.value ), 7, 4 );
       case ( strtoint( (copy ( datetostr ( chequedata.value ), 4, 2 )))) of
           1 : mes := 'Janeiro';
           2 : mes := 'Fevereiro';
           3 : mes := 'Março';
           4 : mes := 'Abril';
           5 : mes := 'Maio';
           6 : mes := 'Junho';
           7 : mes := 'Julho';
           8 : mes := 'Agosto';
           9 : mes := 'Setembro';
           10: mes := 'Outubro';
           11: mes := 'Novembro';

           12: mes := 'Dezembro';
       end;
       //-->> Abre movimento de recebidas do cheque
       PagasChequePlanilha.close;
       PagasChequePlanilha.parambyname('cnpj').value   := DmaPP.Cnpj;
       PagasChequePlanilha.parambyname('conta').value  := DmFinanceiro.Cheque_CtbCONTA.value;
       PagasChequePlanilha.parambyname('cheque').value := DMListagens.CHEQUECHEQUE.Value;
       PagasChequePlanilha.open;

       if PagasChequePlanilha.recordcount = 0 then
           MessageDlg(' Cheque número '+CHEQUECHEQUE.text+'  não possui movimento vinculado. ', mtConfirmation, [mbOK, mbCancel], 0)
       else
       begin
          ppCopiaCheque.datasource :=  DMListagens.dsPagasChequePlanilha;

          DMCadastros.EdtCopiaCheque.close;
          DMCadastros.EdtCopiaCheque.open;

          rptCopiaCheque.Template.DatabaseSettings.Name := dmapp.cnpj;
          rptCopiaCheque.Template.LoadFromDatabase;
          rptCopiaCheque.DeviceType := 'Printer';          
          rptCopiaCheque.PRINT;
       end;
       CHEQUE.NEXT;
     END;
  end;
end;                                       

procedure TFrmCheques_Ctb.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmCheques_Ctb.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
 Accept := Source = Sender;
end;

procedure TFrmCheques_Ctb.ActConfiguraExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmCheques_Ctb.ActExportaExecute(Sender: TObject);
begin
 Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Cheques Emitidos.xls', Grid.SaveToXLS);
end;

procedure TFrmCheques_Ctb.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmCheques_Ctb.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmCheques_Ctb.BtnContaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  DMPlano.Tag := 1;
  DMPlano.Plano.Tag := 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', False);

  { * * * * * }
  FrmPlano := TFrmPlano.Create(Self);
  FrmPlano.ShowModal;
  //
  CmbConta.SetFocus;
end;

end.
