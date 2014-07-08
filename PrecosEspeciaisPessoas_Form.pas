 unit PrecosEspeciaisPessoas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   Grids, DBGrids, IBQuery, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses,
  cxLabel;

type
  TFrmPrecosEspeciais = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
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
    DataSource: TDataSource;
    DsCombustivel: TDataSource;
    DBGrid2: TDBGrid;
    dxDBCalcEdit3: TdxDBCalcEdit;
    dxDBCalcEdit4: TdxDBCalcEdit;
    Label68: TcxLabel;
    Label67: TcxLabel;
    EdPorcentagemPreco: TdxDBCalcEdit;
    Label66: TcxLabel;
    Label65: TcxLabel;
    EdProduto: TdxDBButtonEdit;
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
    procedure EdModeloEnter(Sender: TObject);
    procedure EdModeloExit(Sender: TObject);
    procedure EdProdutoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdProdutoEnter(Sender: TObject);
    procedure EdProdutoExit(Sender: TObject);
    procedure EdPorcentagemPrecoExit(Sender: TObject);
    procedure dxDBCalcEdit4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrecosEspeciais: TFrmPrecosEspeciais;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form,
     Bancos_Form,
     LocalizarProd_DM, Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmPrecosEspeciais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     //
     If DsCombustivel.DataSet.Tag = 0
     Then
         DsCombustivel.Dataset.Close
     else
         DsCombustivel.Dataset.tag := DsCombustivel.Dataset.tag - 1;

     If DataSource.DataSet.Tag = 0 Then
       Datasource.Dataset.Close
     ELSE
       Datasource.Dataset.TAG := Datasource.Dataset.TAG - 1;

     FrmLocProdutoCadastro_Auto.Free    ;
     FrmLocProdutoCadastro_Auto := Nil  ;


          //
     If FrmPrecosEspeciais.FormStyle = fsMDIChild Then
      FrmMain.PnlClient.Visible := True;


     Action := caFree;
     FrmPrecosEspeciais := Nil;
end;

procedure TFrmPrecosEspeciais.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
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
  EdProduto.setfocus ;
end;

procedure TFrmPrecosEspeciais.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir esta Conta ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmPrecosEspeciais.ActPostExecute(Sender: TObject);
begin
  Try
    EdProduto.setfocus;    
    DataSource.DataSet.Post;
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

procedure TFrmPrecosEspeciais.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmPrecosEspeciais.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  Try
    If Not(DsCombustivel.DataSet.Active)
    Then
        DsCombustivel.DataSet.Open
    else
        DsCombustivel.DataSet.tag := DsCombustivel.DataSet.tag + 1;

    If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;

    (Datasource.DataSet as TIBDataset).FetchAll;

    //localizar produtos


    If FrmLocProdutoCadastro_Auto = Nil then
      FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;


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
end;

procedure TFrmPrecosEspeciais.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmPrecosEspeciais.ActListagemExecute(Sender: TObject);
begin
{  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsGeneros;
  DMListagens.Free;
  DMListagens := Nil; }
end;

procedure TFrmPrecosEspeciais.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmPrecosEspeciais.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmPrecosEspeciais.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmPrecosEspeciais.DataSourceStateChange(Sender: TObject);
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

procedure TFrmPrecosEspeciais.ActFecharExecute(Sender: TObject);
begin
  If FrmPrecosEspeciais.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmPrecosEspeciais.EdModeloEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmPrecosEspeciais.EdModeloExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmPrecosEspeciais.EdProdutoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
     //
     If Trim(EdProduto.text) = '' Then
     Begin
          If not ( DataSource.State in [ dsinsert, dsedit ] )
          then
              DataSource.DataSet.append ;

          if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
            DataSource.DataSet.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho );

          EdProduto.SetFocus;
     End
  Else
     edProduto.SetFocus;
end;

procedure TFrmPrecosEspeciais.EdProdutoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmPrecosEspeciais.EdProdutoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmPrecosEspeciais.EdPorcentagemPrecoExit(Sender: TObject);
begin
  with dmCadastros do
  begin
    if Precos_Especiais.state in [dsInsert, dsEdit] then
    begin
      Precos_EspeciaisRESULTADO.Value := Precos_EspeciaisORIGINAL.value - (( Precos_EspeciaisORIGINAL.value * Precos_EspeciaisPORCENTAGEM.value )/100) ;;
      Precos_EspeciaisRESULTADO.Value := arredonda(Precos_EspeciaisRESULTADO.Value,2);
    end;
  end;  
end;

procedure TFrmPrecosEspeciais.dxDBCalcEdit4Exit(Sender: TObject);
begin
  with dmCadastros do
  begin
    if Precos_Especiais.state in [dsInsert, dsEdit] then
    begin
      if Precos_EspeciaisORIGINAL.value > 0 then
      begin
            Precos_EspeciaisPORCENTAGEM.value  := 100 - (Precos_EspeciaisRESULTADO.Value * 100)/Precos_EspeciaisORIGINAL.value;
            Precos_EspeciaisPORCENTAGEM.value  := arredonda(Precos_EspeciaisPORCENTAGEM.value,2);
      end
      else
            Precos_EspeciaisPORCENTAGEM.value := 0;
    end;
  end;
end;

end.
