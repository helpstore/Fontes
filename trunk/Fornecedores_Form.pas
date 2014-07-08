 unit Fornecedores_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxDBGrid, dxTL, dxDBCtrl,
  dxDBTLCl, dxGrClms,   Grids, DBGrids,  Mask,
  DBCtrls, dxSkinsCore, dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxClasses, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinscxPCPainter, cxPC,
  cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  TFrmFornecedores = class(TForm)
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
    DataSource: TDataSource;
    LblTitulo: TcxLabel;
    Image1: TImage;
    actLookup: TAction;
    dsLogradouros: TDataSource;
    dsCidades: TDataSource;
    dsBairros: TDataSource;
    dsAtividades: TDataSource;
    dxBarButton1: TdxBarButton;
    BtnAlterar: TdxBarButton;
    ActPgUP: TAction;
    AcPgDn: TAction;
    DsEntradas: TDataSource;
    DsBancos: TDataSource;
    pc: TcxPageControl;
    tbsFornecedor: TcxTabSheet;
    Shape1: TShape;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label49: TcxLabel;
    Label50: TcxLabel;
    btnAtividade: TSpeedButton;
    btnLogradouro: TSpeedButton;
    Label51: TcxLabel;
    Label52: TcxLabel;
    btnBairro: TSpeedButton;
    btnCidade: TSpeedButton;
    Label53: TcxLabel;
    Label54: TcxLabel;
    Label55: TcxLabel;
    Label56: TcxLabel;
    Label57: TcxLabel;
    Label58: TcxLabel;
    Label59: TcxLabel;
    Label60: TcxLabel;
    Panel2: TPanel;
    Label3: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label8: TcxLabel;
    Label4: TcxLabel;
    Label7: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label12: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    edVendedor: TdxDBEdit;
    EdFoneVend: TdxDBMaskEdit;
    EdFoneFin: TdxDBMaskEdit;
    EdFoneRep: TdxDBMaskEdit;
    edRepresentanto: TdxDBEdit;
    edFinanceiro: TdxDBEdit;
    CmbBanco1: TdxDBLookupEdit;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    CmbBanco2: TdxDBLookupEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    EdCodigo: TdxDBEdit;
    edNome: TdxDBEdit;
    EdNomeFantasia: TdxDBEdit;
    cmbAtividade: TdxDBLookupEdit;
    EdNumero: TdxDBEdit;
    cmbLogradouro: TdxDBLookupEdit;
    EdComplemento: TdxDBEdit;
    cmbBairro: TdxDBLookupEdit;
    EdCEP: TdxDBMaskEdit;
    EdUF: TdxDBEdit;
    cmbCidade: TdxDBLookupEdit;
    DbIm: TdxDBEdit;
    EdRGIE: TdxDBEdit;
    EdNascimento: TdxDBDateEdit;
    EdObs: TdxDBMemo;
    dxDBEdit27: TdxDBEdit;
    DbCompras: TcxTabSheet;
    DBCoolText2: TDBText;
    Shape10: TShape;
    GRID: TdxDBGrid;
    GRIDNDOCTO: TdxDBGridMaskColumn;
    GRIDSERIE_NF: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridMaskColumn;
    GRIDPRODUTO: TdxDBGridMaskColumn;
    GRIDNOME_PRODUTO: TdxDBGridMaskColumn;
    GRIDUNIDADE: TdxDBGridMaskColumn;
    GRIDQUANTIDADE: TdxDBGridMaskColumn;
    GRIDPRC_UNITARIO: TdxDBGridMaskColumn;
    GRIDPERC_LUCRO: TdxDBGridMaskColumn;
    GRIDPRC_VENDA: TdxDBGridMaskColumn;
    GRIDPRC_VENDA_ANT: TdxDBGridMaskColumn;
    GRIDPRC_CUSTO: TdxDBGridMaskColumn;
    GRIDICM: TdxDBGridMaskColumn;
    GRIDICM_SUBS: TdxDBGridMaskColumn;
    GRIDIPI: TdxDBGridMaskColumn;
    GRIDIPI_PRODUTO: TdxDBGridMaskColumn;
    GRIDTAXAS: TdxDBGridMaskColumn;
    GRIDDESCONTOS: TdxDBGridMaskColumn;
    GRIDEMBALAGEM: TdxDBGridMaskColumn;
    GRIDFRETE: TdxDBGridMaskColumn;
    GRIDSEGURO: TdxDBGridMaskColumn;
    GRIDSUBUNIDADE: TdxDBGridMaskColumn;
    dsPessoasFJ: TDataSource;
    EDFONE: TdxDBMaskEdit;
    EDFAX: TdxDBMaskEdit;
    EDCELULAR: TdxDBMaskEdit;
    DsFormaPgto: TDataSource;
    Label61: TcxLabel;
    CmbForma: TdxDBLookupEdit;
    BtnForma: TSpeedButton;
    LBLCONTABILIDADE: TcxLabel;
    btnPlano: TSpeedButton;
    DsPlano: TDataSource;
    EdConta: TdxDBButtonEdit;
    GRIDDATA_NF: TdxDBGridColumn;
    GRIDDATA_REF: TdxDBGridColumn;
    GRIDDATA_ENT: TdxDBGridColumn;
    DBEdit1: TDBEdit;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxDBCheckEdit10: TdxDBCheckEdit;
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
    procedure edVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbClassifEnter(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure btnAtividadeClick(Sender: TObject);
    procedure btnLogradouroClick(Sender: TObject);
    procedure btnBairroClick(Sender: TObject);
    procedure btnCidadeClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure dsPessoasFJStateChange(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActPgUPExecute(Sender: TObject);
    procedure AcPgDnExecute(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure BtnFormaClick(Sender: TObject);
    procedure btnPlanoClick(Sender: TObject);
    procedure EdContaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure cmbTipoPessoaExit(Sender: TObject);
    procedure cmbTipoPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EDCPFCGCEnter(Sender: TObject);
  private
    { Private declarations }
    procedure SetaLabel;
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmFornecedores: TFrmFornecedores;

implementation

uses
    Cadastros_DM,
    Listagens_DM,
    Application_DM,
    Main,
    Usuarios_DM,
    Funcoes,
    Localizar_Cliente,
    Atividades_Form,
    Logradouros_Form,
    Bairros_Form,
    Cidades_Form,
    Estoque_Dm, FormasPagto_Form, Plano_DM, Plano_Form, Localizar_Conta ;

{$R *.DFM}

procedure TFrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair da Tela de Cadastros?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          //
          FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger;
          //
          If DataSource.DataSet.Tag = 0 Then
          Datasource.Dataset.Close;

          If DsPlano.DataSet.Tag = 0 Then
          DsPlano.Dataset.Close;

          If dsPessoasFJ.DataSet.Tag = 0 Then
          dsPessoasFJ.DataSet.Close;

          If DsAtividades.DataSet.Tag = 0 Then
          DsAtividades.DataSet.Close;

          If DsFormaPgto.DataSet.Tag = 0 Then
          DsFormaPgto.DataSet.Close;

          If DsBancos.DataSet.Tag = 0 Then
          DsBancos.DataSet.Close;

          If DsBairros.DataSet.Tag = 0 Then
          DsBairros.DataSet.Close;

          If DsCidades.DataSet.Tag = 0 Then
          DsCidades.DataSet.Close;

          If DsBairros.DataSet.Tag = 0 Then
          DsBairros.DataSet.Close;

         // if DsEntradas.DataSet.Tag = 0 then
           // DsEntradas.DataSet.Close; 
          
          //
          DMCadastros.Estados.Close;
          //
{         If DMCadastros.Tag = 0 Then
          Begin
               DMCadastros.Free;
               DMCadastros := Nil;
          End
          else
               DMCadastros.Tag := DMCadastros.Tag - 1;}

          If DMPLANO.Tag = 0 Then
          Begin
               DMPLANO.Free;
               DMPLANO := Nil;
          End
          else
               DMPLANO.Tag := DMPLANO.Tag - 1;

          //
          If FrmFornecedores.FormStyle = fsMDIChild
          Then
              FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmFornecedores := Nil;
     end
     else begin
          Action := caNone;
     end;
end;

procedure TFrmFornecedores.ActIncluirExecute(Sender: TObject);
begin
  If dsPessoasFJ.State in dsEditModes Then
     Exit;
  Try
     edNome.SetFocus;
     dsPessoasFJ.DataSet.Append;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg(' Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmFornecedores.ActExcluirExecute(Sender: TObject);
begin
     If MessageBox(Handle,'Tem certeza que deseja Excluir este Fornecedor ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
     Then begin
          DataSource.Dataset.Delete;
          dsPessoasFJ.Dataset.Delete;
     end;
end;

procedure TFrmFornecedores.ActPostExecute(Sender: TObject);
begin
  Try
     if dsPessoasFJ.dataSet.fieldByName('NOME_RAZAO').asString = '' then
     begin
       application.messagebox('Defina o nome do fornecedor','Aviso',mb_ok);
       edNome.setfocus;
       exit;
     end;

     if dsPessoasFJ.dataSet.fieldByName('ATIVIDADE').asString = '' then
     begin
       application.messagebox('Defina a atividade do fornecedor','Aviso',mb_ok);
       cmbAtividade.setfocus;
       exit;
     end;

     if dsPessoasFJ.dataSet.fieldByName('ENDERECO').isNull  then
     begin
       application.messagebox('Defina o endereço do fornecedor','Aviso',mb_ok);
       cmbLogradouro.setFocus;
       exit;
     end;

     if dsPessoasFJ.dataSet.fieldByName('BAIRRO').isNull then
     begin
       application.messagebox('Defina o bairro do fornecedor','Aviso',mb_ok);
       cmbBairro.setfocus;
       exit;
     end;

     if dsPessoasFJ.dataSet.fieldByName('CIDADE').isNull then
     begin
       application.messagebox('Defina a cidade do fornecedor','Aviso',mb_ok);
       cmbCidade.setFocus;
       exit;
     end;

     if dsPessoasFJ.dataSet.fieldByName('UF').asString = '' then
     begin
       application.messagebox('Defina o estado do fornecedor','Aviso',mb_ok);
       edUF.setFocus;
       exit;
     end;

     
     If dsPessoasFJ.State in [ dsinsert, dsedit ] then
       dsPessoasFJ.DataSet.Post;

     If DataSource.State in [ dsinsert, dsedit ]   then
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

procedure TFrmFornecedores.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then begin
       If MessageDlg('Deseja Realmente Cancelar as Informações?', MtInformation, [MbOk, MbCancel],0 ) = MrOk
       then
           DataSource.DataSet.Cancel ;
  end
  else begin
       If DsPessoasFj.DataSet.State in dsEditModes
       Then begin
            If MessageDlg('Deseja Realmente Cancelar as Informações?', MtInformation, [MbOk, MbCancel],0 ) = MrOk
            then
                DsPessoasFj.DataSet.Cancel ;
       end
       Else
           BtnFechar.OnClick(BtnFechar);
  end;
end;

procedure TFrmFornecedores.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try

    LBLCONTABILIDADE.VISIBLE := false;
    EdConta.VISIBLE := false;
    btnPlano.VISIBLE := false;

    If DMPLANO = Nil  then
      DMPLANO := TDMPLANO.Create(Self);

    If Not(DsAtividades.DataSet.Active) Then
       DsAtividades.DataSet.Open;

    If Not(DsBancos.DataSet.Active) Then
       DsBancos.DataSet.Open;

    If Not(DsFormaPgto.DataSet.Active) Then
       DsFormaPgto.DataSet.Open;

    If Not(DsCidades.DataSet.Active) Then
       DsCidades.DataSet.Open;

    If Not(DsPlano.DataSet.Active) Then
       DsPlano.DataSet.Open;

    If Not(DsLogradouros.DataSet.Active) Then
       DsLogradouros.DataSet.Open;

    If Not(DsBairros.DataSet.Active) Then
       DsBairros.DataSet.Open;

    If Not(dsPessoasFJ.DataSet.Active) Then
       dsPessoasFJ.DataSet.Open;

    If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;

    If DmApp.CARREGAR_ARQ = 'S'
    THEN
       (Datasource.DataSet as TIBDataset).FetchAll;

    EdFone.EditMask     := DmApp.MASCARA_FONE ;
    EdFax.EditMask      := DmApp.MASCARA_FONE ;
    EdCelular.EditMask  := DmApp.MASCARA_FONE ;
    EdFoneVend.EditMask := DmApp.MASCARA_FONE ;
    EdFoneFin.EditMask  := DmApp.MASCARA_FONE ;
    EdFoneRep.EditMask  := DmApp.MASCARA_FONE ;
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
  EdNome.SetFocus;

  FrmFornecedores.ClientHeight := 562 ;
  FrmFornecedores.ClientWidth  := 641 ;
  SetaLabel;
end;

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFornecedores.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGeneros;
  DMListagens.Free;
  DMListagens := Nil; }
end;

procedure TFrmFornecedores.ActLocalizarExecute(Sender: TObject);
Var
   Codigo: Integer;
begin
     try
        If Frm_Localizar_Cliente = Nil
        then
            Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente)
        Else
            Frm_Localizar_Cliente.Tag := Frm_Localizar_Cliente.Tag + 1 ;

        Frm_Localizar_Cliente.DSource.DataSet := DmCadastros.SelPessoasFj ;

        If Not(DmCadastros.SelPessoasFj.Active)
        Then
            DmCadastros.SelPessoasFj.Open
        else
            DmCadastros.SelPessoasFj.Tag := DmCadastros.SelPessoasFj.Tag + 1;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             Codigo := (Frm_Localizar_Cliente.CampTrecho) ;
        end
        ELSE
            Codigo := 0;

        If Frm_Localizar_Cliente.Tag = 0
        then begin
             Frm_Localizar_Cliente.free   ;
             Frm_Localizar_Cliente := Nil ;
        end
        else begin
             Frm_Localizar_Cliente.Tag := Frm_Localizar_Cliente.Tag - 1 ;
        end;

        DmCadastros.SelPessoasFj.Close ;
        DsPessoasFj.DataSet.Locate ('CODIGO',Codigo, [] );

        IF CODIGO > 0
        THEN BEGIN
             IF NOT DataSource.DataSet.Locate('PESSOA_FJ',Codigo,[]) THEN
             BEGIN
                  If MessageDlg('Fornecedor Não Cadastrado, Cadastrar Agora?!', mtError, [mbOK, mBCancel], 0) = MrOk
                  then begin
                       DataSource.DataSet.Append ;
                       edVendedor.SetFocus ;
                       DaTaSource.DataSet.FieldByName ('PESSOA_FJ').Value := Codigo ;
                       DataSource.DataSet.Post  ;

                  end;
             END;
        END;

        SetaLabel;
     Except
     end;
end;

procedure TFrmFornecedores.edVendedorKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmFornecedores.DataSourceStateChange(Sender: TObject);
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

procedure TFrmFornecedores.ActFecharExecute(Sender: TObject);
begin
  If FrmFornecedores.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmFornecedores.cmbClassifEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmFornecedores.cmbNomeRazaoEnter(Sender: TObject);
begin
  CORFUNDO (SENDER );
end;

procedure TFrmFornecedores.cmbNomeRazaoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO ( SENDER );
     SetaLabel;
end;

procedure TFrmFornecedores.btnAtividadeClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmAtividades', False);

  dsAtividades.DataSet.Tag := dsAtividades.DataSet.Tag + 1;

  FrmAtividades := TFrmAtividades.Create(Self);

  FrmAtividades.ShowModal;
  //
  dsPessoasFJ.DataSet.FieldByName('ATIVIDADE').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  dsAtividades.DataSet.Tag := dsAtividades.DataSet.Tag - 1;

  FrmAtividades.Free;
  FrmAtividades := Nil;
  //
  cmbAtividade.SetFocus;
end;

procedure TFrmFornecedores.btnLogradouroClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLogradouros', False);
  { * * * * * }
  { * * * * * }
{ if DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag + 1;

  //
  FrmLogradouros := TFrmLogradouros.Create(Self);
  FrmLogradouros.ShowModal;
  //
  dsPessoasFJ.DataSet.FieldByName('ENDERECO').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  dsLogradouros.DataSet.Tag := dsLogradouros.DataSet.Tag - 1;

  FrmLogradouros.Free;
  FrmLogradouros := Nil;
  //
  cmbLogradouro.SetFocus;
end;

procedure TFrmFornecedores.btnBairroClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;
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
  dsPessoasFJ.DataSet.FieldByName('BAIRRO').asInteger := FrmMain.Codigo_Int;

  FrmBairros.Free;
  FrmBairros := Nil;
  //
  dsBairros.DataSet.Tag := dsBairros.DataSet.Tag - 1;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  //
  cmbBairro.SetFocus;
end;

procedure TFrmFornecedores.btnCidadeClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If dsPessoasFJ.DataSet.State = dsBrowse Then
     dsPessoasFJ.DataSet.Edit;

  { * * * * * }
{ if DMCadastros = Nil
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
  dsPessoasFJ.DataSet.FieldByName('CIDADE').asInteger := FrmMain.Codigo_Int;

  //
  DMCadastros.Tag := DMCadastros.Tag - 1;

  FrmCidades.Free;
  FrmCidades := Nil;
  //
  dsCidades.DataSet.Tag := dsCidades.DataSet.Tag - 1;
  //
  cmbCidade.SetFocus;
end;

procedure TFrmFornecedores.actLookupExecute(Sender: TObject);
begin
  If FrmFornecedores.ActiveControl = cmbAtividade Then
     btnAtividade.OnClick(btnAtividade);
  If FrmFornecedores.ActiveControl = cmbLogradouro Then
     btnLogradouro.OnClick(btnLogradouro);
  If FrmFornecedores.ActiveControl = cmbBairro Then
     btnBairro.OnClick(btnBairro);
  If FrmFornecedores.ActiveControl = cmbCidade Then
     btnCidade.OnClick(btnCidade);
  If FrmFornecedores.ActiveControl = CmbForma Then
     btnForma.OnClick(btnForma);
  If FrmFornecedores.ActiveControl = EdConta Then
     btnPlano.OnClick(btnPlano);
end;

procedure TFrmFornecedores.CmbTipoPessoaEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFornecedores.dsPessoasFJStateChange(Sender: TObject);
begin
  If dsPessoasFJ.State in dsEditModes Then
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

procedure TFrmFornecedores.Panel2Enter(Sender: TObject);
begin
     If DsPessoasFj.State in [ dsinsert, dsedit ] then
         DsPessoasFj.DataSet.Post ;
end;

procedure TFrmFornecedores.ActAlterarExecute(Sender: TObject);
begin
     If Not ( DsPessoasFj.State in [ dsinsert, dsedit ] )
     then
         DsPessoasFj.DataSet.Edit ;
end;

procedure TFrmFornecedores.ActPgUPExecute(Sender: TObject);
begin
     If pc.ActivePageIndex < 1
     Then
         pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmFornecedores.AcPgDnExecute(Sender: TObject);
begin
     If pc.ActivePageIndex > 0
     Then
         pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmFornecedores.pcChange(Sender: TObject);
begin
  if DbCompras.Showing then
  begin
    DMEstoque.Tag := DMEstoque.Tag + 1;
    with DMEstoque do
    begin
      qryListaEntradas.Close ;
      qryListaEntradas.ParamByName('CNPJ').AsString := DmApp.Cnpj   ;
      qryListaEntradas.ParamByName('PESSOA_FJ').AsInteger := dsPessoasFJ.DataSet.FieldByName ('CODIGO').AsInteger ;
      qryListaEntradas.Open ;
    end;
  end;
  if tbsFornecedor.Showing then
  begin
    DsEntradas.DataSet.Close ;
    if DMEstoque.Tag = 0 then
    begin
      DMEstoque.Free;
      DMEstoque := Nil;
    end
    else
      DMEstoque.Tag := DMEstoque.Tag - 1;
  end;
end;

procedure TFrmFornecedores.BtnFormaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);
  { * * * * * }
  //
  DsFormaPgto.DataSet.Tag := DsFormaPgto.DataSet.Tag + 1 ;
  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}
  //
  FrmFormasPagto := TFrmFormasPagto.Create(Application);

  FrmFormasPagto.Showmodal ;

  Datasource.DataSet.FieldByName('FORMA_PAGTO').asInteger := FrmMain.Codigo_Int;

  DsFormaPgto.DataSet.Tag := DsFormaPgto.DataSet.Tag - 1 ;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  CmbForma.SetFocus;
end;

procedure TFrmFornecedores.btnPlanoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  IF DMPlano = NIL
  THEN BEGIN
       DMPlano := TDMPlano.Create(Self)
  END
  ELSE BEGIN
       DMPlano.Tag := 1;
       DMPlano.Plano.Tag := 1;
  END;

{ IF DMCadastros = NIL
  THEN
      DMCadastros := TDMCadastros.Create(Self)
  ELSE
      DMCadastros.TAG := DMCadastros.TAG + 1;}

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPlano', False);
  { * * * * * }
  //
  FrmPlano := TFrmPlano.Create(Self);

  FrmPlano.ShowModal;

  DMCadastros.TAG := DMCadastros.TAG - 1;

  //
  EdConta.SetFocus;
end;

procedure TFrmFornecedores.EdContaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     //
      try
        IF Not ( DMCadastros.Fornecedores.State in [ dsinsert, dsedit ] )
        THEN BEGIN
             DMCadastros.Fornecedores.Edit ;
        end;

        Application.CreateForm(TFrm_Localizar_Conta, Frm_Localizar_Conta);

        Frm_Localizar_Conta.DSource.DataSet := DmPlano.SelPlano ;

        if ( Frm_Localizar_Conta.showmodal = mrOk )
        Then Begin
             DMCadastros.FornecedoresCONTABILIDADE.VALUE := Frm_Localizar_Conta.CampTrecho ;
        end;

        DmPlano.SelPlano.Close;

        Frm_Localizar_Conta.free ;

      Except
      end;
end;

procedure TFrmFornecedores.cmbTipoPessoaExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
end;

procedure TFrmFornecedores.cmbTipoPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
  Begin
     Perform(WM_NEXTDLGCTL, 0, 0);
     If Self.ActiveControl = pc Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  End;

end;

procedure TFrmFornecedores.SetaLabel;
begin
 // if (DMCadastros.edtFornecedores.state in [dsEdit,dsInsert]) then
 //   DMCadastros.edtFornecedoresCPF_CGC.clear;

  If cmbTipoPessoa.text = 'Juridica' Then
  Begin
    DMCadastros.edtFornecedoresCPF_CGC.EditMask := '00.000.000/0000-00;0;_';
    Label56.Caption := 'C.N.P.J.';
    Label57.Caption := 'I.E.';
  End
  Else
  Begin
    DMCadastros.edtFornecedoresCPF_CGC.EditMask :='000.000.000-00;0;_';
    Label56.Caption := 'C.P.F.';
    Label57.Caption := 'R.G.';
  End;
end;

procedure TFrmFornecedores.EDCPFCGCEnter(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
end;

end.
