 unit Configuraboleto_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, RDprint, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel;

type
  TFrmConfigurarBoletos = class(TForm)
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
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label4: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label5: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    Label6: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    Label11: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    Label10: TcxLabel;
    dxDBEdit7: TdxDBEdit;
    Label8: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    Label7: TcxLabel;
    Label12: TcxLabel;
    dxDBEdit10: TdxDBEdit;
    Label13: TcxLabel;
    dxDBEdit11: TdxDBEdit;
    Label14: TcxLabel;
    dxDBEdit12: TdxDBEdit;
    Label15: TcxLabel;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    Label19: TcxLabel;
    dxDBEdit16: TdxDBEdit;
    Label18: TcxLabel;
    dxDBEdit15: TdxDBEdit;
    Label17: TcxLabel;
    dxDBEdit14: TdxDBEdit;
    Label16: TcxLabel;
    Label20: TcxLabel;
    dxDBEdit18: TdxDBEdit;
    Label21: TcxLabel;
    dxDBEdit19: TdxDBEdit;
    DsBanco: TDataSource;
    Label2: TcxLabel;
    cmbBanco: TdxDBLookupEdit;
    BtnBanco: TcxButton;
    ActLookup: TAction;
    IMPRESSORA: TRDprint;
    Label1: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    Label9: TcxLabel;
    dxDBEdit20: TdxDBEdit;
    Label22: TcxLabel;
    dxDBEdit21: TdxDBEdit;
    Label23: TcxLabel;
    dxDBEdit22: TdxDBEdit;
    Label24: TcxLabel;
    dxDBEdit23: TdxDBEdit;
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
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure BtnBancoClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure ActListagemExecute(Sender: TObject);
    procedure cmbBancoEnter(Sender: TObject);
    procedure cmbBancoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmConfigurarBoletos: TFrmConfigurarBoletos;

implementation

uses Cadastros_DM, Listagens_DM, Application_DM, Main, Usuarios_DM, Funcoes,
  Bancos_Form;

{$R *.DFM}

procedure TFrmConfigurarBoletos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  If DsBanco.DataSet.Tag = 0 Then
     DsBanco.Dataset.Close;
  //
{  If DMCadastros.Tag = 0 Then
     Begin
       DMCadastros.Free;
       DMCadastros := Nil;
     End;}
  //
  If FrmConfigurarBoletos.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmConfigurarBoletos := Nil;
end;

procedure TFrmConfigurarBoletos.ActIncluirExecute(Sender: TObject);
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
  cmbBanco.SetFocus;
end;

procedure TFrmConfigurarBoletos.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmConfigurarBoletos.ActPostExecute(Sender: TObject);
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
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
end;

procedure TFrmConfigurarBoletos.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmConfigurarBoletos.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DsBanco.DataSet.Active) Then
       DsBanco.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;
       
    (Datasource.DataSet as TIBDataset).FetchAll;
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
  Datasource.AutoEdit := ActAlterar.Enabled;
  cmbBanco.SetFocus;
end;

procedure TFrmConfigurarBoletos.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConfigurarBoletos.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmConfigurarBoletos.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConfigurarBoletos.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmConfigurarBoletos.DataSourceStateChange(Sender: TObject);
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

procedure TFrmConfigurarBoletos.ActFecharExecute(Sender: TObject);
begin
  If FrmConfigurarBoletos.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmConfigurarBoletos.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount); 
end;

procedure TFrmConfigurarBoletos.BtnBancoClick(Sender: TObject);
begin
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmBancos', False);
  { * * * * * }

{  If DmCadastros = Nil
  then
      DmCadastros := TDmCadastros.Create(Self)
  else
      DmCadastros.Tag := DmCadastros.Tag + 1;}

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag + 1;

  //
  FrmBancos := TFrmBancos.Create(Self);
  FrmBancos.ShowModal;
  //
  Datasource.DataSet.FieldByName('BANCO').asString := FrmMain.Codigo_Str;

  FrmBancos.Free;
  FrmBancos := Nil;

  DmCadastros.Tag := DmCadastros.Tag - 1;

  DsBanco.DataSet.Tag := DsBanco.DataSet.Tag - 1;
  //
  cmbBanco.SetFocus;
end;

procedure TFrmConfigurarBoletos.ActLookupExecute(Sender: TObject);
begin
    If FrmConfigurarBoletos.ActiveControl = cmbBanco Then
       btnBanco.OnClick(btnBanco);
end;

procedure TFrmConfigurarBoletos.ActListagemExecute(Sender: TObject);
begin
     With DmCadastros do
     begin
          IMPRESSORA.TamanhoQteLinhas := BoletoBancarioTAMANHOPAGINA.Value ;

          If TRIM(BoletoBancarioPORTA_IMPRESSORA.Value) <> ''
          THEN BEGIN
               IMPRESSORA.PortaComunicacao := BoletoBancarioPORTA_IMPRESSORA.Value ;
               IMPRESSORA.OpcoesPreview.Preview := FALSE ;
          END;

          IF BoletoBancarioLPP.Value = 6
          THEN
              IMPRESSORA.TamanhoQteLPP :=  SEIS
          ELSE
              IMPRESSORA.TamanhoQteLPP :=  OITO ;


          IMPRESSORA.ABRIR  ;

          IMPRESSORA.ImpF(BoletoBancarioVENCIMENTO_ALT.Value, BoletoBancarioVENCIMENTO_DST.VALUE , 'VENCIMENTO', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(BoletoBancarioCIDADE_ALT.Value, BoletoBancarioCIDADE_DST.VALUE , 'CIDADE', [comp17, NEGRITO]);
          IMPRESSORA.ImpF(BoletoBancarioDATA_ALT.Value, BoletoBancarioDATA_DST.VALUE , 'DATA', [comp17]);
          IMPRESSORA.ImpF(BoletoBancarioDOCUMENTO_ALT.Value, BoletoBancarioDOCUMENTO_DST.VALUE , 'DOCUMENTO', [comp17]);
          IMPRESSORA.ImpF(BoletoBancarioESPECIE_ALT.Value, BoletoBancarioESPECIE_DST.VALUE , 'ESPECIE', [comp17]);
          IMPRESSORA.ImpF(BoletoBancarioACEITE_ALT.Value, BoletoBancarioACEITE_DST.VALUE , 'AC', [comp17]);
          IMPRESSORA.ImpF(BoletoBancarioDTPROCESSAMENTO_ALT.Value, BoletoBancarioDTPROCESSAMENTO_DST.VALUE , 'DT PROC', [comp17]);
          IMPRESSORA.ImpVal(BoletoBancarioVALOR_ALT.Value, BoletoBancarioVALOR_DST.VALUE ,'###,###,##0.00', 10, [comp17,NEGRITO]);
          IMPRESSORA.ImpF(BoletoBancarioINSTRUCOES_ALT.Value, BoletoBancarioINSTRUCOES_DST.VALUE , 'INSTRUCOES', [comp17]);
          IMPRESSORA.ImpF(BoletoBancarioSACADO_ALT.Value, BoletoBancarioSACADO_DST.VALUE , 'SACADO', [comp17]);

          IMPRESSORA.Novapagina ;

          IMPRESSORA.ImpF(BoletoBancarioVENCIMENTO_ALT.Value, BoletoBancarioVENCIMENTO_DST.VALUE , 'VENCIMENTO', [comp17]);
     end;

     IMPRESSORA.FECHAR ;

end;

procedure TFrmConfigurarBoletos.cmbBancoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmConfigurarBoletos.cmbBancoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
