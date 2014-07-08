unit Entra_Dados_Movtos_Pdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,  dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
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
  TFrmEntraDados_Movtos_Pdv = class(TForm)
    pnlClient: TPanel;
    b2: TBevel;
    EdData: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    BtnOk: TcxButton;
    ActOk: TAction;
    RxLabel3: TcxLabel;
    LblTitulo: TcxLabel;
    RxLabel1: TcxLabel;
    EdDocumento: TdxEdit;
    RxLabel4: TcxLabel;
    EdValor: TdxCurrencyEdit;
    EdTipo: TdxPickEdit;
    RxLabel2: TcxLabel;
    RxLabel5: TcxLabel;
    EDHISTORICO: TdxEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure EdDataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure EdDataEnter(Sender: TObject);
    procedure EdDataExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEntraDados_Movtos_Pdv: TFrmEntraDados_Movtos_Pdv;

implementation

uses Funcoes, Application_DM;

{$R *.DFM}

procedure TFrmEntraDados_Movtos_Pdv.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmEntraDados_Movtos_Pdv.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmEntraDados_Movtos_Pdv.EdDataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmEntraDados_Movtos_Pdv.ActOkExecute(Sender: TObject);
begin
     IF (EDDATA.TEXT = '  /  /  ') OR (EDDATA.TEXT = '  /  /    ')
     THEN BEGIN
          SHOWMESSAGE('Digite a Data!');
          EDDATA.setfocus;
     END
     ELSE BEGIN
          IF (EdDocumento.TEXT) = ''
          THEN BEGIN
               SHOWMESSAGE('Digite o Documento!');
               EdDocumento.setfocus;
          END
          ELSE BEGIN
               IF (EdValor.VALUE) = 0
               THEN BEGIN
                    SHOWMESSAGE('Digite o Valor!');
                    EdValor.setfocus;
               END
               ELSE BEGIN
                    IF EDTIPO.TEXT = ''
                    THEN BEGIN
                         SHOWMESSAGE('Digite o Tipo!');
                         EdTipo.setfocus;
                    END
                    ELSE BEGIN
                         IF ( EDTIPO.TEXT <> 'C' ) AND ( EDTIPO.TEXT <> 'D' )
                         THEN BEGIN
                              SHOWMESSAGE('Digite um Tipo Válido!');
                              EdTipo.setfocus;
                         END
                         ELSE BEGIN
                              Modalresult := mrok ;
                         END;
                    END;
               END;
          END;
     END;
end;

procedure TFrmEntraDados_Movtos_Pdv.EdDataEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmEntraDados_Movtos_Pdv.EdDataExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmEntraDados_Movtos_Pdv.FormShow(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          pnlClient.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          LblTitulo.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel3.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel1.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel4.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel2.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel5.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     eddata.Enabled   := false ;
     eddata.Date      := dmapp.DataCaixa ;
     EDDOCUMENTO.SetFocus ;
end;

end.
