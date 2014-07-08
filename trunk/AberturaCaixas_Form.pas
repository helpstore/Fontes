unit AberturaCaixas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls,   dxEdLib, dxDBELib, dxExEdtr, Buttons,
  dxEditor, dxDBEdtr, dxCntner, dxBarDBNav, dxBar, ActnList, Db, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxDBGrid, DateUtils,variants, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, cxClasses, cxPC, cxLabel;

type
  TFrmAberturaCaixas = class(TForm)
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
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
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    DataSource: TDataSource;
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
    ActExcluir: TAction;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdLoginKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure CmbUsuarioCxExit(Sender: TObject);
    procedure CmbUsuarioCxEnter(Sender: TObject);
    procedure cmbUsuarioEnter(Sender: TObject);
    procedure cmbUsuarioExit(Sender: TObject);
    procedure DsCaixaUpdateData(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure EdMargemExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Usuario : Integer;
  end;

var
  FrmAberturaCaixas: TFrmAberturaCaixas;

implementation

uses Main,
     Seguranca_DM,
     Application_DM,
     Usuarios_DM,
     Funcoes,
     Caixa_Dm,
     Financeiro_Dm,
     Cadastros_DM;

{$R *.DFM}

procedure TFrmAberturaCaixas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  dsUsuario.DataSet.Close;
  Datasource.Dataset.Close;
  DsCaixa.Dataset.Close;

  //
  if DMSeguranca.Tag = 0
  then begin
       DMSeguranca.Free;
       DMSeguranca := Nil;
  end
  else
      DMSeguranca.Tag := DMSeguranca.Tag - 1;

  if DMCaixa.Tag = 0
  then begin
       DMCaixa.Free;
       DMCaixa := Nil;
  end
  else
      DMCaixa.Tag := DMCaixa.Tag - 1;

  //
  Action := caFree;
  FrmAberturaCaixas := Nil;
end;

procedure TFrmAberturaCaixas.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
     DsCaixa.DataSet.Append;

     If Usuario > 0 then
     begin
          CmbUsuarioCx.LookupKeyValue := Usuario ;
        //  DmCaixa.Caixas_Usuario.Locate('USUARIO;CONTA',VarArrayOf([Usuario,1]),[]);
          CmbUsuarioCx.Text := DmCaixa.Caixas_UsuarioNome.Value;
          CmbUsuarioCxExit(Self);
          EdMargem.setfocus;
     end else
         CmbUsuarioCx.SetFocus;
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

procedure TFrmAberturaCaixas.ActPostExecute(Sender: TObject);
begin
  //
  Try
     if CmbUsuarioCx.Focused then
        Perform(WM_NEXTDLGCTL, 1, 0);

     DsCaixa.DataSet.Post;

     DMApp.Transaction.CommitRetaining;

     Close ;

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

procedure TFrmAberturaCaixas.ActCancelExecute(Sender: TObject);
begin
     If (DsCaixa.DataSet.State in dsEditModes) And
     (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
     'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES)
     Then
         Navigator.DataSource.DataSet.Cancel
     Else
         BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmAberturaCaixas.ActFecharExecute(Sender: TObject);
begin
  If FrmAberturaCaixas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmAberturaCaixas.FormCreate(Sender: TObject);
begin
  //
  // ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  Usuario := 0;
end;

procedure TFrmAberturaCaixas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    //
    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
    If Not(DsUsuario.DataSet.Active) Then
       DsUsuario.DataSet.Open;

    With DmCaixa do
    begin
         Caixas_Usuario.Close ;
         Caixas_Usuario.SelectSQL.Clear ;
         Caixas_Usuario.SelectSQL.Add ( ' select * from FAT_USUARIOS_CAIXA      ');
         Caixas_Usuario.SelectSQL.Add ( ' where CNPJ = :CNPJ and ATIVO <> :AT   ');
         Caixas_Usuario.Params.ByName ( 'AT' ).AsString := 'N' ;
         Caixas_Usuario.Open ;
    end;

    if Not(DsCaixa.DataSet.Active) then
       DsCaixa.DataSet.Open;

    if DmaPP.Cx_Transp_Sld <> 'S' then
         dxDBEdit1.Enabled := TRUE
    else
         dxDBEdit1.Enabled := FALSE ;

    If Usuario > 0 then
    begin
         CmbUsuarioCx.LookupKeyValue := Usuario;
         FrmAberturaCaixas.ActIncluirExecute(Self);
    end;

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
  Datasource.AutoEdit := ActAlterar.Enabled;
end;

procedure TFrmAberturaCaixas.EdLoginKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAberturaCaixas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmAberturaCaixas.DataSourceStateChange(Sender: TObject);
begin
  If (Sender as TDatasource).State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmAberturaCaixas.CmbUsuarioCxExit(Sender: TObject);
var
  ProxDataCX : string;
begin
  with dmcaixa do
  begin
     if (Caixas.state in [ dsinsert ]) then
     begin
          if (FrmAberturaCaixas.CmbUsuarioCx.Text<>'') then
          begin
            //DmCaixa.Caixas_Usuario.Close;
            //DmCaixa.Caixas_Usuario.ParamByName('cnpj').Value := DMApp.Cnpj;
            //DmCaixa.Caixas_Usuario.Open;
            //DmCaixa.Caixas_Usuario.Locate('USUARIO',DmCaixa.CaixasUSUARIO.Value,[]);

            if DmCaixa.Caixas_UsuarioCAIXA_EXPORADICO.Value = 'S' then
            begin
                CaixasDATA.value := Proc_Ultimo_Caixa(CaixasUSUARIO.Value, Caixas_UsuarioCONTA.Value ); //date;
                MessageDlg ('Data do caixa pode ser alterado manualmente!', mtInformation, [MbOk], 0);
            end else
            begin
                //ULTIMO CAIXA ABERTO
                CaixasDATA.Value   := Proc_Ultimo_Caixa(CaixasUSUARIO.Value, Caixas_UsuarioCONTA.Value );
                MessageDlg ('Data do Caixa definido pelo sistema "'+CaixasDATA.Text+'".'+ #13+ 'Caso deseja alterar a data manualmente defina no perfil do usuário de caixa!', mtInformation, [MbOk], 0);
            end;
          end;
          //Captura o o Proximo Turno
          CaixasTURNO.Value  := PROXTURNO ;
     end;

     If DmaPP.Cx_Transp_Sld = 'S' THEN
     begin
          //SALDO FINAL DO ULTIMO CAIXA
          CaixasSALDO_ANTERIOR.Value := Proc_Saldo_Caixa ( Caixas_UsuarioUSUARIO.Value, Caixas_UsuarioCONTA.Value, CaixasDATA.Value, CaixasTurno.Value);
     end;

     CaixasTROCO_INICIAL.Value := Proc_Troco_Caixa ( Caixas_UsuarioUSUARIO.Value, Caixas_UsuarioCONTA.Value, CaixasDATA.Value, CaixasTurno.Value);

     if CaixasTURNO.VALUE = 100 THEN
     begin
          MessageDlg ('Todos os Turnos desta Data Já Foram Preenchidos, Verifique!', MtError, [MbOk], 0);
          Abort;
     end;
     TIRACORFUNDO ( SENDER );
  end;
end;

procedure TFrmAberturaCaixas.CmbUsuarioCxEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmAberturaCaixas.cmbUsuarioEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmAberturaCaixas.cmbUsuarioExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmAberturaCaixas.DsCaixaUpdateData(Sender: TObject);
begin
     IF DMAPP.SINCRONIZA_CAIXA = 'S'
     THEN BEGIN
          IF DMCaixa.CaixasDATa.value <> Date
          THEN BEGIN
               MessageDlg('Data Fora da Faixa Permitida!', mtWarning, [mbOK], 0);
               Abort;
          END;
     END;
end;

procedure TFrmAberturaCaixas.ActExcluirExecute(Sender: TObject);
begin
  //
  Try
     DsCaixa.DataSet.Delete ;
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

procedure TFrmAberturaCaixas.EdMargemExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
