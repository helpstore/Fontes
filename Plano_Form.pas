 unit Plano_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxTL, dxDBCtrl,
  dxDBGrid, dxExEdtr, Buttons, dxDBEdtr, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxLabel, cxTextEdit, cxDBEdit, cxMaskEdit,
  cxDropDownEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxCheckBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxPC, cxGroupBox, cxMemo, cxRadioGroup, cxCalc,
  cxPropertiesStore, cxSpinEdit;

type
  TFrmPlano = class(TForm)
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
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActConta: TAction;
    ActLookUp: TAction;
    DsBanco: TDataSource;
    ActFiltrar: TAction;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    Grid: TcxGrid;
    GridDBBandedTableView1: TcxGridDBBandedTableView;
    GridTV: TcxGridDBBandedTableView;
    GridLV: TcxGridLevel;
    GridTVCNPJ: TcxGridDBBandedColumn;
    GridTVCONTA: TcxGridDBBandedColumn;
    GridTVNOME: TcxGridDBBandedColumn;
    GridTVBANCO: TcxGridDBBandedColumn;
    GridTVULTIMO_CHEQUE: TcxGridDBBandedColumn;
    GridTVTIPO: TcxGridDBBandedColumn;
    GridTVAGENCIA: TcxGridDBBandedColumn;
    GridTVDV_AGENCIA: TcxGridDBBandedColumn;
    GridTVCONTA_CORRENTE: TcxGridDBBandedColumn;
    GridTVDV_CONTA_CORRENTE: TcxGridDBBandedColumn;
    GridTVDV_AGENCIA_CONTA: TcxGridDBBandedColumn;
    GridTVCTB_FLUXO_CAIXA: TcxGridDBBandedColumn;
    PC: TcxPageControl;
    Panel2: TPanel;
    tbsConta: TcxTabSheet;
    tbsBoleto: TcxTabSheet;
    lblTitulo: TcxLabel;
    b2: TBevel;
    Label1: TcxLabel;
    edtCodigo: TcxDBTextEdit;
    edtNome: TcxDBTextEdit;
    Label2: TcxLabel;
    Label9: TcxLabel;
    CmbTipo: TcxDBComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    lconta: TcxLabel;
    edtDigAgencia: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    edtAgencia: TcxDBTextEdit;
    LBLagencia: TcxLabel;
    BtnBanco: TcxButton;
    cmbBanco: TcxDBLookupComboBox;
    Label8: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBCheckBox1: TcxDBCheckBox;
    ckBoleto: TcxDBCheckBox;
    Label7: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    GroupBox3: TcxGroupBox;
    Label94: TcxLabel;
    Label97: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBCalcEdit1: TcxDBCalcEdit;
    GroupBox1: TcxGroupBox;
    Label80: TcxLabel;
    Label83: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBCalcEdit2: TcxDBCalcEdit;
    GroupBox2: TcxGroupBox;
    Label84: TcxLabel;
    Label87: TcxLabel;
    cxDBCalcEdit3: TcxDBCalcEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    GroupBox10: TcxGroupBox;
    Label106: TcxLabel;
    Label107: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBCalcEdit4: TcxDBCalcEdit;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    cxDBCalcEdit5: TcxDBCalcEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    Label66: TcxLabel;
    GroupBox9: TcxGroupBox;
    Label101: TcxLabel;
    Label100: TcxLabel;
    Label104: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    rgpLayout: TcxDBRadioGroup;
    cxGroupBox3: TcxGroupBox;
    Label36: TcxLabel;
    Label33: TcxLabel;
    cxLabel7: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxDBCalcEdit6: TcxDBCalcEdit;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    cxDBTextEdit15: TcxDBTextEdit;
    cxDBMemo2: TcxDBMemo;
    GridTVGERA_BOLETOS: TcxGridDBBandedColumn;
    GridTVBLT_INSTRUCAO: TcxGridDBBandedColumn;
    GridTVBLT_LOCAL_PAGTO: TcxGridDBBandedColumn;
    GridTVBLT_COD_CEDENTE: TcxGridDBBandedColumn;
    GridTVBLT_DIG_COD_CEDENTE: TcxGridDBBandedColumn;
    GridTVBLT_CONVENIO: TcxGridDBBandedColumn;
    GridTVBLT_CARTEIRA: TcxGridDBBandedColumn;
    GridTVBLT_LAYOUT: TcxGridDBBandedColumn;
    GridTVBLT_ACEITE_DOCTO: TcxGridDBBandedColumn;
    GridTVBLT_DIAS_ABATIMENTO: TcxGridDBBandedColumn;
    GridTVBLT_DIAS_DESCONTO: TcxGridDBBandedColumn;
    GridTVBLT_DIAS_MORA_JUROS: TcxGridDBBandedColumn;
    GridTVBLT_DIAS_PROTESTO: TcxGridDBBandedColumn;
    GridTVBLT_PCT_ABATIMENTO: TcxGridDBBandedColumn;
    GridTVBLT_PCT_DESCONTO: TcxGridDBBandedColumn;
    GridTVDESP_BANCARIA: TcxGridDBBandedColumn;
    GridTVMORA_DIARIA: TcxGridDBBandedColumn;
    GridTVBLT_VLR_IOF: TcxGridDBBandedColumn;
    GridTVBLT_VLR_OUTRAS_DESP: TcxGridDBBandedColumn;
    GridTVBLT_DIR_REMESSA: TcxGridDBBandedColumn;
    GridTVBLT_DIR_RETORNO: TcxGridDBBandedColumn;
    GridTVBLT_MULTA: TcxGridDBBandedColumn;
    GridTVBLT_NOSSO_NUM_INI: TcxGridDBBandedColumn;
    GridTVBLT_NOSSO_NUM_FIM: TcxGridDBBandedColumn;
    GridTVBLT_NOSSO_NUM_PROX: TcxGridDBBandedColumn;
    StgFrmPlano: TcxPropertiesStore;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBSpinEdit1: TcxDBSpinEdit;
    cxLabel8: TcxLabel;
    cxLabel12: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure BtnBancoClick(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
    procedure ActContaExecute(Sender: TObject);
    procedure ED4Enter(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure edtCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtCodigoEnter(Sender: TObject);
    procedure edtCodigoExit(Sender: TObject);
    procedure cxDBCheckBox2PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure dxBarDBNavFirst1Click(Sender: TObject);
    procedure dxBarDBNavPrev1Click(Sender: TObject);
    procedure dxBarDBNavNext1Click(Sender: TObject);
    procedure dxBarDBNavLast1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmPlano: TFrmPlano;

implementation

uses
     Plano_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Funcoes,
     Usuarios_DM,
     Bancos_Form,
     Cadastros_DM ;


{$R *.DFM}

procedure TFrmPlano.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CONTA').asInteger;

  //
  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If DsBanco.DataSet.Tag = 0 Then
     DsBanco.Dataset.Close;


  If DMPlano.Tag = 0 Then
     Begin
       DMPlano.Free;
       DMPlano := Nil;
     End;

  If FrmPlano.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmPlano := Nil;
end;

procedure TFrmPlano.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Append;
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
  edtNome.SetFocus;
end;

procedure TFrmPlano.ActExcluirExecute(Sender: TObject);
begin
  TRY
     If MessageBox(Handle,'Tem certeza que deseja Excluir esta Conta ?',
                   'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
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

procedure TFrmPlano.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
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

procedure TFrmPlano.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmPlano.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
    If Not(DsBanco.DataSet.Active) Then
       DsBanco.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    (Datasource.DataSet as TIBDataset).FetchAll;
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
  edtNome.SetFocus;
  tbsBoleto.TabVisible := (ckBoleto.Checked);
end;

procedure TFrmPlano.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  PC.ActivePageIndex := 0;   
end;

procedure TFrmPlano.ActListagemExecute(Sender: TObject);
begin
  //
  DMPLANO.lsPlano;
end;

procedure TFrmPlano.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmPlano.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmPlano.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmPlano.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
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

procedure TFrmPlano.ActFecharExecute(Sender: TObject);
begin
  If FrmPlano.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmPlano.BtnBancoClick(Sender: TObject);
begin
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);
  { * * * * * }


  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag + 1;

  //
  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowModal;
  //
  Datasource.DataSet.FieldByName('BANCO').asString := FrmMain.Codigo_Str;

  FrmBancos.Free;
  FrmBancos := Nil;

  DmCadastros.Tag := DmCadastros.Tag - 1;

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag - 1;

  //
  cmbBanco.SetFocus;
end;

procedure TFrmPlano.ActLookUpExecute(Sender: TObject);
begin
  If FrmPlano.ActiveControl = cmbBanco Then
     btnBanco.OnClick(btnBanco);
end;

procedure TFrmPlano.ActContaExecute(Sender: TObject);
begin
     edtNome.SetFocus ;
end;

procedure TFrmPlano.ED4Enter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmPlano.EdCodigoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmPlano.edtCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmPlano.edtCodigoEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFrmPlano.edtCodigoExit(Sender: TObject);
begin
 TIRACORFUNDO(SENDER);
end;

procedure TFrmPlano.cxDBCheckBox2PropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  tbsBoleto.TabVisible := (ckBoleto.Checked);
end;

procedure TFrmPlano.dxBarDBNavFirst1Click(Sender: TObject);
begin
   DataSource.DataSet.First;
   tbsBoleto.TabVisible := (ckBoleto.Checked);
end;

procedure TFrmPlano.dxBarDBNavPrev1Click(Sender: TObject);
begin
  DataSource.DataSet.Prior;
   tbsBoleto.TabVisible := (ckBoleto.Checked);
end;

procedure TFrmPlano.dxBarDBNavNext1Click(Sender: TObject);
begin
  DataSource.DataSet.Next;
   tbsBoleto.TabVisible := (ckBoleto.Checked);
end;

procedure TFrmPlano.dxBarDBNavLast1Click(Sender: TObject);
begin
  DataSource.DataSet.Last;
  tbsBoleto.TabVisible := (ckBoleto.Checked);
end;

end.
