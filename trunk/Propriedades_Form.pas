 unit Propriedades_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr, 
    Grids, DBGrids, Buttons, dxDBEdtr, DBCtrls, cxGraphics, cxControls,
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
  TFrmPropriedades = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
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
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
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
    Label56: TcxLabel;
    EdNome: TdxDBEdit;
    cmbLogradouroPro: TdxDBLookupEdit;
    btnLogradouroPro: TcxButton;
    DBCoolText2: TDBText;
    edObsPro: TdxDBMemo;
    edAreaTotal: TdxDBEdit;
    edUFPro: TdxDBEdit;
    BtnCidadePro: TcxButton;
    btnBairropro: TcxButton;
    CmbBairroProp: TdxDBLookupEdit;
    dxDBEdit18: TdxDBEdit;
    edCepPro: TdxDBMaskEdit;
    edComplementoPro: TdxDBEdit;
    Label45: TcxLabel;
    Label49: TcxLabel;
    Label51: TcxLabel;
    Label50: TcxLabel;
    Label46: TcxLabel;
    EdIePropriedade: TdxDBMaskEdit;
    cmbCidadePro: TdxDBLookupEdit;
    ActLookUp: TAction;
    dsBairros: TDataSource;
    dsLogradouros: TDataSource;
    dsCidades: TDataSource;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Label5: TcxLabel;
    dxDBMaskEdit1: TdxDBMaskEdit;
    Label6: TcxLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label7: TcxLabel;
    CmbVendedor: TdxDBLookupEdit;
    DsVendedor: TDataSource;
    btnRegiao: TcxButton;
    cmbRegiao: TdxDBLookupEdit;
    Label19: TcxLabel;
    dsRegiao: TDataSource;
    DsTecnico: TDataSource;
    Label2: TcxLabel;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure btnLogradouroProClick(Sender: TObject);
    procedure btnBairroproClick(Sender: TObject);
    procedure BtnCidadeProClick(Sender: TObject);
    procedure EdIePropriedadeEnter(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActLookUpExecute(Sender: TObject);
    procedure btnRegiaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmPropriedades: TFrmPropriedades;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Logradouros_Form, Bairros_Form, Cidades_Form, Tipo_Contrato_Form,
  Modelo_Propriedade_Form;

{$R *.DFM}

procedure TFrmPropriedades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('PROPRIEDADE').asInteger;
  //
  If Datasource.DataSet.Tag = 0
  Then
     Datasource.Dataset.Close
  else
     Datasource.Dataset.tag := Datasource.Dataset.tag - 1;

  If dsCidades.DataSet.Tag = 0
  Then
     dsCidades.Dataset.Close
  else
     dsCidades.Dataset.tag := dsCidades.Dataset.tag - 1;

  If dsLogradouros.DataSet.Tag = 0
  Then
     dsLogradouros.Dataset.Close
  else
     dsLogradouros.Dataset.tag := dsLogradouros.Dataset.tag - 1;

  If dsBairros.DataSet.Tag = 0
  Then
     dsBairros.Dataset.Close
  else
     dsBairros.Dataset.tag := dsBairros.Dataset.tag - 1;

  If DsTecnico.DataSet.Tag = 0
  Then
     DsTecnico.Dataset.Close
  else
     DsTecnico.Dataset.tag := DsTecnico.Dataset.tag - 1;

  //
  If FrmPropriedades.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmPropriedades := Nil;
end;

procedure TFrmPropriedades.ActIncluirExecute(Sender: TObject);
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
  EdNome.SetFocus;
end;

procedure TFrmPropriedades.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Propriedade ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmPropriedades.ActPostExecute(Sender: TObject);
begin
  Try
    if not(ChkInscEstadual(DMCadastros.PropriedadesIE.AsString,DMCadastros.PropriedadesUF.AsString)) then
    begin
      Application.MessageBox('Inscrição Estadual Inválida. Verifique','Aviso',mb_iconerror + mb_ok);
      exit;
    end;

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

procedure TFrmPropriedades.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmPropriedades.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
     IF DmaPP.PROPRIED_EQUIP = 'S'
     THEN BEGIN
          Label46.CAPTION := 'Série - Medidor';
     END;

    If Not(dsRegiao.Dataset.Active) Then
       dsRegiao.DataSet.Open
    else
       dsRegiao.DataSet.tag := dsRegiao.DataSet.tag + 1;

    If Not(DataSource.DataSet.Active)
    Then
        Datasource.DataSet.Open
    else
        Datasource.DataSet.tag := Datasource.DataSet.tag + 1;

    If Not(dsCidades.DataSet.Active)
    Then
        dsCidades.DataSet.Open
    else
        dsCidades.DataSet.tag := dsCidades.DataSet.tag + 1;

    If Not(dsLogradouros.DataSet.Active)
    Then
        dsLogradouros.DataSet.Open
    else
        dsLogradouros.DataSet.tag := dsLogradouros.DataSet.tag + 1;

    If Not(dsBairros.DataSet.Active)
    Then
        dsBairros.DataSet.Open
    else
        dsBairros.DataSet.tag := dsBairros.DataSet.tag + 1;

    If Not(DsTecnico.DataSet.Active)
    Then
        DsTecnico.DataSet.Open
    else
        DsTecnico.DataSet.tag := DsTecnico.DataSet.tag + 1;

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
  EdNome.SetFocus;
end;

procedure TFrmPropriedades.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmPropriedades.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsBairros(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmPropriedades.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmPropriedades.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmPropriedades.DataSourceStateChange(Sender: TObject);
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

procedure TFrmPropriedades.ActFecharExecute(Sender: TObject);
begin
  If FrmPropriedades.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmPropriedades.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmPropriedades.ActAlterarExecute(Sender: TObject);
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

procedure TFrmPropriedades.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmPropriedades.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmPropriedades.btnLogradouroProClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If DataSource.DataSet.State = dsBrowse Then
     DataSource.DataSet.Edit;
  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag + 1;

  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLogradouros', False);
  { * * * * * }
  //
  FrmLogradouros := TFrmLogradouros.Create(Self);
  FrmLogradouros.ShowModal;

  DataSource.DataSet.FieldByName('ENDERECO').asInteger := FrmMain.Codigo_Int ;

  //
  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag - 1;

  FrmLogradouros.Free;
  FrmLogradouros := Nil;
  //
  cmbLogradouroPro.SetFocus;
end;

procedure TFrmPropriedades.btnBairroproClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If DataSource.DataSet.State = dsBrowse Then
     DataSource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBairros', False);

  { * * * * * }
{  if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  dsBairros.DataSet.Tag := dsBairros.DataSet.Tag + 1;
  //
  FrmBairros := TFrmBairros.Create(Self);

  FrmBairros.ShowModal;
  //
  DataSource.DataSet.FieldByName('BAIRRO').asInteger := FrmMain.Codigo_Int;

  FrmBairros.Free;
  FrmBairros := Nil;
  //
  dsBairros.DataSet.Tag := dsBairros.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  cmbBairroProp.SetFocus;
end;

procedure TFrmPropriedades.BtnCidadeProClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If DataSource.DataSet.State = dsBrowse Then
     DataSource.DataSet.Edit;


  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag + 1;
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);


  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;
  //
  DataSource.DataSet.FieldByName('CIDADE').asInteger := FrmMain.Codigo_Int ;
  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag - 1;
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmCidades.Free;
  FrmCidades := Nil;
  //
  cmbCidadePro.SetFocus;
end;

procedure TFrmPropriedades.EdIePropriedadeEnter(Sender: TObject);
begin
     IF (( DMCadastros.PropriedadesUf.IsNull ) AND ( DMCadastros.Propriedades.STATE IN [ DSINSERT, DSEDIT ] ))
     THEN BEGIN
          MessageDlg('Digite o Estado!', mtError, [mbOK], 0);
          edUFPro.SetFocus ;
     END;
     CORFUNDO(SENDER);
end;

procedure TFrmPropriedades.EdNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmPropriedades.ActLookUpExecute(Sender: TObject);
begin
  If FrmPropriedades.ActiveControl = cmbLogradouroPro Then
     btnlogradouropro.OnClick(btnlogradouropro);
  If FrmPropriedades.ActiveControl = cmbCidadepro Then
     btnCidadepro.OnClick(btnCidadepro);
  If FrmPropriedades.ActiveControl = cmbBairroprop Then
     btnBairropro.OnClick(btnBairropro);
  If FrmPropriedades.ActiveControl = cmbRegiao Then
     btnRegiao.OnClick(btnRegiao);
end;

procedure TFrmPropriedades.btnRegiaoClick(Sender: TObject);
begin
  {If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmRegioes', False);

  dsRegiao.DataSet.Tag := dsRegiao.DataSet.Tag + 1;

  FrmRegioes := TFrmRegioes.Create(Self);

  FrmRegioes.ShowModal;
  //
  Datasource.DataSet.FieldByName('REGIAO').asInteger := FrmMain.Codigo_Int;

  dsRegiao.DataSet.Tag := dsRegiao.DataSet.Tag - 1;

  FrmRegioes.Free;
  FrmRegioes := Nil;
  //
  cmbRegiao.SetFocus;  }
end;

end.
