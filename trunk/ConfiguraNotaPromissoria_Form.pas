unit ConfiguraNotaPromissoria_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, RDprint, ComCtrls, ppBands, ppCtrls, ppPrnabl, ppClass, ppVar,
  ppCache, ppProd, ppReport, ppEndUsr, ppComm, ppRelatv, ppDB, ppDBPipe,
  myChkBox, ppParameter;

type
  TFrmConfigurarNotaPromissoria = class(TForm)
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
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    IMPRESSORA: TRDprint;
    PageControl1: TPageControl;
    tbsGrafico: TTabSheet;
    GroupBox1: TGroupBox;
    dxDBCheckEdit2: TdxDBCheckEdit;
    btnConfigurar: TBitBtn;
    tbsTexto: TTabSheet;
    ppLayout: TppDBPipeline;
    Designer: TppDesigner;
    rptPromissoria: TppReport;
    ppDetailBand1: TppDetailBand;
    ppPromissoria: TppDBPipeline;
    dsLayout: TDataSource;
    dsPromissoria: TDataSource;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppLabel5: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    Panel3: TPanel;
    Label104: TLabel;
    dxDBCheckEdit4: TdxDBCheckEdit;
    Label103: TLabel;
    dxDBCheckEdit3: TdxDBCheckEdit;
    Label69: TLabel;
    dxDBPickEdit1: TdxDBPickEdit;
    Label68: TLabel;
    dxDBEdit64: TdxDBEdit;
    Label58: TLabel;
    dxDBEdit54: TdxDBEdit;
    Label59: TLabel;
    dxDBEdit55: TdxDBEdit;
    dxDBEdit66: TdxDBEdit;
    Label71: TLabel;
    dxDBEdit65: TdxDBEdit;
    Label70: TLabel;
    dxDBEdit56: TdxDBEdit;
    Label60: TLabel;
    dxDBEdit57: TdxDBEdit;
    Label61: TLabel;
    Label86: TLabel;
    Label98: TLabel;
    dxDBEdit91: TdxDBEdit;
    Label63: TLabel;
    dxDBEdit59: TdxDBEdit;
    Label62: TLabel;
    dxDBEdit58: TdxDBEdit;
    dxDBEdit68: TdxDBEdit;
    Label73: TLabel;
    dxDBEdit67: TdxDBEdit;
    Label72: TLabel;
    dxDBEdit70: TdxDBEdit;
    Label75: TLabel;
    dxDBEdit69: TdxDBEdit;
    Label74: TLabel;
    Label65: TLabel;
    dxDBEdit61: TdxDBEdit;
    Label64: TLabel;
    dxDBEdit60: TdxDBEdit;
    Label56: TLabel;
    dxDBEdit52: TdxDBEdit;
    Label57: TLabel;
    dxDBEdit53: TdxDBEdit;
    dxDBEdit88: TdxDBEdit;
    Label95: TLabel;
    dxDBEdit87: TdxDBEdit;
    Label94: TLabel;
    dxDBEdit63: TdxDBEdit;
    Label67: TLabel;
    dxDBEdit62: TdxDBEdit;
    Label66: TLabel;
    Label99: TLabel;
    dxDBEdit92: TdxDBEdit;
    Label100: TLabel;
    dxDBEdit93: TdxDBEdit;
    Label101: TLabel;
    dxDBEdit94: TdxDBEdit;
    Label102: TLabel;
    dxDBEdit95: TdxDBEdit;
    dxDBEdit74: TdxDBEdit;
    Label79: TLabel;
    dxDBEdit73: TdxDBEdit;
    Label78: TLabel;
    dxDBEdit72: TdxDBEdit;
    Label77: TLabel;
    dxDBEdit71: TdxDBEdit;
    Label76: TLabel;
    Label87: TLabel;
    Label84: TLabel;
    dxDBEdit80: TdxDBEdit;
    Label82: TLabel;
    dxDBEdit77: TdxDBEdit;
    Label81: TLabel;
    dxDBEdit76: TdxDBEdit;
    Label80: TLabel;
    dxDBEdit75: TdxDBEdit;
    dxDBEdit82: TdxDBEdit;
    Label89: TLabel;
    dxDBEdit81: TdxDBEdit;
    Label88: TLabel;
    dxDBEdit78: TdxDBEdit;
    Label83: TLabel;
    dxDBEdit79: TdxDBEdit;
    Label85: TLabel;
    Label105: TLabel;
    dxDBEdit96: TdxDBEdit;
    Label106: TLabel;
    dxDBEdit97: TdxDBEdit;
    Label107: TLabel;
    dxDBEdit98: TdxDBEdit;
    Label108: TLabel;
    dxDBEdit99: TdxDBEdit;
    dxDBEdit85: TdxDBEdit;
    Label92: TLabel;
    Label91: TLabel;
    dxDBEdit84: TdxDBEdit;
    dxDBEdit83: TdxDBEdit;
    Label90: TLabel;
    Label96: TLabel;
    dxDBEdit89: TdxDBEdit;
    Label97: TLabel;
    dxDBEdit90: TdxDBEdit;
    Label93: TLabel;
    dxDBEdit86: TdxDBEdit;
    dxDBEdit100: TdxDBEdit;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    dxDBEdit102: TdxDBEdit;
    dxDBEdit101: TdxDBEdit;
    ScrollBox1: TScrollBox;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    Label1: TLabel;
    dxDBEdit1: TdxDBEdit;
    Label2: TLabel;
    dxDBEdit2: TdxDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    Label7: TLabel;
    dxDBEdit7: TdxDBEdit;
    Label8: TLabel;
    dxDBEdit8: TdxDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    Label11: TLabel;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    rptCopiaCheque: TppReport;
    ppLayoutCopiaCheque: TppDBPipeline;
    DesignerCopiaCheque: TppDesigner;
    dsLayoutCopiaCheque: TDataSource;
    ppParameterList1: TppParameterList;
    ppTitleBand1: TppTitleBand;
    ppEmpresa: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppHeaderBand1: TppHeaderBand;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLine3: TppLine;
    ppDBText21: TppDBText;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    myDBCheckBox1: TmyDBCheckBox;
    ppBANCO: TppLabel;
    ppLabel12: TppLabel;
    ppDBText22: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppVALOR_EXTENSO: TppLabel;
    ppVALOR: TppLabel;
    ppLabel15: TppLabel;
    ppLine5: TppLine;
    ppLabel16: TppLabel;
    ppLine4: TppLine;
    ppMUNICIPIO: TppLabel;
    ppLine6: TppLine;
    ppCopiaCheque: TppDBPipeline;
    ppDBText27: TppDBText;
    Panel2: TPanel;
    LblTitulo: TLabel;
    b2: TBevel;
    LblRegistros: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActListagemExecute(Sender: TObject);
    procedure CmbLppEnter(Sender: TObject);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure dxDBEdit2Exit(Sender: TObject);
    procedure btnConfigurarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmConfigurarNotaPromissoria: TFrmConfigurarNotaPromissoria;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Bancos_Form, Financeiro_Dm2;

{$R *.DFM}

procedure TFrmConfigurarNotaPromissoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //
  If FrmConfigurarNotaPromissoria.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmConfigurarNotaPromissoria := Nil;
end;

procedure TFrmConfigurarNotaPromissoria.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  DataSource.DataSet.Append;
end;

procedure TFrmConfigurarNotaPromissoria.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmConfigurarNotaPromissoria.ActPostExecute(Sender: TObject);
begin
    DataSource.DataSet.Post;
    DMApp.Transaction.CommitRetaining;
end;

procedure TFrmConfigurarNotaPromissoria.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmConfigurarNotaPromissoria.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

  (Datasource.DataSet as TIBDataset).FetchAll;
  Datasource.AutoEdit := ActAlterar.Enabled;
end;

procedure TFrmConfigurarNotaPromissoria.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConfigurarNotaPromissoria.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmConfigurarNotaPromissoria.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConfigurarNotaPromissoria.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmConfigurarNotaPromissoria.DataSourceStateChange(Sender: TObject);
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

procedure TFrmConfigurarNotaPromissoria.ActFecharExecute(Sender: TObject);
begin
  If FrmConfigurarNotaPromissoria.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmConfigurarNotaPromissoria.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmConfigurarNotaPromissoria.ActListagemExecute(Sender: TObject);
begin
     With DmCadastros do
     begin
          IMPRESSORA.TamanhoQteLinhas := NotaPromissoriaTAMANHOPAGINA.Value ;

          SetDefaultPrinter( NotaPromissoriaPORTA.Value ) ;

          IMPRESSORA.OpcoesPreview.Preview := TRUE ;

          IMPRESSORA.ABRIR  ;

          IMPRESSORA.ImpF(NotaPromissoriaVENDA1_ALT.Value, NotaPromissoriaVENDA1_DST.VALUE , 'VENDA1', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(NotaPromissoriaPARCELA1_ALT.Value, NotaPromissoriaPARCELA1_DST.VALUE , 'PARCELA1', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(NotaPromissoriaVENCIMENTO1_ALT.Value, NotaPromissoriaVENCIMENTO1_DST.VALUE , 'VENCIMENTO1', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(NotaPromissoriaSACADO1_ALT.Value, NotaPromissoriaSACADO1_DST.VALUE , 'SACADO', [comp17]);
          IMPRESSORA.ImpVal(NotaPromissoriaVALOR1_ALT.Value, NotaPromissoriaVALOR1_DST.VALUE ,'###,###,##0.00', 10, [comp17,NEGRITO]);

          IMPRESSORA.ImpF(NotaPromissoriaVENDA2_ALT.Value, NotaPromissoriaVENDA2_DST.VALUE , 'VENDA2', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(NotaPromissoriaPARCELA2_ALT.Value, NotaPromissoriaPARCELA2_DST.VALUE , 'PARCELA2', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(NotaPromissoriaVENCIMENTO2_ALT.Value, NotaPromissoriaVENCIMENTO2_DST.VALUE , 'VENCIMENTO2', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(NotaPromissoriaSACADO2_ALT.Value, NotaPromissoriaSACADO2_DST.VALUE , 'SACADO', [comp17]);
          IMPRESSORA.ImpVal(NotaPromissoriaVALOR2_ALT.Value, NotaPromissoriaVALOR2_DST.VALUE ,'###,###,##0.00', 20, [comp17 ,NEGRITO]);


          IMPRESSORA.ImpF(NotaPromissoriaDATA_ALT.Value, NotaPromissoriaDATA_DST.VALUE , 'DATA', [comp17]);
          IMPRESSORA.ImpF(NotaPromissoriaDOCUMENTO_ALT.Value, NotaPromissoriaDOCUMENTO_DST.VALUE , 'DOCUMENTO', [comp17]);
          IMPRESSORA.ImpF(NotaPromissoriaVECTO_EXT_ALT.Value, NotaPromissoriaVECTO_EXT_DST.VALUE , 'VECTO EXTENSO', [comp17]);
          IMPRESSORA.ImpF(NotaPromissoriaINSTRUCOES_ALT.Value, NotaPromissoriaINSTRUCOES_DST.VALUE , 'INSTRUCOES', [comp17]);
          IMPRESSORA.ImpF(NotaPromissoriaEXTENSO_ALT.Value, NotaPromissoriaEXTENSO_DST.VALUE , 'EXTENSO', [comp17]);

          IMPRESSORA.Novapagina ;

          IMPRESSORA.ImpF(NotaPromissoriaVENCIMENTO2_ALT.Value, NotaPromissoriaVENCIMENTO2_DST.VALUE , 'VENCIMENTO', [comp17]);
     end;

     IMPRESSORA.FECHAR ;
end;

procedure TFrmConfigurarNotaPromissoria.CmbLppEnter(Sender: TObject);
begin
     Corfundo ( Sender );
     (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
     (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmConfigurarNotaPromissoria.dxDBEdit2Enter(Sender: TObject);
begin
     Corfundo ( Sender );    
end;

procedure TFrmConfigurarNotaPromissoria.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorfundo ( Sender );
end;

procedure TFrmConfigurarNotaPromissoria.btnConfigurarClick(
  Sender: TObject);
begin
  DMCadastros.NotaPromissoria.close;
  DMCadastros.NotaPromissoria.parambyname('cnpj').value := dmApp.cnpj;
  DMCadastros.NotaPromissoria.Open;

  rptPromissoria.Template.DatabaseSettings.Name := DMCadastros.NotaPromissoriaCNPJ.asstring;;
  rptPromissoria.Template.LoadFromDatabase;
  Designer.Show;
  DMCadastros.NotaPromissoria.edit;
end;

procedure TFrmConfigurarNotaPromissoria.BitBtn1Click(Sender: TObject);
begin
  DMCadastros.EdtCopiaCheque.close;
  DMCadastros.EdtCopiaCheque.Open;

  rptCopiaCheque.Template.DatabaseSettings.name := DMCadastros.EdtCopiaChequeCNPJ.asstring;
  rptCopiaCheque.Template.LoadFromDatabase;
  DesignerCopiaCheque.Show;
  dmCadastros.EdtCopiaCheque.Edit;
end;

end.
