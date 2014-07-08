unit Dados_Devolucao_Form;

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
  TFrmDadosDevolucao = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Data: TdxDateEdit;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Label2: TcxLabel;
    Valor: TdxCurrencyEdit;
    Label6: TcxLabel;
    HISTORICO: TdxEdit;
    Label7: TcxLabel;
    EdNome: TdxEdit;
    Label8: TcxLabel;
    EdDocumento: TdxEdit;
    Label9: TcxLabel;
    EdParcela: TdxEdit;
    edvencto: TdxEdit;
    Label10: TcxLabel;
    Panel1: TPanel;
    RzBitBtn1: TcxButton;
    DsMotivo: TDataSource;
    cmbMotivo: TdxLookupEdit;
    Label12: TcxLabel;
    Label1: TcxLabel;
    EdConta: TdxEdit;
    LBLVEZES: TcxLabel;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DataExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor_Total: Extended ;
  end;

var
  FrmDadosDevolucao: TFrmDadosDevolucao;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
  SelFin_Cheques_Form;

{$R *.DFM}

procedure TFrmDadosDevolucao.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmDadosDevolucao.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosDevolucao.ActOkExecute(Sender: TObject);
begin
     IF ((Data.Text <> '  /  /  ') and (Data.Text <> '  /  /    '))
     THEN BEGIN
          IF cmbMotivo.Text <> ''
          THEN BEGIN
               Modalresult := mrok ;
          END
          ELSE BEGIN
               MessageDlg('Digite o Motivo!',MtError,[MbOk],0);
               cmbMotivo.SetFocus ;
               Abort;
          END;
     END
     ELSE BEGIN
          MessageDlg('Digite a Data!',MtInformation,[MbOk],0);
          Data.SetFocus ;
          Abort;
     END;
end;

procedure TFrmDadosDevolucao.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
end;

procedure TFrmDadosDevolucao.pagoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmDadosDevolucao.HISTORICOExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmDadosDevolucao.DataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

end.
