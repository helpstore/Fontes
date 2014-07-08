 unit Cotacoes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  Grids, DBGrids, IBQuery, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel;

type
  TFrmCotacoes = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
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
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    dsParametros: TDataSource;
    dsPessoasFJ: TDataSource;
    DataSource: TDataSource;
    actLookup: TAction;
    ActNextPage: TAction;
    ActPreviousPage: TAction;
    btnAlterar: TdxBarButton;
    DsFormaPgto: TDataSource;
    DsItens: TDataSource;
    ActEnviaCaixa: TAction;
    ActLocalizarCliente: TAction;
    DsUnidades: TDataSource;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    Panel2: TPanel;
    LblTitulo: TcxLabel;
    dxBarButton1: TdxBarButton;
    ActLocalizarTransportadora: TAction;
    Panel4: TPanel;
    Label1: TcxLabel;
    EdDocumento: TdxDBEdit;
    cbFrete: TdxDBCheckEdit;
    Label3: TcxLabel;
    EdDataNota: TdxDBDateEdit;
    Label2: TcxLabel;
    EdPessoa: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    BtnPessoa: TSpeedButton;
    Label8: TcxLabel;
    CmbFormaPgto: TdxDBLookupEdit;
    dxDBEdit1: TdxDBEdit;
    LBLTERCEIROS: TcxLabel;
    EdTransportadora: TdxDBEdit;
    CmbTransportadora: TdxDBEdit;
    btnTransportadora: TSpeedButton;
    Label7: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Panel5: TPanel;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    EdMargem: TdxDBCalcEdit;
    RxLabel1: TcxLabel;
    Shape7: TShape;
    Panel9: TPanel;
    Panel10: TPanel;
    dsTrasportadoras: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure CmbTipoPessoaEnter(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure EdPessoaExit(Sender: TObject);
    procedure ActLocalizarClienteExecute(Sender: TObject);
    procedure DataSourceUpdateData(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure EdPessoaEnter(Sender: TObject);
    procedure GridItensEnter(Sender: TObject);
    procedure CmbFormaPgtoExit(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure EdMargemEnter(Sender: TObject);
    procedure EdMargemExit(Sender: TObject);
    procedure EdTransportadoraExit(Sender: TObject);
    procedure ActLocalizarTransportadoraExecute(Sender: TObject);
    procedure btnTransportadoraClick(Sender: TObject);
  private
    { Private declarations }
    Procedure Calcular_Itens;
  public
    LocCli, LocVen, Loctrans :Boolean ;
    { Public declarations }
  end;

var
  FrmCotacoes: TFrmCotacoes;

implementation

uses Vendas_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     CotacoesItens_Form,
     Cadastros_DM,
     Clientes_Form,
     FormasPagto_Form,
     Localizar_Cliente, SelVendas_Form, Cotacao_FRel, Transportadoras_Form,
  Localizar_Transportadora, SelCotacoes_Form, Fornecedores_Form,
  Localizar_Fornecedor, Plano_DM ;

  {$R *.DFM}

procedure TFrmCotacoes.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
begin
  //
  If dsItens.DataSet.RecordCount > 0 Then
     bReg := dsItens.DataSet.GetBookmark;
  //
  dsItens.DataSet.DisableControls;
  //
  tProdutos := 0;
  //
  dsItens.DataSet.First;
  //
  While Not dsItens.DataSet.Eof Do
        Begin
          //
          tProdutos := tProdutos + dsItens.DataSet.FieldByName('TOTAL'       ).asFloat;
          //
          dsItens.DataSet.Next;
        End;

  //Valores dos Itens
  DataSource.DataSet.Edit ;

  DataSource.DataSet.FieldByName('TOTAL' ).asFloat := tProdutos;

  DataSource.DataSet.Post ;

  //
  If dsItens.DataSet.RecordCount > 0 Then
     Begin
       dsItens.DataSet.GotoBookmark(bReg);
       dsItens.DataSet.FreeBookmark(bReg);
     End;
  //
  dsItens.DataSet.EnableControls;
end;

procedure TFrmCotacoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If dsItens.DataSet.Tag = 0 Then
     dsItens.Dataset.Close;
  If DataSource.DataSet.Tag = 0 Then
     DataSource.DataSet.Close;
  If dsParametros.DataSet.Tag = 0 Then
     dsParametros.DataSet.Close;
  If DsFormaPgto.DataSet.Tag = 0 Then
     DsFormaPgto.DataSet.Close;
  If DsUnidades.DataSet.Tag = 0 Then
     DsUnidades.DataSet.Close;
  //
  Action := caFree;
  FrmCotacoes := Nil;
end;

procedure TFrmCotacoes.ActIncluirExecute(Sender: TObject);
begin
  try
     //
     If Navigator.DataSource.State in dsEditModes Then
        Exit;
     //
     If FrmCotacoes.ActiveControl = GridItens Then
     Begin
        if (DmVendas.CotacoesFechado.asString = 'S') then
        begin
          application.messagebox('Impossível incluir itens. Cotação se encontra fechada!','Aviso',mb_ok+mb_iconerror);
          exit;
        end;
          //

        FrmCotacoesItens := TFrmCotacoesItens.Create(Self);
        FrmCotacoesItens.ShowModal;
          //
        Calcular_Itens;
     End
     else begin
          Navigator.DataSource.DataSet.Append;
          EdPessoa.SetFocus ;
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

procedure TFrmCotacoes.ActExcluirExecute(Sender: TObject);
Var
   msg: String;
begin
     If FrmCotacoes.ActiveControl = GridItens
     Then Begin
          if (DmVendas.CotacoesFechado.asString = 'S') then
          begin
            application.messagebox('Impossível excluir item. Cotação se encontra fechada!','Aviso',mb_ok+mb_iconerror);
            exit;
          end;

          msg := 'e Item ';

          //
          If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
          Then Begin
               DsItens.Dataset.Delete;

               //Foi Apagado Um Item
               Calcular_Itens ;

               DMApp.Transaction.CommitRetaining;
          End;
     end
     else begin
          msg := 'e Orçamento ';
          //
          If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
          Then Begin
               DataSource.Dataset.Delete;

               DMApp.Transaction.CommitRetaining;
          End;
     end;
end;

procedure TFrmCotacoes.ActPostExecute(Sender: TObject);
begin
  //
  Try
    //
     if (DmVendas.CotacoesFechado.asString = 'S') then
     begin
       application.messagebox('Impossível salvar alterações. Cotação se encontra fechada!','Aviso',mb_ok+mb_iconerror);
       exit;
     end;

     If FrmCotacoes.ActiveControl <> GridItens
     Then Begin
         //
         DMVendas.Cotacoes_Itens.DataSource := Nil;
         //
         DataSource.DataSet.Post;
         //
         DMVendas.Cotacoes_Itens.DataSource  := DMVendas.dsCotacoes;
    End ;

    //
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

procedure TFrmCotacoes.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes
  Then Begin
       DataSource.DataSet.Cancel;
       (dsItens.DataSet as TIBDataSet).CancelUpdates;
  End
  Else Begin
       BtnFechar.OnClick(BtnFechar);
  End;
end;

procedure TFrmCotacoes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  If FrmSelVendas <> Nil
  then
      LblTitulo.Caption := COPY (FrmSelVendas.tbsOrcamento.Caption, 1, LENGTH(FrmSelVendas.tbsOrcamento.Caption) - 7 ) ;

  Try
    If Not(dsParametros.DataSet.Active) Then
       dsParametros.DataSet.Open;
    If Not(dsPessoasFJ.DataSet.Active) Then
       dsPessoasFJ.DataSet.Open;
    If Not(DsFormaPgto.DataSet.Active) Then
       DsFormaPgto.DataSet.Open;
    If Not(DsUnidades.DataSet.Active) Then
       DsUnidades.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;
    If Not(dsItens.DataSet.Active) Then
       dsItens.DataSet.Open;

     if (not ( DataSource.State in [ DsInsert ] )) and (DataSource.DataSet.FieldByName('CODIGO').asInteger > 0)
     then begin
          DataSource.DataSet.Edit ;
     end
     else begin
          DataSource.DataSet.Append ;
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
  Datasource.AutoEdit := ActAlterar.Enabled;

  EdPessoa.SetFocus;
end;

procedure TFrmCotacoes.FormCreate(Sender: TObject);
begin
  LocCli := False ;
  LocVen := False ;

  Panel2.Color := StrToInt(DmaPP.COR_FUNDO_SEL);

  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCotacoes.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCotacoes.DataSourceStateChange(Sender: TObject);
begin
     dxBarBDBNavFirst.Enabled := true ;
     dxBarBDBNavPrev.Enabled  := true ;
     dxBarBDBNavNext.Enabled  := true ;
     dxBarBDBNavLast.Enabled  := true ;
  //
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

procedure TFrmCotacoes.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmCotacoes.CmbTipoPessoaEnter(Sender: TObject);
begin
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmCotacoes.actLookupExecute(Sender: TObject);
begin
  If (FrmCotacoes.ActiveControl = EdPessoa) Then
     BtnPessoa.OnClick(BtnPessoa);
  If (FrmCotacoes.ActiveControl = Edtransportadora) Then
     Btntransportadora.OnClick(BtnPessoa);
end;

procedure TFrmCotacoes.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmCotacoes.ActAlterarExecute(Sender: TObject);
begin
  If Navigator.DataSource.State in dsEditModes
  Then
      Exit;
  Try
     If FrmCotacoes.ActiveControl <> GridItens  then
     begin
          DataSource.DataSet.Edit;
          EdPessoa.SetFocus;
     end
     else begin
          if (DmVendas.CotacoesFechado.asString = 'S') then
          begin
            application.messagebox('Impossível editar itens. Cotação se encontra fechada!','Aviso',mb_ok+mb_iconerror);
            exit;
          end;

          FrmCotacoesItens := TFrmCotacoesItens.Create(Self);
          FrmCotacoesItens.ShowModal;
          //
          Calcular_Itens;
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

procedure TFrmCotacoes.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN
     Then
         ActAlterar.Execute;
end;

procedure TFrmCotacoes.FormActivate(Sender: TObject);
begin
  Try
    FrmCotacoes.WindowState := wsMaximized;
    FrmCotacoes.Refresh;
    Case FrmCotacoes.Tag Of
         1: Begin
              //
              Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;
              dsPessoasFJ.DATASET.Close ;
              dsPessoasFJ.DATASET.Open  ;
              EdPessoa.SetFocus;
            End;
         5: Begin              //
              Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := FrmMain.Codigo_Int;
              DsFormaPgto.DATASET.Close ;
              DsFormaPgto.DATASET.Open  ;
              CmbFormaPgto.SetFocus;
            End;
    End;
    FrmCotacoes.Tag := 0;
  Except
  End;
end;

procedure TFrmCotacoes.BtnPessoaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);
  { * * * * * }
  //
  dmPlano := TdmPlano.create(Self);
  FrmCotacoes.Tag := 1;
  FrmFornecedores := TFrmFornecedores.Create(Self);

  FrmFornecedores.Showmodal ;
  //
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  dmPlano.free;
  dmPlano := nil;
  //
end;

procedure TFrmCotacoes.EdPessoaExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     IF (( EdPessoa.Text = '0' ) or ( EdPessoa.Text = '' ))  AND ( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarCliente.Execute ;
     end;
end;

procedure TFrmCotacoes.ActLocalizarClienteExecute(Sender: TObject);
begin
     try
        If ((FrmCotacoes.ActiveControl = EdPessoa)or(LocCli)or( EdPessoa.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ]) Then
        begin
             //Chama a Tela Para Localizar Cliente
             Frm_Localizar_Fornecedor := TFrm_Localizar_Fornecedor.create(Self);
             Frm_Localizar_Fornecedor.DSource.dataset := DmVendas.SelFornecedor ;

             if ( Frm_Localizar_Fornecedor.showmodal = mrOk ) Then
               DmVendas.CotacoesPessoa_Fj.Value := (Frm_Localizar_Fornecedor.CampTrecho)
             else If Frm_Localizar_Fornecedor.Cad = 'S' then
               BtnPessoa.OnClick(BtnPessoa);

             Frm_Localizar_Fornecedor.free;
             Frm_Localizar_Fornecedor := nil;
        end;
  Except
  end;
end;

procedure TFrmCotacoes.DataSourceUpdateData(Sender: TObject);
begin
     If Datasource.DataSet.FieldByName('PESSOA_FJ').IsNull
     then begin
          EdPessoa.SetFocus ;
     end;

     If Datasource.DataSet.FieldByName('FORMA_PGTO').IsNull
     then begin
          CmbFormaPgto.SetFocus ;
     end;
end;

procedure TFrmCotacoes.ActListagemExecute(Sender: TObject);
begin
     If DataSource.DataSet.FieldByName('CODIGO').asInteger > 0
     then begin
          FRelImprimeCotacao              := TFRelImprimeCotacao.Create(Self);
          FRelImprimeCotacao.Tipo         := 'Cotacao' ;
          FRelImprimeCotacao.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').asInteger ;
          FRelImprimeCotacao.Showmodal ;
          FRelImprimeCotacao.Free ;
          FRelImprimeCotacao := Nil ;
     end
     else begin
          MessageDlg('Selecione uma Cotação!', mtError, [mbOK], 0);
     end;
end;

procedure TFrmCotacoes.dxDBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then
     Begin
          If DataSource.state in [ dsinsert, dsedit ]
          then begin
               DataSource.DataSet.Post ;
          end;
          GridItens.SetFocus;
     End;
end;

procedure TFrmCotacoes.EdPessoaEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmCotacoes.GridItensEnter(Sender: TObject);
begin
     if (DmVendas.CotacoesFechado.asString = 'S') then
       exit;

     If DataSource.state in [ dsinsert, Dsedit ]
     then begin
          DataSource.DataSet.Post ;
          //
          FrmCotacoesItens := TFrmCotacoesItens.Create(Self);

          FrmCotacoesItens.ShowModal;
          //
          Calcular_Itens;
     end;
end;

procedure TFrmCotacoes.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCotacoes.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCotacoes.EdMargemEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmCotacoes.EdMargemExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCotacoes.EdTransportadoraExit(Sender: TObject);
begin
     IF (( EdTransportadora.Text = '0' ) or ( EdTransportadora.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ]) then
        ActLocalizarTransportadora.Execute ;
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmCotacoes.ActLocalizarTransportadoraExecute(Sender: TObject);
begin
     try
        If ((FrmCotacoes.ActiveControl = EdTransportadora)or(LocTrans)or ( EdTransportadora.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             Loctrans := False ;

             //Chama a Tela Para Localizar Terceiros
             Application.CreateForm(TFrm_Localizar_Transportadoras, Frm_Localizar_Transportadoras);

             Frm_Localizar_Transportadoras.DSource.dataset := DmVendas.SelTransportadora ;

             if ( Frm_Localizar_Transportadoras.showmodal = mrOk )
             Then Begin
                  DmVendas.CotacoesTRANSPORTADORA.Value := (Frm_Localizar_Transportadoras.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Transportadoras.Cad = 'S'
                  THEN
                      btnTransportadora.OnClick(btnTransportadora);
             end;
             Frm_Localizar_Transportadoras.free   ;
             Frm_Localizar_Transportadoras := Nil ;
        end;
  Except
  end;
end;

procedure TFrmCotacoes.btnTransportadoraClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;


  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmTransportadoras', False);
  { * * * * * }

  //
  FrmTransportadoras := TFrmTransportadoras.Create(Application);

  FrmTransportadoras.Showmodal ;

  Datasource.DataSet.FieldByName('TRANSPORTADORA').asInteger := FrmMain.Codigo_Int;

  If DMCadastros <> Nil  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  Edtransportadora.SetFocus;

  DmVendas.SelTransportadora.Close;
  DmVendas.SelTransportadora.Open;
  
end;

end.





