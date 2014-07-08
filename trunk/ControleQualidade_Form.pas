 unit ControleQualidade_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr, Buttons,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel;

type
  TFrmCtrlQualidade = class(TForm)
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
    Label2: TcxLabel;
    EdInicial: TdxDBEdit;
    b2: TBevel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    OptAlterar: TdxBarButton;
    LblTitulo: TcxLabel;
    DbCodigo: TdxDBEdit;
    Label3: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    Label4: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label5: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label6: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    Label7: TcxLabel;
    Label8: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    Label9: TcxLabel;
    Label10: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    Label11: TcxLabel;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    Label12: TcxLabel;
    Label13: TcxLabel;
    dxDBEdit11: TdxDBEdit;
    dxDBEdit12: TdxDBEdit;
    Label14: TcxLabel;
    dxDBEdit13: TdxDBEdit;
    Label15: TcxLabel;
    dxDBEdit14: TdxDBEdit;
    Label16: TcxLabel;
    Label17: TcxLabel;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    Label18: TcxLabel;
    dxDBEdit17: TdxDBEdit;
    Label19: TcxLabel;
    dxDBEdit18: TdxDBEdit;
    Label20: TcxLabel;
    edObservacoes: TdxDBMemo;
    Label21: TcxLabel;
    Label22: TcxLabel;
    EdMontadorVirabrequim: TdxDBEdit;
    dxDBEdit19: TdxDBEdit;
    BtnMecanico: TcxButton;
    ActLocalizarMontador: TAction;
    DsMecanicos: TDataSource;
    Label23: TcxLabel;
    EdMontadorCabecote: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    BtnMontadorCabecote: TcxButton;
    Label24: TcxLabel;
    EdMontadorBiela: TdxDBEdit;
    dxDBEdit22: TdxDBEdit;
    BtnMontadorBiela: TcxButton;
    Label25: TcxLabel;
    EdMontadorAjuste: TdxDBEdit;
    dxDBEdit23: TdxDBEdit;
    BtnMontadorAjuste: TcxButton;
    Label26: TcxLabel;
    EdMontadorBloco: TdxDBEdit;
    dxDBEdit24: TdxDBEdit;
    BtnMontadorBloco: TcxButton;
    Label27: TcxLabel;
    EdMontador: TdxDBEdit;
    dxDBEdit25: TdxDBEdit;
    BtnMontador: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure DbCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure BtnMecanicoClick(Sender: TObject);
    procedure EdMontadorVirabrequimExit(Sender: TObject);
    procedure ActLocalizarMontadorExecute(Sender: TObject);
    procedure BtnMontadorCabecoteClick(Sender: TObject);
    procedure EdMontadorCabecoteExit(Sender: TObject);
    procedure EdMontadorBielaExit(Sender: TObject);
    procedure BtnMontadorBielaClick(Sender: TObject);
    procedure BtnMontadorAjusteClick(Sender: TObject);
    procedure EdMontadorAjusteExit(Sender: TObject);
    procedure EdMontadorBlocoExit(Sender: TObject);
    procedure BtnMontadorBlocoClick(Sender: TObject);
    procedure BtnMontadorClick(Sender: TObject);
    procedure EdMontadorExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: String;
  end;

var
  FrmCtrlQualidade: TFrmCtrlQualidade;
  Edt: String;
  
implementation

uses
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Servicos_DM,
     Localizar_Ordens,
     Cadastros_DM,
     Mecanicos_Form,
     Localizar_Mecanico;

{$R *.DFM}

procedure TFrmCtrlQualidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If DsMecanicos.DataSet.Tag = 0 Then
     DsMecanicos.Dataset.Close;
     
  //
  Action := caFree;
  FrmCtrlQualidade := Nil;
end;

procedure TFrmCtrlQualidade.ActIncluirExecute(Sender: TObject);
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

  { * * * * * }
  If FrmLocOrdens = Nil
  Then Begin
       //
       FrmLocOrdens := TFrmLocOrdens.Create(Self);
       //
       If FrmLocOrdens.Showmodal = MrOk
       then begin
            DmServicos.Ctrl_QualidadeCODIGO.value := ( FrmLocOrdens.CampTrecho );
       end;

       FrmLocOrdens.Free ;
       FrmLocOrdens := Nil;
  End;

  EdInicial.SetFocus;

  if DmServicos.Ctrl_QualidadeCODIGO.value <= 0
  then begin
       MessageDlg('Número Inválido, Verifique!',MtError,[MbOk],0);
       DmServicos.Ctrl_Qualidade.cancel ;
  end;
end;

procedure TFrmCtrlQualidade.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir Este Controle ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmCtrlQualidade.ActPostExecute(Sender: TObject);
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

procedure TFrmCtrlQualidade.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCtrlQualidade.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DsMecanicos.DataSet.Active) Then
       DsMecanicos.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    If DmServicos.NDocto = 0
    then
        ActIncluir.Execute ;

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
  EdInicial.SetFocus;
end;

procedure TFrmCtrlQualidade.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCtrlQualidade.ActListagemExecute(Sender: TObject);
begin
  //
//  DMListagens := TDMListagens.Create(Self);
//  DMListagens.lsAgrupadores(DataSource.DataSet);
//  DMListagens.Free;
//  DMListagens := Nil;
end;

procedure TFrmCtrlQualidade.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmCtrlQualidade.DbCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCtrlQualidade.pnlClientResize(Sender: TObject);
begin
     b2.Width := pnlClient.Width - 17;
end;

procedure TFrmCtrlQualidade.DataSourceStateChange(Sender: TObject);
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

procedure TFrmCtrlQualidade.ActFecharExecute(Sender: TObject);
begin
  If FrmCtrlQualidade.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmCtrlQualidade.ActAlterarExecute(Sender: TObject);
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

procedure TFrmCtrlQualidade.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmCtrlQualidade.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmCtrlQualidade.BtnMecanicoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  //
  FrmMecanicos := TFrmMecanicos.Create(Application);

  FrmMecanicos.Showmodal ;

  Datasource.DataSet.FieldByName('MONTADOR_VIRABREQUIM').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag - 1;

  EdMontadorVirabrequim.SetFocus;

  DsMecanicos.DataSet.Close;
  DsMecanicos.DataSet.Open;
  //
end;

procedure TFrmCtrlQualidade.EdMontadorVirabrequimExit(Sender: TObject);
begin
     IF (( EdMontadorVirabrequim.Text = '0' ) or ( EdMontadorVirabrequim.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          Edt := EdMontadorVirabrequim.name ;

          ActLocalizarMontador.Execute ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCtrlQualidade.ActLocalizarMontadorExecute(Sender: TObject);
begin
     try
        //Chama a Tela Para Localizar Viajantes
        Application.CreateForm(TFrm_Localizar_Mecanicos, Frm_Localizar_Mecanicos);

        Frm_Localizar_Mecanicos.DSource.dataset := DmServicos.SelMecanico ;

        if edt = 'EdMontador'
        then begin
             if ( Frm_Localizar_Mecanicos.showmodal = mrOk )
             Then Begin
                  DmServicos.Ctrl_QualidadeMONTADOR.Value := (Frm_Localizar_Mecanicos.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Mecanicos.Cad = 'S'
                  THEN
                      BtnMontador.OnClick(BtnMontador);
             end;
        end;

        if edt = 'EdMontadorVirabrequim'
        then begin
             if ( Frm_Localizar_Mecanicos.showmodal = mrOk )
             Then Begin
                  DmServicos.Ctrl_QualidadeMONTADOR_VIRABREQUIM.Value := (Frm_Localizar_Mecanicos.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Mecanicos.Cad = 'S'
                  THEN
                      BtnMecanico.OnClick(BtnMecanico);
             end;
        end;

        if edt = 'EdMontadorCabecote'
        then begin
             if ( Frm_Localizar_Mecanicos.showmodal = mrOk )
             Then Begin
                  DmServicos.Ctrl_QualidadeMONTADOR_CABECOTE.Value := (Frm_Localizar_Mecanicos.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Mecanicos.Cad = 'S'
                  THEN
                      BtnMontadorCabecote.OnClick(BtnMontadorCabecote);
             end;
        end;

        if edt = 'EdMontadorBiela'
        then begin
             if ( Frm_Localizar_Mecanicos.showmodal = mrOk )
             Then Begin
                  DmServicos.Ctrl_QualidadeMONTADOR_BIELA.Value := (Frm_Localizar_Mecanicos.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Mecanicos.Cad = 'S'
                  THEN
                      BtnMontadorBiela.OnClick(BtnMontadorBiela);
             end;
        end;

        if edt = 'EdMontadorBloco'
        then begin
             if ( Frm_Localizar_Mecanicos.showmodal = mrOk )
             Then Begin
                  DmServicos.Ctrl_QualidadeMONTADOR_BLOCO.Value := (Frm_Localizar_Mecanicos.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Mecanicos.Cad = 'S'
                  THEN
                      BtnMontadorBloco.OnClick(BtnMontadorBloco);
             end;
        end;

        if edt = 'EdMontadorAjuste'
        then begin
             if ( Frm_Localizar_Mecanicos.showmodal = mrOk )
             Then Begin
                  DmServicos.Ctrl_QualidadeMONTADOR_AJUSTE.Value := (Frm_Localizar_Mecanicos.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Mecanicos.Cad = 'S'
                  THEN
                      BtnMontadorAjuste.OnClick(BtnMontadorAjuste);
             end;
        end;

        Frm_Localizar_Mecanicos.free   ;
        Frm_Localizar_Mecanicos := Nil ;
  Except
  end;
end;

procedure TFrmCtrlQualidade.BtnMontadorCabecoteClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  //
  FrmMecanicos := TFrmMecanicos.Create(Application);

  FrmMecanicos.Showmodal ;

  Datasource.DataSet.FieldByName('MONTADOR_CABECOTE').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag - 1;

  EdMontadorCabecote.SetFocus;

  DsMecanicos.DataSet.Close;
  DsMecanicos.DataSet.Open;
  //
end;

procedure TFrmCtrlQualidade.EdMontadorCabecoteExit(Sender: TObject);
begin
     IF (( EdMontadorCabecote.Text = '0' ) or ( EdMontadorCabecote.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          Edt := EdMontadorCabecote.name ;

          ActLocalizarMontador.Execute ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCtrlQualidade.EdMontadorBielaExit(Sender: TObject);
begin
     IF (( EdMontadorBiela.Text = '0' ) or ( EdMontadorBiela.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          Edt := EdMontadorBiela.name ;

          ActLocalizarMontador.Execute ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCtrlQualidade.BtnMontadorBielaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{ if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  //
  FrmMecanicos := TFrmMecanicos.Create(Application);

  FrmMecanicos.Showmodal ;

  Datasource.DataSet.FieldByName('MONTADOR_BIELA').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag - 1;

  EdMontadorBiela.SetFocus;

  DsMecanicos.DataSet.Close;
  DsMecanicos.DataSet.Open;
  //
end;

procedure TFrmCtrlQualidade.BtnMontadorAjusteClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{ if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  //
  FrmMecanicos := TFrmMecanicos.Create(Application);

  FrmMecanicos.Showmodal ;

  Datasource.DataSet.FieldByName('MONTADOR_AJUSTE').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag - 1;

  EdMontadorAjuste.SetFocus;

  DsMecanicos.DataSet.Close;
  DsMecanicos.DataSet.Open;
  //
end;

procedure TFrmCtrlQualidade.EdMontadorAjusteExit(Sender: TObject);
begin
     IF (( EdMontadorAjuste.Text = '0' ) or ( EdMontadorAjuste.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          Edt := EdMontadorAjuste.name ;

          ActLocalizarMontador.Execute ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCtrlQualidade.EdMontadorBlocoExit(Sender: TObject);
begin
     IF (( EdMontadorBloco.Text = '0' ) or ( EdMontadorBloco.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          Edt := EdMontadorBloco.name ;

          ActLocalizarMontador.Execute ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCtrlQualidade.BtnMontadorBlocoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{ if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  //
  FrmMecanicos := TFrmMecanicos.Create(Application);

  FrmMecanicos.Showmodal ;

  Datasource.DataSet.FieldByName('MONTADOR_BLOCO').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag - 1;

  EdMontadorBloco.SetFocus;

  DsMecanicos.DataSet.Close;
  DsMecanicos.DataSet.Open;
  //
end;

procedure TFrmCtrlQualidade.BtnMontadorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

{ if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  //
  FrmMecanicos := TFrmMecanicos.Create(Application);

  FrmMecanicos.Showmodal ;

  Datasource.DataSet.FieldByName('MONTADOR').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  DsMecanicos.DataSet.Tag := DsMecanicos.DataSet.Tag - 1;

  EdMontador.SetFocus;

  DsMecanicos.DataSet.Close;
  DsMecanicos.DataSet.Open;
  //
end;

procedure TFrmCtrlQualidade.EdMontadorExit(Sender: TObject);
begin
     IF (( EdMontador.Text = '0' ) or ( EdMontador.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          Edt := EdMontador.name ;

          ActLocalizarMontador.Execute ;
     end;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

end.
