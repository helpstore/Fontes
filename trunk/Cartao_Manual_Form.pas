  unit Cartao_Manual_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids,   dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxDBGrid,  dxTLClms, cxPropertiesStore,  FileCtrl, Variants,
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
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit, cxLabel,
  cxButtons, cxGroupBox;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
  
  TFrmMovto_Cartao = class(TForm)
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
    btnLocalizar: TdxBarButton;
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
    ActPeriodo: TAction;
    DsAdministradora: TDataSource;
    DsPessoas: TDataSource;
    ActConciliar: TAction;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    BtnExtornaVenda: TcxButton;
    BtnLocalizar2: TcxButton;
    ActLancarConciliacao: TAction;
    BtnLancarConciliacao: TcxButton;
    RzBitBtn1: TcxButton;
    Panel3: TPanel;
    pnlCampos: TPanel;
    TLCustomize: TdxTreeList;
    TLCustomizeColumn: TdxTreeListColumn;
    TLCustomizeIsVisible: TdxTreeListCheckColumn;
    Panel5: TPanel;
    Bevel2: TPanel;
    Label8: TcxLabel;
    Label1: TcxLabel;
    Label7: TcxLabel;
    Label4: TcxLabel;
    btnAdministradoras: TcxButton;
    Label2: TcxLabel;
    Label6: TcxLabel;
    Label5: TcxLabel;
    BtnPessoa: TcxButton;
    dxDBEdit4: TdxDBEdit;
    EdValor: TdxDBCalcEdit;
    EdCartao: TdxDBEdit;
    EdParcelas: TdxDBSpinEdit;
    CmbTipoPessoa: TdxDBPickEdit;
    EdData: TdxDBDateEdit;
    cmbAdministradora: TdxDBLookupEdit;
    EdVencimento: TdxDBDateEdit;
    CMBpessoa: TdxDBButtonEdit;
    EDNOME: TdxDBEdit;
    Panel2: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Label11: TcxLabel;
    Data: TdxDateEdit;
    GRID: TdxDBGrid;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDADMINISTRADORA: TdxDBGridMaskColumn;
    GRIDCLIENTE: TdxDBGridMaskColumn;
    GRIDCONCILIADO: TdxDBGridMaskColumn;
    GRIDCONTA: TdxDBGridMaskColumn;
    GRIDCPF_CNPJ: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDNUM_BANCO: TdxDBGridMaskColumn;
    GRIDNUM_CARTAO: TdxDBGridMaskColumn;
    GRIDNUM_CONTA: TdxDBGridMaskColumn;
    GRIDREEMBOLSO: TdxDBGridDateColumn;
    GRIDTIPO_DOC: TdxDBGridMaskColumn;
    GRIDUSUARIO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDVENDA: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDTIPO: TdxDBGridMaskColumn;
    GRIDNUM_PARCELAS: TdxDBGridMaskColumn;
    GRIDTAXA: TdxDBGridMaskColumn;
    GRIDValor_Liquido: TdxDBGridColumn;
    GRIDTURNO: TdxDBGridMaskColumn;
    GRIDDATA_CONCILIACAO: TdxDBGridDateColumn;
    GRIDPROCESSADO: TdxDBGridCheckColumn;
    BtnExportarHtml: TcxButton;
    BtnExportarExcel: TcxButton;
    ActExportarHtml: TAction;
    ActExportarExcel: TAction;
    ActConfCampos: TAction;
    SaveDialog: TSaveDialog;
    stgMovCartoes: TcxPropertiesStore;
    ActSeleciona: TAction;
    RzBitBtn5: TcxButton;
    RzGroupBox1: TcxGroupBox;
    RzPanel4: TPanel;
    RzPanel1: TPanel;
    RzPanel2: TPanel;
    RzBitBtn3: TcxButton;
    ActEstornarConciliacao: TAction;
    GRIDPLANILHA: TdxDBGridColumn;
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
    procedure FormShow(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActConciliarExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure btnAdministradorasClick(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure ActPeriodoExecute(Sender: TObject);
    procedure ActLancarConciliacaoExecute(Sender: TObject);
    procedure GRID1CustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ActExportarHtmlExecute(Sender: TObject);
    procedure ActExportarExcelExecute(Sender: TObject);
    procedure ActConfCamposExecute(Sender: TObject);
    procedure TLCustomizeDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure TLCustomizeDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TLCustomizeStartDrag(Sender: TObject;
      var DragObject: TDragObject);
    procedure TLCustomizeIsVisibleToggleClick(Sender: TObject;
      const Text: String; State: TdxCheckBoxState);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ActEstornarConciliacaoExecute(Sender: TObject);
  private
    { Private declarations }
    DragNode: TdxTreeListNode;
    procedure Synchronize;
    procedure Save(ADefaultExt, AFilter, AFileName: String;AMethod: TSaveMethod);
  public
    { Public declarations }
    Acumulado: Real ;
    Retorno: Integer;
    ValorDesdobrado: Real;

  end;

var
   FrmMovto_Cartao: TFrmMovto_Cartao;
implementation

uses
     Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Clientes_Form,
     Administradoras_Form,
     Filtra_Cartao_Form, Localizar_Cliente, Entra_Conciliacao_Cartao_Form,
  Financeiro_Dm2;

{$R *.DFM}

procedure TFrmMovto_Cartao.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Diretorio : string;
begin
  IF MessageDlg('Deseja Sair da Tela de Cadastros?', mtConfirmation, [mbOK, mbCancel], 0)= MrOk THEN
  BEGIN
          //
          Datasource.Dataset.Close;

          DsAdministradora.DataSet.Close;

          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          FrmMain.pnlClient.Visible := True ;

          //
          Action := caFree;
          FrmMovto_Cartao := Nil;
   END
   ELSE
   BEGIN
     Action := Canone
   END;
   Diretorio := 'C:\Sistemas\HelpStore\FILTROS';
   if not DirectoryExists(Diretorio) then
   begin
     ForceDirectories(Diretorio);
     MessageDlg('Foi criado uma pasta de Filtros: '+Diretorio, mtInformation, [mbOK], 0);
   end;
   SavedbGridFilterToFile('C:\Sistemas\HelpStore\filtros\FtrGridCartoes.txt',Grid.Filter);
end;

procedure TFrmMovto_Cartao.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
  cmbPessoa.setfocus;
end;

procedure TFrmMovto_Cartao.ActExcluirExecute(Sender: TObject);
begin
  if (dmFinanceiro.CartaoCONCILIADO.value = 'S') then
  begin
    Application.MessageBox('Impossível realizar a exclusão. Movimento já conciliado','Aviso',mb_ok + mb_iconerror);
    exit;
  end;

  If Application.MessageBox('Tem certeza que deseja excluir este movimento?','Aviso',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)= IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmMovto_Cartao.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;

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
end;

procedure TFrmMovto_Cartao.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMovto_Cartao.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Synchronize;
  if fileExists('C:\Sistemas\HelpStore\filtros\FtrGridCartoes.txt') then
    LoadDBGridFilterFromFile('C:\Sistemas\HelpStore\filtros\FtrGridCartoes.txt',Grid.Filter);

   
end;

procedure TFrmMovto_Cartao.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMovto_Cartao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMovto_Cartao.DataSourceStateChange(Sender: TObject);
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
       ActConciliar.Enabled := False;
       ActLancarConciliacao.Enabled := False;
     End
  Else
  Begin
    ActIncluir.Enabled   := ActIncluir.Tag = 1;
    ActAlterar.Enabled   := ActAlterar.Tag = 1;
    ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
       ActConciliar.Enabled := True;
       ActLancarConciliacao.Enabled := ActLancarConciliacao.Tag = 1;
     End;
end;

procedure TFrmMovto_Cartao.ActFecharExecute(Sender: TObject);
begin
  If FrmMovto_Cartao.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMovto_Cartao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Acumulado := 0;

  Data.Date := DmApp.Data_Servidor ;

  //
  Try
    If Not(DsAdministradora.DataSet.Active)
    Then begin
         DsAdministradora.DataSet.Open ;
         DsAdministradora.DataSet.Tag := DsAdministradora.DataSet.Tag + 1 ;
    end;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

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
//  Datasource.AutoEdit := ActAlterar.Enabled;
  cmbPessoa.SetFocus;
  grid.FullExpand;
end;

procedure TFrmMovto_Cartao.ActLookupExecute(Sender: TObject);
begin
     If FrmMovto_Cartao.ActiveControl = cmbAdministradora Then
        btnAdministradoras.OnClick(btnAdministradoras);
     If FrmMovto_Cartao.ActiveControl = cmbPessoa Then
        btnPessoa.OnClick(btnPessoa);
end;

procedure TFrmMovto_Cartao.GRIDKeyPress(Sender: TObject; var Key: Char);
begin
     IF (( KEY = #13 ) and ( Not DataSource.DataSet.FieldByname ('BANCO').Isnull ))
     THEN BEGIN
          DataSource.DATASET.EDIT ;
          CMBpessoa.SetFocus ;
     END;
end;

procedure TFrmMovto_Cartao.dxDBEdit2Enter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmMovto_Cartao.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmMovto_Cartao.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If Not ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             DataSource.DataSet.Edit ;
        end;

        //Chama a Tela Para Localizar Cliente
        Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk) Then
        Begin
          DmFinanceiro.CartaoPESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho) ;
        end
        else begin
             If Frm_Localizar_Cliente.Cad = 'S'
             THEN
                 BtnPessoa.OnClick(BtnPessoa)
             else
                 CMBpessoa.setfocus ;
        end;

     Except
     end;

end;

procedure TFrmMovto_Cartao.ActConciliarExecute(Sender: TObject);
Var
   Book : TBookMark ;
begin
     IF ((DATA.TEXT <> '  /  /  ') AND (DATA.TEXT <> '  /  /    '))
     THEN BEGIN
          With DmFinanceiro do
          begin
               if Not ( Cartao.state in [ dsinsert, dsedit ] )
               then begin
                    //Data da Conciliacao
                    If CartaoConciliado.Value = 'S'
                    THEN BEGIN
                         DmApp.Concilia_Cartao( CARTAOCODIGO.Value, Data.Date, 'N' ) ;
                    END
                    ELSE BEGIN
                         DmApp.Concilia_Cartao( CARTAOCODIGO.Value, Data.Date, 'S' ) ;
                    END;

                    Book := Cartao.GetBookmark  ;
                    Cartao.Refresh ;
                    Cartao.GotoBookmark ( Book );
                    Cartao.FreeBookmark ( Book );
               end;
          End;
     END;
end;

procedure TFrmMovto_Cartao.ActAlterarExecute(Sender: TObject);
begin
  try
    with DmFinanceiro do
    begin
      if not DMApp.CaixaFechado(CartaoDATA.AsDateTime, CartaoUSUARIO.Value, CartaoTURNO.Value, CartaoCNPJ.Value) then
      begin
        if not ( DataSource.DataSet.State in [ dsinsert, dsedit ] ) then
          DataSource.DataSet.edit;
      end
      else Application.MessageBox('Cartão em caixa fechado não pode ser alterado','Erro', MB_OK);
    end;
  except
    Application.HandleException(self);
  end;
end;

procedure TFrmMovto_Cartao.BtnPessoaClick(Sender: TObject);
begin
     Try
        //
        If ActAlterar.Tag = 0 Then
        Exit;

        //
        If Datasource.DataSet.State = dsBrowse
        Then
            Datasource.DataSet.Edit;

        //
        { * * * * * }
        DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);

        { * * * * * }
{       If DMCadastros = Nil
        then
            DMCadastros := TDMCadastros.Create(Self)
        else
            DMCadastros.Tag := DMCadastros.Tag + 1;}

        //
        FrmClientes := TFrmClientes.Create(Application);

        FrmClientes.Showmodal ;
        //
        Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

        If DMCadastros <> Nil
        then
            DMCadastros.Tag := DMCadastros.Tag - 1;

        //
        cmbPessoa.SetFocus;
     except
          If DMCadastros <> Nil
          then
              DMCadastros.Tag := DMCadastros.Tag - 1;
     end;
end;

procedure TFrmMovto_Cartao.btnAdministradorasClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  DsAdministradora.dataset.Tag := DsAdministradora.dataset.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAdministradoras', False);
  { * * * * * }
  //
  FrmAdministradoras := TFrmAdministradoras.Create(Self);
  FrmAdministradoras.ShowModal;
  //
  Datasource.DataSet.FieldByName('ADMINISTRADORA').asInteger := FrmMain.Codigo_Int;
  FrmAdministradoras.Free;
  FrmAdministradoras := Nil;

  DsAdministradora.Tag := DsAdministradora.Tag - 1;

  //
  cmbadministradora.SetFocus;
end;

procedure TFrmMovto_Cartao.CmbTipoPessoaEnter(Sender: TObject);
begin
   CORFUNDO ( SENDER );
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmMovto_Cartao.ActPeriodoExecute(Sender: TObject);
begin
     Application.CreateForm(TFrmFiltra_Cartao, FrmFiltra_Cartao);
     FrmFiltra_Cartao.dsAdministradora.DataSet := DmFinanceiro.Administradora ;
     IF FrmFiltra_Cartao.ShowModal = MROK
     THEN BEGIN
          With DmFinanceiro do
          begin
               Cartao.Close;
               Cartao.SelectSql.text := ' select * from FIN_MOVIMENTO_CARTAO where CNPJ = :cnpj';
               //---------------------Data Lancto--------------------------//
               if (frmFiltra_Cartao.Ini.date > 0) then
                Cartao.SelectSQL.Add (' and DATA >= '+QuotedStr(FormatDateTime('mm/dd/yyyy',FrmFiltra_Cartao.ini.Date)));


               if (FrmFiltra_Cartao.Fim.date >0) then
                 Cartao.SelectSQL.Add (' and DATA <='+QuotedStr(FormatDateTime('mm/dd/yyyy',FrmFiltra_Cartao.Fim.Date)));

               //---------------------Data Reembolso--------------------------//
               if (FrmFiltra_Cartao.IniReembolso.date > 0) then
                 Cartao.SelectSQL.Add ('and REEMBOLSO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',FrmFiltra_Cartao.IniReembolso.Date)));

               if (FrmFiltra_Cartao.FimReembolso.date >0)then
                 Cartao.SelectSQL.Add (' and REEMBOLSO <= '+QuotedStr(FormatDateTime('mm/dd/yyyy',FrmFiltra_Cartao.FimReembolso.Date)));


               //---------------------Data Reeconciliação--------------------------//
               if (FrmFiltra_Cartao.iniconciliacao.date > 0) then
                 Cartao.SelectSQL.Add (' and DATA_CONCILIACAO >='+QuotedStr(FormatDateTime('mm/dd/yyyy',FrmFiltra_Cartao.FimReembolso.Date)));

               if (FrmFiltra_Cartao.Fimconciliacao.date >  0) then
                 Cartao.SelectSQL.Add (' and DATA_CONCILIACAO <= '+QuotedStr(FormatDateTime('mm/dd/yyyy',FrmFiltra_Cartao.Fimconciliacao.Date)));


               //----------------------Administradora-------------------------//
               if (FrmFiltra_Cartao.CmbAdministradora.Text <> '' )then
                 Cartao.SelectSQL.Add (' and ADMINISTRADORA = '+IntToStr(FrmFiltra_Cartao.CmbAdministradora.LookUpKeyValue));


               //----------------------Documento-------------------------//
               if ( FrmFiltra_Cartao.EdDocumento.Text <> '' ) then
                 Cartao.SelectSQL.Add (' and NUM_CARTAO Like ' + char(39) + '%' + FrmFiltra_Cartao.EdDocumento.Text+'%'+ char(39));

               Cartao.RefreshSQL.text := Cartao.SelectSQL.Text;
               Cartao.Open;
          END;
     END;

     FrmFiltra_Cartao.free ;
     FrmFiltra_Cartao := Nil;

     GRID.SETFOCUS ;
end;

procedure TFrmMovto_Cartao.ActLancarConciliacaoExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmConciliacaoCartao, FrmConciliacaoCartao);

  if FrmConciliacaoCartao.showmodal = MROK then
  begin
    DmFinanceiro.Cartao.Close      ;
    DmFinanceiro.Cartao.Open       ;
  end;

  FrmConciliacaoCartao.free      ;
  FrmConciliacaoCartao := Nil    ;
end;

procedure TFrmMovto_Cartao.GRID1CustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: String;
begin
     if (not ASelected) AND (NOT(DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))  then
     begin
          Value := ANode.Values[GRIDCONCILIADO.Index];

          if not VarIsNull(Value) then
          begin
            if Value = 'S' then
               AColor := $00ECAD84
            else
               AColor := clWhite;
          end
          else begin
               AFont.Color := clBlack;
          end;
     end;
end;

procedure TFrmMovto_Cartao.ActExportarHtmlExecute(Sender: TObject);
begin
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Movimento de Cartões.htm', Grid.SaveToHTML);
end;

procedure TFrmMovto_Cartao.ActExportarExcelExecute(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Movimento de Cartões.xls', Grid.SaveToXLS);
end;

procedure TFrmMovto_Cartao.ActConfCamposExecute(Sender: TObject);
begin
  pnlCampos.visible := (not pnlCampos.visible);
end;

procedure TFrmMovto_Cartao.Save(ADefaultExt, AFilter, AFileName: String;
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

procedure TFrmMovto_Cartao.TLCustomizeDragDrop(Sender, Source: TObject; X,
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

procedure TFrmMovto_Cartao.TLCustomizeDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    Accept := Source = Sender;
end;

procedure TFrmMovto_Cartao.TLCustomizeStartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  DragNode := TdxTreeList(Sender).FocusedNode;
end;

procedure TFrmMovto_Cartao.TLCustomizeIsVisibleToggleClick(Sender: TObject;
  const Text: String; State: TdxCheckBoxState);
var
  column : TdxTreeListColumn;
begin
   column := TdxTreeListColumn(TLCustomize.FocusedNode.Data);
   column.Visible := State = TdxCheckBoxState(cbsChecked);
end;

procedure TFrmMovto_Cartao.Synchronize;
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

procedure TFrmMovto_Cartao.ActSelecionaExecute(Sender: TObject);
var
 Book : TBookMark ;
begin
  with dmFinanceiro do
  begin
    if CartaoCONCILIADO.value = 'S' then
    begin
      Application.MessageBox('Movimento já se encontra conciliado','Aviso',mb_ok + mb_iconerror);
      exit;
    end;
    
    Book := Cartao.GetBookmark  ;
    dmFinanceiro2.Seleciona_Cartao(DmFinanceiro.CartaoCODIGO.asInteger,DmFinanceiro.CartaoPROCESSADO.asString);
    Cartao.Close;
    Cartao.Open;
    Cartao.GotoBookmark(Book);
    Cartao.FreeBookmark(Book);
  end;
end;
procedure TFrmMovto_Cartao.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Processado, Reembolso, Conciliado: Variant;
begin
  if ANode.HasChildren then
    Exit;

  if (not ASelected) and (not(DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))then
  begin
    Processado := ANode.Values[GRIDPROCESSADO.Index];
    if varIsNull(Processado) then
      Processado := 'N';

    Conciliado := ANode.Values[GRIDCONCILIADO.Index];
    if varIsNull(Conciliado) then
      Conciliado := 'N';

    Reembolso  := ANode.Values[GRIDREEMBOLSO.Index];

    if varIsNull(Reembolso) then
      Reembolso := StrToDate('01/01/2000');

    if (Conciliado = 'S') then //já conciliado
       AColor := $0047EFF8
    else if (Processado = 'S') then //selecionado para processar
       AColor := $00A2E6B8
    else if (Reembolso < dmapp.Data_Servidor) then //reembolso vencido
       AColor := $00ECAD84
    else //aberto
       AColor := clWhite;
  end
  else
    AFont.Color := clBlack;

end;

procedure TFrmMovto_Cartao.ActEstornarConciliacaoExecute(Sender: TObject);
begin
 if (dmfinanceiro.CartaoCONCILIADO.value = 'N') then
 begin
   Application.MessageBox('Impossível estornar. Movimento não se encontra conciliado','Aviso', mb_ok + mb_iconerror);
   exit;
 end;

 if (dmfinanceiro.CartaoPLANILHA.asInteger <= 0) then
 begin
   Application.MessageBox('Impossível estornar. Movimento não possui uma planilha de conciliação','Aviso', mb_ok + mb_iconerror);
   exit;
 end;

 if (Application.MessageBox(Pchar('Deseja realmente estornar o movimento de conciliação do registro '+dmfinanceiro.CartaoCODIGO.asString+' ?'),'Aviso',mb_yesno + mb_iconquestion) = id_yes) then
 begin
   with dmFinanceiro2 do
   begin
     try
      EstConciliaCartao.parambyname('cnpj').value := dmApp.cnpj;
      EstConciliaCartao.parambyname('codigo').value := dmfinanceiro.CartaoCODIGO.value;
      EstConciliaCartao.ExecProc;
      EstConciliaCartao.transaction.CommitRetaining;
      Application.messagebox('Estorno de conciliação realizado com sucesso','Aviso',mb_ok+mb_iconinformation);
      DmFinanceiro.Cartao.Close      ;
      DmFinanceiro.Cartao.Open
     except
      On E:Exception Do
      begin
        Application.messagebox(Pchar('Ocorreu o seguinte erro :'+ E.Message),'Aviso',mb_ok + mb_iconerror);
        EstConciliaCartao.transaction.RollbackRetaining;
      end;
     end
   end;
 end;
end;

end.



