unit Lancar_Pagas_Form;

interface

uses
  Windows, Messages,  SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, IBQuery,   dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl,  cxPropertiesStore, Variants,
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
  TFrmLancContaPaga = class(TForm)
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
    dxDBEdit1: TdxDBEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    EdData: TdxDBDateEdit;
    Label4: TcxLabel;
    Bevel2: TBevel;
    ActPeriodo: TAction;
    Label5: TcxLabel;
    BtnPessoa: TcxButton;
    dsPessoas: TDataSource;
    Label2: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label7: TcxLabel;
    Label6: TcxLabel;
    Label13: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label3: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    Label12: TcxLabel;
    dxDBEdit10: TdxDBEdit;
    Label11: TcxLabel;
    dxDBEdit9: TdxDBEdit;
    Label9: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    GRIDVLR_PARCIAL: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDJUROS: TdxDBGridColumn;
    GRIDDESCONTOS: TdxDBGridColumn;
    DsCentro: TDataSource;
    Label35: TcxLabel;
    cmbcentro: TdxDBLookupEdit;
    BTNCENTRO: TcxButton;
    CMBpessoa: TdxDBButtonEdit;
    dxDBEdit4: TdxDBEdit;
    GRIDNOME: TdxDBGridColumn;
    Label10: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    Label14: TcxLabel;
    CmbTipo: TdxDBPickEdit;
    ActFiltrar: TAction;
    OpFiltrar: TdxBarButton;
    ActLocalizarFornecedor: TAction;
    GRIDDUPLCIATA: TdxDBGridColumn;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    Label15: TcxLabel;
    Label16: TcxLabel;
    DsConta: TDataSource;
    cmbconta: TdxDBLookupEdit;
    DataBaixa: TdxDBDateEdit;
    stgFrmLancContaPaga: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTNCENTROClick(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CMBpessoaExit(Sender: TObject);
    procedure CMBpessoaEnter(Sender: TObject);
    procedure ActLocalizarFornecedorExecute(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActPeriodoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmLancContaPaga: TFrmLancContaPaga;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Filtra_Baixa_Form,
     Centro_Custo_Form,
     Localizar_Fornecedor,
     Fornecedores_Form,
     Dados_Baixa_Parcial_Form, Plano_DM ;


{$R *.DFM}

procedure TFrmLancContaPaga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair do Cadastro?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
  //
     Datasource.Dataset.Close;

     dsPessoas.DataSet.Close;

     dsCentro.DataSet.Close;

     DsConta.DataSet.Close;



     Frm_Localizar_Fornecedor.Free ;
     Frm_Localizar_Fornecedor := Nil ;

     dmApp.ZeraCaixaUsuario(owner);


     Action := caFree;
     FrmLancContaPaga := Nil;

     FrmMain.PnlClient.Visible := True;
  end
  else
      action := canone ;
end;

procedure TFrmLancContaPaga.ActIncluirExecute(Sender: TObject);
begin
  cmbPessoa.setfocus;

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
end;

procedure TFrmLancContaPaga.ActPostExecute(Sender: TObject);
begin
  Try
     If (( DataBaixa.Text = '  /  /  ' ) or ( DataBaixa.Text = '  /  /    ' ))
     then begin
          messagedlg ('Digite a Data da Baixa!', Mterror, [mbok],0);
          databaixa.setfocus ;
          exit ;
     end
     else begin
          If ( DataSource.DataSet.State in [ dsinsert, dsedit ] )
          then begin
               DataSource.DataSet.Post;

               DMApp.Transaction.CommitRetaining ;
          end;
     end;
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

procedure TFrmLancContaPaga.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmLancContaPaga.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmLancContaPaga.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmLancContaPaga.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmLancContaPaga.DataSourceStateChange(Sender: TObject);
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

procedure TFrmLancContaPaga.ActFecharExecute(Sender: TObject);
begin
  If FrmLancContaPaga.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmLancContaPaga.ActLookupExecute(Sender: TObject);
begin
  If FrmLancContaPaga.ActiveControl = cmbPessoa Then
     btnPessoa.OnClick(btnPessoa);
  If FrmLancContaPaga.ActiveControl = cmbCentro Then
     btnCentro.OnClick(btnCentro);
end;

procedure TFrmLancContaPaga.BtnPessoaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFornecedores', False);
  { * * * * * }
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  If DMPLANO = Nil
  then
      DMPLANO := TDMPLANO.Create(Self)
  else
      DMPLANO.Tag := DMPLANO.Tag + 1;

  //
  FrmFornecedores := TFrmFornecedores.Create(Application);

  FrmFornecedores.Showmodal ;
  //
  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

  DsPessoas.DataSet.Close ;
  DsPessoas.DataSet.Open  ;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  cmbPessoa.SetFocus;
end;

procedure TFrmLancContaPaga.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(dsPessoas.DataSet.Active) Then
       dsPessoas.DataSet.Open;

    If Not(dsCentro.DataSet.Active) Then
       dsCentro.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       DataSource.DataSet.Open;

    If Not(DsConta.DataSet.Active) Then
       DsConta.DataSet.Open;
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
  cmbPessoa.SetFocus;
end;

procedure TFrmLancContaPaga.BTNCENTROClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  //
{ If DMCadastros = Nil
  then
      DMCadastros := TDMCadastros.Create(Self)
  else
      DMCadastros.Tag := DMCadastros.Tag + 1;}

  dsCentro.DataSet.Tag := dsCentro.DataSet.Tag + 1;

  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  { * * * * * }
  //
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;
  //
  Datasource.DataSet.FieldByName('CENTRO_CUSTO').asInteger := FrmMain.Codigo_Int;

  FrmCCusto.Free;
  FrmCCusto := Nil;

  If DMCadastros <> Nil
  then
      DMCadastros.Tag := DMCadastros.Tag - 1;

  dsCentro.DataSet.Tag := dsCentro.DataSet.Tag - 1;

  dsCentro.DataSet.Close ;
  dsCentro.DataSet.Open  ;

  //
  cmbCentro.SetFocus;
end;

procedure TFrmLancContaPaga.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     ActLocalizarFornecedor.Execute ;
end;

procedure TFrmLancContaPaga.CMBpessoaExit(Sender: TObject);
begin
     IF (( CMBpessoa.Text = '0' ) or ( CMBpessoa.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarFornecedor.Execute ;
     end;
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmLancContaPaga.CMBpessoaEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmLancContaPaga.ActLocalizarFornecedorExecute(Sender: TObject);
begin
     try
        If Not ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             DataSource.DataSet.Edit ;
        end;

        //Chama a Tela Para Localizar Fornecedor
        Frm_Localizar_Fornecedor.DSource.dataset := DmFinanceiro.SelFornecedor ;

        if ( Frm_Localizar_Fornecedor.showmodal = mrOk )
        Then Begin
             DmFinanceiro.Contas_PagasPESSOA_FJ.Value := (Frm_Localizar_Fornecedor.CampTrecho) ;
        end
        else begin
             If Frm_Localizar_Fornecedor.Cad = 'S'
             THEN
                 BtnPessoa.OnClick ( BtnPessoa );
        end;

     Except
     end;
end;

procedure TFrmLancContaPaga.GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
  ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
  ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
  var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
  var ADone: Boolean);
Var
   Value: TDateTime ;
begin
     if ( not ASelected  ) AND ( NOT (DataSource.DataSet.STATE IN [ DSINSERT, DSEDIT ]))
     then begin
          Value := ANode.Values[GRIDVENCIMENTO.Index];
          
          if not VarIsNull(Value)
          then begin
               if Value < Date
               then
                   AColor := $00ECAD84
               else
                   AColor := clWhite;
          end
          else begin
               AFont.Color := clBlack;

          end;
     end;
end;

procedure TFrmLancContaPaga.ActAlterarExecute(Sender: TObject);
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

procedure TFrmLancContaPaga.ActPeriodoExecute(Sender: TObject);
var
  CodCliente : integer;
begin
     Application.CreateForm(TFrmBaixaContas, FrmBaixaContas);
     FrmBaixaContas.dsPessoas.DataSet := DmFinanceiro.SelFornecedor ;
     FrmBaixaContas.LblTitulo.Caption := 'Contas a Pagar';

     IF FrmBaixaContas.ShowModal = MROK
     THEN BEGIN
          if (FrmBaixaContas.CmbPessoa.Text <> '') then
            CodCliente := FrmBaixaContas.CmbPessoa.lookupKeyValue
         else if (FrmBaixaContas.CmbFantasia.Text <> '') then
            CodCliente := FrmBaixaContas.CmbFantasia.lookupKeyValue;

          With DmFinanceiro do
          begin
               Contas_Pagas.Close ;

               Contas_Pagas.SelectSql.Clear ;

               Contas_Pagas.SelectSql.Add (' Select * From Fin_Baixas_Pagar ');

               Contas_Pagas.SelectSql.Add (' Where Cnpj = :Cnpj ');

               IF (( FrmBaixaContas.Ini.Text <> '  /  /  ' ) and ( FrmBaixaContas.Ini.Text <> '  /  /    ' ))
               THEN BEGIN
                    Contas_Pagas.SelectSQL.Add (' and DT_VENCTO >= :INI ');

                    Contas_Pagas.Params.ByName ('INI').asdate := FrmBaixaContas.Ini.Date ;
               END;

               IF (( FrmBaixaContas.Fim.Text <> '  /  /  ' ) and ( FrmBaixaContas.Fim.Text <> '  /  /    ' ))
               THEN BEGIN
                    Contas_Pagas.SelectSQL.Add (' and DT_VENCTO <= :FIM ');

                    Contas_Pagas.Params.ByName ('FIM').asdate := FrmBaixaContas.Fim.Date ;
               END;

               IF ( CodCliente > 0 )
               THEN BEGIN
                    Contas_Pagas.SelectSQL.Add (' and Pessoa_Fj = :PES ');

                    Contas_Pagas.Params.ByName ('PES').asInteger := codcliente;
               END
               ELSE BEGIN
                    IF ( FrmBaixaContas.CmbPessoa.Text <> '' )
                    THEN BEGIN
                         Contas_Pagas.SelectSQL.Add (' and Pessoa_Fj = :PES ');

                         Contas_Pagas.Params.ByName ('PES').asInteger := FrmBaixaContas.CmbPessoa.LookUpKeyValue ;
                    END
                    ELSE BEGIN
                         IF ( FrmBaixaContas.CmbFantasia.Text <> '' )
                         THEN BEGIN
                              Contas_Pagas.SelectSQL.Add (' and Pessoa_Fj = :PES ');

                              Contas_Pagas.Params.ByName ('PES').asInteger := FrmBaixaContas.CmbFantasia.LookUpKeyValue ;
                         END
                    END;
               END;

               IF ( FrmBaixaContas.EdDocumento.Text <> '' )
               THEN BEGIN
                    Contas_Pagas.SelectSQL.Add (' and DOCTO Like ' + char(39) + '%' + FrmBaixaContas.EdDocumento.Text+'%'+ char(39));
               END;

               Contas_Pagas.Prepare ;
               Contas_Pagas.Open    ;
          END;
     END;

     FrmBaixaContas.free ;
     FrmBaixaContas := Nil;

     GRID.SETFOCUS ;
end;

end.
