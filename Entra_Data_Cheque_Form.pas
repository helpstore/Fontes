unit Entra_Data_Cheque_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmEntraDataCheque = class(TForm)
    pnlClient: TPanel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    BtnOk: TcxButton;
    ActOk: TAction;
    RxLabel3: TcxLabel;
    LblTitulo: TcxLabel;
    RxLabel1: TcxLabel;
    EdCheque: TdxEdit;
    RxLabel2: TcxLabel;
    EdAgencia: TdxEdit;
    RxLabel4: TcxLabel;
    EdBanco: TdxEdit;
    RxLabel5: TcxLabel;
    EdConta: TdxEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntraDataCheque: TFrmEntraDataCheque;

implementation

uses Funcoes, Application_DM;

{$R *.DFM}

procedure TFrmEntraDataCheque.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraDataCheque.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraDataCheque.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraDataCheque.ActOkExecute(Sender: TObject);
begin
     IF (INI.TEXT = '  /  /  ') OR (INI.TEXT = '  /  /    ')
     THEN BEGIN
          SHOWMESSAGE('Digite a Data do Cheque!');
          ini.setfocus;
     END
     ELSE BEGIN
          IF (EdCheque.TEXT) = ''
          THEN BEGIN
               SHOWMESSAGE('Digite a Data do Cheque!');
               EdCheque.setfocus;
          END
          ELSE BEGIN
               IF (EdConta.TEXT) = ''
               THEN BEGIN
                    SHOWMESSAGE('Digite a Conta do Cliente!');
                    EdConta.setfocus;
               END
               ELSE BEGIN
                    IF (EdBanco.TEXT) = ''
                    THEN BEGIN
                         SHOWMESSAGE('Digite o Banco!');
                         EdBanco.setfocus;
                    END
                    ELSE BEGIN
                         IF (EdAgencia.TEXT) = ''
                         THEN BEGIN
                              SHOWMESSAGE('Digite a Agência!');
                              EdAgencia.setfocus;
                         END
                         ELSE BEGIN
                              Modalresult := mrok ;
                         END;
                    END;
               END;
          END;
     END;
end;

procedure TFrmEntraDataCheque.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntraDataCheque.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntraDataCheque.FormShow(Sender: TObject);
begin
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          pnlClient.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          LblTitulo.Style.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel3.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel1.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel5.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel4.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel2.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;
end;

end.
