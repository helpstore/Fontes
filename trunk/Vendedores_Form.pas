 unit Vendedores_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, dxBarDBNav, dxBar, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  IBCustomDataSet,
  dxDBEdtr, dxCntner, ExtCtrls, Buttons, StdCtrls,  
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit, Menus,
  dxSkinsdxBarPainter, cxClasses, cxButtons, cxLabel, cxPC;

type
  TFrmVendedores = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    btnPessoaFJ: TcxButton;
    Shape1: TShape;
    Label10: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    EdCodigo: TdxDBEdit;
    cmbNomeRazao: TdxDBLookupEdit;
    edVendedor: TdxDBEdit;
    EdPorcIcm: TdxDBCalcEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
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
    dsPessoasFJ: TDataSource;
    DataSource: TDataSource;
    Label7: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdDocumento: TdxEdit;
    lbldocumento: TcxLabel;
    dxTabSheet2: TcxTabSheet;
    Label8: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBCalcEdit3: TdxDBCalcEdit;
    Label9: TcxLabel;
    Label11: TcxLabel;
    edfaixa: TdxDBCalcEdit;
    DsFaixa: TDataSource;
    DBGrid1: TDBGrid;
    dxDBCheckEdit2: TdxDBCheckEdit;
    btnComissao: TcxButton;
    cmbPerfilCom: TdxDBLookupEdit;
    Label12: TcxLabel;
    Label13: TcxLabel;
    cmbPerfilComPagto: TdxDBLookupEdit;
    SpeedButton1: TcxButton;
    Panel2: TPanel;
    b2: TBevel;
    Image1: TImage;
    LblTitulo: TcxLabel;
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
    procedure btnPessoaFJClick(Sender: TObject);
    procedure actLookupExecute(Sender: TObject);
    procedure cmbNomeRazaoEnter(Sender: TObject);
    procedure cmbNomeRazaoExit(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure pcChange(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure btnComissaoClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedores: TFrmVendedores;

implementation

uses Cadastros_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     PessoasFJ_Form, Financeiro_Dm2, Perfil_Com_Form, Perfil_Pagto_Form;

{$R *.DFM}

procedure TFrmVendedores.FormClose(Sender: TObject;  var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

  //
  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If dsPessoasFJ.DataSet.Tag = 0 Then
     dsPessoasFJ.DataSet.Close;

  If DsFaixa.DataSet.Tag = 0 Then
     DsFaixa.DataSet.Close;

  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //
  If FrmVendedores.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmVendedores := Nil;
end;

procedure TFrmVendedores.ActIncluirExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0
     then begin
          If DataSource.State in dsEditModes
          Then
              Exit;
          Try
             DataSource.DataSet.Append;
          Except
          On E:EDataBaseError Do
            Begin
               ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
               Exit;
            End
            Else Begin
               ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
               Exit;
            End;
          End;

          CmbNomeRazao.SetFocus;
     end
     else begin
          If DsFaixa.State in dsEditModes
          Then
              Exit;
          Try
             DsFaixa.DataSet.Append;
          Except
          On E:EDataBaseError Do
            Begin
               ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
               Exit;
            End
            Else Begin
               ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
               Exit;
            End;
          End;

          edfaixa.SetFocus;
     end;
end;

procedure TFrmVendedores.ActExcluirExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0
     then begin
          If MessageBox(Handle,'Tem certeza que deseja Excluir este Vendedor ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
          DataSource.Dataset.Delete;
     end
     else begin
          If MessageBox(Handle,'Tem certeza que deseja Excluir esta Faixa ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
          DsFaixa.Dataset.Delete;
     end;
end;

procedure TFrmVendedores.ActPostExecute(Sender: TObject);
begin
  Try
     IF PC.ActivePageIndex = 0
     THEN BEGIN
          If DataSource.State in dsEditModes
          Then begin
               If EdDocumento.Visible
               then begin
                    If DataSource.DataSet.FieldByName ('SENHA').AsString <> EdDocumento.Text
                    then begin
                         MessageDlg('Senha Não Confere!', mtError, [mbOK], 0);
                         EdDocumento.SetFocus ;
                    end
                    else begin
                         DataSource.DataSet.Post;
                         DMApp.Transaction.CommitRetaining;
                    end;
               end
               else begin
                    DataSource.DataSet.Post;
                    DMApp.Transaction.CommitRetaining;
               end;
          end;
     END
     ELSE BEGIN
          If DsFaixa.State in dsEditModes
          Then begin
               DsFaixa.DataSet.Post;
               DMApp.Transaction.CommitRetaining;
          end;
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

procedure TFrmVendedores.ActCancelExecute(Sender: TObject);
begin
     IF PC.ActivePageIndex = 0
     THEN BEGIN
          If DataSource.DataSet.State in dsEditModes
          Then
              DataSource.DataSet.Cancel
          Else
              BtnFechar.OnClick(BtnFechar);
     END
     ELSE BEGIN
          If DsFaixa.DataSet.State in dsEditModes
          Then
              DsFaixa.DataSet.Cancel
          Else
              PC.ActivePageIndex := 0;
     END;
end;

procedure TFrmVendedores.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
     If DmApp.Dig_Sen_Vend = 'S'
     THEN BEGIN
          EdDocumento.Visible  := False ;
          LblDocumento.Visible := False ;
     END;

     If Not(dsPessoasFJ.DataSet.Active) Then
       dsPessoasFJ.DataSet.Open;

     If Not(Datasource.DataSet.Active) Then
       DataSource.DataSet.Open;

     If Not(DsFaixa.DataSet.Active) Then
       DsFaixa.DataSet.Open;

     with dmFinanceiro2 do
     begin
       lstPerfilCom.Close;
       lstPerfilCom.Open;
       lstPerfilCom.FetchAll;

       lstPerfilComPagto.Close;
       lstPerfilComPagto.Open;
       lstPerfilComPagto.FetchAll;
     end;

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
  cmbNomeRazao.SetFocus;
end;

procedure TFrmVendedores.FormCreate(Sender: TObject);
begin
  Pc.ActivePageindex := 0;   

  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmVendedores.ActListagemExecute(Sender: TObject);
begin
     //
     DMListagens := TDMListagens.Create(Self);
     DMListagens.lsVendedores;
     DMListagens.Free;
     DMListagens := Nil; 
end;

procedure TFrmVendedores.ActLocalizarExecute(Sender: TObject);
begin
     DMApp.Localizar(Datasource);
end;

procedure TFrmVendedores.EdCodigoKeyDown(Sender: TObject; var Key: Word;
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

procedure TFrmVendedores.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmVendedores.DataSourceStateChange(Sender: TObject);
begin
     IF PC.ActivePageIndex = 0
     THEN BEGIN
          If DataSource.State in dsEditModes
          Then Begin
               ActIncluir.Enabled   := False;
               ActAlterar.Enabled   := False;
               ActExcluir.Enabled   := False;
               ActLocalizar.Enabled := False;
               ActListagem.Enabled  := False;
               BtnSalvar.Enabled    := True;
               BtnCancelar.Enabled  := True;
               ActFechar.Enabled    := False;
               EdDocumento.Visible  := True ;
               LblDocumento.Visible := True ;
          End
          Else Begin
               ActIncluir.Enabled   := ActIncluir.Tag = 1;
               ActAlterar.Enabled   := ActAlterar.Tag = 1;
               ActExcluir.Enabled   := ActExcluir.Tag = 1;
               ActLocalizar.Enabled := True;
               ActListagem.Enabled  := ActListagem.Tag = 1;
               BtnSalvar.Enabled    := False;
               BtnCancelar.Enabled  := False;
               ActFechar.Enabled    := True;
               EdDocumento.Visible  := False;
               LblDocumento.Visible := False;
          End;
     END
     ELSE BEGIN
          If DsFaixa.State in dsEditModes
          Then Begin
               ActIncluir.Enabled   := False;
               ActAlterar.Enabled   := False;
               ActExcluir.Enabled   := False;
               ActLocalizar.Enabled := False;
               ActListagem.Enabled  := False;
               BtnSalvar.Enabled    := True;
               BtnCancelar.Enabled  := True;
               ActFechar.Enabled    := False;
               EdDocumento.Visible  := True ;
               LblDocumento.Visible := True ;
          End
          Else Begin
               ActIncluir.Enabled   := ActIncluir.Tag = 1;
               ActAlterar.Enabled   := ActAlterar.Tag = 1;
               ActExcluir.Enabled   := ActExcluir.Tag = 1;
               ActLocalizar.Enabled := True;
               ActListagem.Enabled  := ActListagem.Tag = 1;
               BtnSalvar.Enabled    := False;
               BtnCancelar.Enabled  := False;
               ActFechar.Enabled    := True;
               EdDocumento.Visible  := False;
               LblDocumento.Visible := False;
          End;
     END;
end;

procedure TFrmVendedores.ActFecharExecute(Sender: TObject);
begin
  If FrmVendedores.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmVendedores.btnPessoaFJClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPessoasFJ', False);

  // Informando quais datasets estão em uso
  dsPessoasFJ.DataSet.Tag := dsPessoasFJ.DataSet.Tag + 1;

  FrmPessoasFJ := TFrmPessoasFJ.Create(Application);
  FrmPessoasFJ.Showmodal ;

  If not ( Datasource.DataSet.State in [ dsinsert, dsedit ]) then
    Datasource.DataSet.edit ;

  Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;
  dsPessoasFJ.DataSet.close ;
  dsPessoasFJ.DataSet.open  ;

  dsPessoasFJ.DataSet.Tag := dsPessoasFJ.DataSet.Tag - 1;
  cmbNomeRazao.SetFocus;
end;

procedure TFrmVendedores.actLookupExecute(Sender: TObject);
begin
  If FrmVendedores.ActiveControl = cmbNomeRazao Then
     btnPessoaFJ.OnClick(btnPessoaFJ)
  else If FrmVendedores.ActiveControl = cmbNomeRazao Then
     btnPessoaFJ.OnClick(btnPessoaFJ);

end;

procedure TFrmVendedores.cmbNomeRazaoEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFrmVendedores.cmbNomeRazaoExit(Sender: TObject);
begin
     TIRACORFUNDO(SENDER);
end;

procedure TFrmVendedores.pcChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
     IF FrmVendedores <> nIL
     THEN BEGIN
          If DataSource.DataSet.State in [ dsinsert, dsedit ]
          then
              AllowChange := False ;
     END;
end;

procedure TFrmVendedores.pcChange(Sender: TObject);
begin
{     IF PC.ActivePageIndex = 1
     THEN BEGIN
          WITH DMCADASTROS DO
          BEGIN
               VENDEDOR_FAIXA.Close ;

               VENDEDOR_FAIXA.ParamByName ( 'CNPJ'   ).AsString  := DmApp.Cnpj ;

               VENDEDOR_FAIXA.ParamByName ( 'CODIGO' ).AsInteger := VendedoresCODIGO.VALUE ;

               VENDEDOR_FAIXA.OPEN  ;
          END;
     END;}
end;

procedure TFrmVendedores.ActAlterarExecute(Sender: TObject);
begin
     If pc.ActivePageIndex = 0
     then begin
          If DataSource.State in dsEditModes
          Then
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
     end
     else begin
          If DsFaixa.State in dsEditModes
          Then
              Exit;

          Try
             DsFaixa.DataSet.Edit;
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
end;

procedure TFrmVendedores.btnComissaoClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPerfilComissao', False);

  // Informando quais datasets estão em uso
  dsPessoasFJ.DataSet.Tag := dsPessoasFJ.DataSet.Tag + 1;

  FrmPerfilComissao := TFrmPerfilComissao.Create(Application);
  FrmPerfilComissao.Showmodal ;

  Datasource.DataSet.FieldByName('COD_PERFIL').asInteger := FrmMain.Codigo_Int;
  dmFinanceiro2.lstPerfilCom.Close;
  dmFinanceiro2.lstPerfilCom.Open;
  cmbNomeRazao.SetFocus;
end;

procedure TFrmVendedores.SpeedButton1Click(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmPerfilPagto', False);

  // Informando quais datasets estão em uso
  dsPessoasFJ.DataSet.Tag := dsPessoasFJ.DataSet.Tag + 1;

  FrmPerfilPagto := TFrmPerfilPagto.Create(Application);
  FrmPerfilPagto.Showmodal ;

  Datasource.DataSet.FieldByName('COD_PERFIL_PAGTO').asInteger := FrmMain.Codigo_Int;
  dmFinanceiro2.lstPerfilComPagto.Close;
  dmFinanceiro2.lstPerfilComPagto.Open;
  cmbPerfilComPagto.SetFocus;
end;

procedure TFrmVendedores.Button1Click(Sender: TObject);
begin
  DMCadastros.Vendedores.Close;
  DMCadastros.Vendedores.Open;
end;

end.
