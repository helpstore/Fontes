unit ConfiguraPerfil_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, RDprint,   cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxPC, cxLabel;

type
  TFrmConfigurarPerfil = class(TForm)
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
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnListagem: TdxBarButton;
    ActListagem: TAction;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    dxDBEdit12: TdxDBEdit;
    dxPageControl1: TcxPageControl;
    tbsCondicional: TcxTabSheet;
    Label3: TcxLabel;
    Label7: TcxLabel;
    Label12: TcxLabel;
    Label16: TcxLabel;
    Label20: TcxLabel;
    Label9: TcxLabel;
    Label4: TcxLabel;
    Label22: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
    dxDBEdit14: TdxDBEdit;
    dxDBEdit18: TdxDBEdit;
    dxDBEdit20: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit21: TdxDBEdit;
    tbsPedido: TcxTabSheet;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label8: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label13: TcxLabel;
    Label14: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    dxDBEdit11: TdxDBEdit;
    cbEtiqueta: TdxDBCheckEdit;
    tbsIF: TcxTabSheet;
    Label32: TcxLabel;
    Label33: TcxLabel;
    Label34: TcxLabel;
    Label35: TcxLabel;
    Label36: TcxLabel;
    Label23: TcxLabel;
    Label24: TcxLabel;
    Label27: TcxLabel;
    CmbT01: TdxDBPickEdit;
    dxDBPickEdit1: TdxDBPickEdit;
    dxDBPickEdit2: TdxDBPickEdit;
    dxDBPickEdit3: TdxDBPickEdit;
    dxDBPickEdit4: TdxDBPickEdit;
    dxDBPickEdit5: TdxDBPickEdit;
    dxDBPickEdit6: TdxDBPickEdit;
    dxDBPickEdit7: TdxDBPickEdit;
    tbsLeitor: TcxTabSheet;
    Label28: TcxLabel;
    tbsOutros: TcxTabSheet;
    Label15: TcxLabel;
    Label17: TcxLabel;
    Label18: TcxLabel;
    Label19: TcxLabel;
    Label21: TcxLabel;
    Label25: TcxLabel;
    Label26: TcxLabel;
    Label41: TcxLabel;
    dxDBEdit13: TdxDBEdit;
    dxDBEdit15: TdxDBEdit;
    dxDBEdit16: TdxDBEdit;
    dxDBEdit17: TdxDBEdit;
    dxDBEdit19: TdxDBEdit;
    dxDBEdit22: TdxDBEdit;
    dxDBEdit23: TdxDBEdit;
    dxDBCheckEdit1: TdxDBCheckEdit;
    dxDBEdit28: TdxDBEdit;
    Label37: TcxLabel;
    dxDBEdit24: TdxDBEdit;
    Button1: TcxButton;
    dxDBCheckEdit2: TdxDBCheckEdit;
    dxDBCheckEdit3: TdxDBCheckEdit;
    Label38: TcxLabel;
    dxDBEdit25: TdxDBEdit;
    dxDBCheckEdit4: TdxDBCheckEdit;
    Label39: TcxLabel;
    dxDBEdit26: TdxDBEdit;
    dxDBCheckEdit5: TdxDBCheckEdit;
    dxDBCheckEdit6: TdxDBCheckEdit;
    tbsBalanca: TcxTabSheet;
    Label40: TcxLabel;
    dxDBPickEdit20: TdxDBPickEdit;
    Panel3: TPanel;
    Label47: TcxLabel;
    Label48: TcxLabel;
    Label49: TcxLabel;
    Label50: TcxLabel;
    Label51: TcxLabel;
    dxDBPickEdit21: TdxDBPickEdit;
    dxDBPickEdit22: TdxDBPickEdit;
    dxDBPickEdit23: TdxDBPickEdit;
    dxDBPickEdit24: TdxDBPickEdit;
    dxDBPickEdit25: TdxDBPickEdit;
    Panel4: TPanel;
    Label52: TcxLabel;
    Label53: TcxLabel;
    Label54: TcxLabel;
    Label55: TcxLabel;
    Label56: TcxLabel;
    dxDBPickEdit26: TdxDBPickEdit;
    dxDBPickEdit27: TdxDBPickEdit;
    dxDBPickEdit28: TdxDBPickEdit;
    dxDBPickEdit29: TdxDBPickEdit;
    dxDBPickEdit30: TdxDBPickEdit;
    dxDBPickEdit31: TdxDBPickEdit;
    dxTabSheet1: TcxTabSheet;
    Panel6: TPanel;
    Label59: TcxLabel;
    Label60: TcxLabel;
    Label61: TcxLabel;
    Label62: TcxLabel;
    Label63: TcxLabel;
    dxDBPickEdit32: TdxDBPickEdit;
    dxDBPickEdit33: TdxDBPickEdit;
    dxDBPickEdit34: TdxDBPickEdit;
    dxDBPickEdit35: TdxDBPickEdit;
    dxDBPickEdit36: TdxDBPickEdit;
    dxDBPickEdit37: TdxDBPickEdit;
    Label64: TcxLabel;
    dxDBCheckEdit7: TdxDBCheckEdit;
    dxDBCheckEdit8: TdxDBCheckEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbBancoEnter(Sender: TObject);
    procedure cmbBancoExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Retorno: Integer;
  end;

var
  FrmConfigurarPerfil: TFrmConfigurarPerfil;

  function Daruma_FI_LerAliquotasComIndice(AliquotasComIndice: String ): Integer; StdCall; External 'Daruma32.dll';

implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes ;

{$R *.DFM}

procedure TFrmConfigurarPerfil.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     FrmConfigurarPerfil := Nil;
end;

procedure TFrmConfigurarPerfil.ActIncluirExecute(Sender: TObject);
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

procedure TFrmConfigurarPerfil.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmConfigurarPerfil.ActPostExecute(Sender: TObject);
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

procedure TFrmConfigurarPerfil.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmConfigurarPerfil.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
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
end;

procedure TFrmConfigurarPerfil.FormCreate(Sender: TObject);
begin
  //
  ActListagem.Hint := ActListagem.Hint + LblTitulo.Caption + ' [F5]';
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConfigurarPerfil.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConfigurarPerfil.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmConfigurarPerfil.DataSourceStateChange(Sender: TObject);
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

procedure TFrmConfigurarPerfil.ActFecharExecute(Sender: TObject);
begin
  If FrmConfigurarPerfil.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmConfigurarPerfil.cmbBancoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmConfigurarPerfil.cmbBancoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmConfigurarPerfil.Button1Click(Sender: TObject);
var
 Str_Informacao: String;
 Int_Retorno: Integer;
begin

 SetLength (Str_Informacao,300);

 Int_Retorno := Daruma_FI_LerAliquotasComIndice(Str_Informacao);

 Showmessage(trim(Str_Informacao));
end;

end.
