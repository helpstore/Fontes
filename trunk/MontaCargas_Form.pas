 unit MontaCargas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl,
  dxGrClms,  cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxPC, cxLabel;

type
  TFrmMontaCargas = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    btnMotorista: TcxButton;
    Shape1: TShape;
    Label10: TcxLabel;
    Label4: TcxLabel;
    EdCodigo: TdxDBEdit;
    cmbMotorista: TdxDBLookupEdit;
    edKmSaida: TdxDBCalcEdit;
    edPeso: TdxDBCalcEdit;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    btnLocalizar: TdxBarButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnListagem: TdxBarButton;
    BtnFechar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActListagem: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    ActFechar: TAction;
    actLookup: TAction;
    dsMotoristas: TDataSource;
    DataSource: TDataSource;
    dsVeiculos: TDataSource;
    dsRotas: TDataSource;
    Label7: TcxLabel;
    cmbVeiculo: TdxDBLookupEdit;
    btnveiculo: TcxButton;
    Label8: TcxLabel;
    cmbRota: TdxDBLookupEdit;
    btnrota: TcxButton;
    Label3: TcxLabel;
    Label5: TcxLabel;
    edVolume: TdxDBCalcEdit;
    edDtSaida: TdxDBDateEdit;
    edPlaca: TdxDBMaskEdit;
    GRID: TdxDBGrid;
    DsAbertas: TDataSource;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDFECHADA: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDDESC_ACRES: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDVOLUME: TdxDBGridMaskColumn;
    GRIDPESO: TdxDBGridMaskColumn;
    GRIDORCAMENTO: TdxDBGridMaskColumn;
    GRIDNOME: TdxDBGridMaskColumn;
    OpCarregar: TdxBarButton;
    ActCarregarAbertas: TAction;
    ActCarregar: TAction;
    BtnCarregar: TcxButton;
    dxTabSheet2: TcxTabSheet;
    GRIDCARREGADAS: TdxDBGrid;
    GRID2CODIGO: TdxDBGridMaskColumn;
    GRID2DATA: TdxDBGridDateColumn;
    GRID2NOME: TdxDBGridMaskColumn;
    GRID2FECHADA: TdxDBGridMaskColumn;
    GRID2PESSOA_FJ: TdxDBGridMaskColumn;
    GRID2NUM_NF: TdxDBGridMaskColumn;
    GRID2DESC_ACRES: TdxDBGridMaskColumn;
    GRID2TOTAL: TdxDBGridMaskColumn;
    GRID2VOLUME: TdxDBGridMaskColumn;
    GRID2PESO: TdxDBGridMaskColumn;
    GRID2ORCAMENTO: TdxDBGridMaskColumn;
    ActPgdn: TAction;
    ActPgUp: TAction;
    DsFechadas: TDataSource;
    ActRomaneio: TAction;
    OpRomaneio: TdxBarButton;
    ActRemover: TAction;
    RzBitBtn1: TcxButton;
    stgFrmMontaCargas: TcxPropertiesStore;
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
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnMotoristaClick(Sender: TObject);
    procedure btnveiculoClick(Sender: TObject);
    procedure btnrotaClick(Sender: TObject);
    procedure ActCarregarAbertasExecute(Sender: TObject);
    procedure ActCarregarExecute(Sender: TObject);
    procedure pcChange(Sender: TObject);
    procedure ActPgdnExecute(Sender: TObject);
    procedure ActPgUpExecute(Sender: TObject);
    procedure ActRomaneioExecute(Sender: TObject);
    procedure ActRemoverExecute(Sender: TObject);
    procedure cmbMotoristaEnter(Sender: TObject);
    procedure cmbMotoristaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMontaCargas: TFrmMontaCargas;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form,
     Motoristas_Form,
     Veiculos_Form,
     Rotas_Form,
     Financeiro_Dm;

{$R *.DFM}

procedure TFrmMontaCargas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Sair da Tela?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          //
          FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
          //
          If DataSource.DataSet.Tag = 0 Then
             Datasource.Dataset.Close;
          If dsMotoristas.DataSet.Tag = 0 Then
             dsMotoristas.DataSet.Close;
          If dsVeiculos.DataSet.Tag = 0 Then
             dsVeiculos.DataSet.Close;
          If dsRotas.DataSet.Tag = 0 Then
             dsRotas.DataSet.Close;

          If FrmMontaCargas.FormStyle = fsMDIChild Then
          FrmMain.PnlClient.Visible := True;

          //
          Action := caFree;
          FrmMontaCargas := Nil;
     end
     else begin
          Action := CaNone ;
     end;
end;

procedure TFrmMontaCargas.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
    PC.ActivePageIndex := 0;
    DataSource.DataSet.Append;
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
  cmbMotorista.SetFocus;
end;

procedure TFrmMontaCargas.ActExcluirExecute(Sender: TObject);
begin
    PC.ActivePageIndex := 0;

    If MessageBox(Handle,'Tem certeza que deseja Excluir este Cliente ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmMontaCargas.ActPostExecute(Sender: TObject);
begin
  Try
    If DataSource.State in dsEditModes
    Then BEGIN
        PC.ActivePageIndex := 0;
        DataSource.DataSet.Post;
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

procedure TFrmMontaCargas.ActCancelExecute(Sender: TObject);
begin
  PC.ActivePageIndex := 0;
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmMontaCargas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    If Not(dsMotoristas.DataSet.Active) Then
       dsMotoristas.DataSet.Open;
    If Not(dsVeiculos.DataSet.Active) Then
       dsVeiculos.DataSet.Open;
    If Not(dsRotas.DataSet.Active) Then
       dsRotas.DataSet.Open;
    If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;
    (Datasource.DataSet as TIBDataset).FetchAll;
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
  cmbMotorista.SetFocus;
end;

procedure TFrmMontaCargas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMontaCargas.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsCargas(DataSource.DataSet.FIELDBYNAME('CODIGO').AsInteger);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmMontaCargas.ActLocalizarExecute(Sender: TObject);
begin
    PC.ActivePageIndex := 0;
    DMApp.Localizar(Datasource);
end;

procedure TFrmMontaCargas.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFrmMontaCargas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmMontaCargas.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       ActListagem.Enabled  := False;
       ActRomaneio.Enabled  := False;
       BtnSalvar.Enabled    := True ;
       BtnCancelar.Enabled  := True ;
       ActFechar.Enabled    := False;
       ActCarregarAbertas.Enabled  := False;
       ActCarregar.Enabled  := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True ;
       ActListagem.Enabled  := ActListagem.Tag = 1;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True ;
       ActCarregarAbertas.Enabled  := True ;
       ActCarregar.Enabled  := True ;
       ActRomaneio.Enabled  := True ;
     End;
end;

procedure TFrmMontaCargas.ActFecharExecute(Sender: TObject);
begin
  If FrmMontaCargas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMontaCargas.actLookupExecute(Sender: TObject);
begin
  If FrmMontaCargas.ActiveControl = cmbMotorista Then
     btnMotorista.OnClick(btnMotorista);
  If FrmMontaCargas.ActiveControl = cmbVeiculo Then
     btnVEICULO.OnClick(btnVEICULO);
  If FrmMontaCargas.ActiveControl = cmbRota Then
     btnRota.OnClick(btnRota);
end;

procedure TFrmMontaCargas.FormActivate(Sender: TObject);
begin
  Try
    FrmMontaCargas.Refresh;
    Case FrmMontaCargas.Tag Of
         1: Begin
              //
              Datasource.DataSet.FieldByName('MOTORISTA').asInteger := FrmMain.Codigo_Int;
              dsMotoristas.DataSet.Tag := 0;
              cmbMotorista.SetFocus;
            End;
         2: Begin
              //
              Datasource.DataSet.FieldByName('VEICULO').asString := FrmMain.Codigo_Str;
              dsVeiculos.DataSet.Tag := 0;
              cmbVeiculo.SetFocus;
            End;
         3: Begin
              //
              Datasource.DataSet.FieldByName('ROTA').asInteger := FrmMain.Codigo_Int;
              dsRotas.DataSet.Tag := 0;
              cmbRota.SetFocus;
            End;
    End;
    FrmMontaCargas.Tag := 0;
  Except
  End;
end;

procedure TFrmMontaCargas.FormResize(Sender: TObject);
begin
  //
  pc.Height := FrmMontaCargas.Height - 106;
  pc.Width  := FrmMontaCargas.Width  -  25;
end;

procedure TFrmMontaCargas.btnMotoristaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMotoristas', False);
  { * * * * * }
  //
  FrmMontaCargas.Tag       := 1;
  dsMotoristas.DataSet.Tag := 1;
  Datasource.DataSet.Tag   := 1;
  DMCadastros.Tag          := 1;
  //
  FrmMotoristas := TFrmMotoristas.Create(Self);
  //
  FrmMotoristas.Showmodal ;
  //
  Datasource.DataSet.FieldByName('MOTORISTA').asInteger := FrmMain.Codigo_Int;

  FrmMontaCargas.Tag       := 0;
  dsMotoristas.DataSet.Tag := 0;
  Datasource.DataSet.Tag   := 0;
  DMCadastros.Tag          := 0;

end;

procedure TFrmMontaCargas.btnveiculoClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVeiculos', False);
  { * * * * * }
  //
  FrmMontaCargas.Tag          := 1;
  dsVeiculos.DataSet.Tag := 1;
  DMCadastros.Tag        := 1;
  Datasource.DataSet.Tag := 1;

  //
  FrmVeiculos := TFrmVeiculos.Create(Self);
  //
  FrmVeiculos.Showmodal ;

  Datasource.DataSet.FieldByName('VEICULO').asString := FrmMain.Codigo_Str;

  FrmMontaCargas.Tag            := 0;
  dsVeiculos.DataSet.Tag    := 0;
  Datasource.DataSet.Tag   := 0;
  DMCadastros.Tag          := 0;
end;

procedure TFrmMontaCargas.btnrotaClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmRotas', False);
  { * * * * * }
  //
  FrmMontaCargas.Tag       := 1;
  dsRotas.DataSet.Tag := 1;
  DMCadastros.Tag     := 1;
  Datasource.DataSet.Tag := 1;
  //
  FrmRotas := TFrmRotas.Create(Self);
  //
  FrmRotas.Showmodal ;

  Datasource.DataSet.FieldByName('ROTA').asInteger := FrmMain.Codigo_Int;

  FrmMontaCargas.Tag            := 0;
  dsRotas.DataSet.Tag      := 0;
  Datasource.DataSet.Tag   := 0;
  DMCadastros.Tag          := 0;
end;

procedure TFrmMontaCargas.ActCarregarAbertasExecute(Sender: TObject);
begin
     With DmFinanceiro do
     begin
          Faturas_Carregar.Close ;
          Faturas_Carregar.Open  ;
     end;
     Grid.SetFocus ;
end;

procedure TFrmMontaCargas.ActCarregarExecute(Sender: TObject);
begin
     DmApp.Carrega ( DmApp.Cnpj, DataSource.DataSet.FieldByName('Codigo').AsInteger, DsAbertas.DataSet.FieldByName('CODIGO').AsInteger, DsAbertas.DataSet.FieldByName('PESO').AsFloat, DsAbertas.DataSet.FieldByName('VOLUME').AsFloat );
     ActCarregarAbertas.Execute ;

     DMCadastros.Cargas.Close ;
     DMCadastros.Cargas.Open  ;
end;

procedure TFrmMontaCargas.pcChange(Sender: TObject);
begin
     IF PC.ActivePageIndex = 1
     THEN BEGIN
          With DmFinanceiro do
          begin
               If DataSource.DataSet.FIELDBYNAME('CODIGO').AsInteger > 0
               then begin
                    Faturas_Carregadas.Close ;
                    Faturas_Carregadas.ParamByName ('CARGA').AsInteger := DataSource.DataSet.FIELDBYNAME('CODIGO').AsInteger ;
                    Faturas_Carregadas.Open  ;
               end
               else begin
                    MessageDlg('Não Existe uma Carga Cadastrada!', mtError, [mbOK], 0);
               end;
          end;
          GRIDCARREGADAS.SetFocus ;
     END
     ELSE BEGIN
          With DmFinanceiro do
          begin
               Faturas_Carregadas.Close ;
          END;
     END;
end;

procedure TFrmMontaCargas.ActPgdnExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 1 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1
end;

procedure TFrmMontaCargas.ActPgUpExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1
end;

procedure TFrmMontaCargas.ActRomaneioExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsCargasAnalitico(DataSource.DataSet.FIELDBYNAME('CODIGO').AsInteger);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmMontaCargas.ActRemoverExecute(Sender: TObject);
begin
     DmApp.DesCarrega ( DmApp.Cnpj, DataSource.DataSet.FieldByName('Codigo').AsInteger, DsFechadas.DataSet.FieldByName('CODIGO').AsInteger, DsFechadas.DataSet.FieldByName('PESO').AsFloat, DsFechadas.DataSet.FieldByName('VOLUME').AsFloat );

     DmFinanceiro.Faturas_Carregadas.Close ;
     DmFinanceiro.Faturas_Carregadas.Open  ;

end;

procedure TFrmMontaCargas.cmbMotoristaEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmMontaCargas.cmbMotoristaExit(Sender: TObject);
begin
     tiraCorFundo ( Sender );
end;

end.
