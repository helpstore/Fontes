 unit Recibos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBGrid,   dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmRecibos = class(TForm)
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
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    ActLookup: TAction;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    Bevel2: TBevel;
    ActSelecao: TAction;
    Label5: TcxLabel;
    cmbPessoa: TdxDBLookupEdit;
    Label2: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label7: TcxLabel;
    dxBarEdit1: TdxBarEdit;
    Label13: TcxLabel;
    Label3: TcxLabel;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    GRIDIMPRESSO: TdxDBGridColumn;
    CkTipo: TCheckBox;
    DsPessoas: TDataSource;
    Label10: TcxLabel;
    CmbBoleto: TdxDBPickEdit;
    Label6: TcxLabel;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    stgFrmRecibos: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActSelecaoExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure dxDBEdit1Enter(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmRecibos: TFrmRecibos;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form,
     Financeiro_Dm, SerieCustomizaveis_DM, SeriesCustomizaveis,
  Relatorios_DM2, Receber_Form, Financeiro_Dm2;

{$R *.DFM}

procedure TFrmRecibos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       Datasource.Dataset.Close;
       dsPessoas.DataSet.Close;

       Action := caFree;
       FrmRecibos := Nil;

       FrmMain.PnlClient.Visible := True;
end;

procedure TFrmRecibos.ActIncluirExecute(Sender: TObject);
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
  cmbPessoa.setfocus;
end;

procedure TFrmRecibos.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Conta ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmRecibos.ActPostExecute(Sender: TObject);
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

procedure TFrmRecibos.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmRecibos.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmRecibos.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmRecibos.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmRecibos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmRecibos.DataSourceStateChange(Sender: TObject);
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

procedure TFrmRecibos.ActFecharExecute(Sender: TObject);
begin
  If FrmRecibos.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmRecibos.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmRecibos.ActSelecaoExecute(Sender: TObject);
begin
     With DmFinanceiro2 do
     begin
          Recibos.Close ;
          Recibos.SelectSql.Clear ;
          Recibos.SelectSql.Add (' Select * From Fin_Recibos ');
          Recibos.SelectSql.Add (' Where Cnpj = :Cnpj ');
          Recibos.SelectSql.Add (' and IMPRESSO = :IMP ');
          If Not CkTipo.Checked
          then
              Recibos.Params.ByName ('IMP').asString := 'S'
          Else
              Recibos.Params.ByName ('IMP').asString := 'N' ;

          Recibos.Prepare ;
          Recibos.Open    ;

          CkTipo.Checked := Not CkTipo.Checked ;
     END;
end;

procedure TFrmRecibos.BtnPessoaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  DsPessoas.DataSet.Tag := DsPessoas.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPessoasFJ', False);
  { * * * * * }
  //
  FrmPessoasFJ := TFrmPessoasFJ.Create(Self);
  FrmPessoasFJ.ShowModal;
  //
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  DsPessoas.DataSet.Tag := DsPessoas.DataSet.Tag - 1;
  DMCadastros.Tag := DMCadastros.Tag - 1;

  // Fechando Datasets desnecessários
  DMCadastros.Logradouros.Close;
  DMCadastros.Bairros.Close;
  DMCadastros.Cidades.Close;

  //
  cmbPessoa.SetFocus;
end;

procedure TFrmRecibos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(dsPessoas.DataSet.Active) Then
       dsPessoas.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

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
  cmbPessoa.SetFocus;
end;

procedure TFrmRecibos.ActListagemExecute(Sender: TObject);
var
  Integral : string;
begin
     With DmFinanceiro2 do
     begin
       

       Recibos.edit ;
       Recibosimpresso.value := 'S' ;
       Recibos.post ;
     end;
end;

procedure TFrmRecibos.dxDBEdit1Enter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmRecibos.dxDBEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

end.
