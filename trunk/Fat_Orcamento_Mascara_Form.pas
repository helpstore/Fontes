 unit Fat_Orcamento_Mascara_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, DBCtrls, Grids, DBGrids,
  DBCGrids, dxExEdtr,  dxDBEdtr, cxGraphics, cxControls,
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
  TFrmOrcamentos_Mascaras = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
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
    Label2: TcxLabel;
    edCodigo: TdxDBEdit;
    EdInicial: TdxDBEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    FecharAlteracao: TdxBarButton;
    ActFecharAlteracao: TAction;
    GRID: TDBCtrlGrid;
    Panel2: TPanel;
    Label8: TcxLabel;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    BtnCadastrar: TcxButton;
    DsGrupo: TDataSource;
    CmbGrupo: TdxDBLookupEdit;
    Label3: TcxLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    DsSubgrupo: TDataSource;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    ednome: TdxDBEdit;
    DsAgrupador: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure BtnCadastrarClick(Sender: TObject);
    procedure EdPorcentagemExit(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure CmbGrupoExit(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmOrcamentos_Mascaras: TFrmOrcamentos_Mascaras;

implementation

uses Cadastros_DM,
     Estoque_Dm, 
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes ;

{$R *.DFM}

procedure TFrmOrcamentos_Mascaras.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.Dataset.Tag = 0
  Then
      Datasource.Dataset.Close;

  If DsAgrupador.Dataset.Tag = 0
  Then
      DsAgrupador.Dataset.Close;

  If DsGrupo.Dataset.Tag = 0
  Then
      DsGrupo.Dataset.Close;

  If DsSubgrupo.Dataset.Tag = 0
  Then
      DsSubgrupo.Dataset.Close;

{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}

  //
  Action := caFree;
  FrmOrcamentos_Mascaras := Nil;

  If FrmMain.MDIChildCount = 1 Then
     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmOrcamentos_Mascaras.ActIncluirExecute(Sender: TObject);
begin
     Try
        if FrmOrcamentos_Mascaras.ActiveControl = EdInicial
        then begin
             If DsAgrupador.State in dsEditModes
             Then
                 Exit;

             DsAgrupador.DataSet.Append;
             EdInicial.SetFocus;
        end
        else begin
             If DataSource.State in dsEditModes
             Then
                 Exit;

             DataSource.DataSet.Append;
             ednome.SetFocus;
        end;
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

procedure TFrmOrcamentos_Mascaras.ActExcluirExecute(Sender: TObject);
begin
     if FrmOrcamentos_Mascaras.ActiveControl = EdInicial
     then begin
          If MessageBox(Handle,'Tem certeza que deseja Excluir esta Máscara ?',
             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
             DsAgrupador.Dataset.Delete;
     end
     else begin
          If MessageBox(Handle,'Tem certeza que deseja Excluir este Item da Máscara ?',
             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
             DataSource.Dataset.Delete;
     end;
end;

procedure TFrmOrcamentos_Mascaras.ActPostExecute(Sender: TObject);
begin
  Try
     if FrmOrcamentos_Mascaras.ActiveControl = EdInicial
     then begin
          DsAgrupador.DataSet.Post;
     end
     else begin
          DataSource.DataSet.Post;
     end;

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

procedure TFrmOrcamentos_Mascaras.ActCancelExecute(Sender: TObject);
begin
     if FrmOrcamentos_Mascaras.ActiveControl = EdInicial
     then begin
          If DsAgrupador.DataSet.active and  ( DsAgrupador.DataSet.State in dsEditModes) Then
             DsAgrupador.DataSet.Cancel
          Else
              BtnFechar.OnClick(BtnFechar);
     end
     else begin
          If DataSource.DataSet.active and  ( DataSource.DataSet.State in dsEditModes) Then
             DataSource.DataSet.Cancel
          Else
              BtnFechar.OnClick(BtnFechar);
     end;
end;

procedure TFrmOrcamentos_Mascaras.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmOrcamentos_Mascaras.ActLocalizarExecute(Sender: TObject);
begin
     DMApp.Localizar(DsAgrupador);
end;

procedure TFrmOrcamentos_Mascaras.edCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrcamentos_Mascaras.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmOrcamentos_Mascaras.DataSourceStateChange(Sender: TObject);
begin
  If ( DataSource.State in dsEditModes ) or
     ( DsAgrupador.State in dsEditModes )Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
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
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmOrcamentos_Mascaras.ActFecharExecute(Sender: TObject);
begin
  If FrmOrcamentos_Mascaras.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmOrcamentos_Mascaras.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  If Not DsAgrupador.DataSet.active
  then
      DsAgrupador.DataSet.Open ;

  If Not DataSource.DataSet.active
  then
      DataSource.DataSet.Open ;

  If Not DsGrupo.DataSet.active
  then
      DsGrupo.DataSet.Open ;

  If Not DsSubgrupo.DataSet.active
  then
      DsSubgrupo.DataSet.Open ;
end;

procedure TFrmOrcamentos_Mascaras.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmOrcamentos_Mascaras.BtnCadastrarClick(Sender: TObject);
begin
     if FrmOrcamentos_Mascaras.ActiveControl = EdInicial
     then begin
          If DsAgrupador.DataSet.State in [ dsinsert, dsedit ]
          then begin
               DsAgrupador.DataSet.Post ;
               EdInicial.SetFocus ;
          end;
     end
     else begin
          If DataSource.DataSet.State in [ dsinsert, dsedit ]
          then begin
               DataSource.DataSet.Post ;
               ednome.SetFocus ;
          end;
     end;
end;

procedure TFrmOrcamentos_Mascaras.EdPorcentagemExit(Sender: TObject);
begin
    //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmOrcamentos_Mascaras.EdValorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmOrcamentos_Mascaras.DataSourceUpdateData(Sender: TObject);
begin
     If DataSource.DataSet.FieldByName('NOME').IsNull
     then begin
          EdInicial.SetFocus ;
          Abort ;
     end;

     If DataSource.DataSet.FieldByName('Grupo').IsNull
     then begin
          CmbGrupo.SetFocus ;
          Abort ;
     end;
end;

procedure TFrmOrcamentos_Mascaras.CmbGrupoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmOrcamentos_Mascaras.Panel2Enter(Sender: TObject);
begin
     if DsAgrupador.state in [dsedit, dsinsert]
     then
         DsAgrupador.dataset.post ;
end;

end.
