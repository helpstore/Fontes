unit ConfiguraDuplicata_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, RDprint, ComCtrls, ppDB, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppProd, ppReport, ppEndUsr, ppComm, ppRelatv, ppDBPipe,
  ppParameter, DBCtrls;

type
  TFrmConfigurarDuplicatas = class(TForm)
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
    b2: TBevel;
    LblTitulo: TLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TLabel;
    ActLookup: TAction;
    IMPRESSORA: TRDprint;
    PageControl1: TPageControl;
    tbsGrafico: TTabSheet;
    GroupBox1: TGroupBox;
    dxDBCheckEdit1: TdxDBCheckEdit;
    btnConfigurar: TBitBtn;
    tbsTexto: TTabSheet;
    Panel2: TPanel;
    Bevel3: TBevel;
    Label15: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    dxDBEdit23: TdxDBEdit;
    dxDBEdit24: TdxDBEdit;
    dxDBEdit25: TdxDBEdit;
    dxDBEdit26: TdxDBEdit;
    dxDBEdit27: TdxDBEdit;
    dxDBEdit28: TdxDBEdit;
    dxDBEdit29: TdxDBEdit;
    dxDBEdit30: TdxDBEdit;
    dxDBEdit31: TdxDBEdit;
    dxDBEdit32: TdxDBEdit;
    dxDBEdit33: TdxDBEdit;
    dxDBPickEdit1: TdxDBPickEdit;
    dxDBEdit34: TdxDBEdit;
    dxDBEdit35: TdxDBEdit;
    dxDBEdit36: TdxDBEdit;
    dxDBEdit37: TdxDBEdit;
    dxDBEdit38: TdxDBEdit;
    dxDBEdit39: TdxDBEdit;
    dxDBEdit40: TdxDBEdit;
    Designer: TppDesigner;
    ppLayoutDuplicata: TppDBPipeline;
    ppDuplicata: TppDBPipeline;
    rptDuplicata: TppReport;
    ppParameterList5: TppParameterList;
    ppDetailBand5: TppDetailBand;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText125: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText115: TppDBText;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppSystemVariable1: TppSystemVariable;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppTitleBand1: TppTitleBand;
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
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmConfigurarDuplicatas: TFrmConfigurarDuplicatas;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Bancos_Form, Cadastros_Dm2;

{$R *.DFM}

procedure TFrmConfigurarDuplicatas.FormClose(Sender: TObject; var Action: TCloseAction);
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
  If FrmConfigurarDuplicatas.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmConfigurarDuplicatas := Nil;
end;

procedure TFrmConfigurarDuplicatas.ActIncluirExecute(Sender: TObject);
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
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;

end;

procedure TFrmConfigurarDuplicatas.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmConfigurarDuplicatas.ActPostExecute(Sender: TObject);
begin
  Try
    dmCadastros2.Duplicata.Post;
    dmCadastros2.Duplicata.Transaction.CommitRetaining;
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

procedure TFrmConfigurarDuplicatas.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmConfigurarDuplicatas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    dmCadastros2.Duplicata.close;
    dmCadastros2.Duplicata.Open;
//    dmCadastros2.Duplicata.Edit;

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
//Datasource.AutoEdit := ActAlterar.Enabled;
end;

procedure TFrmConfigurarDuplicatas.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConfigurarDuplicatas.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmConfigurarDuplicatas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConfigurarDuplicatas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmConfigurarDuplicatas.DataSourceStateChange(Sender: TObject);
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

procedure TFrmConfigurarDuplicatas.ActFecharExecute(Sender: TObject);
begin
  If FrmConfigurarDuplicatas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmConfigurarDuplicatas.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmConfigurarDuplicatas.ActListagemExecute(Sender: TObject);
begin
     With DmCadastros2 do
     begin
          IMPRESSORA.TamanhoQteLinhas := DuplicataTAMANHOPAGINA.Value ;

          IMPRESSORA.ABRIR  ;

          IMPRESSORA.ImpF(DuplicataVENDA_ALT.Value, DuplicataVENDA_DST.VALUE , 'VENDA', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(DuplicataVENCIMENTO_ALT.Value, DuplicataVENCIMENTO_DST.VALUE , 'VENCIMENTO', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(DuplicataDATA_ALT.Value, DuplicataDATA_DST.VALUE , 'DATA', [comp17]);
          IMPRESSORA.ImpF(DuplicataDOCUMENTO_ALT.Value, DuplicataDOCUMENTO_DST.VALUE , 'DOCUMENTO', [comp17]);
          IMPRESSORA.ImpVal(DuplicataVALOR_ALT.Value, DuplicataVALOR_DST.VALUE ,'###,###,##0.00', 10, [comp17,NEGRITO]);
          IMPRESSORA.ImpF(DuplicataINSTRUCOES_ALT.Value, DuplicataINSTRUCOES_DST.VALUE , 'INSTRUCOES', [comp17]);
          IMPRESSORA.ImpF(DuplicataSACADO_ALT.Value, DuplicataSACADO_DST.VALUE , 'SACADO', [comp17]);
          IMPRESSORA.ImpF(DuplicataEXTENSO_ALT.Value, DuplicataEXTENSO_DST.VALUE , 'EXTENSO', [comp17]);

          IMPRESSORA.Novapagina ;

          IMPRESSORA.ImpF(DuplicataVENCIMENTO_ALT.Value, DuplicataVENCIMENTO_DST.VALUE , 'VENCIMENTO', [comp17]);
     end;

     IMPRESSORA.FECHAR ;
end;

procedure TFrmConfigurarDuplicatas.CmbLppEnter(Sender: TObject);
begin
     Corfundo ( Sender );
     (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
     (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmConfigurarDuplicatas.dxDBEdit2Enter(Sender: TObject);
begin
     Corfundo ( Sender );    
end;

procedure TFrmConfigurarDuplicatas.dxDBEdit2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorfundo ( Sender );
end;

procedure TFrmConfigurarDuplicatas.btnConfigurarClick(Sender: TObject);
begin
  with dmCadastros2 do
  begin
    Duplicata.close;
    Duplicata.parambyname('cnpj').value := dmApp.cnpj;
    Duplicata.open;
             
    //---------------As vezes acontece um erro do rpt perder essa propriedade-----------------
    rptDuplicata.Template.DatabaseSettings.name := DuplicataCNPJ.asstring;
    rptDuplicata.Template.LoadFromDatabase;
    Designer.Show;
    Duplicata.edit;
  end;
end;

procedure TFrmConfigurarDuplicatas.ActAlterarExecute(Sender: TObject);
begin
    dmCadastros2.Duplicata.Edit;
end;

end.
