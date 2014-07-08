 unit Produtos_Form_Bkp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet,   Buttons,
  dxExEdtr, dxDBEdtr, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     IBQuery, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmProdutos = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
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
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    pc: TcxPageControl;
    Pg1: TcxTabSheet;
    Pg2: TcxTabSheet;
    Pg3: TcxTabSheet;
    dsMarcas: TDataSource;
    ActLookup: TAction;
    dsGrupos: TDataSource;
    dsSubGrupos: TDataSource;
    dsReducao: TDataSource;
    dsUnidade: TDataSource;
    Label4: TcxLabel;
    cmbGrupo: TdxDBLookupEdit;
    btnGrupo: TcxButton;
    cmbSubgrupo: TdxDBLookupEdit;
    Label5: TcxLabel;
    Label11: TcxLabel;
    EdQtdade1: TdxDBEdit;
    Label12: TcxLabel;
    EdQtdade2: TdxDBEdit;
    Label14: TcxLabel;
    edLocalizacao1: TdxDBEdit;
    Label15: TcxLabel;
    edLocalizacao2: TdxDBEdit;
    Label16: TcxLabel;
    edEstoqueMin: TdxDBEdit;
    Label17: TcxLabel;
    edEstoqueMax: TdxDBEdit;
    Label20: TcxLabel;
    edUltCompra: TdxDBEdit;
    Label21: TcxLabel;
    edQtdUltCompra: TdxDBEdit;
    Label22: TcxLabel;
    edUltVenda: TdxDBEdit;
    edPrcVendaMed: TdxDBCalcEdit;
    Label29: TcxLabel;
    Label27: TcxLabel;
    edPrcVenda: TdxDBCalcEdit;
    edCustoAnt: TdxDBCalcEdit;
    Label25: TcxLabel;
    Label23: TcxLabel;
    EdMargem: TdxDBCalcEdit;
    Label28: TcxLabel;
    edPrcVendaAnt: TdxDBCalcEdit;
    edCustoMed: TdxDBCalcEdit;
    Label26: TcxLabel;
    Label24: TcxLabel;
    edPrcReposicao: TdxDBCalcEdit;
    cmbCTIE: TdxDBPickEdit;
    Label10: TcxLabel;
    Label9: TcxLabel;
    CmbCTE: TdxDBPickEdit;
    Label7: TcxLabel;
    cmbUnidade: TdxDBLookupEdit;
    Label6: TcxLabel;
    cmbReducao: TdxDBLookupEdit;
    cmbMarca: TdxDBLookupEdit;
    Label8: TcxLabel;
    Label2: TcxLabel;
    EdNome: TdxDBEdit;
    Label1: TcxLabel;
    Label3: TcxLabel;
    btnMarca: TcxButton;
    BtnReducao: TcxButton;
    BtnUnidade: TcxButton;
    Label30: TcxLabel;
    edECF: TdxDBPickEdit;
    Label31: TcxLabel;
    cmbOrigem: TdxDBPickEdit;
    Label32: TcxLabel;
    edPesoLiq: TdxDBEdit;
    Label33: TcxLabel;
    edFrete: TdxDBCalcEdit;
    Label34: TcxLabel;
    edIPI: TdxDBCalcEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    cbEtiqueta: TdxDBCheckEdit;
    cbComplemento: TdxDBCheckEdit;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    Label37: TcxLabel;
    edLocalizacao3: TdxDBEdit;
    RxLabel1: TcxLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label38: TcxLabel;
    EdVolume: TdxDBEdit;
    ActNext: TAction;
    ActLast: TAction;
    ActFirst: TAction;
    ActPrior: TAction;
    dxDBCheckEdit1: TdxDBCheckEdit;
    DBCoolText3: TDBText;
    DBCoolText4: TDBText;
    CoolLabel1: TcxLabel;
    DBCoolText5: TDBText;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dxDBEdit1: TdxDBEdit;
    Label13: TcxLabel;
    Shape9: TShape;
    DBCoolText7: TDBText;
    Shape10: TShape;
    DBCoolText8: TDBText;
    CmbSubUnidade: TdxDBLookupEdit;
    DsSubUnidades: TDataSource;
    ActFiltrar: TAction;
    OpFiltrar: TdxBarButton;
    EdCodigo: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    Label18: TcxLabel;
    CmbFornecedor: TdxDBLookupEdit;
    DsFornecedor: TDataSource;
    dxDBEdit2: TdxDBEdit;
    dxBarButton1: TdxBarButton;
    dxDBEdit4: TdxDBEdit;
    Label19: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    dxDBCheckEdit4: TdxDBCheckEdit;
    Label35: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    Panel2: TPanel;
    BtnLote: TcxButton;
    dxDBCheckEdit5: TdxDBCheckEdit;
    ActLote: TAction;
    Label36: TcxLabel;
    dxDBCheckEdit6: TdxDBCheckEdit;
    dxDBCheckEdit7: TdxDBCheckEdit;
    Label39: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    Label40: TcxLabel;
    dxDBEdit7: TdxDBEdit;
    Label41: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    Label42: TcxLabel;
    dxDBCalcEdit3: TdxDBCalcEdit;
    Label43: TcxLabel;
    dxDBCalcEdit4: TdxDBCalcEdit;
    Label44: TcxLabel;
    dxDBCalcEdit5: TdxDBCalcEdit;
    BtnAgrupador: TcxButton;
    ActAgrupar: TAction;
    SpeedButton1: TcxButton;
    ActComissao: TAction;
    DBCoolText1: TDBText;
    CoolLabel2: TcxLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnMarcaClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure btnGrupoClick(Sender: TObject);
    procedure BtnReducaoClick(Sender: TObject);
    procedure BtnUnidadeClick(Sender: TObject);
    procedure CmbCTEEnter(Sender: TObject);
    procedure EdSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure ActNextPageExecute(Sender: TObject);
    procedure ActPreviousPageExecute(Sender: TObject);
    procedure Pg1Enter(Sender: TObject);
    procedure Pg2Enter(Sender: TObject);
    procedure Pg3Enter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ActNextExecute(Sender: TObject);
    procedure ActPriorExecute(Sender: TObject);
    procedure ActLastExecute(Sender: TObject);
    procedure ActFirstExecute(Sender: TObject);
    procedure ActFiltrarExecute(Sender: TObject);
    procedure dxDBCheckEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dxDBCheckEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure EdCodigoEnter(Sender: TObject);
    procedure EdCodigoExit(Sender: TObject);
    procedure ActLoteExecute(Sender: TObject);
    procedure dxDBCheckEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure ActAgruparExecute(Sender: TObject);
    procedure ActComissaoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: String;
  end;

var
  FrmProdutos: TFrmProdutos;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Marcas_Form, Grupos_Form, Reducoes_Form, Unidades_Form,
  Lotes_Form, Produtos_Agrupadores_Form,
  LocalizarProd_DM, Comissoes_Form, Estoque_Dm;

{$R *.DFM}

procedure TFrmProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair da Tela de Cadastros?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          //
          FrmMain.Codigo_Str := Datasource.DataSet.FieldByName('CODIGO').asString;
          //
          If DataSource.DataSet.Tag = 0 Then
          DataSource.DataSet.Close;
          If dsMarcas.DataSet.Tag = 0 Then
          dsMarcas.DataSet.Close;
          If dsGrupos.DataSet.Tag = 0 Then
          dsGrupos.DataSet.Close;
          If dsReducao.DataSet.Tag = 0 Then
          dsReducao.DataSet.Close;
          If dsUnidade.DataSet.Tag = 0 Then
          dsUnidade.DataSet.Close;
          If DsSubUnidades.DataSet.Tag = 0 Then
          DsSubUnidades.DataSet.Close;
          If DsFornecedor.DataSet.Tag = 0 Then
          DsFornecedor.DataSet.Close;

          //
          If DMCadastros.Tag = 0 Then
          Begin
               DMCadastros.Free;
               DMCadastros := Nil;
          End;
          //
          Action := caFree;
          FrmProdutos := Nil;

          DMApp.Transaction.CommitRetaining;

          //
          If FrmMain.MDIChildCount = 1 Then
          FrmMain.PnlClient.Visible := True;
     END
     ELSE BEGIN
          Action := CaNone ;
     END;
end;

procedure TFrmProdutos.ActIncluirExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes Then
     Exit;
  Try
      If pc.ActivePageIndex < 3
      Then Begin
          pc.ActivePageIndex := 0;
          EdCodigo.SetFocus;
      End;
      Navigator.DataSource.DataSet.Append ;
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

procedure TFrmProdutos.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
     If Navigator.DataSource.Dataset.FieldByName('QTDADE_1').AsFloat > 0
     then begin
          MessageDlg('Este Produto Possui Estoque, Por tanto Não Pode Ser Apagado!', MtInformation, [MboK],0);
     end
     else begin
          //
          msg := 'e Produto';
          //
          If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
          Then Begin
               Navigator.DataSource.Dataset.Delete;
               DMApp.Transaction.CommitRetaining;
          end;
     End;
end;

procedure TFrmProdutos.ActPostExecute(Sender: TObject);
begin
  //
  Try
     Navigator.DataSource.DataSet.Post    ;
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

procedure TFrmProdutos.ActCancelExecute(Sender: TObject);
begin
         If (Navigator.DataSource.DataSet.State in dsEditModes) Then
         Begin
              If (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES) Then
              Navigator.DataSource.DataSet.Cancel;
         End
         Else
             BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmProdutos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
//  Try
    If Not(dsGrupos.DataSet.Active) Then
       dsGrupos.DataSet.Open;
    If Not(dsSubGrupos.DataSet.Active) Then
       dsSubGrupos.DataSet.Open;
    If Not(dsReducao.DataSet.Active) Then
       dsReducao.DataSet.Open;
    If Not(dsUnidade.DataSet.Active) Then
       dsUnidade.DataSet.Open;
    If Not(dsMarcas.DataSet.Active) Then
       dsMarcas.DataSet.Open;
    If Not(dsSubUnidades.DataSet.Active) Then
       dsSubUnidades.DataSet.Open;
    If Not(dsFornecedor.DataSet.Active) Then
       dsFornecedor.DataSet.Open;

     If Not DmCadastros.Produtos.Active
     then begin
          with DmCadastros do
          begin
               Produtos.Close ;
               Produtos.SelectSQL.Clear ;

               Produtos.SelectSQL.Add (' SELECT CNPJ, CODIGO, CODIGO_2, CNPJ_AGRUP, COD_AGRUP,                ');
               Produtos.SelectSQL.Add (' NOME, MARCA, GRUPO, SUBGRUPO, REDUCAO, UNIDADE, CTE,                 ');
               Produtos.SelectSQL.Add (' CTIE, QTDADE_1, QTDADE_2, LOCALIZACAO_1, LOCALIZACAO_2,              ');
               Produtos.SelectSQL.Add (' LOCALIZACAO_3, NEG_QTDADE_2, QTDADE_MIN, QTDADE_MAX,                 ');
               Produtos.SelectSQL.Add (' ETIQUETA_ENT, COMPLEMENTO_NF, DT_ULT_COMPRA, QT_ULT_COMPRA,          ');
               Produtos.SelectSQL.Add (' DT_ULT_VENDA, MARGEM_BRUTA, PRC_REPOS, PRC_CUSTO_ANT, PRC_CUSTO_MED, ');
               Produtos.SelectSQL.Add (' PRC_VENDA, PRC_VENDA_ANT, PRC_VENDA_MED, ALIQUOTA_ECF, ORIGEM,       ');
               Produtos.SelectSQL.Add (' PESO_LIQ, PERC_FRETE, IPI, VOLUME, ATIVO, PROD_PESAVEL,              ');
               Produtos.SelectSQL.Add (' ULTIMO_FORNECEDOR, SUBUNIDADE, FORNECEDOR, CODIGO_INTERNO,           ');
               Produtos.SelectSQL.Add (' DT_ULT_ATU_PRECO, CUSTO_AQUISICAO, VENDE_FRACIONADO,                 ');
               Produtos.SelectSQL.Add (' QNTDE_EXPOSTA, POSSUI_LOTE,                                          ');
               Produtos.SelectSQL.Add (' QNTDE_PEDIDA, PREVISAO_ENTREGA,  QNTDE_MAXIMA_VENDA, PIS, COFINS,    ');
               Produtos.SelectSQL.Add (' COM_VENDA_VLR, COM_VENDA_PCT, PARTICIP_LUCRO,  NAO_COBR_JUR_ATE      ');

               If Uppercase(DmApp.ORDENA_VENDA) = 'NOME'
               then begin
                    Produtos.SelectSQL.Add (' FROM PRODUTO_NOME   ( :EMPRESA, :PRODUTO )                      ');
                    Produtos.ParamByName ( 'PRODUTO' ).AsString := ' ' ;
               end
               else begin
                    Produtos.SelectSQL.Add (' FROM PRODUTO_CODIGO ( :EMPRESA, :PRODUTO )                      ');
                    Produtos.ParamByName ( 'PRODUTO' ).AsString := ' ' ;
               end;
          end;

          If  Not(DataSource.DataSet.Active)
          Then
              Datasource.DataSet.Open;
     end;
{  Except
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
  End;}
  //
  Datasource.AutoEdit := ActAlterar.Enabled;
  //
  pc.ActivePageIndex := 0;
  EdCodigo.SetFocus;
end;

procedure TFrmProdutos.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmProdutos.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsBairros(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;}
end;

procedure TFrmProdutos.ActLocalizarExecute(Sender: TObject);
begin
     FrmLocProdutoCadastro := TFrmLocProdutoCadastro.Create(Self);

     FrmLocProdutoCadastro.Showmodal ;

     FrmLocProdutoCadastro.Free   ;
     FrmLocProdutoCadastro := Nil ;
end;

procedure TFrmProdutos.EdCodigoKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmProdutos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmProdutos.DataSourceStateChange(Sender: TObject);
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
       ActFiltrar.Enabled   := False;
       ActLote.Enabled      := False;
       ActAgrupar.Enabled   := False;
       ActComissao.Enabled  := False;
     End
  Else
     Begin
       ActComissao.Enabled  := True;
       ActLote.Enabled      := true;
       ActAgrupar.Enabled   := true;
       ActFiltrar.Enabled   := true;
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

procedure TFrmProdutos.ActFecharExecute(Sender: TObject);
begin
  If FrmProdutos.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmProdutos.btnMarcaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMarcas', False);
  { * * * * * }
  //
  FrmMarcas := TFrmMarcas.Create(Self);
  FrmMarcas.ShowModal;
  //
  Datasource.DataSet.FieldByName('Marca').asInteger := FrmMarcas.Retorno;
  FrmMarcas.Free;
  FrmMarcas := Nil;
  //
  cmbMarca.SetFocus;
end;

procedure TFrmProdutos.ActLookupExecute(Sender: TObject);
begin
  If FrmProdutos.ActiveControl = cmbMarca Then
     btnMarca.OnClick(btnMarca);
  If FrmProdutos.ActiveControl = cmbReducao Then
     btnReducao.OnClick(btnReducao);
  If FrmProdutos.ActiveControl = cmbUnidade Then
     btnUnidade.OnClick(btnUnidade);
  If (FrmProdutos.ActiveControl = cmbGrupo)or(FrmProdutos.ActiveControl = cmbSubgrupo)
  Then
     btnGrupo.OnClick(btnGrupo);
end;

procedure TFrmProdutos.btnGrupoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmGrupos', False);
  { * * * * * }
  //
  dsGrupos.DataSet.Tag    := dsGrupos.DataSet.Tag    + 1;
  dsSubGrupos.DataSet.Tag := dsSubGrupos.DataSet.Tag + 1;

  DMCadastros.Tag         := DMCadastros.Tag         + 1;
  //
  FrmGrupos := TFrmGrupos.Create(Self);
  //
  FrmGrupos.ShowModal;

  Datasource.DataSet.FieldByName('GRUPO').asInteger := FrmMain.Codigo_Int ;


  dsGrupos.DataSet.Tag    := dsGrupos.DataSet.Tag    - 1;
  dsSubGrupos.DataSet.Tag := dsSubGrupos.DataSet.Tag - 1;

  DMCadastros.Tag         := DMCadastros.Tag         - 1;

  cmbGrupo.SetFocus ;
end;

procedure TFrmProdutos.BtnReducaoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmReducoes', False);
  { * * * * * }
  //
  If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;

  dsReducao.DataSet.Tag    := dsReducao.DataSet.Tag    + 1;

  FrmReducoes := TFrmReducoes.Create(Self);

  FrmReducoes.Showmodal ;

  Datasource.DataSet.FieldByName('REDUCAO').asInteger := FrmMain.Codigo_Int;

  DMCadastros.Tag := DMCadastros.Tag - 1;

  dsReducao.DataSet.Tag := dsReducao.DataSet.Tag  + 1;

  //
  FrmReducoes.Free ;
  FrmReducoes := Nil ;

  cmbReducao.SetFocus ;
end;

procedure TFrmProdutos.BtnUnidadeClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;

  dsUnidade.DataSet.Tag    := dsUnidade.DataSet.Tag    + 1;
  DsSubUnidades.DataSet.Tag := dsSubUnidades.DataSet.Tag + 1;
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmUnidades', False);
  { * * * * * }
  //
  FrmUnidades := TFrmUnidades.Create(Self);

  FrmUnidades.ShowModal;

  DMCadastros.Tag := DMCadastros.Tag - 1;
  Datasource.DataSet.FieldByName('Unidade').asString := FrmMain.Codigo_Str;

  dsUnidade.DataSet.Tag    := dsUnidade.DataSet.Tag    - 1;
  DsSubUnidades.DataSet.Tag := dsSubUnidades.DataSet.Tag - 1;
  //
  FrmUnidades.Free;
  FrmUnidades := Nil;
  //
  cmbUnidade.SetFocus;
end;

procedure TFrmProdutos.CmbCTEEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
     (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
     (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmProdutos.EdSaldoKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
     Begin
       pc.ActivePageIndex := 2;
       edMargem.SetFocus;
     End;
end;

procedure TFrmProdutos.ActNextPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 2 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmProdutos.ActPreviousPageExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmProdutos.Pg1Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := DataSource;
    edCodigo.SetFocus;
  Except
  End;
end;

procedure TFrmProdutos.Pg2Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := DataSource;
    cmbGrupo.SetFocus;
  Except
  End;
end;

procedure TFrmProdutos.Pg3Enter(Sender: TObject);
begin
  //
  Try
    Navigator.DataSource := DataSource;
    edMargem.SetFocus;
  Except
  End;
end;

procedure TFrmProdutos.FormActivate(Sender: TObject);
begin
  Try
    FrmProdutos.Refresh;
    FrmProdutos.Tag := 0;
  Except
  End;
end;

procedure TFrmProdutos.ActNextExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Eof ))
     then
         Navigator.DataSource.DataSet.Next ;
end;

procedure TFrmProdutos.ActPriorExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))
     then
         Navigator.DataSource.DataSet.Prior ;
end;

procedure TFrmProdutos.ActLastExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))
     then
         Navigator.DataSource.DataSet.Last ;
end;

procedure TFrmProdutos.ActFirstExecute(Sender: TObject);
begin
     If (( Navigator.DataSource <> Nil ) and ( Navigator.DataSource.DataSet.Bof ))
     then
         Navigator.DataSource.DataSet.First   ;
end;

procedure TFrmProdutos.ActFiltrarExecute(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmProdutos.dxDBCheckEdit3KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
       pc.ActivePageIndex := 1;
       cmbGrupo.SetFocus;
     End;
end;

procedure TFrmProdutos.dxDBCheckEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then
     Begin
       pc.ActivePageIndex := 2;
       EdMargem.SetFocus;
     End;
end;

procedure TFrmProdutos.EdCodigoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmProdutos.EdCodigoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmProdutos.ActLoteExecute(Sender: TObject);
begin
     If Datasource.DataSet.FieldByName('POSSUI_LOTE').asString = 'S'
     THEN BEGIN
          BtnLote.Enabled := TRUE  ;
          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmLotes', False);
          { * * * * * }
          //
          FrmLotes := TFrmLotes.Create(Self);

          FrmLotes.ShowModal;
          //
          FrmLotes.Free;
          FrmLotes := Nil;
     END
     ELSE BEGIN
          MessageDlg('Este Produto Não Esta Configurado para Lotes!', mtError, [mbOK], 0);
     END;
end;

procedure TFrmProdutos.dxDBCheckEdit7KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
       pc.ActivePageIndex := 0;
       edCodigo.SetFocus;
     End;
end;

procedure TFrmProdutos.ActAgruparExecute(Sender: TObject);
begin
     //localizar produtos
     If DMLocalizarProd = Nil
     then begin
          DMLocalizarProd  := TDMLocalizarProd.Create(Self);

          If DmApp.Tipo_Cons_Prod = 'A' //Auto
          then begin
               If FrmLocProdutoAuto = Nil
               then
                   FrmLocProdutoAuto := TFrmLocProdutoAuto.Create(Application) ;
          END
          ELSE BEGIN
               If FrmLocProduto = Nil
               then
                   FrmLocProduto := TFrmLocProduto.Create(Application) ;
          END;
     end;

     FrmProdutosAgrupadores := TFrmProdutosAgrupadores.Create(Self);
     FrmProdutosAgrupadores.Showmodal ;
     FrmProdutosAgrupadores.Free      ;
     FrmProdutosAgrupadores := Nil    ;
end;

procedure TFrmProdutos.ActComissaoExecute(Sender: TObject);
begin
     BtnLote.Enabled := TRUE  ;
     { * * * * * }
     DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmComissoes', False);

     { * * * * * }
     //
     FrmComissoes := TFrmComissoes.Create(Self);

     FrmComissoes.ShowModal;
     //
     FrmComissoes.Free;
     FrmComissoes := Nil;

end;

end.
