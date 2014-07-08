 unit Perfil_Com_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids,   dxCntner,
  dxEditor, dxEdLib, dxDBELib, StdCtrls,   dxBarDBNav,
  ActnList, Db, dxBar, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,
  dxGrClEx, dxExEdtr, dxDBEdtr,    DBCtrls,
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses,
  cxPC, cxLabel, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit;

type
  TFrmPerfilComissao = class(TForm)
    Panel1: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    dsPerfil: TDataSource;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActAlterarDireito: TAction;
    ActGravar: TAction;
    ActCancelar: TAction;
    ActNP: TAction;
    ActPP: TAction;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    btnFiltrar: TdxBarButton;
    btnGravar: TdxBarButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    dxBarDockControl1: TdxBarDockControl;
    Panel3: TPanel;
    ActFechar: TAction;
    ActExluirModulo: TAction;
    ActForm: TAction;
    ActConfiguraDireitos: TAction;
    dsProdutos: TDataSource;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    Label1: TcxLabel;
    Label2: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    tbsFaixas: TcxTabSheet;
    Shape3: TShape;
    lblFaixa: TcxLabel;
    RxLabel2: TcxLabel;
    RxLabel3: TcxLabel;
    Shape6: TShape;
    DBCoolText2: TDBText;
    GridVlr: TdxDBGrid;
    GridVlrCNPJ: TdxDBGridMaskColumn;
    GridVlrCODIGO: TdxDBGridMaskColumn;
    GridVlrCOD_PERFIL: TdxDBGridMaskColumn;
    GridDescto: TdxDBGrid;
    GridDesctoCNPJ: TdxDBGridMaskColumn;
    GridDesctoCODIGO: TdxDBGridMaskColumn;
    GridDesctoCOD_PERFIL_FAIXA: TdxDBGridMaskColumn;
    GridProd: TdxDBGrid;
    GridProdCNPJ: TdxDBGridMaskColumn;
    GridProdCODIGO: TdxDBGridMaskColumn;
    GridProdCOD_PERFIL_FX_DESC: TdxDBGridMaskColumn;
    Shape2: TShape;
    lstProdutos: TDataSource;
    GridProdCOD_PRODUTO: TdxDBGridMaskColumn;
    GridProdNOME: TdxDBGridMaskColumn;
    Label3: TcxLabel;
    GridVlrVLR_INICIAL: TdxDBGridColumn;
    GridVlrVLR_FINAL: TdxDBGridColumn;
    GridDesctoPCT_INICIAL: TdxDBGridColumn;
    GridDesctoPCT_FINAL: TdxDBGridColumn;
    GridDesctoPCT_VISTA: TdxDBGridColumn;
    GridDesctoPCT_PRAZO: TdxDBGridColumn;
    GridProdPCT_PROD_VISTA: TdxDBGridColumn;
    GridProdPCT_PROD_PRAZO: TdxDBGridColumn;
    stgFrmPerfilComissao: TcxPropertiesStore;
    cmbBase: TcxDBComboBox;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActGravarExecute(Sender: TObject);
    procedure ActNPExecute(Sender: TObject);
    procedure ActPPExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dsPerfilStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pcChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure GridFaixaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridFaixaDblClick(Sender: TObject);
    procedure dxDBGrid2Enter(Sender: TObject);
    procedure GridVlrExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPerfilComissao: TFrmPerfilComissao;

implementation

uses Application_DM, Funcoes, Main, Financeiro_Dm2,
  Usuarios_DM, Cadastros_DM;

{$R *.DFM}

procedure TFrmPerfilComissao.ActIncluirExecute(Sender: TObject);
begin
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
 // edInicial.SetFocus;
end;

procedure TFrmPerfilComissao.ActExcluirExecute(Sender: TObject);
begin
     If MessageBox(Handle,'Tem certeza que deseja Excluir este Perfil ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     Begin
       Try
         Navigator.DataSource.Dataset.Delete;
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
       DMApp.Transaction.CommitRetaining;
     End;
end;

procedure TFrmPerfilComissao.ActGravarExecute(Sender: TObject);
begin
  Try
    if (Navigator.DataSource.DataSet.state in [dsInsert,dsEdit]) then
      Navigator.DataSource.DataSet.Post;
      
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

procedure TFrmPerfilComissao.ActNPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex < 1 Then
     pc.ActivePageIndex := pc.ActivePageIndex + 1;
end;

procedure TFrmPerfilComissao.ActPPExecute(Sender: TObject);
begin
  //
  If pc.ActivePageIndex > 0 Then
     pc.ActivePageIndex := pc.ActivePageIndex - 1;
end;

procedure TFrmPerfilComissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmMain.Codigo_Int := dsPerfil.DataSet.FieldByName('CODIGO').asInteger;
  
  Action := caFree;
  FrmPerfilComissao := Nil;
//  FrmMain.PnlClient.Visible := True;
end;

procedure TFrmPerfilComissao.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  pc.ActivePageIndex := 0;
end;

procedure TFrmPerfilComissao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  // Abrindo os DataSet's
  Try
    If Not(dsPerfil.DataSet.Active) Then
       dsPerfil.DataSet.Open;
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

procedure TFrmPerfilComissao.dsPerfilStateChange(Sender: TObject);
begin
  If (Sender as TDataSource).State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       BtnGravar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       BtnGravar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmPerfilComissao.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmPerfilComissao.ActCancelarExecute(Sender: TObject);
begin
  If (Navigator.DataSource.DataSet.State in dsEditModes) Then
     Begin
       If (MessageBox(Handle,'Tem certeza que deseja Cancelar as informações ?',
                             'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES) Then
       Navigator.DataSource.DataSet.Cancel;
     End
  Else
     Begin
       If pc.ActivePageIndex = 1 Then
          pc.ActivePageIndex := 0
       Else
          BtnFechar.OnClick(BtnFechar);
     End;
end;

procedure TFrmPerfilComissao.pcChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  Try
     If FrmPerfilComissao <> Nil
     then begin
          If NewPage = tbsFaixas Then
          begin
            if (cmbBase.ItemIndex = 0) then
              lblFaixa.Caption := 'Faixa de Faturamento'
            else
              lblFaixa.Caption := 'Faixa de Lucro';
              
            with dmFinanceiro2 do
            begin
              dsLinkPerfilFx.DataSet.Open;
              dmFinanceiro2.dsLinkPerfilDesc.DataSet.Open;
              dsProdutos.DataSet.open;
            end;
          end
          else
          begin
            dsPerfil.dataset := dmFinanceiro2.COM_PERFIL;
            dmFinanceiro2.dsLinkPerfilFx.DataSet.Close;
            dmFinanceiro2.dsLinkPerfilDesc.DataSet.Close;
            dsProdutos.DataSet.close;
          end;
     end;
  Except
  End;
end;

procedure TFrmPerfilComissao.GridFaixaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  If Key = vk_return Then
     ActAlterarDireito.Execute;
end;

procedure TFrmPerfilComissao.GridFaixaDblClick(Sender: TObject);
begin
     ActAlterarDireito.Execute;
end;

procedure TFrmPerfilComissao.dxDBGrid2Enter(Sender: TObject);
begin
  Navigator.DataSource := TdxDBGrid(Sender).DataSource;
  TdxDBGrid(Sender).DataSource.OnStateChange := dsPerfilStateChange;
end;

procedure TFrmPerfilComissao.GridVlrExit(Sender: TObject);
begin
  if TdxDBGrid(Sender).DataSource.DataSet.state in [dsInsert,dsEdit] then
    TdxDBGrid(Sender).DataSource.DataSet.Post;
end;

end.
