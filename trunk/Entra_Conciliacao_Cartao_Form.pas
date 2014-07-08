unit Entra_Conciliacao_Cartao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  dxDBEdtr, dxDBELib, Db, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmConciliacaoCartao = class(TForm)
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    ActSomar: TAction;
    DsConta: TDataSource;
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label3: TcxLabel;
    Label1: TcxLabel;
    LblSoma: TcxLabel;
    Label2: TcxLabel;
    DATA: TdxDateEdit;
    BtnConciliar: TcxButton;
    cmbConta: TdxLookupEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DATAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DATAEnter(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConciliacaoCartao: TFrmConciliacaoCartao;

implementation

uses Funcoes, Application_DM, Financeiro_Dm;

{$R *.DFM}

procedure TFrmConciliacaoCartao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmConciliacaoCartao.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmConciliacaoCartao.DATAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConciliacaoCartao.ActOkExecute(Sender: TObject);
begin
     if cmbConta.text = '' then
     begin
       Application.MessageBox('Selecione a Conta','Aviso',mb_ok + mb_iconerror);
       cmbConta.Setfocus ;
     end
     else
     begin
       DMApp.PROCESSA_CONCILIACAO_CARTAO ( DATA.date, cmbConta.lookupkeyvalue );

       Modalresult := mrok ;
     end;
end;

procedure TFrmConciliacaoCartao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  DsConta.dataset.Open ;
end;

procedure TFrmConciliacaoCartao.DATAEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmConciliacaoCartao.DATAExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmConciliacaoCartao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DsConta.dataset.Close ;
end;

procedure TFrmConciliacaoCartao.FormCreate(Sender: TObject);
var
  soma : real;
begin
  Soma := DMApp.Soma_Conciliados_Data;
  LblSoma.CAPTION := FORMATFLOAT ( '###,##0.00', Soma );
end;

end.
