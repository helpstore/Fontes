 unit Caixas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,   dxEdLib, dxDBELib, dxExEdtr, Buttons,
  dxEditor, dxDBEdtr, dxCntner, dxBarDBNav, dxBar, ActnList, Db,  
    dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxPC, cxLabel;

type
  TFrmCaixas = class(TForm)
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    btnFiltrar: TdxBarButton;
    DsUsuario: TDataSource;
    pnlClient: TPanel;
    Panel1: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Label2: TcxLabel;
    Bevel1: TBevel;
    MostraControle: TAction;
    Label5: TcxLabel;
    cmbUsuario: TdxDBLookupEdit;
    edLogin: TdxDBEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    DataSource: TDataSource;
    Label1: TcxLabel;
    CmbPlano: TdxDBLookupEdit;
    DsPlano: TDataSource;
    btnPlano: TcxButton;
    dxTabSheet2: TcxTabSheet;
    Label3: TcxLabel;
    CmbUsuarioCx: TdxDBLookupEdit;
    DsCaixa: TDataSource;
    EdMargem: TdxDBCalcEdit;
    Label23: TcxLabel;
    Label4: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label6: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBEdit1: TdxDBEdit;
    Label7: TcxLabel;
    Label8: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    ActUp: TAction;
    ActDown: TAction;
    GRID: TdxDBGrid;
    GRIDCHEQUE: TdxDBGridMaskColumn;
    GRIDDINHEIRO: TdxDBGridMaskColumn;
    GRIDSALDO_ANTERIOR: TdxDBGridMaskColumn;
    GRIDTICKET: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDNome: TdxDBGridLookupColumn;
    Label9: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label11: TcxLabel;
    Label12: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    cbComplemento: TdxDBCheckEdit;
    Label13: TcxLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxDBCheckEdit3: TdxDBCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure btnPlanoClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure dxTabSheet2Enter(Sender: TObject);
    procedure dxTabSheet1Enter(Sender: TObject);
    procedure ActUpExecute(Sender: TObject);
    procedure ActDownExecute(Sender: TObject);
    procedure CmbUsuarioCxExit(Sender: TObject);
    procedure CmbUsuarioCxEnter(Sender: TObject);
    procedure cmbUsuarioEnter(Sender: TObject);
    procedure cmbUsuarioExit(Sender: TObject);
    procedure DataSourceUpdateData(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCaixas: TFrmCaixas;

implementation

uses Main,
     Seguranca_DM,
     Application_DM,
     Usuarios_DM,
     Funcoes,
     Caixa_Dm,
     Financeiro_Dm,
     Plano_DM,
     Plano_Form,
     Cadastros_DM;

{$R *.DFM}

procedure TFrmCaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsUsuario.DataSet.Close;
  dsPlano.DataSet.Close;
  Datasource.Dataset.Close;
  DsCaixa.Dataset.Close;
  //
  if DMSeguranca.Tag = 0
  then begin
       DMSeguranca.Free;
       DMSeguranca := Nil;
  end;

  if DMCaixa.Tag = 0
  then begin
       DMCaixa.Free;
       DMCaixa := Nil;
  end;

  if DMPlano.Tag = 0
  then begin
       DMPlano.Free;
       DMPlano := Nil;
  end;

  //
  Action := caFree;
  FrmCaixas := Nil;
end;

procedure TFrmCaixas.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
     IF PC.ActivePageIndex = 0
     THEN BEGIN
          DataSource.DataSet.Append;
          cmbUsuario.SetFocus;
     end
     else begin
          DsCaixa.DataSet.Append;
          CmbUsuarioCx.SetFocus;
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

procedure TFrmCaixas.ActExcluirExecute(Sender: TObject);
begin
     IF PC.ActivePageIndex = 0
     THEN BEGIN
          If MessageBox(Handle,'Tem certeza que deseja Excluir este Caixa ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
          Then Begin
               //DataSource.Dataset.Delete;
               showmessage('Operação Não Autorizada!');
          end;
     END;
end;

procedure TFrmCaixas.ActLocalizarExecute(Sender: TObject);
begin
     IF PC.ActivePageIndex = 0
     THEN BEGIN
          DMApp.Localizar(Datasource);
     END
     ELSE BEGIN
          DMApp.Localizar(DsCaixa);
     END;
end;

procedure TFrmCaixas.ActPostExecute(Sender: TObject);
begin
  //
  Try
     IF PC.ActivePageIndex = 0 THEN
     BEGIN
       DataSource.DataSet.Post;
       DMApp.Transaction.CommitRetaining;
     END
     ELSE
     BEGIN
       DsCaixa.DataSet.Post;
       DMApp.Transaction.CommitRetaining;
     END;
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

procedure TFrmCaixas.ActCancelExecute(Sender: TObject);
begin
     IF PC.ActivePageIndex = 0
     THEN BEGIN
          If (DataSource.DataSet.State in dsEditModes) And
             (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                        'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES) Then
             Navigator.DataSource.DataSet.Cancel
          Else
          BtnFechar.OnClick(BtnFechar);
     END
     ELSE BEGIN
          If (DsCaixa.DataSet.State in dsEditModes) And
             (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                        'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES) Then
              Navigator.DataSource.DataSet.Cancel
          Else
          BtnFechar.OnClick(BtnFechar);
     END;
end;

procedure TFrmCaixas.ActFecharExecute(Sender: TObject);
begin
  If FrmCaixas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCaixas.FormCreate(Sender: TObject);
begin
  //
  // ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Pc.ActivePageIndex := 0;
end;

procedure TFrmCaixas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    //
    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
    If Not(DsPlano.DataSet.Active) Then
       DsPlano.DataSet.Open;
    If Not(DsUsuario.DataSet.Active) Then
       DsUsuario.DataSet.Open;

    With DmCaixa do
    begin
         Caixas_Usuario.Close ;

         Caixas_Usuario.SelectSQL.Clear ;
         Caixas_Usuario.SelectSQL.Add ( ' select * from FAT_USUARIOS_CAIXA        ');
         Caixas_Usuario.SelectSQL.Add ( ' where CNPJ = :CNPJ and ATIVO <> :AT     ');

         Caixas_Usuario.Params.ByName ( 'AT' ).AsString := 'N' ;

         Caixas_Usuario.Open ;
    end;

    If Not(DsCaixa.DataSet.Active) Then
       DsCaixa.DataSet.Open;

    If DmaPP.Cx_Transp_Sld <> 'S'
    THEN BEGIN
         dxDBEdit1.Enabled := TRUE ;
    END
    ELSE BEGIN
         dxDBEdit1.Enabled := FALSE ;
    END;
    //
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
  Datasource.AutoEdit := ActAlterar.Enabled;
end;

procedure TFrmCaixas.EdLoginKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCaixas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCaixas.DataSourceStateChange(Sender: TObject);
begin
  If (Sender as TDatasource).State in dsEditModes Then
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

procedure TFrmCaixas.btnPlanoClick(Sender: TObject);
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

//DMCadastros := TDMCadastros.Create(Self);

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', False);
  { * * * * * }
  //
  FrmCaixas.Tag := 1;
  //
  FrmPlano := TFrmPlano.Create(Self);
  FrmPlano.ShowModal;
  //
  cmbPlano.SetFocus;
end;

procedure TFrmCaixas.actLookupExecute(Sender: TObject);
begin
  If FrmCaixas.ActiveControl = cmbPlano Then
     btnPlano.OnClick(btnPlano);
end;

procedure TFrmCaixas.pcChange(Sender: TObject);
begin
     If FrmCaixas <> Nil
     then begin
          IF DataSource.State in [ dsinsert, dsedit ]
          then begin
               DataSource.DataSet.Cancel;
          end;

          IF PC.ActivePageIndex = 1
          THEN BEGIN
               DataSource.DataSet.Close ;
               DataSource.DataSet.Open  ;
          END
          ELSE BEGIN

          END;
     end;
end;

procedure TFrmCaixas.dxTabSheet2Enter(Sender: TObject);
begin
    Navigator.DataSource := dsCaixa;
end;

procedure TFrmCaixas.dxTabSheet1Enter(Sender: TObject);
begin
     Navigator.DataSource := DataSource;
end;

procedure TFrmCaixas.ActUpExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0 Then
        pc.ActivePageIndex :=  1
     else
        pc.ActivePageIndex :=  0
end;

procedure TFrmCaixas.ActDownExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0 Then
        pc.ActivePageIndex :=  1
     else
        pc.ActivePageIndex :=  0
end;

procedure TFrmCaixas.CmbUsuarioCxExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCaixas.CmbUsuarioCxEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCaixas.cmbUsuarioEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCaixas.cmbUsuarioExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCaixas.DataSourceUpdateData(Sender: TObject);
begin
     IF DmCaixa.Caixas_UsuarioATIVO.Value = 'N'
     THEN BEGIN
          IF DmCaixa.Caixas_UsuarioDATA_DESATIVACAO.IsNull
          THEN BEGIN
               SHOWMESSAGE('Digite a Data da Desativação!');
               dxDBDateEdit1.SetFocus ;
               Abort ;
          END;
     END;

     IF DmCaixa.Caixas_UsuarioDATA_ATIVACAO.IsNull
     THEN BEGIN
          SHOWMESSAGE('Digite a Data da Ativação!');
          EdVencimento.SetFocus ;
          Abort ;
     END;

     IF DMAPP.SINCRONIZA_CAIXA = 'S'
     THEN BEGIN
          IF DMCaixa.CaixasDATa.value <> Date
          THEN BEGIN
               MessageDlg('Data Fora da Faixa Permitida!', mtWarning, [mbOK], 0);
               Abort;
          END;
     END;
end;

end.
