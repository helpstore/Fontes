 unit Tipo_Impressora_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
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
  TFrmTipoImpressora = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Label7: TcxLabel;
    Panel1: TPanel;
    BtnOk: TcxButton;
    CkMatricial: TRadioButton;
    CkJato: TRadioButton;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DataExit(Sender: TObject);
    procedure AcrescimoExit(Sender: TObject);
    procedure CkMatricialEnter(Sender: TObject);
    procedure CkMatricialExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTipoImpressora: TFrmTipoImpressora;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm;

{$R *.DFM}

procedure TFrmTipoImpressora.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmTipoImpressora.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTipoImpressora.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmTipoImpressora.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     CkMatricial.SetFocus ;
end;

procedure TFrmTipoImpressora.pagoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmTipoImpressora.HISTORICOExit(Sender: TObject);
begin

     TIRACORFUNDO( SENDER );
end;

procedure TFrmTipoImpressora.DataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmTipoImpressora.AcrescimoExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );

end;

procedure TFrmTipoImpressora.CkMatricialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmTipoImpressora.CkMatricialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
