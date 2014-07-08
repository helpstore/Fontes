unit Imp_Receita_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, DBCtrls, ComCtrls, RDprint,
    Buttons, dxBarDBNav, dxBar, cxGraphics, cxControls,
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
  TfrmImprimeReceita = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    DataSource: TDataSource;
    cmbPraga: TdxDBLookupEdit;
    Label1: TcxLabel;
    cmbCutura: TdxDBLookupEdit;
    Label2: TcxLabel;
    edtNReceita: TdxDBEdit;
    edtNomeComum: TcxLabel;
    dsTecnico: TDataSource;
    dsPraga: TDataSource;
    dsCultura: TDataSource;
    btnTecnico: TcxButton;
    cmbTecnico: TdxDBLookupEdit;
    Label5: TcxLabel;
    ActLookup: TAction;
    BarMgr: TdxBarManager;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    ActSalvar: TAction;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtVenctoEnter(Sender: TObject);
    procedure edtVenctoExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnTecnicoClick(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimeReceita: TfrmImprimeReceita;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, LinhaR  : Integer ;
  Total: Real ;
  SqlOriginal : string;

implementation

uses Cadastros_DM, Application_DM, Localizar_ContaCod, Plano_DM, Funcoes,
  Usuarios_DM, Financeiro_Dm, Cadastros_Dm2, Servicos_DM, Mecanicos_Form,
  Main, PragasDef_Form, CulturasDef_Form;


{$R *.DFM}
procedure TfrmImprimeReceita.ActFecharExecute(Sender: TObject);
begin
   Modalresult := mrCancel ;
end;

procedure TfrmImprimeReceita.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  DmServicos.SelTecnico.Close;
  DmServicos.SelTecnico.Open;

  dmCadastros2.QryPragasRec.Close;
  dmCadastros2.QryPragasRec.ParamByName('codigo').value := dmCadastros2.ReceituarioCOD_DEFENSIVO.value;
  dmCadastros2.QryPragasRec.Open;

  dmCadastros2.QryCulturasRec.Close;
  dmCadastros2.QryCulturasRec.ParamByName('codigo').value := dmCadastros2.ReceituarioCOD_DEFENSIVO.value;
  dmCadastros2.QryCulturasRec.Open;
end;

procedure TfrmImprimeReceita.edtVenctoEnter(Sender: TObject);
begin
   CORFUNDO ( SENDER );
end;

procedure TfrmImprimeReceita.edtVenctoExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER )
end;

procedure TfrmImprimeReceita.ActImprimirExecute(Sender: TObject);
var
  Documentos : string;
begin


end;

procedure TfrmImprimeReceita.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmImprimeReceita.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmImprimeReceita.btnTecnicoClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMecanicos', False);

  FrmMecanicos := TFrmMecanicos.Create(Application);
  FrmMecanicos.Showmodal ;
  with DmServicos do
  begin
    SelTecnico.Close;
    SelTecnico.Open;
    SelTecnico.fetchAll;
  end;
  Datasource.DataSet.FieldByName('COD_TECNICO').asInteger := FrmMain.Codigo_Int;
  cmbTecnico.SetFocus;
end;

procedure TfrmImprimeReceita.ActLookupExecute(Sender: TObject);
begin
  If (FrmImprimeReceita.ActiveControl = cmbTecnico) Then
    btnTecnico.OnClick(btnTecnico);
end;

procedure TfrmImprimeReceita.BtnCancelarClick(Sender: TObject);
begin
   if (dmCadastros2.EdtReceita.State in [dsEdit, dsInsert]) then
     dmCadastros2.EdtReceita.Cancel
   else
     exit;

   Application.MessageBox('Alterações canceladas corretamente','Aviso',mb_ok+mb_iconinformation);
end;

procedure TfrmImprimeReceita.ActSalvarExecute(Sender: TObject);
begin
  try
   if (dmCadastros2.EdtReceita.State in [dsEdit, dsInsert]) then
     dmCadastros2.EdtReceita.Post
   else
     exit;

   Application.MessageBox('Alterações salvas corretamente','Aviso',mb_ok+mb_iconinformation);
 except
   On E:EDataBaseError Do
   begin
     Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message),'Aviso',mb_ok+mb_iconerror);
     exit
   end
   else
   begin
     Application.Messagebox('Ocorreu um erro não idenficado pelo sistema. Contate suporte','Aviso',mb_ok+mb_iconerror);
     exit;
   end;
 end;
end;

end.
