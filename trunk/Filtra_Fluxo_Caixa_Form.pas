 unit Filtra_Fluxo_Caixa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, DBCtrls, ComCtrls, RDprint,
  IBCustomDataSet, IBQuery, Grids, DBGrids, cxGraphics, cxControls,
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
  TFiltra_Fluxo_Caixas_Frm = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Actions: TActionList;
    ActFechar: TAction;
    BtnImprimir: TcxButton;
    ActOk: TAction;
    lblini: TcxLabel;
    GRID: TDBGrid;
    DSource: TDataSource;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Filtra_Fluxo_Caixas_Frm: TFiltra_Fluxo_Caixas_Frm;

implementation

uses Cadastros_DM,
     Application_DM,
     Plano_DM,
     Funcoes,
     Usuarios_DM;


{$R *.DFM}


procedure TFiltra_Fluxo_Caixas_Frm.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFiltra_Fluxo_Caixas_Frm.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFiltra_Fluxo_Caixas_Frm.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFiltra_Fluxo_Caixas_Frm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DMPLANO.Free   ;
     DMPLANO := nIL ;

     Action := CaFree ;
     Filtra_Fluxo_Caixas_Frm := Nil;
end;

procedure TFiltra_Fluxo_Caixas_Frm.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
end;

procedure TFiltra_Fluxo_Caixas_Frm.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFiltra_Fluxo_Caixas_Frm.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFiltra_Fluxo_Caixas_Frm.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFiltra_Fluxo_Caixas_Frm.ActOkExecute(Sender: TObject);
var
   DATA, FINAL: TDateTime;
   SALDO_INICIAL, VENDAS_VISTA, RECEBER, CARTAO, CHQ_PRAZO,
   PAGAR, SALDO: Real;
begin
     TRY
        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        dmapp.Transaction.CommitRetaining ;

        DATA  := Ini.DATE ;
        FINAL := Fim.Date ;

        SALDO_INICIAL := 0;
        VENDAS_VISTA  := 0;
        RECEBER       := 0;
        CARTAO        := 0;
        CHQ_PRAZO     := 0;
        PAGAR         := 0;
        SALDO         := 0;

        WITH DMPLANO DO
        BEGIN
             WHILE ( DATA <= FINAL ) DO
             BEGIN
                  //CARTAO
                  SOMA_CARTAO_FLUXO.CLOSE ;

                  SOMA_CARTAO_FLUXO.ParamByName ('CNPJ' ).AsString := DMAPP.CNPJ    ;
                  SOMA_CARTAO_FLUXO.ParamByName ('DATA' ).AsDate   := DATA          ;

                  SOMA_CARTAO_FLUXO.ExecProc ;

                  IF SOMA_CARTAO_FLUXO.ParamByName('SOMA').ISnULL
                  THEN BEGIN
                       CARTAO := 0 ;
                  END
                  ELSE BEGIN
                       CARTAO := SOMA_CARTAO_FLUXO.ParamByName('SOMA').Value ;
                  END;

                  CRIA_CTB_FLUXO_CAIXA.CLOSE ;

                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('CNPJ'         ).AsString := DMAPP.CNPJ    ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('DATA'         ).AsDate   := DATA          ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('SALDO_INICIAL').AsFloat  := SALDO_INICIAL ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('VENDAS_VISTA' ).AsFloat  := VENDAS_VISTA  ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('RECEBER'      ).AsFloat  := RECEBER       ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('CARTAO'       ).AsFloat  := CARTAO        ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('CHQ_PRAZO'    ).AsFloat  := CHQ_PRAZO     ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('PAGAR'        ).AsFloat  := PAGAR         ;
                  CRIA_CTB_FLUXO_CAIXA.ParamByName ('SALDO'        ).AsFloat  := SALDO         ;

                  CRIA_CTB_FLUXO_CAIXA.ExecProc ;

                  DATA := DATA + 1;
             END;

             DmApp.TransactionProc.Commit ;

             Ctb_Fluxo_Caixa.Close ;

             Ctb_Fluxo_Caixa.ParamByName ('CNPJ').AsString := DMAPP.CNPJ ;
             Ctb_Fluxo_Caixa.ParamByName ('DINI').AsDate   := INI.DATE   ;
             Ctb_Fluxo_Caixa.ParamByName ('DFIM').AsDate   := FIM.DATE   ;

             Ctb_Fluxo_Caixa.Open  ;
        END;

     except
        DmApp.TransactionProc.Rollback ;
     end;
end;

end.
