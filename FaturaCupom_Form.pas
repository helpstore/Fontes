 unit FaturaCupom_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Grids, DBGrids, Buttons,
    Mask, DBCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, cxLabel;

type
  TFrmFaturaCupom = class(TForm)
    Painel: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    ActCalculadora: TAction;
    DataSource: TDataSource;
    PnTotal: TPanel;
    RxLabel3: TcxLabel;
    PNDINHEIRO: TPanel;
    RxLabel4: TcxLabel;
    RxLabel5: TcxLabel;
    PNCHEQUE: TPanel;
    RxLabel6: TcxLabel;
    PNCARTAO: TPanel;
    RxLabel7: TcxLabel;
    RxLabel8: TcxLabel;
    PNCONVENIO: TPanel;
    EdDinheiro: TDBEdit;
    EDCHEQUE: TDBEdit;
    EDCARTAO: TDBEdit;
    EDCONVENIO: TDBEdit;
    ActCancelar: TAction;
    PNTICKET: TPanel;
    EDTICKET: TDBEdit;
    ActCancelarPrazo: TAction;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure EdDinheiroExit(Sender: TObject);
    procedure EdChequeExit(Sender: TObject);
    procedure EdCartaoExit(Sender: TObject);
    procedure EdTicketExit(Sender: TObject);
    procedure EdConvenioExit(Sender: TObject);
    procedure EdDinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure ActCancelarExecute(Sender: TObject);
    procedure EDCHEQUEKeyPress(Sender: TObject; var Key: Char);
    procedure EDCARTAOKeyPress(Sender: TObject; var Key: Char);
    procedure EDTICKETKeyPress(Sender: TObject; var Key: Char);
    procedure EDCONVENIOKeyPress(Sender: TObject; var Key: Char);
    procedure ActCancelarPrazoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Total: Extended  ;
    APRAZO : Boolean ;
  end;

var
  FrmFaturaCupom: TFrmFaturaCupom;

implementation

uses Application_DM,
     Funcoes,
     Main,
     Pdv_DM, Pdv_Frm;

{$R *.DFM}


procedure TFrmFaturaCupom.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFaturaCupom.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFaturaCupom.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmFaturaCupom.ActiveControl = EdDinheiro
     Then begin
          DmPdv.PdvDINHEIRO.Value := Calculadora ;
     end;

     If FrmFaturaCupom.ActiveControl = EdCheque
     Then begin
          DmPdv.PdvCheque.Value := Calculadora ;
     end;

     If FrmFaturaCupom.ActiveControl = EdCartao
     Then begin
          DmPdv.PdvCartao.Value := Calculadora ;
     end;

     If FrmFaturaCupom.ActiveControl = EdTicket
     Then begin
          DmPdv.PdvTicket.Value := Calculadora ;
     end;

     If FrmFaturaCupom.ActiveControl = EdConvenio
     Then begin
          DmPdv.PdvVLR_PARC_LC.Value := Calculadora ;
     end;
end;

procedure TFrmFaturaCupom.FormShow(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnTotal.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PNDINHEIRO.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PNCHEQUE.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PNCARTAO.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PNTICKET.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PNCONVENIO.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          PnTotal.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EdDinheiro.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EDCHEQUE.Font.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EDCARTAO.Font.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EDTICKET.Font.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EDCONVENIO.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     FrmFaturaCupom.Top  := FrmPdv.Lista.Top ;
     FrmFaturaCupom.Left := FrmPdv.PNQNTDE.Left - 10 ;

     IniciaComponentes ( Self as TForm );

     If Not(DataSource.DataSet.Active) Then
        DataSource.DataSet.Open;

     If Not(DataSource.State in [DsEdit]) Then
        DataSource.DataSet.Edit;

     IF DMAPP.TIPO_EMPRESA = 'Padaria'
     THEN BEGIN
          PNCHEQUE.Visible := FALSE ;
          RxLabel5.Visible := FALSE ;
          RxLabel6.Visible := FALSE ;
          RxLabel7.Visible := FALSE ;
          PNCARTAO.Visible := FALSE ;
          PNTICKET.Visible := FALSE ;

          RxLabel8.TOP     := RxLabel5.TOP ;
          PNCONVENIO.TOP   := PNCHEQUE.TOP ;

          IF APRAZO
          THEN BEGIN
               RxLabel8.Caption   := 'A Prazo' ;
               PNDINHEIRO.Visible := false     ;
               RxLabel3.visible   := false     ;
          END
          ELSE BEGIN
               RxLabel3.Caption   := 'A Vista' ;
               PNCONVENIO.Visible := false     ;
               RxLabel8.visible   := false     ;
          END;
     END ;

     if not APRAZO
     then
         edDinheiro.SetFocus
     else
        EDCONVENIO.setfocus ;

end;


procedure TFrmFaturaCupom.ActOkExecute(Sender: TObject);
Var
   Aux: real ;
begin
     With DMPdv do
     begin
          Aux := arredonda(DmPdv.PdvDinheiro.Value + DmPdv.PdvCheque.Value + DmPdv.PdvCartao.Value + DmPdv.PdvTicket.Value + DmPdv.PdvVLR_PARC_LC.Value - DmPdv.PdvTroco.Value , 2) ;
          Aux := Arredonda(DmPdv.PdvTotal.VALUE, 2) ;

          If arredonda(DmPdv.PdvDinheiro.Value + DmPdv.PdvCheque.Value + DmPdv.PdvCartao.Value + DmPdv.PdvTicket.Value + DmPdv.PdvVLR_PARC_LC.Value - DmPdv.PdvTroco.Value , 2)
             <> Arredonda(DmPdv.PdvTotal.VALUE, 2)
          then begin
               MensagemPdv('Valores Não Conferem, Verifique!');
               EdDinheiro.SetFocus ;
               Abort ;
          end
          else
              ModalResult := MrOk ;
     end;
end;

procedure TFrmFaturaCupom.EdDinheiroExit(Sender: TObject);
begin
     If DmPdv.PdvDinheiro.IsNull
     then
         DmPdv.PdvDinheiro.Value := 0;

     IF DMAPP.TIPO_EMPRESA = 'Padaria'
     THEN BEGIN
          If arredonda(DmPdv.PdvDinheiro.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
          then begin
               DmPdv.PdvTroco.Value := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value,2 );
          end
          else begin
               IF arredonda(DmPdv.PdvDinheiro.Value,2) = arredonda(DmPdv.PdvTotal.Value,2)
               THEN BEGIN
                    DmPdv.Pdv.Post ;
                    ModalResult := MrOk ;
               END
               ELSE BEGIN
                    DmPdv.PdvDinheiro.Value  :=  DmPdv.PdvTotal.Value;
                    DmPdv.PdvCheque.Value    := 0 ;
                    DmPdv.PdvCartao.Value    := 0 ;
                    DmPdv.PdvTicket.Value    := 0 ;
                    DmPdv.PdvVLR_PARC_LC.Value  := 0 ;
                    DmPdv.PdvTroco.Value     := 0 ;
                    MensagemPdv('Valores Não Conferem, Verifique!');
                    EdDinheiro.SetFocus ;
               END;
          END;
     END
     ELSE BEGIN
          If arredonda(DmPdv.PdvDinheiro.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
          then begin
               DmPdv.PdvTroco.Value := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value,2 );
          end
          else begin
               DmPdv.PdvCheque.Value := arredonda(DmPdv.PdvTotal.Value,2) - arredonda(DmPdv.PdvDinheiro.Value,2);
          END;
     end;
end;

procedure TFrmFaturaCupom.EdChequeExit(Sender: TObject);
begin
     If DmPdv.PdvCheque.IsNull
     then
         DmPdv.PdvCheque.Value := 0;

     If arredonda(DmPdv.PdvDinheiro.Value + DmPdv.PdvCheque.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
     then begin
          DmPdv.PdvTroco.VAlue := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value - DmPdv.PdvCheque.Value,2);
     end
     else begin
         DmPdv.PdvCartao.Value := arredonda(DmPdv.PdvTotal.Value,2) - arredonda(DmPdv.PdvDinheiro.Value,2) - arredonda(DmPdv.PdvCheque.Value,2);
     end;
end;

procedure TFrmFaturaCupom.EdCartaoExit(Sender: TObject);
Begin
     If DmPdv.PdvCartao.IsNull
     then
         DmPdv.PdvCartao.Value := 0;

     If arredonda(DmPdv.PdvDinheiro.Value + DmPdv.PdvCheque.Value+DmPdv.PdvCartao.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
     then begin
          DmPdv.PdvTroco.VAlue := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value - DmPdv.PdvCheque.Value - DmPdv.PdvCartao.Value,2 );
     end
     else begin
         DmPdv.PdvTicket.Value := arredonda(DmPdv.PdvTotal.Value,2) - arredonda(DmPdv.PdvDinheiro.Value,2) - arredonda(DmPdv.PdvCheque.Value,2) - arredonda(DmPdv.PdvCartao.Value,2);
     end;
end;

procedure TFrmFaturaCupom.EdTicketExit(Sender: TObject);
begin
     If DmPdv.PdvTicket.IsNull
     then
         DmPdv.PdvTicket.Value := 0;

     If arredonda(DmPdv.PdvDinheiro.Value + DmPdv.PdvCheque.Value+DmPdv.PdvCartao.Value+DmPdv.PdvTicket.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
     then begin
          DmPdv.PdvTroco.VAlue := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value - DmPdv.PdvCheque.Value - DmPdv.PdvCartao.Value - DmPdv.PdvTicket.Value,2 );
     end
     else begin
         DmPdv.PdvVLR_PARC_LC.Value := arredonda(DmPdv.PdvTotal.Value,2) - arredonda(DmPdv.PdvDinheiro.Value,2) - arredonda(DmPdv.PdvCheque.Value,2) - arredonda(DmPdv.PdvCartao.Value,2) - arredonda(DmPdv.PdvTicket.Value,2);
     end;
end;

procedure TFrmFaturaCupom.EdConvenioExit(Sender: TObject);
begin
     If DmPdv.PdvVLR_PARC_LC.IsNull
     then
         DmPdv.PdvVLR_PARC_LC.Value := 0;

     If arredonda(DmPdv.PdvDinheiro.Value + DmPdv.PdvCheque.Value + DmPdv.PdvCartao.Value + DmPdv.PdvTicket.Value + DmPdv.PdvVLR_PARC_LC.Value,2) > arredonda(DmPdv.PdvTotal.Value, 2)
     then begin
          if DmApp.Perfil_ComputadorPDV_CONTRA_VALE.value = 'S'
          Then begin
               DmPdv.PdvTroco.VAlue := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value - DmPdv.PdvCheque.Value - DmPdv.PdvCartao.Value - DmPdv.PdvTicket.Value - DmPdv.PdvVLR_PARC_LC.Value, 2 );
          end
          else begin
//               DmPdv.PdvTroco.VAlue := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value - DmPdv.PdvCheque.Value - DmPdv.PdvCartao.Value - DmPdv.PdvTicket.Value - DmPdv.PdvVLR_PARC_LC.Value, 2 );
          end;
     end ;

     If arredonda(DmPdv.PdvDinheiro.Value + DmPdv.PdvCheque.Value + DmPdv.PdvCartao.Value + DmPdv.PdvTicket.Value + DmPdv.PdvVLR_PARC_LC.Value + DmPdv.PdvTroco.Value, 2) = Arredonda(DmPdv.PdvTotal.VALUE, 2)
     then begin
          DmPdv.Pdv.Post ;
          ModalResult := MrOk ;
     end
     else begin
          DmPdv.PdvDinheiro.Value  :=  DmPdv.PdvTotal.Value;
          DmPdv.PdvCheque.Value    := 0 ;
          DmPdv.PdvCartao.Value    := 0 ;
          DmPdv.PdvTicket.Value    := 0 ;
          DmPdv.PdvVLR_PARC_LC.Value  := 0 ;
          DmPdv.PdvTroco.Value     := 0 ;
          MensagemPdv('Valores Não Conferem, Verifique!');
          EdDinheiro.SetFocus ;
     end;
end;

procedure TFrmFaturaCupom.EdDinheiroKeyPress(Sender: TObject; var Key: Char);
begin
     //TROCA A TECLA 191 POR 46 = "."
     IF KEY = ';'
     THEN BEGIN
          KEY := ',' ;
     END;

     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;

     IF DMAPP.TIPO_EMPRESA = 'Padaria'
     THEN BEGIN
          IF ( KEY = #13 )
          THEN BEGIN
             IF not ( DmPdv.Pdv.state in [dsedit,dsinsert]) then
               DmPdv.Pdv.Edit ;
               
             DmPdv.PdvDinheiro.value := strtofloat(EdDinheiro.Text);

             If arredonda(DmPdv.PdvDinheiro.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
             then begin
                  DmPdv.PdvTroco.Value := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value,2 );
                  DmPdv.Pdv.Post ;
                  ModalResult := MrOk ;
             end
             else begin
                  IF arredonda(DmPdv.PdvDinheiro.Value, 2) = arredonda(DmPdv.PdvTotal.Value,2)
                  THEN BEGIN
                       DmPdv.PdvTroco.Value := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value,2 );
                       DmPdv.Pdv.Post ;
                       ModalResult := MrOk ;
                  END
                  ELSE BEGIN
                       DmPdv.PdvDinheiro.Value  :=  DmPdv.PdvTotal.Value;
                       DmPdv.PdvCheque.Value    := 0 ;
                       DmPdv.PdvCartao.Value    := 0 ;
                       DmPdv.PdvTicket.Value    := 0 ;
                       DmPdv.PdvVLR_PARC_LC.Value  := 0 ;
                       DmPdv.PdvTroco.Value     := 0 ;
                       MensagemPdv('Valores Não Conferem, Verifique!');
                       EdDinheiro.SetFocus ;
                  END;
             END;
        END;
     END;
end;

procedure TFrmFaturaCupom.ActCancelarExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFaturaCupom.EDCHEQUEKeyPress(Sender: TObject; var Key: Char);
begin
     //TROCA A TECLA 191 POR 46 = "."
     IF KEY = ';'
     THEN BEGIN
          KEY := ',' ;
     END;

     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;
end;

procedure TFrmFaturaCupom.EDCARTAOKeyPress(Sender: TObject; var Key: Char);
begin
     //TROCA A TECLA 191 POR 46 = "."
     IF KEY = ';'
     THEN BEGIN
          KEY := ',' ;
     END;

     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;
end;

procedure TFrmFaturaCupom.EDTICKETKeyPress(Sender: TObject; var Key: Char);
begin
     //TROCA A TECLA 191 POR 46 = "."
     IF KEY = ';'
     THEN BEGIN
          KEY := ',' ;
     END;

     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;
end;

procedure TFrmFaturaCupom.EDCONVENIOKeyPress(Sender: TObject; var Key: Char);
begin
     //TROCA A TECLA 191 POR 46 = "."
     IF KEY = ';'
     THEN BEGIN
          KEY := ',' ;
     END;

     IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 )
     THEN BEGIN
          KEY := CHAR(8);
     END;

     IF DMAPP.TIPO_EMPRESA = 'Padaria'
     THEN BEGIN
        IF ( KEY = #13 )
        THEN BEGIN
             If arredonda(DmPdv.PdvVLR_PARC_LC.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
             then begin
                  DmPdv.PdvTroco.Value := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvVLR_PARC_LC.Value,2 );
             end
             else begin
                  IF arredonda(DmPdv.PdvVLR_PARC_LC.Value,2) = arredonda(DmPdv.PdvTotal.Value,2)
                  THEN BEGIN
                       DmPdv.Pdv.Post ;
                       ModalResult := MrOk ;
                  END
                  ELSE BEGIN
                       DmPdv.PdvDinheiro.Value     := 0 ;
                       DmPdv.PdvCheque.Value       := 0 ;
                       DmPdv.PdvCartao.Value       := 0 ;
                       DmPdv.PdvTicket.Value       := 0 ;
                       DmPdv.PdvVLR_PARC_LC.Value  := DmPdv.PdvTotal.Value ;
                       DmPdv.PdvTroco.Value        := 0 ;
                       MensagemPdv('Valores Não Conferem, Verifique!');
                       EdConvenio.SetFocus ;
                  END;
             END;
        END;
     END;
end;

procedure TFrmFaturaCupom.ActCancelarPrazoExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFaturaCupom.FormCreate(Sender: TObject);
begin
     If Not(DmPdv.Pdv.State in [DsEdit]) Then
        DmPdv.Pdv.Edit;

     DmPdv.PdvDinheiro.Value     := 0 ;
     DmPdv.PdvCheque.Value       := 0 ;
     DmPdv.PdvCartao.Value       := 0 ;
     DmPdv.PdvTicket.Value       := 0 ;
     DmPdv.PdvVLR_PARC_LC.Value  := 0 ;
     DmPdv.PdvTroco.Value        := 0 ;
end;

procedure TFrmFaturaCupom.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     IF  (( PNCHEQUE.Visible = FALSE ) AND ( PNCARTAO.Visible = FALSE )
     AND ( PNTICKET.Visible  = FALSE ))
     THEN BEGIN
          If Not(DataSource.State in [DsEdit])
          Then
              DataSource.DataSet.Edit;

          If arredonda(DmPdv.PdvDinheiro.Value,2) > arredonda(DmPdv.PdvTotal.Value,2)
          then begin
               DmPdv.PdvTroco.Value := arredonda(DmPdv.PdvTotal.Value - DmPdv.PdvDinheiro.Value,2 );
          end
     END
end;

end.
