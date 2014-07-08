unit Grupos_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxTL, dxDBCtrl,
  dxDBGrid, dxDBTLCl, dxGrClms,   dxExEdtr,  
   Buttons, DBCtrls, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinscxPCPainter, cxPC,
  cxLabel;

type
  TFrmGrupos = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
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
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    dsSubGrupos: TDataSource;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edCodigo: TdxDBEdit;
    edNome: TdxDBEdit;
    Shape1: TShape;
    edBase: TdxDBCalcEdit;
    edMinimo: TdxDBCalcEdit;
    edMaximo: TdxDBCalcEdit;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    ActLookUp: TAction;
    dxTabSheet2: TcxTabSheet;
    Shape2: TShape;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    DBCoolText2: TDBText;
    Label9: TcxLabel;
    edCodSub: TdxDBEdit;
    edNomeSub: TdxDBEdit;
    cbDigitaPrc: TdxDBCheckEdit;
    edDescontoMax: TdxDBCalcEdit;
    dxDBMemo1: TdxDBMemo;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure edCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure dxTabSheet1Enter(Sender: TObject);
    procedure dxTabSheet2Enter(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure edNomeSubEnter(Sender: TObject);
    procedure edNomeSubExit(Sender: TObject);
    procedure btnPlanoClick(Sender: TObject);
    procedure CmbCompraCButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbCompraDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbVendaCButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbVendaDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbTransferenciaCButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbTransferenciaDButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbEstoqueButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbEstoqueIniButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CmbEstoqueFimButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmGrupos: TFrmGrupos;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Plano_DM, Plano_Form, Localizar_Conta, Localizar_Generico;

{$R *.DFM}

procedure TFrmGrupos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If dsSubGrupos.DataSet.Tag = 0 Then
     dsSubGrupos.DataSet.Close;
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //

  If FrmGrupos.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmGrupos := Nil;
end;

procedure TFrmGrupos.ActIncluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;
  Try
     If pc.ActivePageIndex = 0
     then begin
          DataSource.DataSet.Append;
     end
     else begin
          dsSubGrupos.DataSet.Append;
     end;
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
  If pc.ActivePageIndex = 0 Then
     edNome.SetFocus;
  //
  If pc.ActivePageIndex = 1 Then
     edNomeSub.SetFocus;
end;

procedure TFrmGrupos.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
  //
  If pc.ActivePageIndex = 0 Then
     msg := 'Grupo';
  //
  If pc.ActivePageIndex = 0 Then
     msg := 'Subgrupo';
  //
  If MessageBox(Handle,PChar('Tem certeza que deseja Excluir este ' + msg + ' de Estoque ?'),
                'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
          If pc.ActivePageIndex = 0
          then begin
               DataSource.Dataset.Delete;
          end
          else begin
               dsSubGrupos.Dataset.Delete;
          end;
       DMApp.Transaction.CommitRetaining;
     End;
end;

procedure TFrmGrupos.ActPostExecute(Sender: TObject);
begin
  Try
     If pc.ActivePageIndex = 0
     then begin
          DataSource.DataSet.Post;
     end
     else begin
          dsSubGrupos.DataSet.Post;
     end;

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

procedure TFrmGrupos.ActCancelExecute(Sender: TObject);
begin
  If (Navigator.DataSource.DataSet.State in dsEditModes)
  Then Begin
       If (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES)
       Then begin
            If pc.ActivePageIndex = 0
            then begin
                 DataSource.DataSet.Cancel;
            End
            else begin
                 dsSubGrupos.DataSet.Cancel;
            end;
       end;
  end
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmGrupos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;
    If Not(dsSubGrupos.DataSet.Active) Then
       dsSubGrupos.DataSet.Open;
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
//  Datasource.AutoEdit  := ActAlterar.Enabled;
//  dsSubGrupos.AutoEdit := ActAlterar.Enabled;
  //
  pc.ActivePageIndex   := 0;

  edNome.Enabled := True ;
  edNome.SetFocus;
  //
  FrmGrupos.OnResize(FrmGrupos);
end;

procedure TFrmGrupos.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmGrupos.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGrupo;
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmGrupos.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Grupos' ;

        Frm_Localizar_Generico.showmodal ;

        Frm_Localizar_Generico.free   ;

        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmGrupos.edCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmGrupos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmGrupos.DataSourceStateChange(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
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

procedure TFrmGrupos.ActFecharExecute(Sender: TObject);
begin
  If FrmGrupos.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmGrupos.dxTabSheet1Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := DataSource;
    EdNome.SetFocus;
  Except
  End;
end;

procedure TFrmGrupos.dxTabSheet2Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := dsSubGrupos;
    edNomeSub.SetFocus;
  Except
  End;
end;

procedure TFrmGrupos.ActNextPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 1 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1
end;

procedure TFrmGrupos.ActPreviousPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1
end;

procedure TFrmGrupos.FormResize(Sender: TObject);
begin
  //
  pc.Height := FrmGrupos.Height - 110;
  pc.Width  := FrmGrupos.Width  -  25;
end;

procedure TFrmGrupos.pcChange(Sender: TObject);
begin
     If DataSource.State in [ DsInsert, DsEdit ]
     then
         DataSource.DataSet.Post;

     If dsSubGrupos.State in [ DsInsert, DsEdit ]
     then
         dsSubGrupos.DataSet.Post;
end;

procedure TFrmGrupos.edNomeSubEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmGrupos.edNomeSubExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmGrupos.btnPlanoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then Exit;
  //
  If dsSubGrupos.DataSet.State = dsBrowse Then
     dsSubGrupos.DataSet.Edit;
  //
  DMCadastros.Tag := DmCadastros.Tag + 1;

  If DMPlano = Nil
  Then Begin
       DMPlano := TDMPlano.Create(Self);
  end
  else begin
       DMPlano.Tag := DMPlano.Tag + 1;
  end ;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', False);
  { * * * * * }
  //
  FrmPlano := TFrmPlano.Create(Self);

  FrmPlano.ShowModal;

  DMCadastros.Tag := DmCadastros.Tag - 1;
end;

procedure TFrmGrupos.CmbCompraCButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposCOMPRAS_C.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;

  Except
  end;

end;

procedure TFrmGrupos.CmbCompraDButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposCOMPRAS_D.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;

  Except
  end;

end;

procedure TFrmGrupos.CmbVendaCButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposVENDAS_C.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;

  Except
  end;
end;

procedure TFrmGrupos.CmbVendaDButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposVENDAS_D.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;

  Except
  end;

end;

procedure TFrmGrupos.CmbTransferenciaCButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposTRANSFERENCIA_C.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;

  Except
  end;
end;

procedure TFrmGrupos.CmbTransferenciaDButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposTRANSFERENCIA_D.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;

  Except
  end;
end;

procedure TFrmGrupos.CmbEstoqueButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposESTOQUE.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;
  Except
  end;
end;

procedure TFrmGrupos.CmbEstoqueIniButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposESTOQUE_INI.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;
  Except
  end;
end;

procedure TFrmGrupos.CmbEstoqueFimButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If DMPlano = Nil
        Then Begin
             DMPlano := TDMPlano.Create(Self);
        end
        else begin
             DMPlano.Tag := DMPlano.Tag + 1;
        end;

        If dsSubGrupos.DataSet.State = dsBrowse
        Then
            dsSubGrupos.DataSet.Edit;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.SubgruposESTOQUE_FIM.Value := Frm_Localizar_Conta.CampTrecho ;
        end;

        DMPlano.Plano.Close;

        Frm_Localizar_Conta.free ;
        Frm_Localizar_Conta := Nil ;

        If DMPlano.Tag = 0
        Then Begin
             DMPlano.Free   ;
             DMPlano := Nil ;
        end
        else begin
             DMPlano.Tag := DMPlano.Tag - 1;
        end;
  Except
  end;
end;

procedure TFrmGrupos.ActAlterarExecute(Sender: TObject);
begin

  If Navigator.DataSource.State in dsEditModes Then
     Exit;

  Try
     If pc.ActivePageIndex = 0
     then begin
          DataSource.DataSet.Edit;
     end
     else begin
          dsSubGrupos.DataSet.Edit;
     end;
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

end.


