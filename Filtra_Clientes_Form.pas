 unit Filtra_Clientes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, cxGraphics, cxControls,
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
  TFrmFiltraClientes = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    dsAtividades: TDataSource;
    Label4: TcxLabel;
    cmbCidade: TdxLookupEdit;
    Label5: TcxLabel;
    cmbAtividade: TdxLookupEdit;
    edtCodigo: TdxCurrencyEdit;
    Label2: TcxLabel;
    edtNome: TdxEdit;
    Label1: TcxLabel;
    dsCidades: TDataSource;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFiltraClientes: TFrmFiltraClientes;

implementation

uses Cadastros_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmFiltraClientes.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltraClientes.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltraClientes.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraClientes.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmFiltraClientes.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  dsAtividades.DataSet.Open;
  dsCidades.DataSet.Open;
//
end;

procedure TFrmFiltraClientes.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFiltraClientes.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

end.
