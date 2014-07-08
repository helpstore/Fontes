 unit Total_Diario_Prosoft_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet,
  dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,    
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, cxStyles, cxCustomData,
  cxGraphics, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxControls, cxGridCustomView, cxGrid, cxNavigator,
  cxDBNavigator, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxPC, cxLabel;

type
  TfrmProsoftTotalDiario = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Navigator: TdxBarDBNavigator;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    DataSource: TDataSource;
    GRID: TdxDBGrid;
    Panel2: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    Label10: TcxLabel;
    edtNSeqECF: TdxDBEdit;
    Label1: TcxLabel;
    EdCodigo: TdxDBEdit;
    edtDtEntrada: TdxDBDateEdit;
    Label8: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    Label2: TcxLabel;
    Label5: TcxLabel;
    Label3: TcxLabel;
    edtCOA: TdxDBCalcEdit;
    Label6: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label4: TcxLabel;
    dxDBCalcEdit3: TdxDBCalcEdit;
    Label7: TcxLabel;
    dxDBCalcEdit4: TdxDBCalcEdit;
    Label9: TcxLabel;
    edtTGIni: TdxDBCalcEdit;
    Label11: TcxLabel;
    Label12: TcxLabel;
    edtTGFin: TdxDBCalcEdit;
    dxDBCalcEdit7: TdxDBCalcEdit;
    Label13: TcxLabel;
    dxDBCalcEdit8: TdxDBCalcEdit;
    Label14: TcxLabel;
    dxDBCalcEdit9: TdxDBCalcEdit;
    Label15: TcxLabel;
    dxDBCalcEdit10: TdxDBCalcEdit;
    Label16: TcxLabel;
    dxDBCalcEdit12: TdxDBCalcEdit;
    Label18: TcxLabel;
    dxDBCalcEdit13: TdxDBCalcEdit;
    Label19: TcxLabel;
    dxDBCalcEdit14: TdxDBCalcEdit;
    Label20: TcxLabel;
    dxDBCalcEdit15: TdxDBCalcEdit;
    Label21: TcxLabel;
    dxDBCalcEdit16: TdxDBCalcEdit;
    Label22: TcxLabel;
    dxDBCalcEdit17: TdxDBCalcEdit;
    Label23: TcxLabel;
    Label24: TcxLabel;
    dxDBCalcEdit18: TdxDBCalcEdit;
    Label25: TcxLabel;
    dxDBCalcEdit19: TdxDBCalcEdit;
    dxDBCalcEdit20: TdxDBCalcEdit;
    Label26: TcxLabel;
    dxDBCalcEdit21: TdxDBCalcEdit;
    Label27: TcxLabel;
    dxDBCalcEdit22: TdxDBCalcEdit;
    Label28: TcxLabel;
    dxDBCalcEdit23: TdxDBCalcEdit;
    Label29: TcxLabel;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA_MOVIMENTO: TdxDBGridDateColumn;
    GRIDNUM_SEQ_ECF: TdxDBGridMaskColumn;
    GRIDNUM_SER_ECF: TdxDBGridMaskColumn;
    GRIDCT_OO_ANT: TdxDBGridMaskColumn;
    GRIDCT_OO_FIN: TdxDBGridMaskColumn;
    GRIDCT_RED_Z_FIN: TdxDBGridMaskColumn;
    GRIDNUM_ULT_DOC_IMP: TdxDBGridMaskColumn;
    GRIDNUM_CONT_R_OO: TdxDBGridMaskColumn;
    GRIDTT_GERAL_INI: TdxDBGridMaskColumn;
    GRIDTT_GERAL_FIN: TdxDBGridMaskColumn;
    GRIDMOVIMENTO_DIA: TdxDBGridMaskColumn;
    GRIDCANCELAMENTOS: TdxDBGridMaskColumn;
    GRIDDESCCONTOS: TdxDBGridMaskColumn;
    GRIDTT_OP_ISS: TdxDBGridMaskColumn;
    GRIDACRESCIMO: TdxDBGridMaskColumn;
    GRIDVALOR_CONTABIL: TdxDBGridMaskColumn;
    GRIDF_SUB_TRIB: TdxDBGridMaskColumn;
    GRIDI_ISENTAS: TdxDBGridMaskColumn;
    GRIDN_INCIDENCIA: TdxDBGridMaskColumn;
    GRIDSUSPENSAO: TdxDBGridMaskColumn;
    GRIDALIQ_ICMS_01: TdxDBGridMaskColumn;
    GRIDDEBITO_ICMS_01: TdxDBGridMaskColumn;
    GRIDBASE_ICMS_01: TdxDBGridMaskColumn;
    GRIDPCT_REDUCAO_01: TdxDBGridMaskColumn;
    GRIDVALOR_S_REDUCAO_01: TdxDBGridMaskColumn;
    GRIDVALOR_C_REDUCAO_01: TdxDBGridMaskColumn;
    GRIDVALOR_ICMS_01: TdxDBGridMaskColumn;
    GRIDVALOR_OUTRAS_01: TdxDBGridMaskColumn;
    GRIDVALOR_ISENTAS_01: TdxDBGridMaskColumn;
    Label30: TcxLabel;
    dxDBCalcEdit24: TdxDBCalcEdit;
    dxDBCalcEdit25: TdxDBCalcEdit;
    Label31: TcxLabel;
    dxDBCalcEdit26: TdxDBCalcEdit;
    Label32: TcxLabel;
    Label33: TcxLabel;
    Label34: TcxLabel;
    Label17: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label37: TcxLabel;
    Label38: TcxLabel;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    OptAlterar: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    edtCOF: TdxDBCalcEdit;
    dxTabSheet2: TcxTabSheet;
    dxDBEdit2: TdxDBEdit;
    Label39: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label40: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Label41: TcxLabel;
    dsAliquota: TDataSource;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1ALIQUOTA: TcxGridDBColumn;
    cxGrid2DBTableView1VALOR: TcxGridDBColumn;
    cxNavigator2: TcxNavigator;
    btnHelp: TdxBarButton;
    ActHelp: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActHelpExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProsoftTotalDiario: TfrmProsoftTotalDiario;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form, Cadastros_Dm2, HelpReducao_Form;

{$R *.DFM}

procedure TfrmProsoftTotalDiario.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  Action := caFree;
  frmProsoftTotalDiario := Nil;

  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TfrmProsoftTotalDiario.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Append;
end;

procedure TfrmProsoftTotalDiario.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja excluir este registro?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TfrmProsoftTotalDiario.ActPostExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
  begin
     if (dmCadastros2.ProsoftCFMestreDATA_MOVIMENTO.Value <= 0) then
     begin
       Application.MessageBox('Defina a data do movimento','Aviso',mb_ok+mb_iconerror);
       edtDtEntrada.SetFocus;
       exit;
     end;

     if (dmCadastros2.ProsoftCFMestreNUM_SEQ_ECF.AsString = '') then
     begin
       Application.MessageBox('Defina o número sequencial do ECF','Aviso',mb_ok+mb_iconerror);
       edtNSeqECF.SetFocus;
       exit;
     end;

    { if (dmCadastros2.ProsoftCFMestreCT_OO_ANT.AsString = '') then
     begin
       Application.MessageBox('Defina o Contador de Operação Anterior','Aviso',mb_ok+mb_iconerror);
       edtCOA.SetFocus;
       exit;
     end;}

     if (dmCadastros2.ProsoftCFMestreCT_OO_FIN.AsString = '') then
     begin
       Application.MessageBox('Defina o Contador de Operação Final','Aviso',mb_ok+mb_iconerror);
       edtCOF.SetFocus;
       exit;
     end;

     {if (dmCadastros2.ProsoftCFMestreTT_GERAL_INI.AsString = '') then
     begin
       Application.MessageBox('Defina o Total Geral do Inicio do Dia','Aviso',mb_ok+mb_iconerror);
       edtTGIni.SetFocus;
       exit;
     end; }

     if (dmCadastros2.ProsoftCFMestreTT_GERAL_FIN.AsString = '') then
     begin
       Application.MessageBox('Defina o Total Geral do Final do Dia','Aviso',mb_ok+mb_iconerror);
       edtTGFin.SetFocus;
       exit;
     end;

     DataSource.DataSet.Post;
     DMApp.Transaction.CommitRetaining;
  end;
end;

procedure TfrmProsoftTotalDiario.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TfrmProsoftTotalDiario.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try

     If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;

     If Not(dsAliquota.DataSet.Active) Then
       dsAliquota.DataSet.Open;

     (Datasource.DataSet as TIBDataset).FetchAll;
     (dsAliquota.DataSet as TIBDataset).FetchAll;
     edtDtEntrada.Setfocus;
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

procedure TfrmProsoftTotalDiario.FormCreate(Sender: TObject);
begin
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  pc.ActivePageIndex := 0;   
end;

procedure TfrmProsoftTotalDiario.EdCodigoKeyDown(Sender: TObject; var Key: Word;
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

procedure TfrmProsoftTotalDiario.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmProsoftTotalDiario.DataSourceStateChange(Sender: TObject);
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

procedure TfrmProsoftTotalDiario.ActFecharExecute(Sender: TObject);
begin
  If frmProsoftTotalDiario.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TfrmProsoftTotalDiario.cmbNomeRazaoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TfrmProsoftTotalDiario.cmbNomeRazaoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TfrmProsoftTotalDiario.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    DataSource.DataSet.Edit;
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

procedure TfrmProsoftTotalDiario.ActHelpExecute(Sender: TObject);
begin
  frmHelpReducaoZ := TfrmHelpReducaoZ.Create(Self);
  frmHelpReducaoZ.ShowModal;
  frmHelpReducaoZ.Free;
  frmHelpReducaoZ := nil;
end;

end.
