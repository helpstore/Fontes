unit DigitaCotacoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxBar,   StdCtrls, ExtCtrls,
  ActnList, dxExEdtr, Db, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl,
  dxBarDBNav, dxDBEdtr, Buttons, cxPropertiesStore, cxGraphics, cxControls,
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
  cxClasses, cxButtons, cxLabel;

type
  TFrmDigitaCotacoes = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    DsMoeda: TDataSource;
    DataSource: TDataSource;
    Panel2: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel3: TPanel;
    Label3: TcxLabel;
    Label2: TcxLabel;
    Label1: TcxLabel;
    Panel4: TPanel;
    GRID: TdxDBGrid;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    btnAlterar: TdxBarButton;
    btnMoeda: TcxButton;
    cmbMoeda: TdxDBLookupEdit;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDCOD_MOEDA: TdxDBGridMaskColumn;
    GRIDMOEDA: TdxDBGridMaskColumn;
    GRIDSIGLA: TdxDBGridMaskColumn;
    Navigator: TdxBarDBNavigator;
    edtValor: TdxDBCalcEdit;
    edtData: TdxDBDateEdit;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    btnGerarCotacoes: TdxBarButton;
    ActGerarRegCot: TAction;
    stgCotMoedas: TcxPropertiesStore;
    procedure FecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure btnMoedaClick(Sender: TObject);
    procedure ActGerarRegCotExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbMoedaEnter(Sender: TObject);
    procedure cmbMoedaExit(Sender: TObject);
    procedure cmbMoedaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDigitaCotacoes: TFrmDigitaCotacoes;

implementation

uses Application_DM, Moedas_Form, Main, Funcoes, Usuarios_DM,
  Financeiro_Dm2;

{$R *.DFM}

procedure TFrmDigitaCotacoes.FecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmDigitaCotacoes.FormShow(Sender: TObject);
begin
  DmFinanceiro2.Moeda.Close;
  DmFinanceiro2.Moeda.Open;

  dmFinanceiro2.Cotacoes.Close;
  dmFinanceiro2.Cotacoes.Open;
end;

procedure TFrmDigitaCotacoes.ActIncluirExecute(Sender: TObject);
begin
  try

    If Navigator.DataSource.State in dsEditModes Then
      Exit;

    Navigator.DataSource.DataSet.Append;
    cmbMoeda.setfocus;
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
  end;
end;

procedure TFrmDigitaCotacoes.ActExcluirExecute(Sender: TObject);
begin
  If Application.Messagebox('Tem certeza que deseja excluir esta cotação?','Aviso',MB_iconquestion + mb_yesno) = ID_YES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmDigitaCotacoes.ActAlterarExecute(Sender: TObject);
begin
   If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Edit;

  cmbMoeda.SetFocus;
end;

procedure TFrmDigitaCotacoes.ActPostExecute(Sender: TObject);
begin
  Try
    if (DataSource.DataSet.state in [dsEdit,dsInsert]) then
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

procedure TFrmDigitaCotacoes.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmDigitaCotacoes.btnMoedaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMoedas', False);

  FrmMoedas := TFrmMoedas.Create(Self);

  FrmMoedas.ShowModal;
  FrmMoedas.Free;
  FrmMoedas := Nil;
  Datasource.DataSet.FieldByName('COD_MOEDA').value := FrmMain.Codigo_Int ;
  DmFinanceiro2.Moeda.Close;
  DmFinanceiro2.Moeda.Open;
  cmbMoeda.SetFocus;
end;

procedure TFrmDigitaCotacoes.ActGerarRegCotExecute(Sender: TObject);
begin
  Try
    DmaPP.Transaction.CommitRetaining ;

    If Not DmaPP.Transaction.InTransaction then
      DmaPP.Transaction.StartTransaction ;

    DmFinanceiro2.PCD_GERA_COTACOES.ParamByName('data').value := dmApp.DataCaixa;
    DmFinanceiro2.PCD_GERA_COTACOES.ExecProc;
    
    Application.MessageBox('Cotações geradas com sucesso','Aviso',mb_ok + mb_iconinformation);
    DmApp.Transaction.CommitRetaining ;
    dmFinanceiro2.Cotacoes.Close;
    dmFinanceiro2.Cotacoes.Open;
  except
     On E:EDataBaseError Do
     Begin
       MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
     End
     Else
     Begin
       MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
     End;
     DmApp.Transaction.RollbackRetaining  ;
  end;
end;

procedure TFrmDigitaCotacoes.FormCreate(Sender: TObject);
begin

  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmDigitaCotacoes.cmbMoedaEnter(Sender: TObject);
begin
   CorFundo ( Sender );
end;

procedure TFrmDigitaCotacoes.cmbMoedaExit(Sender: TObject);
begin
  TiraCorFundo ( Sender );
end;

procedure TFrmDigitaCotacoes.cmbMoedaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);

  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDigitaCotacoes.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

end.
