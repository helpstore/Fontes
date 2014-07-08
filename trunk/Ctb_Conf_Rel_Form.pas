 unit Ctb_Conf_Rel_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet,  dxTL,
  dxDBCtrl, dxDBGrid,   dxExEdtr, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxPC, cxLabel;

type
  TFrmCtbConfRel = class(TForm)
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
    b2: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    OptAlterar: TdxBarButton;
    LblTitulo: TcxLabel;
    DsContas: TDataSource;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    EdInicial: TdxDBEdit;
    Label2: TcxLabel;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    dxTabSheet2: TcxTabSheet;
    GRIDSELECIONADAS: TdxDBGrid;
    GRIDSELECIONADASColumn1: TdxDBGridMaskColumn;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    GRIDCONTAS: TdxDBGrid;
    GRIDCONTASNOME: TdxDBGridMaskColumn;
    GRIDCONTASCONTA: TdxDBGridColumn;
    DsContasSelecionadas: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure pcChange(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmCtbConfRel: TFrmCtbConfRel;

implementation

uses Plano_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes;

{$R *.DFM}

procedure TFrmCtbConfRel.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //
  If DMPlano.Tag = 0 Then
     Begin
       DMPlano.Free;
       DMPlano := Nil;
     End;
  //
  If FrmCtbConfRel.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmCtbConfRel := Nil;
end;

procedure TFrmCtbConfRel.ActIncluirExecute(Sender: TObject);
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
  EdInicial.SetFocus;
end;

procedure TFrmCtbConfRel.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCtbConfRel.ActPostExecute(Sender: TObject);
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

procedure TFrmCtbConfRel.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCtbConfRel.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
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
//  Datasource.AutoEdit := ActAlterar.Enabled;
  EdInicial.SetFocus;
end;

procedure TFrmCtbConfRel.FormCreate(Sender: TObject);
begin
     PC.ACTIVEPAGEINDEX := 0;

     //
     ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';

     // Se o Usuário for Supervisor
     If DMUsuarios.Direito = 'SUPERVISOR' Then
        DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
     Else If DMUsuarios.Objeto = Self.Name Then
          AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCtbConfRel.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmCtbConfRel.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCtbConfRel.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmCtbConfRel.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCtbConfRel.ActFecharExecute(Sender: TObject);
begin
  If FrmCtbConfRel.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCtbConfRel.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmCtbConfRel.ActAlterarExecute(Sender: TObject);
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

procedure TFrmCtbConfRel.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCtbConfRel.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCtbConfRel.pcChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
     IF FrmCtbConfRel <> nIL
     THEN BEGIN
          IF DataSource.State IN [ DSINSERT, DSEDIT ]
          THEN
              AllowChange := False ;
     end;
end;

procedure TFrmCtbConfRel.pcChange(Sender: TObject);
begin
     IF FrmCtbConfRel.pc.ActivePageIndex = 1
     THEN BEGIN
          With DmPlano do
          begin
               PLANO_CONF_REL.close ;

               PLANO_CONF_REL.ParamByName ( 'CODIGO' ).ASinteger := CONFIG_RELCODIGO.value  ;

               PLANO_CONF_REL.open  ;

               CONFIG_REL_CONTAS.Open ;

               VER_CTB_CONFIGURA_REL_CONTAS.Close ;

               VER_CTB_CONFIGURA_REL_CONTAS.ParamByName ( 'CODIGO' ).ASinteger := CONFIG_RELCODIGO.value  ;

               VER_CTB_CONFIGURA_REL_CONTAS.Open ;
          END;
     end
     else begin
          With DmPlano do
          begin
               PLANO_CONF_REL.close ;

               CONFIG_REL_CONTAS.Close ;

               VER_CTB_CONFIGURA_REL_CONTAS.Close ;
          END;
     end;
end;

procedure TFrmCtbConfRel.RzBitBtn1Click(Sender: TObject);
begin
     If Datasource.DataSet.RecordCount > 0
     Then Begin
          With DmPlano do
          begin
               //
               CONFIG_REL_CONTAS.Append;
               CONFIG_REL_CONTAS.FieldByName('CONTA').asInteger := PLANO_CONF_RELCONTA.VALUE ;
               CONFIG_REL_CONTAS.Post;

               //
               DMApp.Transaction.CommitRetaining;
               //
               PLANO_CONF_REL.Close ;
               PLANO_CONF_REL.Open  ;

               DsContasSelecionadas.DataSet.Close ;
               DsContasSelecionadas.DataSet.Open  ;
          end;
     End;
end;

procedure TFrmCtbConfRel.RzBitBtn2Click(Sender: TObject);
begin
     //
     If DsContasSelecionadas.DataSet.RecordCount > 0 Then
     Begin
       If MessageBox(Handle,'Tem certeza que deseja Excluir esta Conta?',
                            'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then

       DMPLANO.EXCLUI_CONTA_CONF_REL ( DmPlano.CONFIG_RELcodigo.value  ,dmplano.VER_CTB_CONFIGURA_REL_CONTASCONTA.value );

       DsContasSelecionadas.DataSet.Close ;
       DsContasSelecionadas.DataSet.oPEN  ;

       DsContas.DataSet.Close ;
       DsContas.DataSet.oPEN  ;
       //
     End;
end;

end.
