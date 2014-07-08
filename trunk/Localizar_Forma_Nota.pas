 unit Localizar_Forma_Nota;
                                 
interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, db,
    ActnList,
  dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid, dxCntner,dxExEdtr, 
  dxBar, dxBarDBNav, dxEditor, dxDBEdtr, dxDBELib, dxEdLib,
   cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrm_Localizar_FormaPagtoNota = class(TForm)
    pnlClient: TPanel;
    Act: TActionList;
    ActOk: TAction;
    ActCancelar: TAction;
    GRID: TdxDBGrid;
    DSource: TDataSource;
    b2: TBevel;
    ActLookup: TAction;
    GRIDNOME: TdxDBGridMaskColumn;
    GRIDACRESCIMO: TdxDBGridMaskColumn;
    GRIDDESCONTO: TdxDBGridMaskColumn;
    GRIDNPARCELAS: TdxDBGridMaskColumn;
    GRIDCOMENTRADA: TdxDBGridMaskColumn;
    GRIDINTERVALO: TdxDBGridMaskColumn;
    GRIDAVISTA: TdxDBGridMaskColumn;
    GRIDFATURA_FUTURA: TdxDBGridMaskColumn;
    Panel1: TPanel;
    BTNOK: TcxButton;
    BTNCANCELA: TcxButton;
    EdValor: TdxCurrencyEdit;
    RxLabel1: TcxLabel;
    GRIDTIPO: TdxDBGridColumn;
    ActReiniciar: TAction;
    RzBitBtn1: TcxButton;
    RxLabel2: TcxLabel;
    TotalNota: TdxCurrencyEdit;
    LblDiferenca: TcxLabel;
    DsForma: TDataSource;
    RzBitBtn2: TcxButton;
    RxLabel7: TcxLabel;
    EdPredate: TdxDateEdit;
    RxLabel3: TcxLabel;
    EdJuros: TdxCurrencyEdit;
    DBGrid1: TDBGrid;
    LblSomaValor: TcxLabel;
    LblSomaJuros: TcxLabel;
    LblSomaTotal: TcxLabel;
    LblTroco: TcxLabel;
    stgFrm_Localizar_FormaPagtoNota: TcxPropertiesStore;
    procedure FormShow(Sender: TObject);
    procedure GridKeyPress(Sender: TObject; var Key: Char);
    procedure GridDblClick(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure pnlClientResize(Sender: TObject);
    procedure ActLookupExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function  SomaValores(Tipo: String): Extended ;
    procedure ActReiniciarExecute(Sender: TObject);
    procedure EdPredateExit(Sender: TObject);
    procedure GRIDEnter(Sender: TObject);
    procedure EdPredateEnter(Sender: TObject);
    procedure EdValorExit(Sender: TObject);

  private
    { Private declarations }

    function  GetTrecho: Integer;

  public
    { Public declarations }
    Cad: String[1]     ;
    CPF_CNPJ: String   ;
    Restante: Extended ;
    Desc_Concedido: Extended ;

    property CampTrecho: Integer Read GetTrecho ;

  end;

var
  Frm_Localizar_FormaPagtoNota: TFrm_Localizar_FormaPagtoNota;

implementation

uses Cadastros_DM,
     Application_DM,
     Funcoes,
     Vendas_Dm,
     Localizar_Conta_Nota,
     ConfirmaTroco_Form,
     MensagemClassificacao_Form;

{$R *.DFM}

function TFrm_Localizar_FormaPagtoNota.GetTrecho: Integer ;
begin
     Result := DSource.DataSet.FieldByName('CODIGO').AsInteger ;
end;

procedure TFrm_Localizar_FormaPagtoNota.FormClose(Sender: TObject; var Action: TCloseAction);
Var
   Valor: Extended ;
begin
     Valor := SomaValores('C') ;

     If Arredonda( Valor, 2 ) <> Arredonda( TotalNota.Value, 2 )
     then begin
          MessageDlg('Os Valores Não Conferem, Digitado = ' + Formatfloat('###,###,##0.00', Valor) + ' e Total da Nota = ' + Formatfloat('###,###,##0.00', TotalNota.Value ), mtError, [mbOK], 0);
          Action := Canone ;
     end
     else begin
          DSource.DataSet.Close ;
          DsForma.DataSet.Close ;

          With DmVendas do
          begin
               Vendas_Formas.Close ;
          end;
     end;
end;

function TFrm_Localizar_FormaPagtoNota.SomaValores(Tipo: String): Extended ;
Var
   FatFut: Boolean ;
   Acrescimo, Troco, Valor, Juros, Soma: Extended ;
   Dinheiro, Cheques, Cartoes, Ticket, APrazo: Extended ;
begin
     Valor     := 0;
     Juros     := 0;
     Troco     := 0;
     Dinheiro  := 0;
     Cheques   := 0;
     Cartoes   := 0;
     Ticket    := 0;
     Acrescimo := 0;
     APrazo    := 0;
     Soma      := 0;

     FatFut   := False ;

     With DmVendas do
     begin
          Troco := NotasTroco.Value;

          Soma  := -1 * Troco ;

          Vendas_Formas.DisableControls ;

          Vendas_Formas.First ;

          If Vendas_FormasTIPO_PAGTO.Value = 'Notas a Cobrar'
          then begin
               Valor  := Valor + Vendas_FormasVALOR_ORIGINAL.Value;
               Juros  := Juros + Vendas_FormasJUROS.Value         ;
               Soma   := Soma + arredonda(( Vendas_FormasVALOR_ORIGINAL.Value ),2);
               APrazo := Soma ;
               FatFut := True ;
          end
          else begin
               WHILE NOT Vendas_Formas.Eof DO
               BEGIN
                    Valor := Valor + Vendas_FormasVALOR_ORIGINAL.Value;

                    Juros := Juros + Vendas_FormasJUROS.Value         ;

                    Soma := Soma + arredonda(( Vendas_FormasVALOR_ORIGINAL.Value ),2);

                    If Vendas_FormasTIPO_PAGTO.Value = 'Dinheiro'
                    then
                        Dinheiro := Dinheiro + ( Valor + Juros );

                    If Vendas_FormasTIPO_PAGTO.Value = 'Ticket'
                    then
                        Ticket := Ticket + ( Valor + Juros );

                    If Vendas_FormasTIPO_PAGTO.Value = 'Cartao'
                    then
                        Cartoes := Cartoes + ( Valor + Juros );

                    If Vendas_FormasTIPO_PAGTO.Value = 'Cheque'
                    then
                        Cheques := Cheques + ( Valor + Juros );

                    Vendas_Formas.Next ;
               end;
          END;

          Vendas_Formas.EnableControls ;

          restante := arredonda ( Soma - TotalNota.Value , 2 );

          If Restante < 0 //Pedir se é troco
          then begin
               Application.CreateForm(TFrmConfirmaTroco, FrmConfirmaTroco);

               FrmConfirmaTroco.Nome.Text  := NotasNome.Value ;

               FrmConfirmaTroco.Valor.Text := FormatFloat('###,###,##0.00', restante );

               if FrmConfirmaTroco.Showmodal = MrOk
               then begin
                    If Arredonda( -1 * restante, 2 ) > Arredonda ( DmApp.Troco_Maximo, 2 )
                    then begin
                         Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

                         FrmMensagemClassificacao.MEMO.Lines.Add ('Senha Gerencial');

                         FrmMensagemClassificacao.MEMO.Lines.Add ('Trôco Não Permitido');

                         FrmMensagemClassificacao.EdSenha.Visible := true ;

                         FrmMensagemClassificacao.Label6.Visible  := true ;

                         if FrmMensagemClassificacao.Showmodal = MrCancel
                         then Begin
                              MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);

                              LblTroco.Caption     := 'Trôco ' + FormatFloat('###,###,##0.00', 0 );
                              LblDiferenca.Caption := 'Restante ' + FormatFloat('###,###,##0.00', Restante );
                              Troco                := 0 ;
                              Soma                 := Soma  ;
                         end
                         else begin
                              LblTroco.Caption     := 'Trôco ' + FormatFloat('###,###,##0.00', -1 * restante );
                              LblDiferenca.Caption := 'Restante ' + FormatFloat('###,###,##0.00', 0 );
                              Troco                := -1 * restante ;
                              Soma                 := Soma - Troco  ;
                         end;

                         FrmMensagemClassificacao.Free   ;
                         FrmMensagemClassificacao := Nil ;
                    end
                    else begin
                         LblTroco.Caption     := 'Trôco ' + FormatFloat('###,###,##0.00', -1 * restante );
                         LblDiferenca.Caption := 'Restante ' + FormatFloat('###,###,##0.00', 0 );
                         Troco                := -1 * restante ;
                         Soma                 := Soma - Troco  ;
                    end;
               end
               else begin
                    LblDiferenca.Caption := 'Restante ' + FormatFloat('###,###,##0.00', restante );
                    Troco                := 0 ;
               end;

               FrmConfirmaTroco.Free   ;
               FrmConfirmaTroco := Nil ;

               LblSomaValor.Caption := FormatFloat('###,###,##0.00', Valor    );
               LblSomaJuros.Caption := FormatFloat('###,###,##0.00', Juros    );
               LblSomaTotal.Caption := FormatFloat('###,###,##0.00', Juros + Valor);
          end
          else begin
               Acrescimo := Restante ;

               TotalNota.Value      := arredonda(TotalNota.Value + Restante,2) ;
               LblDiferenca.Caption := 'Restante ' + FormatFloat('###,###,##0.00', restante );
               LblSomaValor.Caption := FormatFloat('###,###,##0.00', Valor    );
               LblSomaJuros.Caption := FormatFloat('###,###,##0.00', Juros    );
               LblSomaTotal.Caption := FormatFloat('###,###,##0.00', Juros + Valor);
          end;

          If FatFut
          then begin
               Notas.Edit ;
               NotasTIPO_VENDA.Value := 'FFT' ;
               NotasTroco.Value      := 0     ;
               NotasDinheiro.Value   := 0     ;
               NotasCheque.Value     := 0     ;
               NotasCartao.Value     := 0     ;
               NotasTicket.Value     := 0     ;
               NotasAPRAZO.Value     := TotalNota.Value  ;
               NotasDESC_ACRES.Value := Acrescimo + Desc_Concedido ;
               Notas.post ;
          end
          else begin
               Notas.Edit ;
               NotasTIPO_VENDA.Value := 'Vendas'  ;
               NotasDinheiro.Value   := Dinheiro  ;
               NotasTroco.Value      := Troco     ;
               NotasCheque.Value     := Cheques   ;
               NotasCartao.Value     := Cartoes   ;
               NotasTicket.Value     := Ticket    ;
               NotasAPRAZO.Value     := 0         ;
               NotasDESC_ACRES.Value := Acrescimo + Desc_Concedido ;
               Notas.post ;
          end;
     end;

     Result := Soma ;
end;

procedure TFrm_Localizar_FormaPagtoNota.FormShow(Sender: TObject);
begin
     With DmVendas do
     begin
          Vendas_Formas.Close ;

          Vendas_Formas.ParamByName ('CNPJ').AsString    := NotasCNPJ.Value   ;
          Vendas_Formas.ParamByName ('CODIGO').AsInteger := NotasCODIGO.Value ;

          Vendas_Formas.Prepare ;
          Vendas_Formas.Open ;

          If (( DmVendas.NotasPESSOA_FJ.Value = 1 ) OR ( DmVendas.Bloqueado = 'S' ))
          THEN BEGIN
               SelFormaPgto.Close ;
               SelFormaPgto.SQL.Clear ;
               SelFormaPgto.Params.Clear ;

               SelFormaPgto.Params.CreateParam (FTSTRING, 'FORMA', PTINPUT );
               SelFormaPgto.Params.CreateParam (FTSTRING, 'CNPJ' , PTINPUT );

               SelFormaPgto.SQL.Add (' SELECT * From FIN_FORMAS_PAGTO           ');
               SelFormaPgto.SQL.Add (' Where Cnpj = :CNPJ AND AVISTA = :FORMA   ');

               SelFormaPgto.ParamByName ('FORMA').AsString := 'S' ;
               SelFormaPgto.ParamByName ('CNPJ' ).AsString := DmApp.Cnpj ;

               SelFormaPgto.SQL.Add (' Order By Codigo                ');
               SelFormaPgto.Prepare ;
               SelFormaPgto.Open    ;
          END
          ELSE BEGIN
               If NotasASSINA_NOTA.Value = 'S'
               THEN BEGIN
                    SelFormaPgto.Close ;
                    SelFormaPgto.SQL.Clear ;
                    SelFormaPgto.Params.Clear ;

                    SelFormaPgto.Params.CreateParam (FTSTRING, 'CNPJ' , PTINPUT );

                    SelFormaPgto.SQL.Add (' Select * From FIN_FORMAS_PAGTO ');
                    SelFormaPgto.SQL.Add (' Where Cnpj = :CNPJ             ');
                    SelFormaPgto.SQL.Add (' Order By Codigo                ');

                    SelFormaPgto.ParamByName ('CNPJ' ).AsString := DmApp.Cnpj ;

                    SelFormaPgto.Prepare ;
                    SelFormaPgto.Open    ;
               END
               ELSE BEGIN
                    SelFormaPgto.Close ;
                    SelFormaPgto.SQL.Clear ;
                    SelFormaPgto.Params.Clear ;

                    SelFormaPgto.Params.CreateParam (FTSTRING, 'FORMA', PTINPUT );
                    SelFormaPgto.Params.CreateParam (FTSTRING, 'CNPJ' , PTINPUT );

                    SelFormaPgto.SQL.Add (' Select * From FIN_FORMAS_PAGTO ');
                    SelFormaPgto.SQL.Add (' Where Cnpj = :CNPJ AND TIPO_PAGAMENTO <> :FORMA ' );

                    SelFormaPgto.ParamByName ('FORMA').AsString := 'Notas a Cobrar' ;
                    SelFormaPgto.ParamByName ('CNPJ' ).AsString := DmApp.Cnpj ;

                    SelFormaPgto.SQL.Add (' Order By Codigo                ');
                    SelFormaPgto.Prepare ;
                    SelFormaPgto.Open    ;
               END;
          END;

          If DmVendas.FormaCliente > 0
          then begin
               SelFormaPgto.locate ('CODIGO', DmVendas.FormaCliente,[]);
          end;
     end;

     //CARREGA AS DIRETRIZES DO CLIENTES
     WITH DMVENDAS DO
     BEGIN
          Valida_Cliente.Close ;

          Valida_Cliente.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
          Valida_Cliente.ParamByName ('CODIGO').AsInteger := NotasPESSOA_FJ.Value ;

          Valida_Cliente.Prepare ;

          Valida_Cliente.Open ;

          If Not Valida_ClienteBLOQUEADO.isNull
          then Begin
               Bloqueado  := Valida_ClienteBLOQUEADO.Value ;
          end
          else begin
               Bloqueado  := 'N' ;
          end;

          If Not Valida_ClienteNAO_COBR_JUR_ATE.isNull
          then Begin
               Nao_Cobr_Juros_Ate  := trunc(Valida_ClienteNAO_COBR_JUR_ATE.Value) ;
          end
          else begin
               Nao_Cobr_Juros_Ate  := 0 ;
          end;
     END;

     ActReiniciar.execute ;
         
     ActiveControl := GRID;
     Cad           := 'N' ;
end;

procedure TFrm_Localizar_FormaPagtoNota.GridKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = #27
         then
              ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_FormaPagtoNota.GridDblClick(Sender: TObject);
begin
     ModalResult:=mrOk;
end;

procedure TFrm_Localizar_FormaPagtoNota.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then begin
          ModalResult:=mrOk;
     end
     else
         if key = 27
         then
              ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_FormaPagtoNota.ActOkExecute(Sender: TObject);
Var
   NumBanco, NumAgencia, NumConta, NumCheque, Chq, Forma: String;
   PorcentJuros: Real  ;
   DVCHEQUE, DVAGENCIA, DVCONTA: String;
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        restante := arredonda( restante, 2 );

        If Not DmaPP.Transaction.InTransaction
        then
            DmaPP.Transaction.StartTransaction ;

            If Frm_Localizar_FormaPagtoNota.ActiveControl = GRID
            THEN BEGIN
                 If DmVendas.SelFormaPgtoTIPO_PAGAMENTO.Value = 'Cheque'
                 then begin
                      EdValor.Value  := arredonda(restante,2) ;
                      Edpredate.Date := DmApp.DataCaixa + DmVendas.SelFormaPgtoINTERVALO.Value ;
                      EdPredate.SetFocus ;
                 end
                 else begin
                      If DmVendas.SelFormaPgtoTIPO_PAGAMENTO.Value = 'Notas a Cobrar'
                      Then begin
                           //RECALCULA OS VALORES PARA VER SE NAO ESTA COM PREÇO DE PROMOCAO
                           DmVendas.NotasTOTAL.value := dmapp.Corrige_Preco_Promocao ( DmVendas.Notascodigo.value );

                           TotalNota.Value := DmVendas.NOTASTOTAL_LIQUIDO.Value ;

                           ActReiniciar.Execute ;

                           If DmVendas.SelFormaPgtoACRESCIMO.Value > 0
                           then begin
                                IF DmVendas.SelFormaPgtoINTERVALO.VALUE > DmVendas.NotasNAO_COBR_JUR_ATE.VALUE
                                THEN BEGIN
                                     EdJuros.Value := arredonda( ( DmVendas.SelFormaPgtoACRESCIMO.Value * RESTANTE / 100), 2);

                                     Restante      := restante + EdJuros.Value ;

                                     EdValor.Value := arredonda(Restante,2) ;
                                END;
                           end
                           else begin
                                If DmVendas.SelFormaPgtoDESCONTO.Value > 0
                                then begin
                                     EdJuros.Value := arredonda( ( DmVendas.SelFormaPgtoACRESCIMO.Value * RESTANTE / 100), 2);

                                     Restante      := Restante - EdJuros.Value ;

                                     EdValor.Value := arredonda(Restante,2) ;
                                end;
                           end;

                           EdValor.SetFocus ;

                           EdValor.Enabled := false ;
                           EdPredate.Date  := DmaPP.DataCaixa ;
                           EdJuros.Value   := 0;
                           EdValor.Value   := arredonda(restante,2) ;

                           With DmVendas do
                           begin
                                DmaPP.Insere_Forma_Venda
                                (
                                NotasCODIGO.Value,
                                SelFormaPgtoCODIGO.Value,
                                DmVendas.Vendas_Formas.RecordCount + 1,
                                EdValor.Value - EdJuros.Value,
                                EdJuros.Value,
                                'Notas a Cobrar',
                                SelFormaPgtoNOME.Value,
                                NumBanco,
                                NumAgencia,
                                NumConta,
                                NumCheque,
                                '',
                                DVAGENCIA,
                                DVCHEQUE,
                                'N',
                                DmaPP.DataCaixa ,
                                DmaPP.ContaCaixa,
                                DmaPP.UsuarioCaixa,
                                DmApp.TurnoCaixa
                                );

                                DmApp.Transaction.CommitRetaining ;

                                Vendas_Formas.Close ;

                                Vendas_Formas.ParamByName ('CNPJ').AsString    := NotasCNPJ.Value   ;
                                Vendas_Formas.ParamByName ('CODIGO').AsInteger := NotasCODIGO.Value ;

                                Vendas_Formas.Prepare ;
                                Vendas_Formas.Open ;
                           end;


                           ModalResult:=mrOk;
                      end
                      else begin
                           EdPredate.Date := DmaPP.DataCaixa ;
                           EdJuros.Value  := 0;
                           EdValor.Value  := arredonda(restante,2) ;
                           EdValor.SetFocus ;
                      end;
                 end;
            END
            ELSE BEGIN
                 If Frm_Localizar_FormaPagtoNota.ActiveControl = EdPredate
                 THEN BEGIN
                      EdPredate.Date := strtodate(EdPredate.text) ;

                      IF EdPredate.Date > DmApp.DataCaixa
                      then begin
                           DmVendas.NotasTOTAL.value := ARREDONDA(dmapp.Corrige_Preco_Promocao ( DmVendas.Notascodigo.value ),2);

                           TotalNota.Value := ARREDONDA(DmVendas.NOTASTOTAL_LIQUIDO.Value,2) ;

                           RESTANTE := ARREDONDA(TotalNota.Value,2) ;

                           EdValor.Enabled := True            ;
                           EdValor.Value   := TotalNota.Value ;
                           EdJuros.Value   := 0               ;
                           Restante        := TotalNota.Value ;

                           LblDiferenca.Caption := 'Restante ' + FormatFloat('###,###,##0.00', restante );
                           LblTroco.Caption     := 'Trôco ' + FormatFloat('###,###,##0.00', 0 );
                      end;

                      If DmVendas.SelFormaPgtoACRESCIMO.Value > 0
                      then begin
                           if DmVendas.Nao_Cobr_Juros_Ate > 0
                           then begin
                                If EdPredate.Date - DmaPP.DataCaixa > DmVendas.Nao_Cobr_Juros_Ate
                                THEN BEGIN
                                     EdJuros.Value := CALCULAJUROS( DMAPP.DataCaixa,EdPredate.DATE, Restante ,DmVendas.SelFormaPgtoACRESCIMO.Value) ;
                                     Restante      := arredonda(Restante + EdJuros.Value , 2);
                                     EdValor.Value := arredonda(Restante,2) ;
                                END
                                ELSE BEGIN
                                     EdJuros.Value := 0 ;
                                     Restante      := arredonda(Restante,2)  ;
                                     EdValor.Value := arredonda(Restante,2) ;
                                END;
                           end
                           else begin
                                EdJuros.Value := arredonda(CALCULAJUROS( DMAPP.DataCaixa, EdPredate.DATE, Restante ,DmVendas.SelFormaPgtoACRESCIMO.Value),2) ;
                                Restante      := restante + EdJuros.Value ;
                                EdValor.Value := arredonda(Restante,2) ;
                           end;
                      end
                      else begin
                           If DmVendas.SelFormaPgtoDESCONTO.Value > 0
                           then begin
                                EdJuros.Value := arredonda(CALCULAJUROS( DMAPP.DataCaixa, EdPredate.DATE, Restante ,DmVendas.SelFormaPgtoACRESCIMO.Value),2) ;
                                Restante      := Restante - EdJuros.Value ;
                                EdValor.Value := arredonda(Restante,2) ;
                           end;
                      end;

                      EdValor.SetFocus ;
                 END
                 ELSE BEGIN
                      If EdValor.Value <= 0
                      THEN BEGIN
                           MessageDlg('Digite um Valor Válido!', mtError, [mbOK], 0);
                           EdValor.SetFocus ;
                      END
                      ELSE BEGIN
                           If Arredonda( EdValor.Value,2 ) = arredonda(Restante,2)
                           then begin
//                                EdJuros.Value := CALCULAJUROS( DMAPP.DataCaixa, EdPredate.DATE, Restante ,DmVendas.SelFormaPgtoACRESCIMO.Value) ;
//                                Restante      := arredonda(Restante + ( Restante  * DmVendas.SelFormaPgtoACRESCIMO.Value ) / 100,2) ;
                           end
                           else begin
                                If Arredonda( EdValor.Value,2 ) < arredonda(Restante,2)
                                then begin
                                     PorcentJuros  := arredonda(( 100 * EdValor.Value ) / Restante ,2);
                                     EdJuros.Value := CALCULAJUROS( DMAPP.DataCaixa, EdPredate.DATE, Restante ,DmVendas.SelFormaPgtoACRESCIMO.Value) ;
                                end;
                           end;

                           Forma := DmVendas.SelFormaPgtoTIPO_PAGAMENTO.Value ;

                           If DmVendas.SelFormaPgtoTIPO_PAGAMENTO.Value = 'Dinheiro'
                           then begin
                                Forma := 'Dinheiro' ;
                           end;

                           If DmVendas.SelFormaPgtoTIPO_PAGAMENTO.Value = 'Cartao'
                           then begin
                                Forma := 'Cartao' ;

                                //TEF
                                IF ( TRIM(DMaPP.DIRETORIO_TEF) <> '' )
                                THEN BEGIN
                                     CriarArquivoTEF ( DmVendas.NotasCODIGO.Value );
                                END;
                           END;

                           If DmVendas.SelFormaPgtoTIPO_PAGAMENTO.Value = 'Cheque'
                           then begin
                                Forma := 'Cheque' ;

                                If ((EdPredate.Text = '  /  /  ') or (EdPredate.Text = '  /  /    '))
                                then begin
                                     MessageDlg('Digite a Data do Pré-Date do Cheque!', mtError, [mbOK], 0);
                                     EdPredate.SetFocus ;
                                     EXIT ;
                                end;

                                With DmVendas do
                                begin
                                     Contas_Pessoas.Open ;

                                     SelBanco.Open ;

                                     SelConta.Close ;
                                     SelConta.ParamByName ( 'CNPJ'      ).AsString  := DmaPP.Cnpj ;
                                     SelConta.ParamByName ( 'PESSOA_FJ' ).AsInteger := NotasPessoa_Fj.Value ;
                                     SelConta.Prepare ;
                                     SelConta.Open    ;
                                end;

                                //Cria o Formulario de Localizar Contas
                                Application.CreateForm(TFrm_Localizar_ContaNota, Frm_Localizar_ContaNota) ;

                                Frm_Localizar_ContaNota.CPF_CNPJ := CPF_CNPJ ;

                                Frm_Localizar_ContaNota.EdPredate.Date := EdPredate.Date ;

                                Frm_Localizar_ContaNota.ValorCheque := EdValor.text ;

                                If Frm_Localizar_ContaNota.Showmodal = MrOk
                                then begin
                                     With Frm_Localizar_ContaNota do
                                     begin
                                          Chq := EdCheque.text;

                                          While Length(Chq) < 8 do
                                          begin
                                               If Length(Chq) = 6
                                               then begin
                                                    Chq :=  Chq + '-';
                                               end;

                                               If Length(Chq) < 6
                                               then begin
                                                    Chq := '0' + Chq ;
                                               end;

                                               If Length(Chq) = 7
                                               then begin
                                                    Chq := Chq + '0' ;
                                               end;
                                          end;

                                          DvAgencia  := dv_Agencia          ;
                                          DvCheque   := Copy ( Chq, 8, 1 )  ;
                                          DvConta    := dv_conta            ;
                                          NumBanco   := Banco               ;
                                          NumAgencia := Copy(Agencia,1,6)   ;
                                          NumConta   := copy(Conta,1,6)     ;
                                          NumCheque  := Copy(Chq,1,6)       ;

                                          IF ( trim(NumCheque) = '' )
                                          THEN BEGIN
                                               MessageDlg('Digite Corretamente os Dados do Cheque!', mtError, [mbOK], 0);;
                                               GRID.SetFocus ;
                                               ABORT;
                                          END
                                          ELSE BEGIN
                                               DmApp.Insere_Cheque ( Banco, Conta, COPY(Chq,1,6), DmVendas.NotasCODIGO.Value,
                                               DmApp.DATACAIXA, EdPredate.Date, EdValor.Value, 'N', DmVendas.NotasPessoa_fJ.Value,
                                               DmVendas.NotasOBSERVACAO.VALUE, AGENCIA, DmVendas.NotasNOME.VALUE, 'NO',
                                               DvAgencia, DvCheque, DmApp.TurnoCaixa, DmApp.UsuarioCaixa, DmApp.DATACAIXA );
                                          END;
                                     end;


                                end
                                Else Begin
                                     MessageDlg('Digite Corretamente os Dados do Cheque!', mtError, [mbOK], 0);;
                                     GRID.SetFocus ;
                                     ABORT;
                                end;

                                Frm_Localizar_ContaNota.Free ;
                                Frm_Localizar_ContaNota := Nil ;
                           end ;

                           With DmVendas do
                           begin
                                Contas_Pessoas.Close ;

                                SelBanco.Close       ;

                                SelConta.Close       ;

                                DmaPP.Insere_Forma_Venda
                                (
                                NotasCODIGO.Value,
                                SelFormaPgtoCODIGO.Value,
                                DmVendas.Vendas_Formas.RecordCount + 1,
                                EdValor.Value - EdJuros.Value,
                                EdJuros.Value,
                                Forma,
                                SelFormaPgtoNOME.Value,
                                NumBanco,
                                NumAgencia,
                                NumConta,
                                NumCheque,
                                DVCONTA,
                                DVAGENCIA,
                                DVCHEQUE,
                                SelFormaPgtoAVISTA.Value,
                                DmaPP.DataCaixa ,
                                DmaPP.ContaCaixa,
                                DmaPP.UsuarioCaixa,
                                DmApp.TurnoCaixa
                                );

                                DmApp.Transaction.CommitRetaining ;

                                Vendas_Formas.Close ;

                                Vendas_Formas.ParamByName ('CNPJ').AsString    := NotasCNPJ.Value   ;
                                Vendas_Formas.ParamByName ('CODIGO').AsInteger := NotasCODIGO.Value ;

                                Vendas_Formas.Prepare ;
                                Vendas_Formas.Open ;
                           end;

                           If Arredonda( SomaValores('D'), 1 ) = Arredonda( TotalNota.Value, 1 )
                           then begin
                                ModalResult:=mrOk;
                           end
                           else begin
                                //Grava a Forma de Pagto
                                GRID.SetFocus ;
                           END;
                      END;
                 END;
            end;

        //FINALIZA
        DmApp.Transaction.CommitRetaining ;

     except
           DmApp.Transaction.RollbackRetaining ;
     end;
end;

procedure TFrm_Localizar_FormaPagtoNota.ActCancelarExecute(Sender: TObject);
begin
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_FormaPagtoNota.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrm_Localizar_FormaPagtoNota.ActLookupExecute(Sender: TObject);
begin
     //LookUp
     Cad := 'S' ;
     ModalResult:=mrCancel;
end;

procedure TFrm_Localizar_FormaPagtoNota.ActReiniciarExecute(Sender: TObject);
begin
     With DmVendas do
     begin
          If not ( Notas.State in [ dsinsert, dsedit ] )
          then
              Notas.edit ;

          NotasTroco.Value    := 0;
          NotasDinheiro.Value := 0;
          NotasCheque.Value   := 0;
          NotasCartao.Value   := 0;
          NotasTicket.Value   := 0;
          NotasAPRAZO.Value   := 0;
          NotasTroco.Value    := 0;
     end;

     EdValor.Enabled := True            ;
     EdValor.Value   := TotalNota.Value ;
     EdJuros.Value   := 0               ;
     Restante        := TotalNota.Value ;

     LblDiferenca.Caption := 'Restante ' + FormatFloat('###,###,##0.00', restante );
     LblTroco.Caption     := 'Trôco ' + FormatFloat('###,###,##0.00', 0 );

     DmVendas.Vendas_Formas.DisableControls ;

     DmaPP.Apaga_Formas_Venda ( DmVendas.NotasCODIGO.Value );

     DmVendas.Vendas_Formas.Close ;
     DmVendas.Vendas_Formas.Open  ;

     DmVendas.Vendas_Formas.EnableControls ;

     EdPredate.Date := DmaPP.DataCaixa ;

     GRID.SETFOCUS ;
end;

procedure TFrm_Localizar_FormaPagtoNota.EdPredateExit(Sender: TObject);
begin
     If EdPredate.Date > DmApp.DataCaixa + DmVendas.SelFormaPgtoINTERVALO.Value
     then begin
          MessageDlg('Data de Pré-Date Inválida, Pode Ser No Máximo para o Dia ' + datetostr(DmApp.DataCaixa + DmVendas.SelFormaPgtoINTERVALO.Value), mtError, [mbOK], 0);

          EdPredate.SetFocus ;
     end
     else begin
          if edpredate.date <> DmApp.DataCaixa
          then begin
               //RECALCULA OS VALORES PARA VER SE NAO ESTA COM PREÇO DE PROMOCAO
               DmVendas.NotasTOTAL.value := dmapp.Corrige_Preco_Promocao ( DmVendas.Notascodigo.value );

               TotalNota.Value := DmVendas.NOTASTOTAL_LIQUIDO.Value ;
          end;
     end;

     TIRACorFundo ( Sender );
end;

procedure TFrm_Localizar_FormaPagtoNota.GRIDEnter(Sender: TObject);
begin
     EdValor.Value := 0;
end;

procedure TFrm_Localizar_FormaPagtoNota.EdPredateEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrm_Localizar_FormaPagtoNota.EdValorExit(Sender: TObject);
begin
     TIRACorFundo ( Sender );
end;

End.

