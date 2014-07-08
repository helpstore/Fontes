 unit PessoasFJ_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dbctrls,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxPC, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit;

type
  TFrmPessoasFJ = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
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
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    dsCidades: TDataSource;
    dsBairros: TDataSource;
    dsLogradouros: TDataSource;
    DataSource: TDataSource;
    LblTitulo: TcxLabel;
    Image1: TImage;
    actLookup: TAction;
    btnFiltrar: TdxBarButton;
    dsAtividades: TDataSource;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    btnLogradouro: TcxButton;
    btnBairro: TcxButton;
    btnCidade: TcxButton;
    Label8: TcxLabel;
    btnAtividade: TcxButton;
    EdCodigo: TdxDBEdit;
    EdInicial: TdxDBEdit;
    EdNomeFantasia: TdxDBEdit;
    EdNumero: TdxDBEdit;
    EdComplemento: TdxDBEdit;
    EdUF: TdxDBEdit;
    EdRGIE: TdxDBEdit;
    EdObs: TdxDBMemo;
    EdNascimento: TdxDBDateEdit;
    EdCEP: TdxDBMaskEdit;
    cmbLogradouro: TdxDBLookupEdit;
    cmbBairro: TdxDBLookupEdit;
    cmbCidade: TdxDBLookupEdit;
    cmbAtividade: TdxDBLookupEdit;
    Shape1: TShape;
    dxTabSheet2: TcxTabSheet;
    Shape2: TShape;
    dsPropriedades: TDataSource;
    Label21: TcxLabel;
    Label25: TcxLabel;
    btnLogradouroPro: TcxButton;
    Label27: TcxLabel;
    Label28: TcxLabel;
    Label29: TcxLabel;
    Label30: TcxLabel;
    DBCoolText2: TDBText;
    Shape6: TShape;
    Label35: TcxLabel;
    BtnCidadePro: TcxButton;
    edCodigoPro: TdxDBEdit;
    cmbLogradouroPro: TdxDBLookupEdit;
    edUFPro: TdxDBEdit;
    edIEPro: TdxDBEdit;
    edCepPro: TdxDBMaskEdit;
    edAreaTotal: TdxDBEdit;
    edObsPro: TdxDBMemo;
    edComplementoPro: TdxDBEdit;
    cmbCidadePro: TdxDBLookupEdit;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    DbIm: TdxDBEdit;
    ActFiltrar: TAction;
    TAB3: TcxTabSheet;
    Label15: TcxLabel;
    CmbPessoa: TdxDBLookupEdit;
    Bevel2: TBevel;
    Shape3: TShape;
    DBCoolText1: TDBText;
    Label16: TcxLabel;
    DsSelPessoa: TDataSource;
    ActProximo: TAction;
    ActAnterior: TAction;
    OpAlterar: TdxBarButton;
    BtnVeiculos: TcxButton;
    ActVeiculos: TAction;
    dxDBEdit1: TdxDBEdit;
    CmbBairroProp: TdxDBLookupEdit;
    btnBairropro: TcxButton;
    Label17: TcxLabel;
    EDFONE: TdxDBMaskEdit;
    EDFAX: TdxDBMaskEdit;
    EDCELULAR: TdxDBMaskEdit;
    dxDBEdit2: TdxDBEdit;
    Label18: TcxLabel;
    cmbRegiao: TdxDBLookupEdit;
    btnRegiao: TcxButton;
    Label19: TcxLabel;
    dsRegiao: TDataSource;
    EdEMail: TdxDBEdit;
    EDCPFCGC: TdxDBEdit;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    cmbTipoPessoa: TcxDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure DbImKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure btnLogradouroClick(Sender: TObject);
    procedure btnBairroClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure cmbCidadeChange(Sender: TObject);
    procedure btnAtividadeClick(Sender: TObject);
    procedure dxTabSheet1Enter(Sender: TObject);
    procedure dxTabSheet2Enter(Sender: TObject);
    procedure btnLogradouroProClick(Sender: TObject);
    procedure BtnCidadeProClick(Sender: TObject);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure TAB3Enter(Sender: TObject);
    procedure ActProximoExecute(Sender: TObject);
    procedure ActAnteriorExecute(Sender: TObject);
    procedure dsPropriedadesStateChange(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActVeiculosExecute(Sender: TObject);
    procedure btnBairroproClick(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure cmbLogradouroProEnter(Sender: TObject);
    procedure cmbLogradouroProExit(Sender: TObject);
    procedure CmbPessoaExit(Sender: TObject);
    procedure CmbPessoaEnter(Sender: TObject);
    procedure cmbTipoPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRegiaoClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetaLabel ;
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmPessoasFJ: TFrmPessoasFJ;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Logradouros_Form, Bairros_Form, Cidades_Form, Atividades_Form,
  Localizar_Generico, VeiculosPessoas_Form, Regioes_Form, untCadLogradouro;

{$R *.DFM}

procedure TFrmPessoasFJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If DmCadastros.tag > 0
  then
      dmcadastros.Clientes.DataSource := dmcadastros.dsPessoasFJ ;

  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If dsPropriedades.DataSet.Tag = 0
  Then
     dsPropriedades.DataSet.Close
  else
      dsPropriedades.DataSet.tag := dsPropriedades.DataSet.tag - 1;

  If Datasource.DataSet.Tag = 0
  Then
      Datasource.Dataset.Close
  else
      Datasource.Dataset.tag := Datasource.Dataset.tag - 1;

  If dsAtividades.DataSet.Tag = 0
  Then
      dsAtividades.DataSet.Close
  else
      dsAtividades.DataSet.tag := dsAtividades.DataSet.tag - 1;

  If dsRegiao.DataSet.Tag = 0
  Then
      dsRegiao.DataSet.Close
  else
      dsRegiao.DataSet.tag := dsRegiao.DataSet.tag - 1;

  If dsLogradouros.DataSet.Tag = 0
  Then
      dsLogradouros.DataSet.Close
  else
      dsLogradouros.DataSet.tag := dsLogradouros.DataSet.tag - 1;

  If dsBairros.DataSet.Tag = 0
  Then
      dsBairros.DataSet.Close
  else
      dsBairros.DataSet.tag := dsBairros.DataSet.tag - 1;

  If dsCidades.DataSet.Tag = 0
  Then
      dsCidades.DataSet.Close
  else
      dsCidades.DataSet.tag := dsCidades.DataSet.tag - 1;

  if DMCadastros.Estados.tag = 0
  then
      DMCadastros.Estados.Close
  else
      DMCadastros.Estados.tag := DMCadastros.Estados.tag - 1;

  //
  {f DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //

  If FrmPessoasFJ.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmPessoasFJ := Nil;
  //
end;

procedure TFrmPessoasFJ.ActIncluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;
  Try
    Navigator.DataSource.DataSet.Append;
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
  If pc.ActivePageIndex = 0 Then
     EdInicial.SetFocus;
  //
  If pc.ActivePageIndex = 1 Then
     cmbLogradouroPro.SetFocus;
end;

procedure TFrmPessoasFJ.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
  //
  If pc.ActivePageIndex = 0 Then
     msg := 'a Pessoa ';
  //
  If pc.ActivePageIndex = 1 Then
     msg := 'a Propriedade ';
  //
  If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
       Navigator.DataSource.Dataset.Delete;
       DMApp.Transaction.CommitRetaining;
     End;
end;

procedure TFrmPessoasFJ.ActPostExecute(Sender: TObject);
begin
  Try
     If Pc.ActivePageIndex <> 2
     then
          Navigator.DataSource.DataSet.Post
     else
         DataSource.DataSet.Post ;

    DMApp.Transaction.CommitRetaining;
  Except
        { Caso haja um erro ao tentar gravar o registro  }
        { a mensagem será passada para a nossa procedure }
        on E: Exception do
        TraduzException(E.Message, DataSource.DataSet );

  End;
end;

procedure TFrmPessoasFJ.ActCancelExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0
     then begin
          If DataSource.DataSet.State in dsEditModes Then
             DataSource.DataSet.Cancel
          Else
          BtnFechar.OnClick(BtnFechar);
     end
     else begin
          If pc.ActivePageIndex = 1
          then begin
               If dsPropriedades.DataSet.State in dsEditModes Then
                  dsPropriedades.DataSet.Cancel
               Else
               BtnFechar.OnClick(BtnFechar);
          end
          else begin
               If (DataSource.DataSet.State in dsEditModes) Then
               Begin
                    If (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES)
                    Then
                        DataSource.DataSet.Cancel;
               End
               Else
                   BtnFechar.OnClick(BtnFechar);
          end;
     end;
end;


procedure TFrmPessoasFJ.FormShow(Sender: TObject);
begin
  If DmCadastros.tag > 0 then
    dmcadastros.Clientes.DataSource := nil;

  IniciaComponentes ( Self as TForm );

  EdFone.EditMask    := DmApp.MASCARA_FONE ;
  EdFax.EditMask     := DmApp.MASCARA_FONE ;
  EdCelular.EditMask := DmApp.MASCARA_FONE ;

  Try
    If Not(dsAtividades.DataSet.Active)
    Then
       dsAtividades.DataSet.Open
    else
       dsAtividades.DataSet.tag := dsAtividades.DataSet.tag + 1;

    If Not(dsRegiao.DataSet.Active)
    Then
       dsRegiao.DataSet.Open
    else
        dsRegiao.DataSet.tag := dsRegiao.DataSet.tag + 1;

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

    If Not(dsCidades.DataSet.Active)
    Then
        dsCidades.DataSet.Open
    else
        dsCidades.DataSet.tag := dsCidades.DataSet.tag + 1;

    If Not(Datasource.DataSet.Active)
    Then
        DataSource.DataSet.Open
    else
        DataSource.DataSet.tag := DataSource.DataSet.tag + 1;

    If Not(dsPropriedades.DataSet.Active)
    Then
        dsPropriedades.DataSet.Open
    else
        dsPropriedades.DataSet.tag := dsPropriedades.DataSet.tag + 1;

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
  pc.ActivePageIndex  := 0;
  EdInicial.SetFocus;
  SetaLabel;
end;

procedure TFrmPessoasFJ.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmPessoasFJ.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGeneros;
  DMListagens.Free;
  DMListagens := Nil; }
end;

procedure TFrmPessoasFJ.ActLocalizarExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0
     then begin
          try
             Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

             Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;

             Frm_Localizar_Generico.CAMPO2 := 'NOME_RAZAO';
             Frm_Localizar_Generico.CAMPO1 := 'CODIGO';

             Frm_Localizar_Generico.LblTitulo.Caption := 'Pessoa F/J' ;

             Frm_Localizar_Generico.showmodal ;

             Frm_Localizar_Generico.free   ;

             Frm_Localizar_Generico := Nil ;
          Except
          end;
     end
     else begin
          DMApp.Localizar(DsPropriedades);
     end;
end;

procedure TFrmPessoasFJ.DbImKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TFrmPessoasFJ.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmPessoasFJ.DataSourceStateChange(Sender: TObject);
begin
     If Pc.ActivePageIndex <> 2
     then begin
          If DataSource.State in dsEditModes Then
          Begin
               ActIncluir.Enabled   := False;
               ActAlterar.Enabled   := False;
               ActExcluir.Enabled   := False;
               ActLocalizar.Enabled := False;
               ActFiltrar.Enabled   := False;
               ActListagem.Enabled  := False;
               BtnSalvar.Enabled    := True;
               BtnCancelar.Enabled  := True;
               ActFechar.Enabled    := False;
               ActVeiculos.Enabled  := False;
          End
          Else
          Begin
               ActVeiculos.Enabled  := True ;
               ActIncluir.Enabled   := ActIncluir.Tag = 1;
               ActAlterar.Enabled   := ActAlterar.Tag = 1;
               ActExcluir.Enabled   := ActExcluir.Tag = 1;
               ActLocalizar.Enabled := True;
               ActFiltrar.Enabled   := True;
               ActListagem.Enabled  := ActListagem.Tag = 1;
               BtnSalvar.Enabled    := False;
               BtnCancelar.Enabled  := False;
               ActFechar.Enabled    := True;
          End;
     end
     else begin
          ActIncluir.Enabled   := False;
          ActExcluir.Enabled   := False;
          ActLocalizar.Enabled := False;
          ActFiltrar.Enabled   := False;
          ActListagem.Enabled  := False;

          If DataSource.State in dsEditModes Then
          Begin
               ActAlterar.Enabled   := False;
               BtnSalvar.Enabled    := True;
               BtnCancelar.Enabled  := True;
               ActFechar.Enabled    := False;
          End
          Else
          Begin
               ActAlterar.Enabled   := ActAlterar.Tag = 1;
               BtnSalvar.Enabled    := False;
               BtnCancelar.Enabled  := False;
               ActFechar.Enabled    := True;
          End;
     end;
end;

procedure TFrmPessoasFJ.ActFecharExecute(Sender: TObject);
begin
//     If FrmPessoasFJ.FormStyle = fsMDIChild Then
//        FrmMain.opFechar.OnClick(FrmMain.opFechar)
//     Else
         Close;
end;

procedure TFrmPessoasFJ.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmPessoasFJ.btnLogradouroClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadLogradouro', False);

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  if FrmCadLogradouro = Nil Then
  begin
     FrmCadLogradouro := TFrmCadLogradouro.Create(Self);
     FrmCadLogradouro.ShowMODAL ;

     cmbLogradouro.ListSource.Dataset.Close;
     cmbLogradouro.ListSource.Dataset.Open;

     DataSource.DataSet.FieldByName('ENDERECO').asInteger := FrmCadLogradouro.Codigo;

     FrmCadLogradouro.Free      ;
     FrmCadLogradouro := Nil    ;
  end;

  cmbLogradouro.SetFocus;
end;

procedure TFrmPessoasFJ.btnBairroClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBairros', False);

  { * * * * * }
  {f DMCadastros = Nil
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
  Datasource.DataSet.FieldByName('BAIRRO').asInteger := FrmMain.Codigo_Int;

  FrmBairros.Free;
  FrmBairros := Nil;
  //
  dsBairros.DataSet.Tag := dsBairros.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  cmbBairro.SetFocus;
end;

procedure TFrmPessoasFJ.btnCidadeClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  { * * * * * }
 {f DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag + 1;

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);
  { * * * * * }
  //
  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;
  //
  Datasource.DataSet.FieldByName('CIDADE').asInteger := FrmMain.Codigo_Int;

  //
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmCidades.Free;
  FrmCidades := Nil;
  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag - 1;
  //
  cmbCidade.SetFocus;
end;

procedure TFrmPessoasFJ.actLookupExecute(Sender: TObject);
begin
  If FrmPessoasFJ.ActiveControl = cmbAtividade Then
     btnAtividade.OnClick(btnAtividade);
  If FrmPessoasFJ.ActiveControl = cmbLogradouro Then
     btnLogradouro.OnClick(btnLogradouro);
  If FrmPessoasFJ.ActiveControl = cmbBairro Then
     btnBairro.OnClick(btnBairro);
  If FrmPessoasFJ.ActiveControl = cmbCidade Then
     btnCidade.OnClick(btnCidade);
  If FrmPessoasFJ.ActiveControl = cmbLogradouroPro Then
     btnlogradouropro.OnClick(btnlogradouropro);
  If FrmPessoasFJ.ActiveControl = cmbCidadepro Then
     btnCidadepro.OnClick(btnCidadepro);
  If FrmPessoasFJ.ActiveControl = cmbBairroprop Then
     btnBairropro.OnClick(btnBairropro);
  If FrmPessoasFJ.ActiveControl = cmbRegiao Then
     btnRegiao.OnClick(btnRegiao);
end;

procedure TFrmPessoasFJ.cmbCidadeChange(Sender: TObject);
begin
  If Datasource.State in dsEditModes Then
     Datasource.DataSet.FieldByName('UF').asString := dsCidades.DataSet.FieldByName('UF').asString;
end;

procedure TFrmPessoasFJ.btnAtividadeClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAtividades', False);

  dsAtividades.DataSet.Tag := dsAtividades.DataSet.Tag + 1;

  FrmAtividades := TFrmAtividades.Create(Self);

  FrmAtividades.ShowModal;
  //
  Datasource.DataSet.FieldByName('ATIVIDADE').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  dsAtividades.DataSet.Tag := dsAtividades.DataSet.Tag - 1;

  FrmAtividades.Free;
  FrmAtividades := Nil;
  //
  cmbAtividade.SetFocus;
end;

procedure TFrmPessoasFJ.dxTabSheet1Enter(Sender: TObject);
begin
  Try
    Navigator.DataSource := DataSource;
    EdInicial.SetFocus;
  Except
  End;
end;

procedure TFrmPessoasFJ.dxTabSheet2Enter(Sender: TObject);
begin
  Try
    Navigator.DataSource := dsPropriedades;
    cmbLogradouroPro.SetFocus;
  Except
  End;
end;

procedure TFrmPessoasFJ.btnLogradouroProClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCadLogradouro', False);

  If dsPropriedades.DataSet.State = dsBrowse Then
     dsPropriedades.DataSet.Edit;

  if FrmCadLogradouro = Nil Then
  begin
     FrmCadLogradouro := TFrmCadLogradouro.Create(Self);
     FrmCadLogradouro.ShowMODAL ;

     cmbLogradouroPro.ListSource.Dataset.Close;
     cmbLogradouroPro.ListSource.Dataset.Open;

     dsPropriedades.DataSet.FieldByName('ENDERECO').asInteger := FrmCadLogradouro.Codigo;

     FrmCadLogradouro.Free      ;
     FrmCadLogradouro := Nil    ;
  end;

  cmbLogradouroPro.SetFocus;

end;

procedure TFrmPessoasFJ.BtnCidadeProClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If dsPropriedades.DataSet.State = dsBrowse Then
     dsPropriedades.DataSet.Edit;
  { * * * * * }
{ if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag + 1;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCidades', False);
  { * * * * * }
  //
  FrmCidades := TFrmCidades.Create(Self);
  FrmCidades.ShowModal;
  //
  dsPropriedades.DataSet.FieldByName('CIDADE').asInteger := FrmMain.Codigo_Int ;
  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag - 1;
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmCidades.Free;
  FrmCidades := Nil;
  //
  cmbCidadePro.SetFocus;
end;

procedure TFrmPessoasFJ.ActNextPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 2 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmPessoasFJ.ActPreviousPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmPessoasFJ.ActFiltrarExecute(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmPessoasFJ.TAB3Enter(Sender: TObject);
begin
     If Not DsSelPessoa.DataSet.active
     then
         DsSelPessoa.DataSet.Open ;
end;

procedure TFrmPessoasFJ.ActProximoExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Eof ))
     then
         Navigator.DataSource.DataSet.Next ;
end;

procedure TFrmPessoasFJ.ActAnteriorExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))
     then
         Navigator.DataSource.DataSet.Prior ;
end;

procedure TFrmPessoasFJ.dsPropriedadesStateChange(Sender: TObject);
begin
     If Pc.ActivePageIndex = 1
     then begin
          If dsPropriedades.State in dsEditModes Then
          Begin
               ActIncluir.Enabled   := False;
               ActAlterar.Enabled   := False;
               ActExcluir.Enabled   := False;
               ActLocalizar.Enabled := False;
               ActFiltrar.Enabled   := False;
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
               ActFiltrar.Enabled   := True;
               ActListagem.Enabled  := ActListagem.Tag = 1;
               BtnSalvar.Enabled    := False;
               BtnCancelar.Enabled  := False;
               ActFechar.Enabled    := True;
          End;
     end;
end;

procedure TFrmPessoasFJ.pcChange(Sender: TObject);
begin
  //
  Try
    //
    If (DataSource.DataSet.State in dsEditModes)
    THEN
        DataSource.DataSet.Cancel ;

    If (dsPropriedades.DataSet.State in dsEditModes)
    THEN
        dsPropriedades.DataSet.Cancel ;

{    If (DataSource.DataSet.State in dsEditModes) Or
       (dsPropriedades.DataSet.State in dsEditModes) Then
       AllowChange := False;
}
    If Pc.ActivePageIndex = 0
    then begin
         Navigator.DataSource := DataSource;

         ActIncluir.Enabled   := TRUE;
         ActExcluir.Enabled   := TRUE;
         ActLocalizar.Enabled := TRUE;
         ActFiltrar.Enabled   := TRUE;
         ActListagem.Enabled  := TRUE;

         EdInicial.SetFocus;
    end
    else begin
         If Pc.ActivePageIndex = 1
         THEN BEGIN
              ActIncluir.Enabled   := TRUE;
              ActExcluir.Enabled   := TRUE;
              ActLocalizar.Enabled := TRUE;
              ActFiltrar.Enabled   := TRUE;
              ActListagem.Enabled  := TRUE;

              Navigator.DataSource := dsPropriedades;
                                                     
              cmbLogradouroPro.SetFocus ;
         END
         ELSE BEGIN
              ActIncluir.Enabled   := False;
              ActExcluir.Enabled   := False;
              ActLocalizar.Enabled := False;
              ActFiltrar.Enabled   := False;
              ActListagem.Enabled  := False;

              CmbPessoa.SetFocus ;
         END;
    end;

  Except
  End;
end;

procedure TFrmPessoasFJ.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;
  Try
    Navigator.DataSource.DataSet.Edit;
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
end;

procedure TFrmPessoasFJ.ActVeiculosExecute(Sender: TObject);
begin
  { * * * * * }
  If Not(DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVeiculosFrota', True)) Then
     Exit;
  { * * * * * }
  If FrmVeiculosFrota = Nil Then
     Begin

       FrmVeiculosFrota := TFrmVeiculosFrota.Create(Self);
       //
       FrmVeiculosFrota.Showmodal ;
       FrmVeiculosFrota.Free      ;
       FrmVeiculosFrota := Nil    ;
     End;
end;

procedure TFrmPessoasFJ.btnBairroproClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If dsPropriedades.DataSet.State = dsBrowse Then
     dsPropriedades.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBairros', False);

  { * * * * * }
{ if DMCadastros = Nil
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
  dsPropriedades.DataSet.FieldByName('BAIRRO').asInteger := FrmMain.Codigo_Int;

  FrmBairros.Free;
  FrmBairros := Nil;
  //
  dsBairros.DataSet.Tag := dsBairros.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  cmbBairroProp.SetFocus;
end;

procedure TFrmPessoasFJ.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmPessoasFJ.EdInicialExit(Sender: TObject);
begin
     SetaLabel;
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmPessoasFJ.cmbLogradouroProEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmPessoasFJ.cmbLogradouroProExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmPessoasFJ.CmbPessoaExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmPessoasFJ.CmbPessoaEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmPessoasFJ.cmbTipoPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
  Begin
     Perform(WM_NEXTDLGCTL, 0, 0);
     If Self.ActiveControl = pc Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  End;
end;

procedure TFrmPessoasFJ.SetaLabel;
begin
  if cmbTipoPessoa.text = 'Juridica' then
  begin
    DMCadastros.Pessoas_FJCPF_CGC.EditMask := '99.999.999\/9999\-99;0;_';
    Label10.Caption := 'C.G.C';
    Label11.Caption := 'I.E.';
  end
  else
  begin
    DMCadastros.Pessoas_FJCPF_CGC.EditMask :='999.999.999\-99;0;_';
    Label10.Caption := 'C.P.F';
    Label11.Caption := 'R.G.';
  end;
end;

procedure TFrmPessoasFJ.btnRegiaoClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
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
  cmbRegiao.SetFocus;
end;

end.
