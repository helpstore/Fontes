unit GerarFaturamentos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,   cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar,   cxMemo;

type
  TfrmGerarFaturamentos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TLabel;
    ANDA: TProgressBar;
    RzMemo1: tcxMemo;
    edtVencto: tcxdateEdit;
    Label2: TLabel;
    RzBitBtn2: TcxButton;
    RzBitBtn1: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edCodigoInicialEnter(Sender: TObject);
    procedure edCodigoInicialExit(Sender: TObject);
    procedure RzBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  frmGerarFaturamentos: TfrmGerarFaturamentos;
  Linha, Pagina: Integer;

implementation

uses  Usuarios_DM, Application_DM, Funcoes, Cadastros_Dm2;

{$R *.DFM}

procedure TfrmGerarFaturamentos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TfrmGerarFaturamentos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfrmGerarFaturamentos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmGerarFaturamentos.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  edtVencto.date := Date + 30;
end;

procedure TfrmGerarFaturamentos.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TfrmGerarFaturamentos.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TfrmGerarFaturamentos.RzBitBtn1Click(Sender: TObject);
begin
 try
   with dmCadastros2 do
   begin
     ANDA.Max := SelMensalidades.RecordCount;
     ANDA.min := 1;
     SelMensalidades.DisableControls;
     SelMensalidades.First;
     while not SelMensalidades.eof do
     begin
       if ((SelMensalidadesSELECIONADO.asString = 'S') and (dmCadastros2.SelMensalidadesFATURAMENTO.AsInteger <= 0))  then
       begin
         DmCadastros2.Gerar_Venda_Mensalidade(DmApp.Cnpj,DmCadastros2.SelMensalidadesMs_Codigo.Value,edtVencto.date);
       end;

       dmCadastros2.SelMensalidades.next;
       anda.Position := anda.Position + 1;
     end;
     dmCadastros2.SelMensalidades.EnableControls;

   end;
   Application.MessageBox('Faturamentos gerados com sucesso','Aviso',mb_iconinformation+mb_ok);
 except
   On E:Exception Do
   begin
      MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
   end
 end;
end;

end.
