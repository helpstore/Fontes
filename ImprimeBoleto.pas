unit ImprimeBoleto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor,  dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, DBCtrls, ComCtrls, RDprint,
    cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,    
  cxCheckBox, cxGroupBox;

type
  TfrmImprimeBoleto = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActImprimir: TAction;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    RzGroupBox1: TcxGroupBox;
    Label1: TcxLabel;
    lblCliente: TcxLabel;
    lblVlrNominal: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    lblCodReceber: TcxLabel;
    Label8: TcxLabel;
    lblDtVencto: TcxLabel;
    lblVlrCorrigido: TcxLabel;
    Label4: TcxLabel;
    RzGroupBox2: TcxGroupBox;
    edtVencto: TdxDateEdit;
    Label2: TcxLabel;
    ckVlrNominal: tcxCheckBox;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtVenctoEnter(Sender: TObject);
    procedure edtVenctoExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimeBoleto: TfrmImprimeBoleto;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, LinhaR  : Integer ;
  Total: Real ;
  SqlOriginal : string;

implementation

uses Cadastros_DM, Application_DM, Localizar_ContaCod, Plano_DM, Funcoes,
  Usuarios_DM, Financeiro_Dm;


{$R *.DFM}
procedure TfrmImprimeBoleto.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmImprimeBoleto.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     sqlOriginal := dmfinanceiro.Contas_Receber.selectsql.text;
end;

procedure TfrmImprimeBoleto.edtVenctoEnter(Sender: TObject);
begin
   CORFUNDO ( SENDER );
end;

procedure TfrmImprimeBoleto.edtVenctoExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER )
end;

procedure TfrmImprimeBoleto.ActImprimirExecute(Sender: TObject);
var
  Documentos : string;
begin
    if (edtVencto.date <= 0)then
    begin
      application.messagebox('Data de vencimento definida para o título é inválida','Aviso',mb_iconinformation);
      edtVencto.setfocus;
      exit;
    end;
    modalresult := mrOk;
end;

procedure TfrmImprimeBoleto.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmImprimeBoleto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
