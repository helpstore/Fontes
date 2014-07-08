 unit ConveniadoCheque_Form;

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
  TFrmConveniadoCheque = class(TForm)
    PnFuncoes: TPanel;
    ActLista: TActionList;
    ActCancelar: TAction;
    RxLabel1: TcxLabel;
    pncodigo: TPanel;
    EdDigitacao: TEdit;
    ActBuscaConveniadoCpf: TAction;
    DsPessoa: TDataSource;
    EdPessoa: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit9: TdxDBEdit;
    EdNatureza: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit10: TdxDBEdit;
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
    dxDBEdit6: TdxDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActBuscaConveniadoCpfExecute(Sender: TObject);
    procedure btnsimClick(Sender: TObject);
    procedure EdDigitacaoExit(Sender: TObject);
    procedure EdDigitacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }
  public
    { Public declarations }
    Tipo : String;
    Cliente: Integer;
  end;

var
  FrmConveniadoCheque: TFrmConveniadoCheque;

implementation

uses Funcoes,
     Pdv_Frm,
     Pdv_DM,
     Application_DM,
     LocalizarClientePdv;

{$R *.DFM}

procedure TFrmConveniadoCheque.FormShow(Sender: TObject);
begin
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0'))
     THEN BEGIN
          PnFuncoes.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0'))
     THEN BEGIN
          RxLabel1.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel3.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel4.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel6.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel2.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel5.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          RxLabel7.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     end;
     
     FrmConveniadoCheque.Top  := FrmPdv.Lista.Top  ;
     FrmConveniadoCheque.Left := FrmPdv.Lista.Left ;
end;

procedure TFrmConveniadoCheque.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrCancel ;
end;

procedure TFrmConveniadoCheque.ActBuscaConveniadoCpfExecute(Sender: TObject);
begin
     IF length(TRIM(EdDigitacao.text)) = 11
     Then Begin
          if CPF_Valido (TRIM(EdDigitacao.text))
          then Begin
               with DmPdv do
               Begin
                    PessoaCheque.close ;

                    PessoaCheque.ParamByname ( 'CPFCGC' ).AsString := TRIM(EdDigitacao.text);

                    PessoaCheque.Open  ;

                    If PessoaCheque.Fields[0].IsNull
                    then Begin
                         Beep;
                         MensagemPdv('Cliente Não Cadastrado!') ;
                         Abort ;
                    end
                    Else begin
                         Cliente := DmPdv.PessoaCpfCodigo.Value ;

                         DsPessoa.DataSet := DmPdv.PessoaCheque ;
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
                    PessoaCheque.close ;

                    PessoaCheque.ParamByname ( 'CPFCGC' ).AsString := TRIM(EdDigitacao.text);

                    PessoaCheque.Open  ;

                    If PessoaCheque.Fields[0].IsNull
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

procedure TFrmConveniadoCheque.btnsimClick(Sender: TObject);
begin
     If DsPessoa.DataSet.FieldByName('BLOQUEADO').AsString = 'S'
     THEN BEGIN
          MensagemPdv ('Cliente Bloqueado, Consultar Direção!');
          EdDigitacao.Clear ;
          EdDigitacao.SetFocus ;
     END
     ELSE BEGIN
          ModalResult := MrOk ;
     END;
end;

procedure TFrmConveniadoCheque.EdDigitacaoExit(Sender: TObject);
Var
   Aux: Char;
   Str: String ;
begin
     If ( EdDigitacao.Text ) = ''
     then begin
          If PerguntaPdv('Sair do Convênio') = 'S'
          Then
              ModalResult := MrCancel
          else
              EdDigitacao.SetFocus ;
     end
     else begin
          TIPO := 'DOC' ;
          ActBuscaConveniadoCpf.Execute ;
     end;
end;

procedure TFrmConveniadoCheque.EdDigitacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.


