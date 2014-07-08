 unit Motores_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxExEdtr,  
  dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, Buttons,
    Grids, DBGrids, DBCtrls, cxPropertiesStore, cxGraphics, cxControls,
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
  TFrmMotores = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
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
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    OptAlterar: TdxBarButton;
    LblTitulo: TcxLabel;
    PC: TcxPageControl;
    TAB1: TcxTabSheet;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    Label2: TcxLabel;
    TAB2: TcxTabSheet;
    GRID: TdxDBGrid;
    GRIDSERVICO: TdxDBGridMaskColumn;
    GRIDNOME_SERVICO: TdxDBGridMaskColumn;
    CMBSERVICO: TdxDBButtonEdit;
    BtnServico: TcxButton;
    Label5: TcxLabel;
    cbAltPrcVnd: TdxDBCheckEdit;
    Label10: TcxLabel;
    GRIDATIVO: TdxDBGridColumn;
    GRIDMOTOR: TdxDBGrid;
    GRIDMOTORCODIGO: TdxDBGridMaskColumn;
    GRIDMOTORNOME: TdxDBGridMaskColumn;
    Label8: TcxLabel;
    EdValor: TdxDBCalcEdit;
    GRIDVALOR: TdxDBGridColumn;
    ActLookUp: TAction;
    DsServicos: TDataSource;
    edtServico: TdxDBEdit;
    Shape9: TShape;
    DBCoolText7: TDBText;
    stgFrmMotores: TcxPropertiesStore;
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
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActAlterarExecute(Sender: TObject);
    procedure EdInicialEnter(Sender: TObject);
    procedure EdInicialExit(Sender: TObject);
    procedure PCChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure PCChange(Sender: TObject);
    procedure DsServicosStateChange(Sender: TObject);
    procedure CMBSERVICOButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure BtnServicoClick(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmMotores: TFrmMotores;

implementation

uses Servicos_DM,
     Listagens_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes, Localizar_Servicos, Localizar_Generico, Servicos_Form;

{$R *.DFM}

procedure TFrmMotores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;
  //
  Frm_Localizar_Servico.Free   ;
  Frm_Localizar_Servico := Nil ;

  //
  If FrmMotores.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmMotores := Nil;
end;

procedure TFrmMotores.ActIncluirExecute(Sender: TObject);
begin
     //-->> Page = 0  CADASTRO DE EQUIPAMENTOS/MODELOS
     If Pc.ActivePageIndex = 0 then
     begin
          If DataSource.State in dsEditModes Then
              Exit;
          DataSource.DataSet.Append;
          EdInicial.SetFocus;
     end else
     //-->> Page = 1  CADASTRO DE SERVIÇOS PARA EQUIPAMENTOS     
     begin
          If DsServicos.State in dsEditModes Then
              Exit;
          DmServicos.Motores_Servicos.append;
          CMBSERVICO.SetFocus;
     end;
end;

procedure TFrmMotores.ActExcluirExecute(Sender: TObject);
begin
     //-->> Page = 0  CADASTRO DE EQUIPAMENTOS/MODELOS
     If Pc.ActivePageIndex = 0 then
     begin
        If MessageBox(Handle,'Tem certeza que deseja Excluir este Motor ?','Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
          DataSource.Dataset.Delete;
     END ELSE
     //-->> Page = 1  CADASTRO DE SERVIÇOS PARA EQUIPAMENTOS
     BEGIN
        If MessageBox(Handle,'Tem certeza que deseja Excluir este Serviço ?','Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
          DsServicos.Dataset.Delete;
     END;
end;

procedure TFrmMotores.ActPostExecute(Sender: TObject);
begin
     //-->> Page = 0  CADASTRO DE EQUIPAMENTOS/MODELOS
     if Pc.ActivePageIndex = 0 then
     begin                                                                                          
        DmServicos.Motores.post;
        DMApp.Transaction.CommitRetaining;
     end else//-->> Page = 1  CADASTRO DE SERVIÇOS PARA EQUIPAMENTOS
     begin
        DmServicos.Motores_Servicos.Post;
        DMApp.Transaction.CommitRetaining;
     end;
end;

procedure TFrmMotores.ActCancelExecute(Sender: TObject);
begin
     //-->> Page = 0  CADASTRO DE EQUIPAMENTOS/MODELOS
     If Pc.ActivePageIndex = 0 then
     begin
        If DataSource.DataSet.State in dsEditModes Then
          DataSource.DataSet.Cancel
        Else
           BtnFechar.OnClick(BtnFechar);
      END ELSE
     //-->> Page = 1  CADASTRO DE SERVIÇOS PARA EQUIPAMENTOS
      BEGIN
        If DsServicos.DataSet.State in dsEditModes Then
          DsServicos.DataSet.Cancel
        Else
          BtnFechar.OnClick(BtnFechar);
    END;
end;

procedure TFrmMotores.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  If Not(DataSource.DataSet.Active) Then
    Datasource.DataSet.Open;

  (Datasource.DataSet as TIBDataset).FetchAll;

  //Cria o Formulario de Localizar Cliente
  Application.CreateForm(TFrm_Localizar_Servico, Frm_Localizar_Servico) ;
  EdInicial.SetFocus;
end;

procedure TFrmMotores.FormCreate(Sender: TObject);
begin
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

     Pc.aCTIVEpageIndex := 0;
end;

procedure TFrmMotores.ActListagemExecute(Sender: TObject);
begin
  //
  DMListagens := TDMListagens.Create(Self);
  DMListagens.lsMotores(DataSource.DataSet);
  DMListagens.Free;
  DMListagens := Nil;
end;

procedure TFrmMotores.ActLocalizarExecute(Sender: TObject);
begin
     //-->> Page = 0  CADASTRO DE EQUIPAMENTOS/MODELOS
     If Pc.ActivePageIndex = 0 then
     begin
         Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);
         Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;
         Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Motores' ;
         Frm_Localizar_Generico.showmodal ;
         Frm_Localizar_Generico.free   ;
         Frm_Localizar_Generico := Nil ;
     END ELSE
     //-->> Page = 1  CADASTRO DE SERVIÇOS PARA EQUIPAMENTOS
     BEGIN
          DMApp.Localizar(DsServicos);
     END;
end;

procedure TFrmMotores.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmMotores.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmMotores.DataSourceStateChange(Sender: TObject);
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

procedure TFrmMotores.ActFecharExecute(Sender: TObject);
begin
  If FrmMotores.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmMotores.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmMotores.ActAlterarExecute(Sender: TObject);
begin
     //-->> Page = 0  CADASTRO DE EQUIPAMENTOS/MODELOS       
     If Pc.ActivePageIndex = 0 then
     begin
        If DataSource.State in dsEditModes then
            Exit;
        DataSource.DataSet.Edit;
     END ELSE
     //-->> Page = 1  CADASTRO DE SERVIÇOS PARA EQUIPAMENTOS
     BEGIN
        If DsServicos.State in dsEditModes Then
            Exit;
        DsServicos.DataSet.Edit;
     END;
end;

procedure TFrmMotores.EdInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmMotores.EdInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmMotores.PCChanging(Sender: TObject; NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
     If FrmMotores <> Nil then
     begin
          If ( DataSource.DataSet.State in [ dsinsert, dsedit ] ) or ( DataSource.DataSet.FieldByName ('CODIGO').AsInteger <= 0 )then
          begin
               MessageDlg('Alterações Não Confirmadas ',MtError,[MbOk],0);
               AllowChange := False ;
          end;
     end;
end;

procedure TFrmMotores.PCChange(Sender: TObject);
begin
     //-->> Page = 0  CADASTRO DE EQUIPAMENTOS/MODELOS
     If Pc.ActivePageIndex = 1 then
     begin
       GRID.DataSource := DsServicos;
       DsServicos.dataset := DmServicos.Motores_Servicos; 
       DmServicos.Motores_Servicos.Close ;
       DmServicos.Motores_Servicos.ParamByName ( 'CODIGO' ).AsInteger := DataSource.DataSet.FieldByName ('CODIGO').AsInteger ;
       DmServicos.Motores_Servicos.ParamByName ( 'CNPJ'   ).AsString  := DataSource.DataSet.FieldByName ('CNPJ').AsSTRING ;
       DmServicos.Motores_Servicos.Open  ;

       DmServicos.SelServicos.Open ;

       BarDBNavigator.DataSource := DsServicos ;
     end else
     //-->> Page = 1  CADASTRO DE SERVIÇOS PARA EQUIPAMENTOS
     begin
          DmServicos.SelServicos.Close ;
          DmServicos.Motores_Servicos.Close ;

          BarDBNavigator.DataSource := datasource ;
     end;
end;

procedure TFrmMotores.DsServicosStateChange(Sender: TObject);
begin
  If DsServicos.State in dsEditModes Then
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

procedure TFrmMotores.CMBSERVICOButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
  if Not ( DsServicos.State in [ dsinsert, dsedit ] )Then
  begin
    DmServicos.Motores_Servicos.open;
    DmServicos.Motores_Servicos.Edit;
  end;

  if ( Frm_Localizar_Servico.showmodal = mrOk )Then
    DmServicos.Motores_ServicosSERVICO.Value := (Frm_Localizar_Servico.CampTrecho);
end;

procedure TFrmMotores.BtnServicoClick(Sender: TObject);
begin
  If ActAlterar.Tag = 0 Then
     Exit;

  If DsServicos.DataSet.State = dsBrowse Then
     DsServicos.DataSet.Edit;

  DMServicos.Tag := DMServicos.Tag + 1;
  DsServicos.DataSet.Tag := DsServicos.DataSet.Tag + 1;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmServicos', False);
  FrmServicos := TFrmServicos.Create(Application);

  FrmServicos.Showmodal ;
  DsServicos.DataSet.FieldByName('SERVICO').asInteger := FrmMain.Codigo_Int;
  DsServicos.DataSet.Tag := DsServicos.DataSet.Tag - 1;
  DMServicos.Tag := DMServicos.Tag - 1;
  CMBSERVICO.SetFocus;

  DmServicos.SelServicos.Close;
  DmServicos.SelServicos.Open;
  //
end;

procedure TFrmMotores.ActLookUpExecute(Sender: TObject);
begin
  If (FrmMotores.ActiveControl = CMBSERVICO) Then
     BtnServico.OnClick(BtnServico);
  If (FrmMotores.ActiveControl = edtServico) Then
     BtnServico.OnClick(BtnServico);
end;

end.
