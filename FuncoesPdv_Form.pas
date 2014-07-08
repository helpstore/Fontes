unit FuncoesPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes,
  Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib,  cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons;

type
  TFrmFuncoesPdv = class(TForm)
    ActLista: TActionList;
    ActSair: TAction;
    ActLeituraX: TAction;
    ActCancelaIUltimotem: TAction;
    ActCancelaItem: TAction;
    ActCancelaCupom: TAction;
    ActAbreGaveta: TAction;
    ActAcrescimoDesconto: TAction;
    ActLeituraZ: TAction;
    PnFuncoes: TPanel;
    BtnLeiturax: TcxButton;
    BtnCancelaUltimoItem: TcxButton;
    BtnCancelaItem: TcxButton;
    brncancelarcupom: TcxButton;
    btnabregaveta: TcxButton;
    btnacrescdesc: TcxButton;
    btnsair: TcxButton;
    RzBitBtn1: TcxButton;
    BtnConsulta: TcxButton;
    ActConsultaProd: TAction;
    BtnArredondaTrunca: TcxButton;
    ActArredondaTrunca: TAction;
    BtnNominal: TcxButton;
    ActNominal: TAction;
    RzBitBtn2: TcxButton;
    ActExtrato: TAction;
    ActModoInsercao: TAction;
    RzBitBtn3: TcxButton;
    ActSetaPedido: TAction;
    procedure FormShow(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure ActLeituraXExecute(Sender: TObject);
    procedure ActCancelaIUltimotemExecute(Sender: TObject);
    procedure ActAbreGavetaExecute(Sender: TObject);
    procedure ActAcrescimoDescontoExecute(Sender: TObject);
    procedure ActCancelaCupomExecute(Sender: TObject);
    procedure ActCancelaItemExecute(Sender: TObject);
    procedure ActLeituraZExecute(Sender: TObject);
    procedure ActConsultaProdExecute(Sender: TObject);
    procedure BtnConsultaEnter(Sender: TObject);
    procedure BtnConsultaExit(Sender: TObject);
    procedure ActArredondaTruncaExecute(Sender: TObject);
    procedure ActNominalExecute(Sender: TObject);
    procedure ActExtratoExecute(Sender: TObject);
    procedure ActModoInsercaoExecute(Sender: TObject);
    procedure ActSetaPedidoExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Nominal, Extrato, LeituraX, LeituraZ: Boolean ;
  end;

var
  FrmFuncoesPdv: TFrmFuncoesPdv;

implementation

uses Funcoes,
     Pdv_Frm,
     Pdv_DM,
     Application_DM,
     ConsultaProdPdv_Form,
     SenhaGerencialPdv_Form,
     ArredondaTruncaPdv_Form,
     CancelaItemPdv_Form, SetaNumPedidodv_Form;

{$R *.DFM}

procedure TFrmFuncoesPdv.FormShow(Sender: TObject);
begin
     FrmFuncoesPdv.Top  := FrmPdv.Lista.Top  ;
     FrmFuncoesPdv.Left := FrmPdv.Lista.Left ;

     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnFuncoes.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          BtnConsulta.Font.Color           := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnCancelaUltimoItem.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnCancelaItem.Font.Color        := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          brncancelarcupom.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RzBitBtn2.Font.Color             := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnNominal.Font.Color            := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          btnabregaveta.Font.Color         := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          btnacrescdesc.Font.Color         := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnLeiturax.Font.Color           := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RzBitBtn1.Font.Color             := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          BtnArredondaTrunca.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RzBitBtn3.font.color             := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          btnsair.Font.Color               := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     Nominal  := False ;
     Extrato  := False ;
     LeituraX := False ;
     LeituraZ := False ;

     if FrmPdv.CupomAberto
     then begin
          ActLeituraX.Enabled          := false ;
          ActCancelaIUltimotem.Enabled := True  ;
          ActCancelaItem.Enabled       := true  ;
          ActAbreGaveta.Enabled        := False ;
          ActAcrescimoDesconto.Enabled := True  ;
          ActNominal.Enabled           := True  ;
     end
     else begin
          ActLeituraX.Enabled          := true  ;
          ActCancelaIUltimotem.Enabled := false ;
          ActCancelaItem.Enabled       := false ;
          ActAbreGaveta.Enabled        := true  ;
          ActAcrescimoDesconto.Enabled := False ;
          ActNominal.Enabled           := False ;
     end;

     IF DMAPP.PDV_ECF <> 'S'
     THEN BEGIN
          ActAbreGaveta.Enabled        := False ;
          ActAbreGaveta.Enabled        := False ;
          ActArredondaTrunca.Enabled   := False ;
          ActAcrescimoDesconto.Enabled := False ;
     END;
end;

procedure TFrmFuncoesPdv.ActSairExecute(Sender: TObject);
begin
     ModalResult := MrOk ;
end;

procedure TFrmFuncoesPdv.ActLeituraXExecute(Sender: TObject);
begin
     PnFuncoes.enabled := false ;

     IF DMAPP.PDV_ECF = 'S'
     THEN BEGIN
          DmPdv.LeituraX;
     END
     ELSE BEGIN
          LeituraX := true ;
     END;

     ModalResult := MrOk ;
end;

procedure TFrmFuncoesPdv.ActCancelaIUltimotemExecute(Sender: TObject);
begin
     PnFuncoes.enabled := false ;
     DmPdv.CancelaItem(0,'',0,0,'','');
     Close ;
end;

procedure TFrmFuncoesPdv.ActAbreGavetaExecute(Sender: TObject);
begin
     DmPdv.AbrirGaveta;
     Close ;
end;

procedure TFrmFuncoesPdv.ActAcrescimoDescontoExecute(Sender: TObject);
begin
     FrmSenhaGerencial := TFrmSenhaGerencial.Create(Self);

     IF FrmSenhaGerencial.Showmodal = MrOk
     THEN BEGIN
          IF FrmSenhaGerencial.Valor.Text <> DmApp.Pdv_Senha
          then begin
               MensagemPdv ('Senha Incorreta!');
               Abort ;
          end
          else begin
               PnFuncoes.enabled := false ;
               DmPdv.AcrescrimoDesconto ;
          end;
     END
     ELSE
         ABORT ;

     FrmSenhaGerencial.Free ;
     FrmSenhaGerencial := Nil ;

     ModalResult := MrOk ;
end;

procedure TFrmFuncoesPdv.ActCancelaCupomExecute(Sender: TObject);
begin
     IF DmApp.PEDE_SEN_GER_CX = 'S'
     then begin
          FrmSenhaGerencial := TFrmSenhaGerencial.Create(Self);

          IF FrmSenhaGerencial.Showmodal = MrOk
          THEN BEGIN
               IF FrmSenhaGerencial.Valor.Text <> DmApp.Pdv_Senha
               then begin
                    MensagemPdv ('Senha Incorreta!');
                    Abort ;
               end
               else begin
                    DmPdv.CancelarCupomFiscal ;

                    FrmSenhaGerencial.free ;
                    FrmSenhaGerencial := nil;
                    Close ;
               end;
          end
          else begin
               FrmSenhaGerencial.free ;
               FrmSenhaGerencial := nil;

               ABORT ;
          end;
     end
     else begin
          DmPdv.CancelarCupomFiscal ;
          Close ;
     end;
end;

procedure TFrmFuncoesPdv.ActCancelaItemExecute(Sender: TObject);
Var
   Item: Integer;
   VlrVenda : currency;
begin
  IF DmApp.PEDE_SEN_GER_CX = 'S' then
  begin
     FrmSenhaGerencial := TFrmSenhaGerencial.Create(Self);

     IF FrmSenhaGerencial.Showmodal = MrOk then
     begin
       IF FrmSenhaGerencial.Valor.Text <> DmApp.Pdv_Senha then
       begin
          MensagemPdv ('Senha Incorreta!');
          Abort ;
       end
       else
       begin
         PnFuncoes.enabled := false ;
         FrmCancelaItemPdv := TFrmCancelaItemPdv.Create(Self);
         IF FrmCancelaItemPdv.ShowModal = mrok then
         begin
            with DmPdv do
            begin
              //Localizar o Item
              Cancela_Item_Generico(DmPdv.PdvCODIGO.value, FrmCancelaItemPdv.Edt.Text);

              DesctoCPCanc := DesctoCPCanc + (QuantidadeCancelado * UnitarioCancelado);

              If SequenciaCancelado > 0 then
              begin
                DmPdv.CancelaItem(SequenciaCancelado, Produtocancelado, QuantidadeCancelado,
                UnitarioCancelado, UnidadeCancelado, NomeCancelado );
              end;
            end;
         end;

         FrmCancelaItemPdv.free   ;
         FrmCancelaItemPdv := Nil ;

         FrmSenhaGerencial.free ;
         FrmSenhaGerencial := nil;

         Close ;
       end;
     end
     else
     begin
        FrmSenhaGerencial.free ;
        FrmSenhaGerencial := nil;

        ABORT ;
     end;
  end
end;

procedure TFrmFuncoesPdv.ActLeituraZExecute(Sender: TObject);
begin
     FrmSenhaGerencial := TFrmSenhaGerencial.Create(Self);

     IF FrmSenhaGerencial.Showmodal = MrOk
     THEN BEGIN
          IF FrmSenhaGerencial.Valor.Text <> DmApp.Pdv_Senha
          then begin
               MensagemPdv ('Senha Incorreta!');
               Abort ;
          end
          else begin
               IF DMAPP.PDV_ECF = 'S'
               THEN BEGIN
                    PnFuncoes.enabled := false ;
                    DmPdv.LeituraZ;
               END
               ELSE BEGIN
                    LEITURAZ := TRUE ;
               END;
          end;
     END
     ELSE
         ABORT ;

     FrmSenhaGerencial.Free ;
     FrmSenhaGerencial := Nil ;

     ModalResult := MrOk ;
end;

procedure TFrmFuncoesPdv.ActConsultaProdExecute(Sender: TObject);
begin
     //
     DmPdv.ConsultandoPreco := True ;

     FrmConsultaProdPdv := TFrmConsultaProdPdv.Create(Self);
     FrmConsultaProdPdv.Showmodal ;
     FrmConsultaProdPdv.Free      ;
     FrmConsultaProdPdv := Nil    ;

     DmPdv.ConsultaProd.Close     ;

     DmPdv.ConsultandoPreco := False ;

     ModalResult := MrCancel      ;
end;

procedure TFrmFuncoesPdv.BtnConsultaEnter(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO .Style.Font.Color
     ( Sender as TcxButton ).Colors.Default := clWhite ;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          ( Sender as TcxButton ).Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE)) ;
     end
     else begin
          ( Sender as TcxButton ).Font.Color := $0000CEF8 ;
     end;
end;

procedure TFrmFuncoesPdv.BtnConsultaExit(Sender: TObject);
begin
     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          ( Sender as TcxButton ).Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE)) ;
     end
     else begin
          ( Sender as TcxButton ).Font.Color := $0000CEF8 ;
     end;

     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          ( Sender as TcxButton ).Colors.Default     := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END
     ELSE BEGIN
          ( Sender as TcxButton ).Colors.Default:= $006F1629 ;
     END;

//     ( Sender as TcxButton ).Colors.Default     := $006F1629 ;
//     ( Sender as TcxButton ).Font.Color := $0000CEF8   ;
end;

procedure TFrmFuncoesPdv.ActArredondaTruncaExecute(Sender: TObject);
begin
     FrmSenhaGerencial := TFrmSenhaGerencial.Create(Self);

     IF FrmSenhaGerencial.Showmodal = MrOk
     THEN BEGIN
          IF FrmSenhaGerencial.Valor.Text <> DmApp.Pdv_Senha
          then begin
               MensagemPdv ('Senha Incorreta!');
               Abort ;
          end
          else begin
               PnFuncoes.enabled := false ;

               FrmArredondaTruncaPdv := TFrmArredondaTruncaPdv.Create(Self);

               IF FrmArredondaTruncaPdv.Showmodal = MrOk
               THEN BEGIN
                    If FrmArredondaTruncaPdv.CkArredonda.Checked
                    then begin
                         DmPdv.ArredondaTrunca ( '0' );
                    end
                    else begin
                         DmPdv.ArredondaTrunca ( '1' );
                    end;
               end ;

               FrmArredondaTruncaPdv.Free ;
               FrmArredondaTruncaPdv := Nil;
          end;
     END
     ELSE
         ABORT ;

     FrmSenhaGerencial.Free ;
     FrmSenhaGerencial := Nil ;

     ModalResult := MrOk ;
end;

procedure TFrmFuncoesPdv.ActNominalExecute(Sender: TObject);
begin
     Modalresult := mrok ;
     Nominal     := True ;
end;

procedure TFrmFuncoesPdv.ActExtratoExecute(Sender: TObject);
begin
     Modalresult := mrok  ;
     Extrato     := True  ;
end;

procedure TFrmFuncoesPdv.ActModoInsercaoExecute(Sender: TObject);
begin
     DmPdv.Modo_Insercao := true ;
     FrmPdv.LblInsercao.visible := true ;
     Close ;
end;

procedure TFrmFuncoesPdv.ActSetaPedidoExecute(Sender: TObject);
begin
 //
  FrmSetaNumPedidoPdv := TFrmSetaNumPedidoPdv.Create(Self);
  IF FrmSetaNumPedidoPdv.ShowModal = mrok then
    ExecSql('SET GENERATOR GNR_CONTROLE_PEDIDO_RESTAURANTE to '+trim(FrmSetaNumPedidoPdv.Edt.text),DMApp.Transaction);

  FrmSetaNumPedidoPdv.free   ;
  FrmSetaNumPedidoPdv:= Nil ;

  Close ;
end;

end.
