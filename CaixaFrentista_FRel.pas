 unit CaixaFrentista_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls, cxGraphics, cxControls,
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
  TFRelListaCaixaFrentista = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Print: TRDprint;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label1: TcxLabel;
    Label2: TcxLabel;
    LblData: TcxLabel;
    LblUser: TcxLabel;
    ActContabilidade: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure ActContabilidadeExecute(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer     ;

    //CREDITOS
    Function  IniciaProdutos     :Boolean;
    Function  IniciaMovimentos_C :Boolean;
    Function  IniciaMovimentos_D :Boolean;
    Function  IniciaReceber      :Boolean;
    Procedure ImpEnt_Sai         ;
    //DEBITOS

    Function IniciaPagar        :Boolean;
    Function IniciaVendas       :Boolean;
    Function IniciaCartao       :Boolean;

    Procedure IncLin            ;
    Procedure ImpCreditos       ;
    Procedure ImpDebitos        ;
  public
    { Public declarations }
  end;

var
  FRelListaCaixaFrentista: TFRelListaCaixaFrentista;
  Linha, Pagina: Integer;
  Str: String;

  //IMPRESSAO DE CREDITOS E DEBITOS
  TipoFolha: Char; //TIPO = C OU D

  SOMAPRODUTOS, SOMALEITURA, SOMAMOVTOC, SOMAMOVTOD, SOMAHAVER: Real ;
  SOMABAIXAHAVER, SOMAPAGAS, SOMAVENDAS, SOMACARTAO, SOMARECEBIDAS: Real ;
  SOMABAIXASPARCIAISFAT: Real;

  CREDITOS, DEBITOS: Real ;
implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     CaixaFrentista_DM;

{$R *.DFM}

procedure TFRelListaCaixaFrentista.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelListaCaixaFrentista.IncLin;
begin
     Linha := Linha + 1;
     if Linha > 62
     then begin
          Print.Novapagina ;
     end;
end;

procedure TFRelListaCaixaFrentista.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelListaCaixaFrentista.ImpCreditos;
begin
     //CREDITOS
     STR :=  FORMATFLOAT ('###,###,##0.00', CREDITOS );
     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;
     Print.impf(linha, 51, 'CREDITOS' ,[comp17]);
     Print.impf(linha, 60, STR ,[comp17]);

     INCLIN;
end;

procedure TFRelListaCaixaFrentista.ImpDebitos;
begin
     //DEBITOS
     STR :=  FORMATFLOAT ('###,###,##0.00', DEBITOS );
     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;
     Print.impf(linha, 52, 'DEBITOS' ,[comp17]);
     Print.impf(linha, 60, STR ,[comp17]);

     INCLIN;
end;

procedure TFRelListaCaixaFrentista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DMCaixaFrentista.Tag = 0
     then begin
          dmApp.ZeraCaixaUsuario(owner);

          DMCaixaFrentista.Free;
          DMCaixaFrentista := Nil;
     end
     else begin
          DMCaixaFrentista.Tag := DMCaixaFrentista.Tag - 1;
     end;

     //
     Action := caFree;
     FRelListaCaixaFrentista := Nil;
end;

procedure TFRelListaCaixaFrentista.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelListaCaixaFrentista.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelListaCaixaFrentista.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  IF TIPOFOLHA = 'C'
  THEN BEGIN
       Print.ImpF(05, 01, 'CAIXA ' + DATETOSTR(DmApp.DataCaixa) + ' ' + (DmApp.NomeCaixaCompleto) + ' - TURNO ' + IntToStr(DmApp.turnocaixa) + ' - CREDITOS', [Normal, Negrito]);
  END
  ELSE BEGIN
       Print.ImpF(05, 01, 'CAIXA ' + DATETOSTR(DmApp.DataCaixa) + ' ' + (DmApp.NomeCaixaCompleto) + ' - TURNO ' + IntToStr(DmApp.turnocaixa) + ' - DEBITOS', [Normal, Negrito]);
  END;
  Print.ImpF(06, 01, Replicate('-', 80), [Normal]);
  linha  := 07;
end;

procedure TFRelListaCaixaFrentista.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
     LblUser.Caption := inttostr(DmApp.usuariocaixa);

     LblData.Caption := datetostr(DmApp.datacaixa);

  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TFRelListaCaixaFrentista.ActPreviewExecute(Sender: TObject);
begin
     TIPOFOLHA := 'C' ;

     lblStatus.caption := 'Selecionando Dados' ;
     lblStatus.Visible := True ;
     lblStatus.Refresh ;
     Print.Abrir ;

     CREDITOS := 0;
     DEBITOS  := 0;


     //INICIAPRODUTOS
     IF INICIAPRODUTOS
     THEN
         IMPCREDITOS ;

     //MOVIMENTOS DE CREDITO
     IF IniciaMovimentos_C
     THEN
         IMPCREDITOS ;

     //RECEBIMENTOS
     IF IniciaReceber
     THEN
         IMPCREDITOS ;

     //INICIA HAVER


     TIPOFOLHA := 'D' ;



     PRINT.Novapagina ;

     //MOVIMENTOS DE DEBITO
     IF IniciaMovimentos_D
     THEN
         IMPDEBITOS ;

     //CONTAS PAGAS
     IF IniciaPagar
     THEN
         IMPDEBITOS ;

     //VENDAS A PRAZO
     IF IniciaVendas
     THEN
         IMPDEBITOS ;

     //CARTAO DE CREDITO
     IF IniciaCartao
     THEN
         IMPDEBITOS ;

     //ENTRADAS E SAIDAS DO CAIXA
     IMPENT_SAI ;

     Anda.Visible:= False;
     print.Fechar;
end;




procedure TFRelListaCaixaFrentista.ImpEnt_Sai;
Begin
     //Imprime as Entradas e Saidas
     WITH DMCaixaFrentista DO
     BEGIN
          Ver_Caixa.Close ;

          Ver_Caixa.Open  ;

          IncLin;
          IncLin;

          Print.impf(linha,01, 'ENTRADAS',[comp17, NEGRITO]);
          Print.impf(linha,40, 'SAIDAS',[comp17, NEGRITO]);

          IncLin;
////////
          Print.impf(linha,01, 'TROCO INICIAL....:',[comp17]);
          Print.impf(linha,40, 'DINHEIRO.........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaTROCO_INICIAL.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaDINHEIRO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

////////
          Print.impf(linha,01, 'PRODUTOS.........:',[comp17]);
          Print.impf(linha,40, 'MOEDAS...........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaPRODUTOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaMOEDAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'RECEBIMENTOS.....:',[comp17]);
          Print.impf(linha,40, 'TICKET...........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaRECEBIMENTOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaTICKET.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'JUROS RECEBIDOS..:',[comp17]);
          Print.impf(linha,40, 'CHEQUE A VISTA...:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaJUROS_RECEBER.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaCHEQUE.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'DESC. NO RECEBER.:',[comp17]);
          Print.impf(linha,40, 'CHEQUE A PRAZO...:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaDESCONTOS_RECEBER.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaCHEQUE_PRAZO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'BOMBAS...........:',[comp17]);
          Print.impf(linha,40, 'TROCO CX SEGUINTE:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaBOMBAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaTROCO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'OUTRAS ENTRADAS..:',[comp17]);
          Print.impf(linha,40, 'CARTAO...........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaOUTRAS_ENTRADAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaCARTAO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'HAVER............:',[comp17]);
          Print.impf(linha,40, 'NOTAS............:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaHAVER.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaNOTAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'ACRESCIMOS.......:',[comp17]);
          Print.impf(linha,40, 'OUTRAS SAIDAS....:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaACRESCIMOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaOUTRAS_SAIDAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'JUROS............:',[comp17]);
          Print.impf(linha,40, 'BAIXA HAVER......:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaJUROS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaBAIXA_HAVER.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, '.................:',[comp17]);
          Print.impf(linha,40, 'DESCONTOS........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaDESCONTOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, '.................:',[comp17]);
          Print.impf(linha,40, 'DESC PROD BOMBAS.:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaDESCONTOS_PRODUTOS_BOMBA.value );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'ENTRADAS.........:',[comp17, NEGRITO]);
          Print.impf(linha,40, 'SAIDAS...........:',[comp17, NEGRITO]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaENTRADAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaSAIDAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'RESULTADO........:',[comp17, NEGRITO]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CaixaRESULTADO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          IncLin;

          IncLin;
          IncLin;
          IncLin;

          Print.impf(linha, 01, '----------------------------------' ,[comp17]);

          IncLin;

          Print.impf(linha, 01, DMAPP.NomeCaixaCompleto ,[comp17]);

          IncLin;
          IncLin;

          Print.impf(linha, 01, 'DECLARO ESTAR CIENTE DO RESULTADO APRESENTADO ACIMA, SENDO QUE, O MESMO SERA DEBITADO EM MEUS',[comp17]);
          IncLin;
          Print.impf(linha, 01, 'RENDIMENTOS MENSAIS, SENDO QUE O VALOR E : R$ ' + STR,[comp17]);
          IncLin;
          Print.impf(linha, 01, 'PARA TANTO DOU CIENCIA ASSINANDO ACIMA.',[comp17]);
     END;
end;

Function TFRelListaCaixaFrentista.IniciaProdutos: Boolean ;
Begin
     //Inicia Produtos
     WITH DMCaixaFrentista DO
     BEGIN
          Lista_Produtos_Caixa.Close ;
          Lista_Produtos_Caixa.Open  ;

          Lista_Produtos_Caixa.DisableControls ;
          Lista_Produtos_Caixa.FetchAll ;

          Lista_Produtos_Caixa.First ;

          IF Lista_Produtos_Caixa.RECORDCOUNT > 0
          THEN
              RESULT := TRUE
          ELSE
              RESULT := FALSE;

          SOMAPRODUTOS := 0;

          IncLin;
          IncLin;

          Print.impf(linha,01, 'CODIGO',[comp17]);
          Print.impf(linha,08, 'NOME',[comp17]);
          Print.impf(linha,49, '  QUANTIDADE',[comp17]);
          Print.impf(linha,60, '   DESCONTOS',[comp17]);
          Print.impf(linha,73, '       TOTAL',[comp17]);

          IncLin;

          while not Lista_Produtos_Caixa.eof do
          begin
               Print.impf(linha,01, Lista_Produtos_CaixaPRODUTO.Value,[comp17]);

               //PRODUTO
               Print.impf(linha,08, Lista_Produtos_CaixaNOME.VALUE ,[comp17]);

               //QUANTIDADE
               STR :=  FORMATFLOAT ('###,###,##0.00', Lista_Produtos_CaixaQUANTIDADE.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 49, STR ,[comp17]);

               //DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', Lista_Produtos_CaixaDESCONTOS.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha,60, STR ,[comp17]);

               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00', Lista_Produtos_CaixaTOTAL.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               SOMAPRODUTOS := SOMAPRODUTOS + Lista_Produtos_CaixaTOTAL.VALUE ;

               IncLin;

               Lista_Produtos_Caixa.Next ;
          end;

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', SOMAPRODUTOS );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          Print.impf(linha, 73, STR ,[comp17]);

          CREDITOS := CREDITOS + SOMAPRODUTOS ;

          Lista_Produtos_Caixa.EnableControls ;
     END;
end;

Function TFRelListaCaixaFrentista.IniciaReceber : Boolean;
Var
   Juros, Descontos: Real;
Begin
     //Contas Recebidas Pelo Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          Baixas_Receber.Close ;

          Baixas_Receber.Open  ;

          Baixas_Receber.DisableControls ;

          VER_FIN_FATURAS_PARCIAL_CAIXA.DisableControls ;

          Baixas_Receber.First ;

          SOMARECEBIDAS         := 0;
          SOMABAIXASPARCIAISFAT := 0;
          JUROS                 := 0;
          DESCONTOS             := 0;

          IF Baixas_Receber.RECORDCOUNT > 0
          THEN BEGIN
               RESULT := TRUE ;

               IncLin;
               IncLin;

               Print.impf(linha,01, 'NOME',[comp17]);
               Print.impf(linha,15, 'DOCUMENTO',[comp17]);
               Print.impf(linha,30, 'HISTORICO',[comp17]);
               Print.impf(linha,57, '       JUROS',[comp17]);
               Print.impf(linha,65, '      DESCTO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               while not Baixas_Receber.eof do
               begin
                    Print.impf(linha,01, Baixas_ReceberNOME.Value,[comp17]);

                    Print.impf(linha,15, Baixas_ReceberDOCTO.Value,[comp17]);

                    Print.impf(linha,15, Baixas_ReceberHISTORICO.Value,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberJUROS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 57, STR ,[comp17]);

                    //DESCONTOS
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberDESCONTOS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 65, STR ,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_ReceberVLR_BAIXA.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SOMARECEBIDAS := SOMARECEBIDAS + ARREDONDA(Baixas_ReceberVLR_BAIXA.VALUE,2);

                    JUROS     := JUROS     + ARREDONDA(Baixas_ReceberJUROS.VALUE    ,2) ;
                    DESCONTOS := DESCONTOS + ARREDONDA(Baixas_ReceberDESCONTOS.VALUE,2) ;

                    Baixas_Receber.Next ;
               end;

               //JUROS
               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 57, STR ,[comp17]);

               //DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 65, STR ,[comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', SOMARECEBIDAS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 73, STR ,[comp17]);

               CREDITOS := CREDITOS + SOMARECEBIDAS ;
          END
          ELSE BEGIN
               RESULT := FALSE;
          END;

          Baixas_Receber.EnableControls ;

          //BAIXAS PARCIAIS DE FATURAS
          VER_FIN_FATURAS_PARCIAL_CAIXA.CLOSE ;

          VER_FIN_FATURAS_PARCIAL_CAIXA.OPEN  ;

          VER_FIN_FATURAS_PARCIAL_CAIXA.FetchAll ;

          JUROS     := 0;
          DESCONTOS := 0;

          IF VER_FIN_FATURAS_PARCIAL_CAIXA.RecordCount > 0
          THEN BEGIN
               RESULT := TRUE ;

               IncLin;
               IncLin;

               Print.impf(linha,01, 'FATURA'      ,[comp17]);
               Print.impf(linha,06, 'NOME'        ,[comp17]);
               Print.impf(linha,40, 'HISTORICO'   ,[comp17]);
               Print.impf(linha,57, '       JUROS',[comp17]);
               Print.impf(linha,65, '      DESCTO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               while not VER_FIN_FATURAS_PARCIAL_CAIXA.eof do
               begin
                    Print.impf(linha, 01, VER_FIN_FATURAS_PARCIAL_CAIXAFATURA.TEXT,[comp17]);

                    Print.impf(linha, 06, VER_FIN_FATURAS_PARCIAL_CAIXANOME.TEXT,[comp17]);

                    Print.impf(linha, 35, VER_FIN_FATURAS_PARCIAL_CAIXAHISTORICO.VALUE,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SOMABAIXASPARCIAISFAT := SOMABAIXASPARCIAISFAT + VER_FIN_FATURAS_PARCIAL_CAIXAVALOR.Value;

                    VER_FIN_FATURAS_PARCIAL_CAIXA.Next ;
               end;

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', SOMABAIXASPARCIAISFAT );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 73, STR ,[comp17]);

               CREDITOS := CREDITOS + SOMABAIXASPARCIAISFAT ;
          END
          ELSE BEGIN
               IF NOT RESULT
               THEN
                   RESULT := FALSE ;
          END;

          VER_FIN_FATURAS_PARCIAL_CAIXA.EnableControls ;
     END;
end;

Function TFRelListaCaixaFrentista.IniciaMovimentos_C : Boolean;
Begin
     //Movimentos de Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          //CREDITOS
          Movimentos_C.Close ;
          Movimentos_C.Open  ;

          Movimentos_C.FetchAll ;

          IF Movimentos_C.RECORDCOUNT > 0
          THEN
              RESULT := TRUE
          ELSE
              RESULT := FALSE;

          if Movimentos_C.RecordCount > 0
          then begin

               IncLin;
               IncLin;

               Print.impf(linha,01, 'DOCUMENTO',[comp17]);
               Print.impf(linha,15, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               Movimentos_C.DisableControls ;
               Movimentos_C.First ;
               SomaMovtoC := 0    ;

               while not Movimentos_C.eof do
               begin
                    Print.impf(linha,01, Movimentos_CDOCUMENTO.Value,[comp17]);

                    Print.impf(linha,15, Movimentos_CHISTORICO.Value,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', Movimentos_CVALOR.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SomaMovtoC := SomaMovtoC + Movimentos_CVALOR.Value;

                    Movimentos_C.Next ;
               end;

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', SomaMovtoC );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               CREDITOS := CREDITOS + SOMAMOVTOC ;

               Movimentos_C.EnableControls ;
          end;
     END;
end;



//*/*/*/*/  DEBITOS   //*/*/*/*/

Function TFRelListaCaixaFrentista.IniciaMovimentos_D : Boolean;
Begin
     //Movimentos de Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          //DEBITOS
          Movimentos_D.Close ;

          Movimentos_D.Open  ;

          Movimentos_D.FetchAll ;

          IF Movimentos_D.RECORDCOUNT > 0
          THEN
              RESULT := TRUE
          ELSE
              RESULT := FALSE;

          if Movimentos_D.RecordCount > 0
          then begin

               IncLin;
               IncLin;

               Print.impf(linha,01, 'DOCUMENTO',[comp17]);
               Print.impf(linha,15, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               Movimentos_D.DisableControls ;
               Movimentos_D.First ;
               SomaMovtoD := 0    ;

               while not Movimentos_D.eof do
               begin
                    Print.impf(linha,01, Movimentos_DDOCUMENTO.Value,[comp17]);

                    Print.impf(linha,15, Movimentos_DHISTORICO.Value,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', Movimentos_DVALOR.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SomaMovtoD := SomaMovtoD + Movimentos_DVALOR.Value;

                    Movimentos_D.Next ;
               end;

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', SomaMovtoD );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               DEBITOS := DEBITOS + SOMAMOVTOD ;

               Movimentos_D.EnableControls ;
          end;
     END;
end;

Function TFRelListaCaixaFrentista.IniciaPagar : Boolean;
Begin
     //Contas Pagas pelo Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          Baixas_Pagar.Close ;
          Baixas_Pagar.Open  ;

          Baixas_Pagar.DisableControls ;

          Baixas_Pagar.First ;

          SOMAPAGAS := 0;

          IncLin;

          IncLin;

          Baixas_Pagar.FetchAll ;

          IF Baixas_Pagar.RECORDCOUNT > 0
          THEN BEGIN
               RESULT := TRUE ;

               Print.impf(linha,01, 'NOME',[comp17]);
               Print.impf(linha,30, 'DOCUMENTO',[comp17]);
               Print.impf(linha,45, 'VENCIMENTO',[comp17]);
               Print.impf(linha,53, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       TOTAL',[comp17]);

               IncLin;

               while not Baixas_Pagar.eof do
               begin
                    //NOME
                    Print.impf(linha, 01, Baixas_PagarNOME.Value,[comp17]);

                    //DOCUMENTO
                    Print.impf(linha, 30, Baixas_PagarDOCTO.VALUE ,[comp17]);

                    //HISTORICO
                    Print.impf(linha, 45, DATETOSTR(Baixas_PagarDT_VENCTO.VALUE) ,[comp17]);

                    //HISTORICOS
                    Print.impf(linha, 53, Baixas_PagarHISTORICO.VALUE ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_PagarTOTAL.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    Baixas_Pagar.Next ;

                    SOMAPAGAS := SOMAPAGAS + Baixas_PagarTotal.Value;

               end;

               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00', SOMAPAGAS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               DEBITOS := DEBITOS + SOMAPAGAS ;

               Baixas_Pagar.EnableControls ;
          END
          ELSE BEGIN
               RESULT := FALSE;
          END;
     END;
end;

Function TFRelListaCaixaFrentista.IniciaVendas : Boolean;
Begin
     //CAPTURA A LEITURA DAS BOMBAS
     WITH DMCaixaFrentista DO
     BEGIN
          SomaVendas       := 0;

          SelFatura_Futura.Close ;

          SelFatura_Futura.Open  ;

          SelFatura_Futura.DisableControls;

          SelFatura_Futura.FetchAll ;

          SelFatura_Futura.First ;

          IF SelFatura_Futura.RECORDCOUNT > 0
          THEN BEGIN
               RESULT := TRUE ;

               Print.impf(linha,01, 'NOME',[comp17]);
               Print.impf(linha,30, 'CF',[comp17]);
               Print.impf(linha,53, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       TOTAL',[comp17]);

               IncLin;

               While Not SelFatura_Futura.Eof do
               begin
                    If SelFatura_FuturaTIPO_VENDA.Value = 'FFT'
                    Then Begin
                         //NOME
                         Print.impf(linha, 01, SelFatura_FuturaPESSOA_RAZAO.Value,[comp17]);

                         //DOCUMENTO
                         Print.impf(linha, 30, SelFatura_FuturaCODIGO.TEXT ,[comp17]);

                         Print.impf(linha, 40, SelFatura_Futuranum_cupom.TEXT ,[comp17]);

                         //HISTORICOS
                         Print.impf(linha, 53, SelFatura_FuturaHISTORICO.VALUE ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', SelFatura_FuturaAPRAZO.VALUE );
                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;
                         Print.impf(linha, 73, STR ,[comp17]);

                         IncLin;

                         SomaVendas        := SomaVendas        + SelFatura_FuturaAPRAZO.value ;
                    end;

                    SelFatura_Futura.Next ;

               end;

               SelFatura_Futura.EnableControls ;

               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00', SOMAVENDAS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               DEBITOS := DEBITOS + SOMAVENDAS ;
          END
          ELSE BEGIN
               RESULT := FALSE ;
          END;
     END;
end;

Function TFRelListaCaixaFrentista.IniciaCartao : Boolean;
Begin
     //Contas Recebidas Pelo Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          Ver_Cartao.Close ;
          Ver_Cartao.Open  ;

          Ver_Cartao.DisableControls ;
          Ver_Cartao.First ;

          SOMACARTAO := 0;

          while not Ver_Cartao.eof do
          begin
               SOMACARTAO := SOMACARTAO + Ver_CartaoVALOR.Value;
               Ver_Cartao.Next ;
          end;

          Ver_Cartao.EnableControls ;
     END;
end;

procedure TFRelListaCaixaFrentista.ActContabilidadeExecute( Sender: TObject);
Var
   Planilha: Integer;
begin
     //Imprime as Entradas e Saidas
     WITH DMCaixaFrentista DO
     BEGIN
          Ver_Caixa.Close ;

          Ver_Caixa.Open  ;

          Planilha := Ver_CaixaPLANILHA.Value ;
     end;

     if messagedlg('Relançar?', MtInformation,[mbok, mbcancel],0 ) = mrok
     then begin

        //Lanca Contabilidade de Movimentos
        DmApp.Lanca_Contabilidade_Movimentos ( DmApp.DataCaixa, DmApp.UsuarioCaixa, DmApp.ContaCaixa, Planilha, DmApp.TurnoCaixa );

        //Lanca Contabilidade dos Produtos do Caixa
        DmApp.Lanca_Contabilidade_Prod_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.TurnoCaixa );

        //Lanca Contabilidade do Contas Recebidas
        DmApp.Lanca_Receber_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa, DmApp.TurnoCaixa );

        //Lanca Notas no Caixa
        DmApp.Lanca_Notas_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa , DmApp.TurnoCaixa );

        //Lanca Cartao no Caixa
        DmApp.Lanca_Cartao_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa , DmApp.TurnoCaixa );

        //Lanca Cheque no Caixa
        DmApp.Lanca_Chq_Prazo_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa, DmApp.TurnoCaixa );

        //Lanca Dinheiro no Caixa
        DmApp.Lanca_Dinheiro_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa, DmApp.TurnoCaixa );

        //Lanca Moedas no Caixa
        DmApp.Lanca_Moedas_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa, DmApp.TurnoCaixa );

        //Lanca Contabilidade Haver
        DmApp.Lanca_Haver_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa, DmApp.TurnoCaixa );

        //Lanca Contabilidade Baixa Haver
        DmApp.Lanca_Baixa_Haver_Caixa ( DmApp.DataCaixa, DmApp.UsuarioCaixa, Planilha, DmApp.ContaCaixa, DmApp.TurnoCaixa );


     end;
end;

end.



