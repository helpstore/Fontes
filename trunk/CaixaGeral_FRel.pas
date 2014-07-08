 unit CaixaGeral_FRel;

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
  TFRelListaCaixaGeral = class(TForm)
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
    LblData: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);

  private
    { Private declarations }
    Grupo, SubGrupo: Integer     ;

    //CREDITOS

    Function  IniciaProdutos     :Boolean;
    Function  IniciaVendedores   :Boolean;
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
  FRelListaCaixaGeral: TFRelListaCaixaGeral;
  Linha, Pagina: Integer;
  Str: String;

  //IMPRESSAO DE CREDITOS E DEBITOS
  TipoFolha: Char; //TIPO = C OU D

  SOMAPRODUTOS, SOMALEITURA, SOMAMOVTOC, SOMAMOVTOD, SOMAHAVER, SOMAVENDEDORES: Real ;
  SOMABAIXAHAVER, SOMAPAGAS, SOMAVENDAS, SOMACARTAO, SOMARECEBIDAS: Real ;
  SOMABAIXASPARCIAISFAT: Real;

  CREDITOS, DEBITOS: Real ;
implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes, CaixaFrentista_DM;

{$R *.DFM}

procedure TFRelListaCaixaGeral.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelListaCaixaGeral.IncLin;
begin
     Linha := Linha + 1;
     if Linha > 62
     then begin
          Print.Novapagina ;
     end;
end;

procedure TFRelListaCaixaGeral.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelListaCaixaGeral.ImpCreditos;
begin
     //CREDITOS
     STR :=  FORMATFLOAT ('###,###,##0.00', CREDITOS );
     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;
     Print.impf(linha, 51, 'CREDITOS' ,[comp17]);

     Print.impf(linha, 73, STR ,[comp17]);

     INCLIN;
end;

procedure TFRelListaCaixaGeral.ImpDebitos;
begin
     //DEBITOS
     STR :=  FORMATFLOAT ('###,###,##0.00', DEBITOS );
     WHILE LENGTH(STR) < 12 DO
     BEGIN
          STR := ' ' + STR ;
     END;
     Print.impf(linha, 52, 'DEBITOS' ,[comp17]);
     Print.impf(linha, 55, STR ,[comp17]);

     INCLIN;
end;

procedure TFRelListaCaixaGeral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DMCaixaFrentista.Tag = 0
     then begin

          //
          DMCaixaFrentista.Free;
          DMCaixaFrentista := Nil;
     end
     else begin
          DMCaixaFrentista.Tag := DMCaixaFrentista.Tag - 1;
     end;

     //
     Action := caFree;
     FRelListaCaixaGeral := Nil;
end;

procedure TFRelListaCaixaGeral.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelListaCaixaGeral.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelListaCaixaGeral.PrintNewPage(Sender: TObject; Pagina: Integer);
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
       Print.ImpF(05, 01, 'CAIXA ' + DATETOSTR(DmApp.DataCaixa) + ' ' + IntToStr(DmApp.UsuarioCaixa) + ' CREDITOS', [Normal, Negrito]);
  END
  ELSE BEGIN
       Print.ImpF(05, 01, 'CAIXA ' + DATETOSTR(DmApp.DataCaixa) + ' ' + IntToStr(DmApp.UsuarioCaixa) + ' DEBITOS', [Normal, Negrito]);
  END;
  Print.ImpF(06, 01, Replicate('-', 80), [Normal]);
  linha  := 07;
end;

procedure TFRelListaCaixaGeral.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try

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

procedure TFRelListaCaixaGeral.ActPreviewExecute(Sender: TObject);
begin
     TIPOFOLHA := 'C' ;

     lblStatus.caption := 'Selecionando Dados' ;
     lblStatus.Visible := True ;
     lblStatus.Refresh ;
     Print.Abrir ;

     CREDITOS := 0;
     DEBITOS  := 0;

     //INICIA VENDEDORES
     IF INICIAVENDEDORES
     THEN
         IMPCREDITOS ;

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

     //INICIA BAIXA HAVER

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




procedure TFRelListaCaixaGeral.ImpEnt_Sai;
Begin
     //Imprime as Entradas e Saidas
     WITH DMCaixaFrentista DO
     BEGIN
          Ver_Caixa_Geral.Close ;

          Ver_Caixa_Geral.Open  ;

          IncLin;
          IncLin;

          Print.impf(linha,01, 'ENTRADAS',[comp17, NEGRITO]);
          Print.impf(linha,40, 'SAIDAS',[comp17, NEGRITO]);

          IncLin;
////////
          Print.impf(linha,01, 'TROCO INICIAL....:',[comp17]);
          Print.impf(linha,40, 'DINHEIRO.........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralTROCO_INICIAL.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralDINHEIRO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

////////
          Print.impf(linha,01, 'PRODUTOS.........:',[comp17]);
          Print.impf(linha,40, 'MOEDAS...........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralPRODUTOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralMOEDAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'RECEBIMENTOS.....:',[comp17]);
          Print.impf(linha,40, 'TICKET...........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralRECEBIMENTOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralTICKET.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'JUROS RECEBIDOS..:',[comp17]);
          Print.impf(linha,40, 'CHEQUE A VISTA...:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralJUROS_RECEBER.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralCHEQUE.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'DESC. NO RECEBER.:',[comp17]);
          Print.impf(linha,40, 'CHEQUE A PRAZO...:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralDESCONTOS_RECEBER.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralCHEQUE_PRAZO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'BOMBAS...........:',[comp17]);
          Print.impf(linha,40, 'FALT/SOBRAS CX FT:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralBOMBAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralSALDO_CAIXAS_FRENTISTA.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'OUTRAS ENTRADAS..:',[comp17]);
          Print.impf(linha,40, 'CARTAO...........:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralOUTRAS_ENTRADAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralCARTAO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'HAVER............:',[comp17]);
          Print.impf(linha,40, 'NOTAS............:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralHAVER.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralNOTAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'ACRESCIMOS.......:',[comp17]);
          Print.impf(linha,40, 'OUTRAS SAIDAS....:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralACRESCIMOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralOUTRAS_SAIDAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'JUROS............:',[comp17]);
          Print.impf(linha,40, 'BAIXA HAVER......:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralJUROS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralBAIXA_HAVER.VALUE );
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

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralDESCONTOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, '.................:',[comp17]);
          Print.impf(linha,40, 'TROCO DE VENDAS..:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralTROCO_VENDAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, '.................:',[comp17]);
          Print.impf(linha,40, 'PAGAS............:',[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralPAGAMENTOS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////
          Print.impf(linha,01, 'ENTRADAS.........:',[comp17, NEGRITO]);
          Print.impf(linha,40, 'DESC PROD BOMBAS.:',[comp17, NEGRITO]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralENTRADAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

//          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralSAIDAS.VALUE );

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralDESCONTOS_PRODUTOS_BOMBA.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;
//////////

          Print.impf(linha,01, '.................:',[comp17, NEGRITO]);
          Print.impf(linha,40, 'TRANSF CX SEGUINTE',[comp17, NEGRITO]);

          STR :=  FORMATFLOAT ('###,###,##0.00', 0 );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralTROCO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

//////////
          Print.impf(linha,01, 'RESULTADO........:',[comp17, NEGRITO]);
          Print.impf(linha,40, 'SAIDAS...........:',[comp17, NEGRITO]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralRESULTADO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 15, STR ,[comp17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralSAIDAS.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 55, STR ,[comp17]);

          IncLin;

          IncLin;
          IncLin;
          IncLin;

          Print.impf(linha, 01, '----------------------------------' ,[comp17]);

          IncLin;

          Print.impf(linha, 01, DMAPP.NomeCaixaCompleto ,[comp17]);

          IncLin;
          IncLin;

          STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_GeralRESULTADO.VALUE );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 01, 'DECLARO ESTAR CIENTE DO RESULTADO APRESENTADO ACIMA, SENDO QUE, O MESMO SERA DEBITADO EM MEUS',[comp17]);
          IncLin;
          Print.impf(linha, 01, 'RENDIMENTOS MENSAIS, SENDO QUE O VALOR E : R$ ' + STR,[comp17]);
          IncLin;
          Print.impf(linha, 01, 'PARA TANTO DOU CIENCIA ASSINANDO ACIMA.',[comp17]);
     END;
end;

Function TFRelListaCaixaGeral.IniciaProdutos: Boolean ;
Begin
     //Inicia Produtos
     WITH DMCaixaFrentista DO
     BEGIN
          Lista_Produtos_Caixa_Geral.Close ;
          Lista_Produtos_Caixa_Geral.Open  ;

          Lista_Produtos_Caixa_Geral.DisableControls ;
          Lista_Produtos_Caixa_Geral.FetchAll ;

          Lista_Produtos_Caixa_Geral.First ;

          IF Lista_Produtos_Caixa_Geral.RECORDCOUNT > 0
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

          while not Lista_Produtos_Caixa_Geral.eof do
          begin
               Print.impf(linha,01, Lista_Produtos_Caixa_GeralPRODUTO.Value,[comp17]);

               //PRODUTO
               Print.impf(linha,08, Lista_Produtos_Caixa_GeralNOME.VALUE ,[comp17]);

               //QUANTIDADE
               STR :=  FORMATFLOAT ('###,###,##0.00', Lista_Produtos_Caixa_GeralQUANTIDADE.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 49, STR ,[comp17]);

               //DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', Lista_Produtos_Caixa_GeralDESCONTOS.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha,60, STR ,[comp17]);

               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00', Lista_Produtos_Caixa_GeralTOTAL.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               SOMAPRODUTOS := SOMAPRODUTOS + Lista_Produtos_Caixa_GeralTOTAL.VALUE ;

               IncLin;

               Lista_Produtos_Caixa_Geral.Next ;
          end;

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', SOMAPRODUTOS );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 73, STR ,[comp17]);

          IncLin;

          CREDITOS := CREDITOS + SOMAPRODUTOS ;

          Lista_Produtos_Caixa_Geral.EnableControls ;
     END;
end;

Function TFRelListaCaixaGeral.IniciaVendedores: Boolean ;
Begin
     //Inicia Vendedores
     WITH DMCaixaFrentista DO
     BEGIN
          Ver_Caixa_Vendedor.Close ;
          Ver_Caixa_Vendedor.Open  ;

          Ver_Caixa_Vendedor.DisableControls ;
          Ver_Caixa_Vendedor.FetchAll ;

          Ver_Caixa_Vendedor.First ;

          IF Ver_Caixa_Vendedor.RECORDCOUNT > 0
          THEN
              RESULT := TRUE
          ELSE
              RESULT := FALSE;

          SOMAVENDEDORES := 0;

          IncLin;
          IncLin;

          Print.impf(linha,01, '  VENDEDOR',[comp17]);
          Print.impf(linha,34, '  DINHEIRO',[comp17]);
          Print.impf(linha,42, '    CHEQUE',[comp17]);
          Print.impf(linha,50, '    CARTAO',[comp17]);
          Print.impf(linha,58, '    TICKET',[comp17]);
          Print.impf(linha,66, '     PRAZO',[comp17]);
          Print.impf(linha,74, '     TOTAL',[comp17]);
          IncLin;

          while not Ver_Caixa_Vendedor.eof do
          begin
               Print.impf(linha,01, PREENCHE(Ver_Caixa_VendedorVENDEDOR.TEXT,'0', 3) + '-' + Ver_Caixa_VendedorNOME.VALUE ,[comp17]);

               //DINHEIRO
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_VendedorDINHEIRO.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 33, STR ,[comp17]);

               //CHEQUE
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_VendedorCHEQUE.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 41, STR ,[comp17]);

               //CARTAO
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_VendedorCARTAO.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 49, STR ,[comp17]);

               //TICKET
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_VendedorTICKET.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 57, STR ,[comp17]);

               //TICKET
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_VendedorPRAZO.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 65, STR ,[comp17]);

               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_Caixa_VendedorTOTAL.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               SOMAVENDEDORES := SOMAVENDEDORES + Ver_Caixa_VendedorTOTAL.VALUE ;

               IncLin;

               Ver_Caixa_Vendedor.Next ;
          end;

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', SOMAVENDEDORES );
          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(linha, 73, STR ,[comp17]);

          IncLin;

          CREDITOS := CREDITOS + SOMAVENDEDORES ;

          Ver_Caixa_Vendedor.EnableControls ;
     END;
end;

Function TFRelListaCaixaGeral.IniciaReceber : Boolean;
Var
   Aux, Nominal, Juros, Descontos, JUROSPARC, DESCONTOSPARC: Real;
Begin
     //Contas Recebidas Pelo Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          //LISTAGEM DOS CHEQUES RECEBIDOS NO DIA
          CHEQUES_GERAL.CLOSE ;

          CHEQUES_GERAL.ParamByName('CNPJ').AsString := DmApp.Cnpj      ;
          CHEQUES_GERAL.ParamByName('DATA').AsDate   := DmApp.DataCaixa ;

          CHEQUES_GERAL.Prepare ;
          CHEQUES_GERAL.OPEN    ;

          IF CHEQUES_GERAL.RECORDCOUNT > 0
          THEN BEGIN
               RESULT := TRUE ;

               IncLin;
               IncLin;

               Print.impf(linha,01, 'NOME',[comp17]);
               Print.impf(linha,25, 'DOCUMENTO',[comp17]);
               Print.impf(linha,31, 'BANCO',[comp17]);
               Print.impf(linha,35, 'AGENCIA',[comp17]);
               Print.impf(linha,40, 'CONTA',[comp17]);
               Print.impf(linha,48, 'TRN',[comp17]);
               Print.impf(linha,50, 'USR',[comp17]);
               Print.impf(linha,52, 'PRE-DATE',[comp17]);
               Print.impf(linha,60, 'HIST',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               while not CHEQUES_GERAL.eof do
               begin
                    Print.impf(linha, 01, CHEQUES_GERALNOME.Value,[comp17]);

                    Print.impf(linha, 25, CHEQUES_GERALCHEQUE.Value,[comp17]);

                    Print.impf(linha, 31, CHEQUES_GERALBANCO.Value,[comp17]);

                    Print.impf(linha, 35, CHEQUES_GERALAGENCIA.Value,[comp17]);

                    Print.impf(linha, 40, CHEQUES_GERALCONTA.Value,[comp17]);

                    Print.impf(linha, 48, CHEQUES_GERALTURNO.TEXT,[comp17]);

                    Print.impf(linha, 50, CHEQUES_GERALUSUARIO.TEXT,[comp17]);

                    Print.impf(linha, 52, CHEQUES_GERALPRE_DATE.TEXT,[comp17]);

                    Print.impf(linha, 60, COPY(CHEQUES_GERALHISTORICO.Value,1,20),[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', ( CHEQUES_GERALVALOR.VALUE ) );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    CHEQUES_GERAL.Next ;
               end;
          end;

          CHEQUES_GERAL.close ;


          Baixas_Receber_Geral.Close ;

          Baixas_Receber_Geral.Open  ;

          Baixas_Receber_Geral.DisableControls ;

          VER_FIN_FATURAS_PARCIAL_CAIXA.DisableControls ;

          Baixas_Receber_Geral.First ;

          SOMARECEBIDAS      := 0;

          SOMABAIXASPARCIAISFAT := 0;

          Juros := 0;

          Descontos := 0;

          JUROSPARC     := 0;

          DESCONTOSPARC := 0;

          IF Baixas_Receber_Geral.RECORDCOUNT > 0
          THEN BEGIN
               RESULT := TRUE ;

{               IncLin;
               IncLin;

               Print.impf(linha,01, 'NOME',[comp17]);
               Print.impf(linha,25, 'DOCUMENTO',[comp17]);
               Print.impf(linha,35, 'HISTORICO',[comp17]);
               Print.impf(linha,57, '      ACRESC',[comp17]);
               Print.impf(linha,65, '      DESCTO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;}

               while not Baixas_Receber_Geral.eof do
               begin
{                    Print.impf(linha,01, Baixas_Receber_GeralNOME.Value,[comp17]);

                    Print.impf(linha,25, Baixas_Receber_GeralDOCTO.Value,[comp17]);

                    Print.impf(linha,35, COPY(Baixas_Receber_GeralHISTORICO.Value,1,30),[comp17]);

                    //ACRESCIMO
                    STR := FORMATFLOAT ('###,###,##0.00', Baixas_Receber_GeralJUROS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 57, STR ,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_Receber_GeralDESCONTOS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 65, STR ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', ( Baixas_Receber_GeralVLR_BAIXA.VALUE ) );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin; }

                    IF Baixas_Receber_GeralFATURA.VALUE <= 0
                    THEN BEGIN
                         JUROS     := JUROS + ARREDONDA(Baixas_Receber_GeralJUROS.VALUE,2) ;

                         DESCONTOS := DESCONTOS + ARREDONDA(Baixas_Receber_GeralDESCONTOS.VALUE,2);

                         SOMARECEBIDAS := SOMARECEBIDAS + ARREDONDA(( Baixas_Receber_GeralVLR_BAIXA.VALUE ),2);
                    END;

                    JUROSPARC     := JUROSPARC     + ARREDONDA(Baixas_Receber_GeralJUROS.VALUE,2);

                    DESCONTOSPARC := DESCONTOSPARC + ARREDONDA(Baixas_Receber_GeralDESCONTOS.VALUE,2);

                    Baixas_Receber_Geral.Next ;
               end;

{               //DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', JUROSPARC );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 57, STR ,[comp17]);

               //JUROS
               STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOSPARC );
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

               IncLin;}

               CREDITOS := CREDITOS + SOMARECEBIDAS ;
          END
          ELSE BEGIN
               RESULT := FALSE;
          END;

          JUROSPARC     := 0;

          DESCONTOSPARC := 0;

          Baixas_Receber_Geral.EnableControls ;

          //BAIXAS PARCIAIS DE FATURAS
          VER_FIN_FATURAS_PARCIAL_GERAL.CLOSE ;

          VER_FIN_FATURAS_PARCIAL_GERAL.OPEN  ;

          VER_FIN_FATURAS_PARCIAL_GERAL.FetchAll ;

          VER_FIN_FATURAS_PARCIAL_GERAL.FIRST ;

          IF VER_FIN_FATURAS_PARCIAL_GERAL.RecordCount > 0
          THEN BEGIN
               RESULT := TRUE ;

               NOMINAL := 0;

               IncLin;
               IncLin;

               Print.impf(linha,01, 'FATURA'      ,[comp17]);
               Print.impf(linha,06, 'NOME'        ,[comp17]);
               Print.impf(linha,40, 'HISTORICO'   ,[comp17]);
               Print.impf(linha,57, '       JUROS',[comp17]);
               Print.impf(linha,65, '      DESCTO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               while not VER_FIN_FATURAS_PARCIAL_GERAL.eof do
               begin
                    Print.impf(linha, 01, VER_FIN_FATURAS_PARCIAL_GERALFATURA.TEXT,[comp17]);

                    Print.impf(linha, 06, VER_FIN_FATURAS_PARCIAL_GERALNOME.TEXT,[comp17]);

                    Print.impf(linha, 35, VER_FIN_FATURAS_PARCIAL_GERALHISTORICO.VALUE,[comp17]);

                    //NOMINAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', ARREDONDA(VER_FIN_FATURAS_PARCIAL_GERALVALOR.Value - VER_FIN_FATURAS_PARCIAL_GERALJUROS.VALUE + VER_FIN_FATURAS_PARCIAL_GERALDESCONTOS.VALUE,2) );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 49, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', VER_FIN_FATURAS_PARCIAL_GERALJUROS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 57, STR ,[comp17]);

                    //DESCONTO
                    STR :=  FORMATFLOAT ('###,###,##0.00', VER_FIN_FATURAS_PARCIAL_GERALDESCONTOS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 65, STR ,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', VER_FIN_FATURAS_PARCIAL_GERALVALOR.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    Juros     := Juros     + VER_FIN_FATURAS_PARCIAL_GERALJUROS.VALUE;

                    Descontos := Descontos + VER_FIN_FATURAS_PARCIAL_GERALDESCONTOS.VALUE;

                    JUROSPARC := JUROSPARC + ARREDONDA(VER_FIN_FATURAS_PARCIAL_GERALJUROS.VALUE,2) ;

                    DESCONTOSPARC := DESCONTOSPARC + ARREDONDA(VER_FIN_FATURAS_PARCIAL_GERALDESCONTOS.VALUE,2) ;

                    SOMABAIXASPARCIAISFAT := SOMABAIXASPARCIAISFAT + ARREDONDA(VER_FIN_FATURAS_PARCIAL_GERALVALOR.Value,2);

                    NOMINAL := NOMINAL + ARREDONDA(VER_FIN_FATURAS_PARCIAL_GERALVALOR.Value - VER_FIN_FATURAS_PARCIAL_GERALJUROS.VALUE + VER_FIN_FATURAS_PARCIAL_GERALDESCONTOS.VALUE,2);

                    VER_FIN_FATURAS_PARCIAL_GERAL.Next ;
               end;

               //TOTALIZANDO AS BAIXAS PARCIAIS PARA Q EU POSSSA SOMAR COM O TOTAL DAS FATURAS
               AUX := NOMINAL;

               //NONINAL
               STR :=  FORMATFLOAT ('###,###,##0.00', NOMINAL );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 49, STR ,[comp17]);

               //JUROS
               STR :=  FORMATFLOAT ('###,###,##0.00', JUROSPARC );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 57, STR ,[comp17]);

               //DESCONTO
               STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOSPARC );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 65, STR ,[comp17]);

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

          IncLin;

          VER_FIN_FATURAS_PARCIAL_GERAL.EnableControls ;

          JUROSPARC     := 0;

          DESCONTOSPARC := 0;

          //BAIXAS DE FATURAS
          VER_FATURA_GERAL.CLOSE ;

          VER_FATURA_GERAL.OPEN  ;

          VER_FATURA_GERAL.FetchAll ;

          VER_FATURA_GERAL.FIRST ;

          IF VER_FATURA_GERAL.RecordCount > 0
          THEN BEGIN
               RESULT := TRUE ;

               IncLin;
               IncLin;

               SOMABAIXASPARCIAISFAT := 0;

               Print.impf(linha,01, 'FATURA'      ,[comp17]);
               Print.impf(linha,06, 'NOME'        ,[comp17]);
               Print.impf(linha,40, 'HISTORICO'   ,[comp17]);
               Print.impf(linha,57, '      ACRESC',[comp17]);
               Print.impf(linha,65, '      DESCTO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               Nominal := 0;

               while not VER_FATURA_GERAL.eof do
               begin
                    Print.impf(linha, 01, VER_FATURA_GERALCODIGO.TEXT,[comp17]);

                    Print.impf(linha, 06, VER_FATURA_GERALNOME.TEXT,[comp17]);

                    Print.impf(linha, 35, VER_FATURA_GERALHISTORICO.VALUE,[comp17]);

                    //NOMINAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', VER_FATURA_GERALVALOR.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 49, STR ,[comp17]);

                    //JUROS
                    STR :=  FORMATFLOAT ('###,###,##0.00', VER_FATURA_GERALJUROS.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 57, STR ,[comp17]);

                    //DESCONTO
                    STR :=  FORMATFLOAT ('###,###,##0.00', VER_FATURA_GERALDESCONTO.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 65, STR ,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', ( VER_FATURA_GERALVALOR.VALUE + VER_FATURA_GERALJUROS.VALUE - VER_FATURA_GERALDESCONTO.VALUE ));
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SOMABAIXASPARCIAISFAT := SOMABAIXASPARCIAISFAT + ( VER_FATURA_GERALVALOR.VALUE + VER_FATURA_GERALJUROS.VALUE - VER_FATURA_GERALDESCONTO.VALUE ) ;

                    JUROS := JUROS + ARREDONDA(VER_FATURA_GERALJUROS.VALUE,2) ;

                    DESCONTOS := DESCONTOS + ARREDONDA(VER_FATURA_GERALDESCONTO.VALUE,2);

                    JUROSPARC     := JUROSPARC     + ARREDONDA(VER_FATURA_GERALJUROS.VALUE,2);

                    DESCONTOSPARC := DESCONTOSPARC + ARREDONDA(VER_FATURA_GERALDESCONTO.VALUE,2);

                    Nominal       := Nominal + ARREDONDA(VER_FATURA_GERALVALOR.VALUE,2) ;

                    VER_FATURA_GERAL.Next ;
               end;

               //NOMINAL
               STR :=  FORMATFLOAT ('###,###,##0.00', NOMINAL );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 49, STR ,[comp17]);

               //DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', JUROSPARC );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 57, STR ,[comp17]);

               //JUROS
               STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOSPARC );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 65, STR ,[comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', SOMABAIXASPARCIAISFAT );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 73, STR ,[comp17]);

               Linha := Linha + 1;

               CREDITOS := CREDITOS + SOMABAIXASPARCIAISFAT ;

               Linha := Linha + 1;

               Print.impf(linha, 40, '  SOMA GERAL',[comp17]);
               Print.impf(linha, 57, '      ACRESC',[comp17]);
               Print.impf(linha, 65, '      DESCTO',[comp17]);
               Print.impf(linha, 73, '       VALOR',[comp17]);

               Linha := Linha + 1;

               //DESCONTOS
               STR :=  FORMATFLOAT ('###,###,##0.00', JUROS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 57, STR ,[comp17]);

               //JUROS
               STR :=  FORMATFLOAT ('###,###,##0.00', DESCONTOS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 65, STR ,[comp17]);

               //NOMINAL
               STR :=  FORMATFLOAT ('###,###,##0.00', NOMINAL + AUX + JUROS - DESCONTOS);
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 73, STR ,[comp17]);

               Linha := Linha + 1;

               Linha := Linha + 1;
          END
          ELSE BEGIN
               IF NOT RESULT
               THEN
                   RESULT := FALSE ;
          END;

          VER_FIN_FATURAS_PARCIAL_GERAL.EnableControls ;
     END;
end;

Function TFRelListaCaixaGeral.IniciaMovimentos_C : Boolean;
Begin
     //Movimentos de Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          //CREDITOS
          Movimentos_Geral_C.Close ;
          Movimentos_Geral_C.Open  ;

          Movimentos_Geral_C.FetchAll ;

          IF Movimentos_Geral_C.RECORDCOUNT > 0
          THEN
              RESULT := TRUE
          ELSE
              RESULT := FALSE;

          if Movimentos_Geral_C.RecordCount > 0
          then begin

               IncLin;
               IncLin;

               Print.impf(linha,01, 'DOCUMENTO',[comp17]);
               Print.impf(linha,15, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               Movimentos_Geral_C.DisableControls ;
               Movimentos_Geral_C.First ;
               SomaMovtoC := 0    ;

               while not Movimentos_Geral_C.eof do
               begin
                    Print.impf(linha,01, Movimentos_Geral_CDOCUMENTO.Value,[comp17]);

                    Print.impf(linha,15, Movimentos_Geral_CHISTORICO.Value,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', Movimentos_Geral_CVALOR.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SomaMovtoC := SomaMovtoC + Movimentos_Geral_CVALOR.Value;

                    Movimentos_Geral_C.Next ;
               end;

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', SomaMovtoC );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               IncLin;
               
               CREDITOS := CREDITOS + SOMAMOVTOC ;

               Movimentos_Geral_C.EnableControls ;
          end;
     END;
end;


//*/*/*/*/  DEBITOS   //*/*/*/*/




Function TFRelListaCaixaGeral.IniciaMovimentos_D : Boolean;
Begin
     //Movimentos de Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          //DEBITOS
          Movimentos_Geral_D.Close ;

          Movimentos_Geral_D.Open  ;

          Movimentos_Geral_D.FetchAll ;

          IF Movimentos_Geral_D.RECORDCOUNT > 0
          THEN
              RESULT := TRUE
          ELSE
              RESULT := FALSE;

          if Movimentos_Geral_D.RecordCount > 0
          then begin

               IncLin;
               IncLin;

               Print.impf(linha,01, 'DOCUMENTO',[comp17]);
               Print.impf(linha,15, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       VALOR',[comp17]);

               IncLin;

               Movimentos_Geral_D.DisableControls ;
               Movimentos_Geral_D.First ;
               SomaMovtoD := 0    ;

               while not Movimentos_Geral_D.eof do
               begin
                    Print.impf(linha,01, Movimentos_Geral_DDOCUMENTO.Value,[comp17]);

                    Print.impf(linha,15, Movimentos_Geral_DHISTORICO.Value,[comp17]);

                    //VALOR
                    STR :=  FORMATFLOAT ('###,###,##0.00', Movimentos_Geral_DVALOR.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SomaMovtoD := SomaMovtoD + Movimentos_Geral_DVALOR.Value;

                    Movimentos_Geral_D.Next ;
               end;

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', SomaMovtoD );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 73, STR ,[comp17]);

               IncLin;

               DEBITOS := DEBITOS + SOMAMOVTOD ;

               Movimentos_Geral_D.EnableControls ;
          end;
     END;
end;

Function TFRelListaCaixaGeral.IniciaPagar : Boolean;
Begin
     //Contas Pagas pelo Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          Baixas_Pagar_Geral.Close ;
          Baixas_Pagar_Geral.Open  ;

          Baixas_Pagar_Geral.DisableControls ;

          Baixas_Pagar_Geral.First ;

          SOMAPAGAS := 0;

          IncLin;

          IncLin;

          Baixas_Pagar_Geral.FetchAll ;

          IF Baixas_Pagar_Geral.RECORDCOUNT > 0
          THEN BEGIN
               RESULT := TRUE ;

               Print.impf(linha,01, 'NOME',[comp17]);
               Print.impf(linha,30, 'DOCUMENTO',[comp17]);
               Print.impf(linha,45, 'VENCIMENTO',[comp17]);
               Print.impf(linha,53, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       TOTAL',[comp17]);

               IncLin;

               while not Baixas_Pagar_Geral.eof do
               begin
                    //NOME
                    Print.impf(linha, 01, Baixas_Pagar_GeralNOME.Value,[comp17]);

                    //DOCUMENTO
                    Print.impf(linha, 30, Baixas_Pagar_GeralDOCTO.VALUE ,[comp17]);

                    //VENCIMENTO
                    Print.impf(linha, 45, DATETOSTR(Baixas_Pagar_GeralDT_VENCTO.VALUE) ,[comp17]);

                    //HISTORICOS
                    Print.impf(linha, 53, Copy(Baixas_Pagar_GeralHISTORICO_BX.VALUE,1,33) ,[comp17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', Baixas_Pagar_GeralTOTAL.VALUE );
                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;
                    Print.impf(linha, 73, STR ,[comp17]);

                    IncLin;

                    SOMAPAGAS := SOMAPAGAS + Baixas_Pagar_GeralTotal.Value;

                    Baixas_Pagar_Geral.Next ;
               end;

               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00', SOMAPAGAS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(linha, 73, STR ,[comp17]);

               IncLin;

               DEBITOS := DEBITOS + SOMAPAGAS ;

               Baixas_Pagar_Geral.EnableControls ;
          END
          ELSE BEGIN
               RESULT := FALSE;
          END;
     END;
end;

Function TFRelListaCaixaGeral.IniciaVendas : Boolean;
Begin
     //CAPTURA A LEITURA DAS BOMBAS
     WITH DMCaixaFrentista DO
     BEGIN
          SomaVendas       := 0;

          SelFatura_Futura_Geral.Close ;

          SelFatura_Futura_Geral.Open  ;

          SelFatura_Futura_Geral.DisableControls;

          SelFatura_Futura_Geral.FetchAll ;

          SelFatura_Futura_Geral.First ;

          IF SelFatura_Futura_Geral.RECORDCOUNT > 0
          THEN BEGIN
               RESULT := TRUE ;

               IncLin;

               Print.impf(linha,01, 'NOME',[comp17]);
               Print.impf(linha,30, 'VND',[comp17]);
               Print.impf(linha,35, 'CF',[comp17]);
               Print.impf(linha,53, 'HISTORICO',[comp17]);
               Print.impf(linha,73, '       TOTAL',[comp17]);

               IncLin;

               While Not SelFatura_Futura_Geral.Eof do
               begin
                    If SelFatura_Futura_GeralTIPO_VENDA.Value = 'FFT'
                    Then Begin
                         //NOME
                         Print.impf(linha, 01, SelFatura_Futura_GeralPESSOA_RAZAO.Value,[comp17]);

                         //DOCUMENTO
                         Print.impf(linha, 30, SelFatura_Futura_GeralCODIGO.TEXT ,[comp17]);

                         //CUPOM FISCAL
                         Print.impf(linha, 35, SelFatura_Futura_GeralNUM_CUPOM.TEXT ,[comp17]);

                         //HISTORICOS
                         Print.impf(linha, 53, SelFatura_Futura_GeralHISTORICO.VALUE ,[comp17]);

                         //TOTAL
                         STR :=  FORMATFLOAT ('###,###,##0.00', SelFatura_Futura_GeralAPRAZO.VALUE );
                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;
                         Print.impf(linha, 73, STR ,[comp17]);

                         IncLin;

                         SomaVendas        := SomaVendas        + SelFatura_Futura_GeralAPRAZO.value ;
                    end;

                    SelFatura_Futura_Geral.Next ;

               end;

               SelFatura_Futura_Geral.EnableControls ;

               //TOTAL
               STR :=  FORMATFLOAT ('###,###,##0.00', SOMAVENDAS );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(linha, 73, STR ,[comp17]);

               IncLin;

               DEBITOS := DEBITOS + SOMAVENDAS ;
          END
          ELSE BEGIN
               RESULT := FALSE ;
          END;
     END;
end;

Function TFRelListaCaixaGeral.IniciaCartao : Boolean;
Begin
     //Contas Recebidas Pelo Caixa
     WITH DMCaixaFrentista DO
     BEGIN
          Ver_Cartao_Geral.Close ;
          Ver_Cartao_Geral.Open  ;

          Ver_Cartao_Geral.DisableControls ;
          Ver_Cartao_Geral.First ;

          SOMACARTAO := 0;

          while not Ver_Cartao_Geral.eof do
          begin
               SOMACARTAO := SOMACARTAO + Ver_Cartao_GeralVALOR.Value;
               Ver_Cartao_Geral.Next ;
          end;

          Ver_Cartao_Geral.EnableControls ;
     END;
end;

end.



