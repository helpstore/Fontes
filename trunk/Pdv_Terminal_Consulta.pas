unit Pdv_Terminal_Consulta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls,   Serial, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxLabel, ACBrBase, ACBrExtenso;

type
  TFrm_Pdv_Terminal_Consulta = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    PNMENSAGEM: TPanel;
    MENSAGEM: TcxLabel;
    Captura: TTimer;
    pncodigo: TPanel;
    EdDigitacao: TEdit;
    Panel2: TPanel;
    nome: TEdit;
    Panel3: TPanel;
    unidade: TEdit;
    Panel4: TPanel;
    Image2: TImage;
    Panel5: TPanel;
    lblvalor: TcxLabel;
    Panel6: TPanel;
    extenso: TEdit;
    Leitor: TSerialPort;
    Timer1: TTimer;
    ValorExtenso: TACBrExtenso;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LerTexto ( Texto: String );
    procedure MensagemPromocional;
    procedure CapturaTimer(Sender: TObject);
    procedure EdDigitacaoExit(Sender: TObject);
    procedure CapturaDados ( Codigo: STring );
    procedure EdDigitacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LimpaPaineis;
    procedure Timer1Timer(Sender: TObject);
    procedure LeitorAfterReceive(Sender: TObject; data: String);
    function  TrataLeitor(data: String): String;
    procedure FormShow(Sender: TObject);
    function VerificaDigito(data: String): String;
    procedure Image1DblClick(Sender: TObject);

  private
    { Private declarations }
   // Agente: IAgentCtlCharacter;

  public
    { Public declarations }
  end;

var
  Frm_Pdv_Terminal_Consulta: TFrm_Pdv_Terminal_Consulta;
  MsgCont : Integer;
  Msg     : String;
  NomeAgente: String;
  TempoAmostra: Integer;


implementation

uses Application_DM, Pdv_DM, Funcoes;

{$R *.DFM}

procedure TFrm_Pdv_Terminal_Consulta.MensagemPromocional;
Var
   Len: Integer;
begin
     if Trim (Msg) = ''
     then begin
          If MsgCont = 1
          then begin
               If Not ( DmApp.Pdv_Msg1 <> '' )
               then
                   Msg := DmApp.Pdv_Msg1 ;
          end;

          If MsgCont = 2
          then begin
               If Not ( DmApp.Pdv_Msg2 <> '' )
               then
                   Msg := DmApp.Pdv_Msg2 ;
          end;

          If MsgCont = 3
          then begin
               If Not ( DmApp.Pdv_Msg3 <> '' )
               then
                   Msg := DmApp.Pdv_Msg3 ;
          end;

          If MsgCont = 4
          then begin
               If Not ( DmApp.Pdv_Msg4 <> '' )
               then
                   Msg := DmApp.Pdv_Msg4 ;
          end;

          If MsgCont = 5
          then begin
               If Not ( DmApp.Pdv_Msg5 <> '' )
               then
                   Msg := DmApp.Pdv_Msg1 ;
          end;

          If Trim( Msg ) = ''
          then
              Msg := 'Obrigado Volte Sempre!' ;

          MsgCont := MsgCont + 1;

          If MsgCont > 5
          Then
              MsgCont := 1;
     end;

     Repeat
           Msg := Msg + ' ' ;
     until Length(Msg) >= 85 ;

     Len := Length(msg);

     Msg := '  ' + copy(Msg,1, len - 2 );

     MENSAGEM.Caption := Msg ;
     MENSAGEM.Update ;
end;

procedure TFrm_Pdv_Terminal_Consulta.FormCreate(Sender: TObject);
begin

 {    if dmapp.Perfil_ComputadorPDV_AGENTE.value <> '' then
         NomeAgente := dmapp.Perfil_ComputadorPDV_AGENTE.value
     else
         NomeAgente := 'merlin';

     Agent1.Connected := True;
     Agent1.Characters.Load(NomeAgente, NomeAgente+'.acs');
     // Associar o agente à variável Agente
     Agente := Agent1.Characters[NomeAgente];
     Agente.Show(0); // Aparecer 0-lentamente 1-instantaneamente
     // Encenação de abertura
     Agente.Play('Greet'); // Cumprimentar
     Agente.Play('Announce'); // Anunciar
     Agente.Speak('Ola Tudo Bem', EmptyStr); // Falar
     Sleep(700); // Da uma pausa ao programa
     Agente.Speak('Terminal de Consulta Ativado', EmptyStr);
     Agente.Play('RestPose'); // Descansar
     Agente.Play('Wave'); // Assenar com a Mao


     MsgCont := 1;

     Msg     := '';

     TempoAmostra := 0 ;}
end;

procedure TFrm_Pdv_Terminal_Consulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     IF DmApp.LEITORPORTA <> '' THEN
     BEGIN
          if Leitor.ClosePort then
          begin
               beep;
               MensagemPdv('Erro ao Fechar a Porta Leitor');
          end;
     end;

     {Agente.Hide(0);
     Agent1.Connected:=false;}
end;

procedure TFrm_Pdv_Terminal_Consulta.LerTexto(Texto: String);
begin
     //Agente.Speak( texto,EmptyStr);
end;

procedure TFrm_Pdv_Terminal_Consulta.CapturaTimer(Sender: TObject);
begin
     MensagemPromocional ;

     TempoAmostra  := TempoAmostra + 1 ;

     if TempoAmostra > 20
     then begin
          TempoAmostra := 0;
          LimpaPaineis ;
     end;
end;

procedure TFrm_Pdv_Terminal_Consulta.EdDigitacaoExit(Sender: TObject);
begin
     CapturaDados( EdDigitacao.text );
     EdDigitacao.clear ;
end;

procedure TFrm_Pdv_Terminal_Consulta.CapturaDados(Codigo: STring);
var
   Aux: String;
   Valor_Produto: Real;
begin
     TempoAmostra := 0 ;

     //dados do produto
     If Trim(CODIGO) <> ''
     then begin
          Aux := CODIGO ;

          If DmApp.Elimina_Zeros = 'S'
          THEN BEGIN
               While Copy ( Aux, 1, 1 ) = '0' DO
               BEGIN
                    Aux := Copy ( Aux, 2, 15 );
               End;
          END;

          If DmApp.Acrescenta_Zeros = 'S'
          THEN BEGIN
               While Length ( Aux ) < 10 DO
               BEGIN
                    Aux := '0' + Aux ;
               End;
          END ;

          codigo := aux;

          with dmpdv do
          begin
               VerProduto.Close ;

               VerProduto.ParamByName ('E').AsString  := DmApp.Cnpj   ;
               VerProduto.ParamByName ('C').AsString  := codigo ;

               VerProduto.Prepare ;
               VerProduto.Open ;

               If VerProdutoNOME.isNull
               then Begin
                    Beep ;
                    nome.Text := 'Produto Não Cadastrado, Verifique!';
                    EdDigitacao.SetFocus ;
                    lertexto ('Produto Não Cadastrado, Verifique!');
               end
               else begin
                    //VERIFICA SE TEM PROMOÇÃO
                    Valor_Produto :=  dmapp.Verifica_Promocao ( CODIGO, DmApp.data_Servidor );

                    If Valor_Produto > 0
                    then begin
                         lblvalor.Caption := formatfloat('###,##0.00', ARREDONDA(Valor_Produto, 2)) ;
                         ValorExtenso.valor := arredonda( Valor_Produto, 2);
                    end
                    else begin
                         lblvalor.Caption := formatfloat('###,##0.00',arredonda(VerProdutoPRC_VENDA.Value, 2)) ;
                         ValorExtenso.valor := arredonda(VerProdutoPRC_VENDA.Value, 2);
                    end;

                    nome.Text          := VerProdutonome.value ;
                    extenso.Text       := valorextenso.texto ;
                    unidade.text       := VerProdutoUNIDADE.value ;
                    EdDigitacao.setfocus ;
                    lertexto ( valorextenso.Texto );

               end;
          end;
     end;

end;

procedure TFrm_Pdv_Terminal_Consulta.EdDigitacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     If ( Key = 13 )
     then begin
          CapturaDados( EdDigitacao.text );
          EdDigitacao.clear ;
     end;
end;

procedure TFrm_Pdv_Terminal_Consulta.LimpaPaineis;
begin
     EdDigitacao.Clear ;
     EdDigitacao.setfocus ;
     nome.Clear ;
     unidade.Clear ;
     lblvalor.Caption := '0,00';
     extenso.Clear ;
end;

procedure TFrm_Pdv_Terminal_Consulta.Timer1Timer(Sender: TObject);
begin
     IF DmApp.LEITORPORTA <> ''
     THEN BEGIN
          Leitor.getdata;
          // You should consider adding a property to 'AutoFlush' on
          // getdata.
          Leitor.FlushRX;
          Leitor.FlushTX;
     END;
end;

procedure TFrm_Pdv_Terminal_Consulta.LeitorAfterReceive(Sender: TObject; data: String);
begin
     Try
        if ( data <> '' )
        then begin
             CapturaDados( TrataLeitor (Data) );
        end;
     except

     end;
end;

function TFrm_Pdv_Terminal_Consulta.TrataLeitor(data: String): String;
Var
   Str: String;
   I, Len: Integer;
begin
     Str := Trim(Data) ;

     Len := Length(Str);

     I := 1;

     Len := 0;

     REPEAT
          //NUMEROS SAO DE 48 ate 57 ASCII
          if ( VerificaDigito(COPY(STR,I,1)) = 'N' ) and ( len = 0 )
          then
              Len := I ;

          I := I + 1;
     UNTIL (I > LENGTH(Str)) OR (Len > 0);

     If Len > 0
     then
         Str := Copy ( Str, 1, Len - 1 );

     Result := Str ;
end;


procedure TFrm_Pdv_Terminal_Consulta.FormShow(Sender: TObject);
begin
   If DmApp.LeitorPorta <> 'N'
   THEN BEGIN 
     if Leitor.OpenPort(Lei)
     then begin
          beep;
     end
     Else begin
          beep;
          MensagemPdv('Erro ao Abrir a Porta COM2');
     end;
   end;
end;

function TFrm_Pdv_Terminal_Consulta.VerificaDigito(data: String): String;
begin
     if Data = '1'
     then begin
          Result := 'S';
     end
     else begin
          if Data ='2'
          then begin
               Result := 'S';
          end
          else begin
               if Data = '3'
               then begin
                    Result := 'S';
               end
               else begin
                    if Data = '4'
                    then begin
                         Result := 'S';
                    end
                    else begin
                         if Data = '5'
                         then begin
                              Result := 'S';
                         end
                         else begin
                              if Data = '6'
                              then begin
                                   Result := 'S';
                              end
                              else begin
                                   if Data = '7'
                                   then begin
                                        Result := 'S';
                                   end
                                   else begin
                                        if Data = '8'
                                        then begin
                                             Result := 'S';
                                        end
                                        else begin
                                             if Data = '9'
                                             then begin
                                                  Result := 'S';
                                             end
                                             else begin
                                                  if Data = '0'
                                                  then begin
                                                       Result := 'S';
                                                  end
                                                  else begin
                                                       Result := 'N';
                                                  end;
                                             end;
                                        end;
                                   end;
                              end;
                         end;
                    end;
               end;
          end;
     end;
end;

procedure TFrm_Pdv_Terminal_Consulta.Image1DblClick(Sender: TObject);
begin
     Close ;
end;

end.

{
Acknowledge Balança a Cabeça 
Alert Endireita a cabeça e levanta as sobrancelhas 
Announce Levanta a mão 
Blink Pisca os olhos 
Confused Passa a mão na cabeça 
Congratulate Faz sinal de positivo 
Decline Levanta a mão e balança a cabeça 
DontRecognize Leva a mão até a orelha 
Explain Estende o braço para o lado 
GestureDown Aponta para baixo 
GestureLeft Aponta para a esquerda 
GestureRight Aponta para a direita 
GestureUp Aponta para cima 
GetAttention Acena com a mão 
GlanceDown Olha para baixo 
GlanceLeft Olha para a esquerda 
GlanceRight Olha para a direita 
GlanceUp Olha para cima 
Greet Faz gesto de boas vindas 
Hide Desaparece 
Hear_1 Estende as orelhas 
Hear_2 Vira a cabeça para esquerda 
Idle1_1 Enche o pulmão 
Idle3_1 Começa a dormir 
LookDown Olha para a baixo 
LookDownBlink Olha para baixo e pisca 
MoveDown Voa para baixo 
MoveLeft Voa para esquerda 
MoveRight Voa para direita 
MoveUp Voa para cima 
Pleased Bate palmas e sorri 
Read Pega papel do casaco, começa a ler e olha para cima 
Sad Expressão de Triste
Show Aparece como mágica 
Surprised Expressão de surpreso 
Think Olha para cima e coloca a mão no queixo 
Uncertain Levanta sobrancelhas e coloca mão no queixo 
Wave Acena com a mão
Write Pega papel do casaco, escreve olha para cima
}
