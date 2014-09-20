 unit FormasPagto_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,   Grids, DBGrids, ppBands, ppClass, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  DBCtrls, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxSkinsCore,
  dxSkinsdxBarPainter, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, ppParameter, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxLabel;

type
  TFrmFormasPagto = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;                                            
    b2: TBevel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Panel1: TPanel;
    EdCodigo: TdxDBEdit;
    edNome: TdxDBEdit;
    edAcrescimo: TdxDBCalcEdit;
    edDesconto: TdxDBCalcEdit;
    cbNParcelas: TdxDBSpinEdit;
    edIntervalo: TdxDBSpinEdit;
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
    DataSource: TDataSource;
    CmbForma: TdxDBPickEdit;
    LblForma: TcxLabel;
    LblTipo: TcxLabel;
    CmbTipo: TdxDBPickEdit;
    dxDBCheckEdit2: TdxDBCheckEdit;
    ppFormaPagto: TppDBPipeline;
    rptFormaPagto: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape22: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel62: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppLine3: TppLine;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape23: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppDBCalc1: TppDBCalc;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    GroupBox3: TGroupBox;
    cbVista: TdxDBCheckEdit;
    cbEntrada: TdxDBCheckEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    ckVenctoFixo: TdxDBCheckEdit;
    pnlParcelas: TPanel;
    GRID: TdxDBGrid;
    Panel3: TPanel;
    DBNavigator1: TDBNavigator;
    dsParcelas: TDataSource;
    GRIDCNPJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDCOD_FORMA_PAGTO: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridSpinColumn;
    GRIDDIAS_VENCIMENTO: TdxDBGridSpinColumn;
    edtDtVenctoFixo: TdxDBDateEdit;
    Label3: TcxLabel;
    dxBarDBNavLast1: TdxBarDBNavButton;
    Panel2: TPanel;
    dxDBCheckEdit3: TdxDBCheckEdit;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText1: TppDBText;
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
    procedure edNomeEnter(Sender: TObject);
    procedure edNomeExit(Sender: TObject);
    procedure ckVenctoFixoExit(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFormasPagto: TFrmFormasPagto;

implementation

uses
    Cadastros_DM,
    Listagens_DM,
    Application_DM,
    Main,
    Usuarios_DM,
    Funcoes, Localizar_Generico;

{$R *.DFM}



procedure TFrmFormasPagto.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  FrmMain.Codigo_Int := Datasource.DataSet.FieldByName('CODIGO').asInteger;

  If DataSource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;


  If FrmFormasPagto.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;

  Action := caFree;
  FrmFormasPagto := Nil;
end;

procedure TFrmFormasPagto.ActIncluirExecute(Sender: TObject);
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
  edNome.SetFocus;
end;

procedure TFrmFormasPagto.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja excluir esta forma de pagamento?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmFormasPagto.ActPostExecute(Sender: TObject);
begin
  Try
    If not(Navigator.DataSource.DataSet.State in [ dsinsert, dsedit ]) then
      exit;

    if ((DMCadastros.Formas_PagtoINTERVALO_PRE_DEFINIDO.value = 'S') and Not(DMCadastros.Formas_PagtoCODIGO.isNull)) then
    begin
      if (DMCadastros.Formas_Pagto_Parcelas.RecordCount = 0) then
      begin
        Application.MessageBox('Defina os intervalos Pré-Dedinifos das parcelas.','Aviso',mb_ok+mb_iconerror);
        exit;
      end;

      if (DMCadastros.Formas_Pagto_Parcelas.RecordCount <> DMCadastros.Formas_PagtoNPARCELAS.value) then
      begin
        Application.MessageBox('O nº de parcelas difere do total de intervalos Pré-Definidos. Verifique ','Aviso',mb_ok+mb_iconerror);
        cbNParcelas.SetFocus;
        exit;
      end;
    end;

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

procedure TFrmFormasPagto.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmFormasPagto.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  Try
    dmCadastros.Formas_Pagto.Close;
    dmCadastros.Formas_Pagto.ParamByName('cnpj').value := dmApp.Cnpj;
    dmCadastros.Formas_Pagto.Open;

    dmCadastros.Formas_Pagto_Parcelas.Open;

  
      
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
  edNome.SetFocus;
end;

procedure TFrmFormasPagto.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption;
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

end;

procedure TFrmFormasPagto.ActListagemExecute(Sender: TObject);
begin
  DMListagens := TDMListagens.Create(Self);
  with dmListagens do
  begin
    qryRelFormaPagto.Close;
    qryRelFormaPagto.Open;
    lblEmpresa.caption := dmApp.nome;
    rptFormaPagto.print;
    Free;
  end;
  DMListagens := Nil;
end;

procedure TFrmFormasPagto.ActLocalizarExecute(Sender: TObject);
begin
  try
        Application.CreateForm(TFrm_Localizar_Generico, Frm_Localizar_Generico);

        Frm_Localizar_Generico.DSource.dataset := DataSource.dataset ;
        Frm_Localizar_Generico.LblTitulo.Caption := 'Localizar Formas' ;
        Frm_Localizar_Generico.showmodal ;
        Frm_Localizar_Generico.free   ;
        Frm_Localizar_Generico := Nil ;
  Except
  end;
end;

procedure TFrmFormasPagto.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFormasPagto.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFormasPagto.DataSourceStateChange(Sender: TObject);
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

procedure TFrmFormasPagto.ActFecharExecute(Sender: TObject);
begin
   Close;
end;

procedure TFrmFormasPagto.edNomeEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TFrmFormasPagto.edNomeExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO(SENDER);
end;

procedure TFrmFormasPagto.ckVenctoFixoExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);


end;

procedure TFrmFormasPagto.DataSourceDataChange(Sender: TObject;
  Field: TField);
begin
    if (DMCadastros.Formas_PagtoINTERVALO_PRE_DEFINIDO.value = 'S') then
    pnlParcelas.Enabled := true
  else
    pnlParcelas.Enabled := false;
end;

initialization
 RegisterClass(TFrmFormasPagto);
 
end.
