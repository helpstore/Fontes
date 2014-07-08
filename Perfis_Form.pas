 unit Perfis_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids,   dxCntner,
  dxEditor, dxEdLib, dxDBELib, StdCtrls,   dxBarDBNav,
  ActnList, Db, dxBar, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  DBCtrls, dxExEdtr, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxPC, cxLabel;

type
  TFrmPerfis = class(TForm)
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    dsPerfil: TDataSource;
    dsDireitos: TDataSource;
    dsModulos: TDataSource;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActAlterarDireito: TAction;
    ActGravar: TAction;
    ActCancelar: TAction;
    ActNP: TAction;
    ActPP: TAction;
    Navigator: TdxBarDBNavigator;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Label1: TcxLabel;
    Label2: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    dxTabSheet2: TcxTabSheet;
    Shape2: TShape;
    DBCoolText2: TDBText;
    Shape6: TShape;
    Label16: TcxLabel;
    Label15: TcxLabel;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    btnFiltrar: TdxBarButton;
    btnGravar: TdxBarButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    ActFechar: TAction;
    Grid: TdxDBGrid;
    GridPERFIL: TdxDBGridMaskColumn;
    GridMODULO: TdxDBGridMaskColumn;
    GridEXECUTAVEL_MODULO: TdxDBGridLookupColumn;
    GridNOME_MODULO: TdxDBGridLookupColumn;
    GridACTIONS_MODULO: TdxDBGridLookupColumn;
    GridDIREITO: TdxDBGridMaskColumn;
    GridDIREITO_SHOW: TdxDBGridColumn;
    ActExluirModulo: TAction;
    Label3: TcxLabel;
    Label4: TcxLabel;
    ActForm: TAction;
    ActConfiguraDireitos: TAction;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAlterarDireitoExecute(Sender: TObject);
    procedure ActGravarExecute(Sender: TObject);
    procedure ActNPExecute(Sender: TObject);
    procedure ActPPExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsPerfilStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure GridKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridDblClick(Sender: TObject);
    procedure ActExluirModuloExecute(Sender: TObject);
    procedure ActFormExecute(Sender: TObject);
    procedure ActConfiguraDireitosExecute(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure pcChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPerfis: TFrmPerfis;

implementation

uses Seguranca_DM, Application_DM, ConfDir_Form, Usuarios_DM, Funcoes, Main,
  Localizar_Generico;

{$R *.DFM}

procedure TFrmPerfis.ActIncluirExecute(Sender: TObject);
begin
  Try
    dsPerfil.DataSet.Append;
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
  edInicial.SetFocus;
end;

procedure TFrmPerfis.ActExcluirExecute(Sender: TObject);
begin
     If MessageBox(Handle,'Tem certeza que deseja Excluir este Perfil ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
       Try
         dsPerfil.Dataset.Delete;
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
       DMApp.Transaction.CommitRetaining;
     End;
end;

procedure TFrmPerfis.ActAlterarDireitoExecute(Sender: TObject);
begin
     FrmConfDir := TFrmConfDir.Create(Self);
     FrmConfDir.ShowModal;
end;

procedure TFrmPerfis.ActGravarExecute(Sender: TObject);
begin
  Try
    dsPerfil.DataSet.Post;
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

procedure TFrmPerfis.ActNPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 1 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmPerfis.ActPPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmPerfis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsDireitos.DataSet.Close;
  dsModulos.DataSet.Close;
  dsPerfil.DataSet.Close;
  //
  DMSeguranca.Free;
  //
  Action := caFree;
  FrmPerfis := Nil;
  //
  FrmMain.PnlClient.Visible := True;
end;

procedure TFrmPerfis.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
  //
  pc.ActivePageIndex := 0;
end;

procedure TFrmPerfis.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  // Abrindo os DataSet's
  Try
    //
    If Not(dsModulos.DataSet.Active) Then
       dsModulos.DataSet.Open;
    //
    If DMUsuarios.LoginPERFIL.Value = 1 Then
       DMSeguranca.Perfil.ParamByName('CODIGO').asInteger := DMUsuarios.LoginPERFIL.Value - 1
    Else
       DMSeguranca.Perfil.ParamByName('CODIGO').asInteger := DMUsuarios.LoginPERFIL.Value;
    //
    If Not(dsPerfil.DataSet.Active) Then
       dsPerfil.DataSet.Open;
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

procedure TFrmPerfis.dsPerfilStateChange(Sender: TObject);
begin
  If (Sender as TDataSource).State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       BtnGravar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       BtnGravar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmPerfis.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPerfis.ActCancelarExecute(Sender: TObject);
begin
  If (Navigator.DataSource.DataSet.State in dsEditModes) Then
     Begin
       If (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES) Then
       Navigator.DataSource.DataSet.Cancel;
     End
  Else
     Begin
       If pc.ActivePageIndex = 1 Then
          pc.ActivePageIndex := 0
       Else
          BtnFechar.OnClick(BtnFechar);
     End;
end;

procedure TFrmPerfis.pcChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  Try
     If FrmPerfis <> Nil
     then begin
          If NewPage = dxTabSheet2
          Then
             dsDireitos.DataSet.Open
          Else
              dsDireitos.DataSet.Close;
     end;
  Except
  End;
end;

procedure TFrmPerfis.GridKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_return Then
     ActAlterarDireito.Execute;
end;

procedure TFrmPerfis.GridDblClick(Sender: TObject);
begin
     ActAlterarDireito.Execute;
end;

procedure TFrmPerfis.ActExluirModuloExecute(Sender: TObject);
begin
     dsDireitos.DataSet.Delete ;
end;

procedure TFrmPerfis.ActFormExecute(Sender: TObject);
begin
     With DmSeguranca do
     begin
          Forms.Close ;
          Forms.ParamByName ( 'CODIGO' ).AsInteger := GridMODULO.Field.Value ;
          Forms.Open  ;

          If not FormsOBJETO.IsNull
          then begin
               Showmessage(FormsOBJETO.Value + '-' + FormsDESCRICAO.value)
          end;

          Forms.Close ;
     End;
end;

procedure TFrmPerfis.ActConfiguraDireitosExecute(Sender: TObject);
begin
     With DmSeguranca do
     begin
          PC.ActivePageIndex := 0;
          
          Conf_Direitos ;
     End;
end;

procedure TFrmPerfis.btnLocalizarClick(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Perfil' ;

        Frm_Localizar_Generico.showmodal ;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmPerfis.pcChange(Sender: TObject);
begin
          If pc.ActivePage = dxTabSheet2 then
             dsDireitos.DataSet.Open
          Else
              dsDireitos.DataSet.Close;
end;

end.
