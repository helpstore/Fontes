 unit ConveniadoPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Mask,  dxCntner, dxEditor,
  dxExEdtr, dxEdLib,  Db, dxDBELib, Buttons, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TFrmConveniadoPdv = class(TForm)
    PnFuncoes: TPanel;
    ActLista: TActionList;
    ActCancelar: TAction;
    RxLabel1: TcxLabel;
    pncodigo: TPanel;
    EdDigitacao: TEdit;
    ActBuscaConveniadoCpf: TAction;
    DsPessoa: TDataSource;
    EdPessoa: TdxDBEdit;
    EdNome: TdxDBEdit;
    EDENDERECO: TdxDBEdit;
    EdNatureza: TdxDBEdit;
    EDCIDADE: TdxDBEdit;
    EDNUMERO: TdxDBEdit;
    RxLabel3: TcxLabel;
    RxLabel4: TcxLabel;
    RxLabel5: TcxLabel;
    RxLabel6: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    RxLabel7: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    RxLabel2: TcxLabel;
    btnsim: TcxButton;
    ActBuscaConveniadoNome: TAction;
    ActBuscaConveniadoCodigo: TAction;
    dxDBEdit6: TdxDBEdit;
    RxLabel8: TcxLabel;
    EDCREDITO: TEdit;
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActBuscaConveniadoCpfExecute(Sender: TObject);
    procedure btnsimClick(Sender: TObject);
    procedure EdDigitacaoExit(Sender: TObject);
    procedure EdDigitacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActBuscaConveniadoNomeExecute(Sender: TObject);
    procedure ActBuscaConveniadoCodigoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    Tipo : String;
    Cliente: Integer;
    Cupom_Nominal: Boolean ;
    Venda_Prazo: Boolean;
  end;

var
  FrmConveniadoPdv: TFrmConveniadoPdv;
  Tempo: Integer;
  Credito: Real;

implementation

uses Funcoes,
     Pdv_Frm,
     Pdv_DM,
     Application_DM,
     LocalizarClientePdv, Entra_Dados_Consumidor_Form;

{$R *.DFM}

procedure TFrmConveniadoPdv.FormShow(Sender: TObject);
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnFuncoes.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          pncodigo.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          RxLabel1.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel3.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel4.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel6.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel2.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel5.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel7.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel8.Style.Font.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;

     FrmConveniadoPdv.Top  := FrmPdv.Lista.Top  ;
     FrmConveniadoPdv.Left := FrmPdv.Lista.Left ;
end;

procedure TFrmConveniadoPdv.ActCancelarExecute(Sender: TObject);
begin
     Cliente := 0 ;

     Modalresult := mrcancel ;
end;

procedure TFrmConveniadoPdv.ActBuscaConveniadoCpfExecute(Sender: TObject);
begin
     IF length(TRIM(EdDigitacao.text)) = 11
     Then Begin
          if CPF_Valido (TRIM(EdDigitacao.text))
          then Begin
               with DmPdv do
               Begin
                    PESSOACPF.close ;

                    PESSOACPF.ParamByname ( 'CPFCGC' ).AsString := TRIM(EdDigitacao.text);

                    PESSOACPF.Open  ;

                    If (PESSOACPF.Fields[0].IsNull) 
                    then Begin
                         Beep;
                         MensagemPdv('Cliente Não Cadastrado, ou Cliente Sem Permissão de Crédito!') ;
                         EdDigitacao.SetFocus ;
                         Abort ;
                    end
                    Else begin
                         Cliente := DmPdv.PessoaCpfCodigo.Value ;

                         WITH DMPDV DO
                         BEGIN
                              Valida_Cliente.Close ;

                              Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
                              Valida_Cliente.ParamByName ('CODIGO').AsInteger := CLIENTE      ;

                              Valida_Cliente.Prepare ;
                              Valida_Cliente.Open ;

                              If PdvPESSOA_FJ.isNull
                              then Begin
                                   PdvPESSOA_FJ.value := 1;
                                   MENSAGEMPDV ('Cliente Inexistente!');
                                   EdDigitacao.SetFocus;
                              end;

                              If Not Valida_ClienteLIMITE_TEMPO.isNull
                              then Begin
                                   Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
                              end
                              else begin
                                   Tempo  := 0 ;
                              end;

                              If Not Valida_ClienteLIMITE_CREDITO.isNull
                              then Begin
                                   Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
                              end
                              else begin
                                   Credito  := 0 ;
                              end;

                              Valida_Cliente.Close ;
                         END;

                         //VERIFICA CLIENTE EM ATRASO OU COM LIMITE VENCIDO
                         IF NOT ( DMAPP.Verifica_Limite_Pdv
                         (
                         DMAPP.CNPJ,
                         CLIENTE,
                         EdNome.TEXT,
                         TEMPO,
                         CREDITO,
                         DMAPP.DATACAIXA,
                         PdvVLR_PARC_LC.value
                         ) )
                         THEN BEGIN
                              EDCREDITO.Text := 'CLIENTE EM DÉBITO'    ;
                              EDCREDITO.Font.Color := CLRED   ;
                         END
                         ELSE BEGIN
                              EDCREDITO.Text := 'CRÉDITO OK';
                              EDCREDITO.Font.Color := CLBLACK ;
                         END ;

                         DsPessoa.DataSet := DmPdv.PessoaCpf ;
                    end;
               end;
          end
          Else Begin
               Beep;
               MensagemPdv('Cpf Inválido') ;
               EdDigitacao.SetFocus ;
               Abort ;
          end;
     end
     Else Begin
          if CGC_Valido (TRIM(EdDigitacao.text))
          then Begin
               with DmPdv do
               Begin
                    PESSOACPF.close ;

                    PESSOACPF.ParamByname ( 'CPFCGC' ).AsString := TRIM(EdDigitacao.text);

                    PESSOACPF.Open  ;

                    If PESSOACPF.Fields[0].IsNull
                    then Begin
                         Beep;
                         MensagemPdv('Cliente Não Cadastrado!');
                         EdDigitacao.SetFocus ;
                         Abort ;
                    end;
               end;
          end
          Else Begin
               Beep;
               MensagemPdv('Cnpj Inválido');
               EdDigitacao.SetFocus ;
               Abort ;
          end;
     end;
end;

procedure TFrmConveniadoPdv.btnsimClick(Sender: TObject);
Var
   Aux2, Aux: String ;
   AssinaNota : boolean;
begin
     Aux := TRIM(EdPessoa.TEXT) ;

     IF AUX = ''
     THEN
         Cliente := 0
     ELSE
         Cliente := STRTOINT(AUX);


     //PARA VERIFICAÇÕES DE CHEQUES E CONTAS A PAGAR DEVE PASSAR MESMO SEM O ASSINA NOTA
     AssinaNota := true;
     if Venda_Prazo then
     begin
       if DsPessoa.DataSet.FieldByName('ASSINA_NOTA').value = 'S' then
         AssinaNota := true
       else
         AssinaNota := false
     end;


     IF ( Cliente > 1 ) THEN
     BEGIN
       If ( DsPessoa.DataSet.FieldByName('BLOQUEADO').AsString = 'S' ) or ( not AssinaNota ) THEN
       BEGIN
         MensagemPdv ('Cliente Bloqueado, Consultar Direção!');
         EdDigitacao.Clear ;
         EdDigitacao.SetFocus ;
       END
       ELSE
         ModalResult := MrOk ;
     END
     ELSE
     BEGIN
          //
          IF Cupom_Nominal
          THEN BEGIN
               Application.CreateForm(TFrmEntraDadosConsumidor, FrmEntraDadosConsumidor);

               if ( FrmEntraDadosConsumidor.showmodal = mrOk )Then
               Begin
                    WITH DMPDV DO
                    BEGIN
                      IF NOT ( PDV.STATE IN DSEDITMODES ) THEN
                      BEGIN
                        IF(PDV_ITENS.STATE IN DSEDITMODES )THEN
                          PDV_ITENS.CANCEL ;

                        PDV.EDIT ;
                      END;

                      PDVNOME_CONSUMIDOR.Value := FrmEntraDadosConsumidor.EdNome.Text ;

                      aux2 := ExtraiDigitos(FrmEntraDadosConsumidor.EdCnpj.Text);

                      if (trim(aux2) <> '0') then
                        PDVDOCUMENTOS_CONSUMIDOR.Value := aux2
                      else
                        PDVDOCUMENTOS_CONSUMIDOR.Value := FrmEntraDadosConsumidor.EdCpf.Text;

                      PDVENDERECO_CONSUMIDOR.Value        := FrmEntraDadosConsumidor.EdEndereco.Text ;
                      PDVBAIRRO_CONSUMIDOR.Value        := FrmEntraDadosConsumidor.edtBairro.Text ;
                      PDVFONE_CONSUMIDOR.Value        := FrmEntraDadosConsumidor.edtFone.Text ;
                    END;
               END;

               FrmEntraDadosConsumidor.Free ;
               FrmEntraDadosConsumidor := Nil ;

               ModalResult := MrOk ;
          END
          ELSE BEGIN
               MensagemPdv ('Selecione Um Cliente Válido!');
               EdDigitacao.Clear ;
               EdDigitacao.SetFocus ;
          END;
     END;
end;

procedure TFrmConveniadoPdv.EdDigitacaoExit(Sender: TObject);
Var
   Aux, Aux2: Char;
   Str, Str2: String ;
   Nominal: Boolean ;
begin
     If trim( EdDigitacao.Text ) = ''
     then begin
          MESSAGEDLG('Selecione um Cliente Válido!', mterror, [mbok],0);
          EdDigitacao.SetFocus ;
     end
     else begin
          Str  := Copy ( EdDigitacao.Text, 1, 1 );
          Str2 := Copy ( EdDigitacao.Text, 2, 1 );

          Aux  := Str[1];

          IF Str2 <> ''
          THEN
              Aux2 := Str2[1]
          ELSE
              Aux2 := ' ';

          Nominal := true ;

          If ( Aux in [ 'a' .. 'z' ] ) or ( Aux in [ 'A' .. 'Z' ] )
          or ( Aux2 in [ 'a' .. 'z' ] ) or ( Aux2 in [ 'A' .. 'Z' ] )
          or ( Aux = '.' )
          Then Begin
               Nominal := true ;
          end
          else begin
               Nominal := false ;
          end;

          If ( nominal )
          Then Begin
               TIPO := 'NOME' ;
               ActBuscaConveniadoNome.Execute ;
          end
          Else Begin
               If Length(Trim(EdDigitacao.Text))<= 6
               then begin
                    TIPO := 'COD' ;
                    ActBuscaConveniadoCodigo.Execute ;
               end
               else begin
                    TIPO := 'DOC' ;
                    ActBuscaConveniadoCpf.Execute ;
               end;
          End;
     end;
end;

procedure TFrmConveniadoPdv.EdDigitacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConveniadoPdv.ActBuscaConveniadoNomeExecute(Sender: TObject);
begin
     with DmPdv do
     Begin
          PessoaNome.close ;

          If TRIM(EdDigitacao.text) = '.'
          then
              PessoaNome.ParamByname ( 'NOME' ).AsString := '.'
          else
              PessoaNome.ParamByname ( 'NOME' ).AsString := TRIM(EdDigitacao.text);

          PessoaNome.Open  ;

          If ( PessoaNome.Fields[0].IsNull )
          then Begin
               Beep;
               MensagemPdv('Cliente Não Cadastrado, ou Cliente Sem Permissão de Crédito!') ;
               EdDigitacao.SetFocus ;
               Abort ;
          end
          Else Begin
               //Pega Informações do Cliente do Convenio
               FrmLocalizarClientePdv := TFrmLocalizarClientePdv.Create(Self);

               If FrmLocalizarClientePdv.Showmodal = MROK
               Then Begin
                    Cliente := FrmLocalizarClientePdv.CampTrecho ;

                    WITH DMPDV DO
                    BEGIN
                         Valida_Cliente.Close ;

                         Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
                         Valida_Cliente.ParamByName ('CODIGO').AsInteger := CLIENTE      ;

                         Valida_Cliente.Prepare ;
                         Valida_Cliente.Open ;

                         If PdvPESSOA_FJ.isNull
                         then Begin
                              PdvPESSOA_FJ.value := 1;
                              MENSAGEMPDV ('Cliente Inexistente!');
                              EdDigitacao.SetFocus;
                         end;

                         If Not Valida_ClienteLIMITE_TEMPO.isNull
                         then Begin
                              Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
                         end
                         else begin
                              Tempo  := 0 ;
                         end;

                         If Not Valida_ClienteLIMITE_CREDITO.isNull
                         then Begin
                              Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
                         end
                         else begin
                              Credito  := 0 ;
                         end;

                         Valida_Cliente.Close ;
                    END;

                    //VERIFICA CLIENTE EM ATRASO OU COM LIMITE VENCIDO
                    IF NOT ( DMAPP.Verifica_Limite_Pdv
                    (
                    DMAPP.CNPJ,
                    CLIENTE,
                    EdNome.TEXT,
                    TEMPO,
                    CREDITO,
                    DMAPP.DATACAIXA,
                    PdvVLR_PARC_LC.value
                    ) )
                    THEN BEGIN
                         EDCREDITO.Text := 'CLIENTE EM DÉBITO'    ;
                         EDCREDITO.Font.Color := CLRED   ;
                    END
                    ELSE BEGIN
                         EDCREDITO.Text := 'CRÉDITO OK';
                         EDCREDITO.Font.Color := CLBLACK ;
                    END ;

                    DsPessoa.DataSet := DmPdv.PessoaNome ;
               end
               Else Begin
                    EdDigitacao.SetFocus ;
               end;

               FrmLocalizarClientePdv.Free ;
               FrmLocalizarClientePdv := Nil  ;
          end;
     end;
end;

procedure TFrmConveniadoPdv.ActBuscaConveniadoCodigoExecute(Sender: TObject);
begin
     with DmPdv do
     Begin
          PessoaCod.close ;

          If TRIM(EdDigitacao.text) = ''
          then
              PessoaCod.ParamByname ( 'COD' ).AsInteger := 0
          else
              PessoaCod.ParamByname ( 'COD' ).AsInteger := strtoint(TRIM(EdDigitacao.text));

          PessoaCod.Open  ;

          If (PessoaCod.Fields[0].IsNull )
          then Begin
               Beep;
               MensagemPdv('Cliente Não Cadastrado, ou Cliente Sem Permissão de Crédito!') ;
               EdDigitacao.SetFocus ;
               Abort ;
          end
          Else begin
               Cliente := DmPdv.PessoaCodCodigo.Value ;

               WITH DMPDV DO
               BEGIN
                    Valida_Cliente.Close ;

                    Valida_Cliente.ParamByName ('CNPJ').AsString    := DmApp.Cnpj   ;
                    Valida_Cliente.ParamByName ('CODIGO').AsInteger := CLIENTE      ;

                    Valida_Cliente.Prepare ;
                    Valida_Cliente.Open ;

                    If PdvPESSOA_FJ.isNull
                    then Begin
                         PdvPESSOA_FJ.value := 1;
                         MENSAGEMPDV ('Cliente Inexistente!');
                         EdDigitacao.SetFocus;
                    end;

                    If Not Valida_ClienteLIMITE_TEMPO.isNull
                    then Begin
                         Tempo  := Valida_ClienteLIMITE_TEMPO.Value ;
                    end
                    else begin
                         Tempo  := 0 ;
                    end;

                    If Not Valida_ClienteLIMITE_CREDITO.isNull
                    then Begin
                         Credito  := Valida_ClienteLIMITE_CREDITO.Value ;
                    end
                    else begin
                         Credito  := 0 ;
                    end;

                    Valida_Cliente.Close ;
               END;

               //VERIFICA CLIENTE EM ATRASO OU COM LIMITE VENCIDO
               IF NOT ( DMAPP.Verifica_Limite_Pdv
               (
                    DMAPP.CNPJ,
                    CLIENTE,
                    EdNome.TEXT,
                    TEMPO,
                    CREDITO,
                    DMAPP.DATACAIXA,
                    PdvVLR_PARC_LC.value
               ) )
               THEN BEGIN
                    EDCREDITO.Text := 'CLIENTE EM DÉBITO'    ;
                    EDCREDITO.Font.Color := CLRED   ;
               END
               ELSE BEGIN
                    EDCREDITO.Text := 'CRÉDITO OK';
                    EDCREDITO.Font.Color := CLBLACK ;
               END ;

               DsPessoa.DataSet := DmPdv.PessoaCod ;
          end;
     end;
end;

procedure TFrmConveniadoPdv.FormCreate(Sender: TObject);
begin
  Cupom_Nominal := False ;
end;

end.


