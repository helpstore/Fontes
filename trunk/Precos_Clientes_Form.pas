 unit Precos_Clientes_Form;

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
  TFrmComissaoCliente = class(TForm)
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
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    OptAlterar: TdxBarButton;
    LblTitulo: TcxLabel;
    ActLookUp: TAction;
    DBCoolText3: TDBText;
    Shape7: TShape;
    Label65: TcxLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    Label67: TcxLabel;
    dxDBCalcEdit3: TdxDBCalcEdit;
    dxDBCalcEdit4: TdxDBCalcEdit;
    Label68: TcxLabel;
    EdPorcentagemPreco: TdxDBCalcEdit;
    Label66: TcxLabel;
    BtnNovoPreco: TcxButton;
    BtnCancelarPreco: TcxButton;
    BtnSalvarPreco: TcxButton;
    RzBitBtn3: TcxButton;
    DBGrid2: TDBGrid;
    BtnApagarPreco: TcxButton;
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
    procedure EdIePropriedadeEnter(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActLookUpExecute(Sender: TObject);
    procedure RzBitBtn3Click(Sender: TObject);
    procedure BtnNovoPrecoClick(Sender: TObject);
    procedure BtnCancelarPrecoClick(Sender: TObject);
    procedure BtnSalvarPrecoClick(Sender: TObject);
    procedure BtnApagarPrecoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmComissaoCliente: TFrmComissaoCliente;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Logradouros_Form, Bairros_Form, Cidades_Form;

{$R *.DFM}

procedure TFrmComissaoCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('PROPRIEDADE').asInteger;
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If dsCidades.DataSet.Tag = 0 Then
     dsCidades.Dataset.Close;
  If dsLogradouros.DataSet.Tag = 0 Then
     dsLogradouros.Dataset.Close;
  If dsBairros.DataSet.Tag = 0 Then
     dsBairros.Dataset.Close;

  //
  If FrmPropriedades.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmPropriedades := Nil;
end;

procedure TFrmComissaoCliente.ActIncluirExecute(Sender: TObject);
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
         MessageDlg('Ocorreu um Erro n�o identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  EdNome.SetFocus;
end;

procedure TFrmComissaoCliente.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Propriedade ?',
                       'Aten��o !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmComissaoCliente.ActPostExecute(Sender: TObject);
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
         MessageDlg('Ocorreu um Erro n�o identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmComissaoCliente.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmComissaoCliente.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

    If Not(dsCidades.DataSet.Active) Then
       dsCidades.DataSet.Open;
    If Not(dsLogradouros.DataSet.Active) Then
       dsLogradouros.DataSet.Open;
    If Not(dsBairros.DataSet.Active) Then
       dsBairros.DataSet.Open;

    (Datasource.DataSet as TIBDataset).FetchAll;
  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro n�o identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
//  Datasource.AutoEdit := ActAlterar.Enabled;
  EdNome.SetFocus;
end;

procedure TFrmComissaoCliente.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usu�rio for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmComissaoCliente.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsBairros(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmComissaoCliente.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmComissaoCliente.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmComissaoCliente.DataSourceStateChange(Sender: TObject);
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

procedure TFrmComissaoCliente.ActFecharExecute(Sender: TObject);
begin
  If FrmPropriedades.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmComissaoCliente.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmComissaoCliente.ActAlterarExecute(Sender: TObject);
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
         MessageDlg('Ocorreu um Erro n�o identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmComissaoCliente.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmComissaoCliente.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmComissaoCliente.EdIePropriedadeEnter(Sender: TObject);
begin
     IF (( DMCadastros.PropriedadesUf.IsNull ) AND ( DMCadastros.Propriedades.STATE IN [ DSINSERT, DSEDIT ] ))
     THEN BEGIN
          MessageDlg('Digite o Estado!', mtError, [mbOK], 0);
          edUFPro.SetFocus ;
     END;
     CORFUNDO(SENDER);
end;

procedure TFrmComissaoCliente.EdNomeKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmComissaoCliente.ActLookUpExecute(Sender: TObject);
begin
  If FrmPropriedades.ActiveControl = cmbLogradouroPro Then
     btnlogradouropro.OnClick(btnlogradouropro);
  If FrmPropriedades.ActiveControl = cmbCidadepro Then
     btnCidadepro.OnClick(btnCidadepro);
  If FrmPropriedades.ActiveControl = cmbBairroprop Then
     btnBairropro.OnClick(btnBairropro);
end;

procedure TFrmComissaoCliente.RzBitBtn3Click(Sender: TObject);
begin
     If ( DsPrecos.State in [ DsInsert, DsEdit ] )
     then begin

          Application.CreateForm(TFrmDadosDesconto, FrmDadosDesconto);

          FrmDadosDesconto.EdNome.Text        := DMCadastros.Pessoas_FJNOME_RAZAO.value ;
          FrmDadosDesconto.EdDocumento.Text   := dxDBLookupEdit1.Text ;
          FrmDadosDesconto.Desconto.Value     := 0 ;
          FrmDadosDesconto.DescontoPorc.Value := 0;
          FrmDadosDesconto.Valor.Value        := DMCadastros.Precos_EspeciaisORIGINAL.VALUE ;

          If FrmDadosDesconto.Showmodal = MrOk
          then begin
               DMCadastros.Precos_EspeciaisPORCENTAGEM.VALUE := FrmDadosDesconto.DescontoPorc.VALUE ;
          END;

          FrmDadosDesconto.Free   ;
          FrmDadosDesconto := Nil ;

          EdPorcentagemPreco.SetFocus ;
     end;
end;

procedure TFrmComissaoCliente.BtnNovoPrecoClick(Sender: TObject);
begin
     If Not ( DsPrecos.State in [ dsinsert, dsedit ] )
     then begin
          Try
             DsPrecos.DataSet.Append;
          Except
                On E:EDataBaseError Do
                Begin
                     ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                     Exit;
                End
                Else Begin
                     ShowMessage('Ocorreu um Erro n�o identificado pelo Sistema !');
                     Exit;
                End;
          End;
     end;
end;

procedure TFrmComissaoCliente.BtnCancelarPrecoClick(Sender: TObject);
begin
     If DsPrecos.State in [ dsinsert, dsedit ]
     then begin
          Try
             DsPrecos.DataSet.Cancel ;
          Except
                On E:EDataBaseError Do
                Begin
                     ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                     Exit;
                End
                Else Begin
                     ShowMessage('Ocorreu um Erro n�o identificado pelo Sistema !');
                     Exit;
                End;
          End;
     end;
end;

procedure TFrmComissaoCliente.BtnSalvarPrecoClick(Sender: TObject);
begin
     If DsPrecos.State in [ dsinsert, dsedit ]
     then begin
          Try
             DsPrecos.DataSet.Post;
             DMApp.Transaction.CommitRetaining;
          Except
                On E:EDataBaseError Do
                Begin
                     ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                     Exit;
                End
                Else Begin
                     ShowMessage('Ocorreu um Erro n�o identificado pelo Sistema !');
                     Exit;
                End;
          End;
     end;
end;

procedure TFrmComissaoCliente.BtnApagarPrecoClick(Sender: TObject);
begin
     If Not ( DsPrecos.State in [ dsinsert, dsedit ] )
     then begin
          Try
             DsPrecos.DataSet.Delete ;
          Except
                On E:EDataBaseError Do
                Begin
                     ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
                     Exit;
                End
                Else Begin
                     ShowMessage('Ocorreu um Erro n�o identificado pelo Sistema !');
                     Exit;
                End;
          End;
     end;
end;

end.
