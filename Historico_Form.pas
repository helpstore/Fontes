unit Historico_Form;

interface

uses
  Windows, Messages, SysUtils,  Classes, Graphics, Controls, Forms, Dialogs,
  ActnList, StdCtrls, Mask, Buttons, ExtCtrls,
  Db,  dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxDBTLCl,
  dxGrClms, dxEditor,
  dxExEdtr, dxEdLib, ComCtrls,  dxDBEdtr, dxDBELib,
  RDprint,     cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmHistorico = class(TForm)
    pnlForm: TPanel;
    Bevel3: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    LblTitulo: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    LBLCLIENTE: TcxLabel;
    ActImprimir: TAction;
    ActOk: TAction;
    print: TRDprint;
    Panel2: TPanel;
    RzBitBtn2: TcxButton;
    procedure ActFecharExecute(Sender: TObject);
    procedure EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PRINTNewPage(Sender: TObject; Pagina: Integer);
    procedure PRINTBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure ActImprimirExecute(Sender: TObject);
    procedure EdClienteInicialEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Imprime ;
    procedure Seleciona;

    procedure IncLINHA;

  public
    Opcao: String ;
    { Public declarations }
  end;

var
  FrmHistorico: TFrmHistorico;
  PAGINA, LINHA: INTEGER;
implementation

uses
    Application_DM,
    Funcoes,
    Main,
    Localizar_Cliente,
    Historico_Dm, Usuarios_DM ;

{$R *.DFM}

procedure TFrmHistorico.ActFecharExecute(Sender: TObject);
begin
  close ;
end;

procedure TFrmHistorico.EdCodigoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmHistorico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Sair da Consulta?', mtConfirmation, [mbOK, mbCancel], 0) = MROK
     THEN BEGIN
          DmHistorico.SelPessoas.Close;

          DmHistorico.Vendas.Close ;

          //
          Action := caFree;
          FrmHistorico := Nil;
     end
     else begin
          Action := CaNone ;
     end;
end;

procedure TFrmHistorico.Seleciona ;
begin
     WITH DmHistorico DO
     BEGIN
          VENDAS.Close ;
          VENDAS.SQL.CLEAR ;
          VENDAS.Params.CLEAR ;

          VENDAS.Params.CreateParam ( FtInteger, 'PESSOA', PtInputOutPut );

          VENDAS.SQL.ADD ( ' SELECT * FROM VER_FAT_VENDAS_HISTORICO ( :CNPJ, :PESSOA ) ' );
          VENDAS.SQL.ADD ( ' ORDER BY DATA, CODIGO ' );

          VENDAS.ParamByName ('PESSOA').asInteger := strtoint(trim(EdClienteInicial.text));

          VENDAS.PREPARE ;
          VENDAS.OPEN    ;

          IMPRIME ;
     END;
END;

procedure TFrmHistorico.IMPRIME;
VAR
   IMP, STR         : STRING;
   JUROS, JUROSGERAL, TOTAL, TOTALGERAL: Real ;
   ULTCOD           : INTEGER;
begin
     PAGINA  := 1;

     LINHA   := 5;

     IF TRIM(DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE  ) <> ''
     THEN BEGIN
          SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE )       ;
          PRINT.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE );
          PRINT.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_PENDENCIAS.VALUE  ;
     END;

     PRINT.ABRIR;

     WITH DmHistorico DO
     BEGIN
          VENDAS.FIRST ;

          IncLINHA;

          PRINT.impf(LINHA,01,'VENDAS' ,[comp17]);

          IncLINHA;

          //
          WHILE NOT VENDAS.Eof DO
          BEGIN
               IncLINHA;

               IF IMP = 'N'
               THEN BEGIN
                    PRINT.impf(LINHA,01,INTTOSTR(VENDASPESSOA_FJ.Value) + '-'+ VENDASPESSOA_RAZAO.Value , [comp17]);

                    IF LENGTH( VENDASCPF_CGC.Value ) <= 11
                    THEN BEGIN
                         PRINT.impf(LINHA,50,MASCARACPF(VENDASCPF_CGC.Value) , [comp17]);
                    END
                    ELSE BEGIN
                         PRINT.impf(LINHA,50, MASCARACNPJ(VENDASCPF_CGC.Value) , [comp17]);
                    END;

                    IMP := 'S' ;

                    //ULTIMO CODIGO IMPRESSO
                    ULTCOD := VENDASPESSOA_FJ.VALUE ;

                    TOTAL := 0;//TOTAL DO CLIENTE

                    IncLINHA ;
               END;

               //BLOCO DE IMPRESSAO DO CONTAS A RECEBER
               //lancamento
               PRINT.impf(LINHA,01,DATETOSTR(VENDASDATA_CAIXA.Value ),[comp17]);

               //Documento
               PRINT.impf(LINHA,08, LeftStr(VENDASCODIGO.text, 6) ,[comp17]);

               //NOTA FISCAL
               PRINT.impf(LINHA,22, LeftStr(VENDASNUM_NF.TEXT,6 ) ,[comp17]);

               //CUPOM FISCAL
               PRINT.impf(LINHA,32, LeftStr(VENDASNUM_CUPOM.TEXT,6 ) ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', VENDASTOTAL.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               PRINT.impf(LINHA,50, STR ,[comp17]);

               STR :=  FORMATFLOAT ('###,###,##0.00', VENDASVLRLIQUIDO.VALUE );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               //VALOR
               PRINT.impf(LINHA,73, STR ,[comp17]);



               Linha := Linha + 1;
               Fat_VendasItens.Close ;
               Fat_VendasItens.ParamByName('CNPJ').Value:= DMApp.Cnpj;
               Fat_VendasItens.ParamByName('CODIGO').Value:= VendasCODIGO.Value;
               Fat_VendasItens.Open;
               Fat_VendasItens.First;

               While Not Fat_VendasItens.Eof Do
               Begin
                       Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
                               [Fat_VendasItensPRODUTO.Text,
                                copy(Fat_VendasItensNOME.Text,1,37),
                                Fat_VendasItensUNIDADE.Text,
                                Fat_VendasItensSUBUNIDADE.Text,
                                Fat_VendasItensQUANTIDADE.Text,
                                Fat_VendasItensPRC_UNITARIO.Text,
                                Fat_VendasItensDESCONTO.Text,
                                FormatFloat('#,##0.00',(Fat_VendasItensQUANTIDADE.AsFloat * Fat_VendasItensPRC_UNITARIO.AsFloat) - Fat_VendasItensDESCONTO.AsFloat)]), [Comp17]);

                       Linha := Linha + 1;

                       Fat_VendasItens.Next;

                       If (Linha >= 63)
                       Then
                           Print.Novapagina;
               End;

               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
               Linha:= Linha + 1;

               TOTAL      := TOTAL + VENDASVLRLIQUIDO.VALUE;
               TOTALGERAL := TOTALGERAL + VENDASVLRLIQUIDO.VALUE ;

               VENDAS.NEXT ;

               IF (( ULTCOD <> VENDASPESSOA_FJ.VALUE )AND(NOT VENDAS.EOF))
               THEN BEGIN
                    IncLINHA;

                    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(LINHA,73, '-------------' ,[comp17]);

                    IncLINHA;

                    PRINT.impf(LINHA,55, ' TOTAL VENDAS' ,[comp17]);

                    PRINT.impf(LINHA,73, STR ,[comp17]);

                    IncLINHA;

                    PRINT.impf(LINHA,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
               END
               ELSE BEGIN
                    IF (VENDAS.EOF)
                    THEN BEGIN
                         IncLINHA;

                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         PRINT.impf(LINHA,73, '-------------' ,[comp17]);

                         IncLINHA;

                         PRINT.impf(LINHA,55, ' TOTAL VENDAS' ,[comp17]);

                         PRINT.impf(LINHA,73, STR ,[comp17]);

                         IncLINHA;

                         PRINT.impf(LINHA,01,'----------------------------------------------------------------------------------------------------------------------------------------' ,[comp17]);
                    END;
               END;
          END;

          IncLINHA;

          STR :=  FORMATFLOAT ('###,###,##0.00', TOTALGERAL );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(LINHA,73, '-------------' ,[comp17]);

          IncLINHA;

          PRINT.impf(LINHA,56, ' TOTAL GERAL' ,[comp17]);

          PRINT.impf(LINHA,73, STR ,[comp17]);

          PRINT.FECHAR;
     END;
end;

procedure TFrmHistorico.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

        Frm_Localizar_Cliente.DSource.DataSet := DmHistorico.SelPessoas ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
        end;

        Frm_Localizar_Cliente.free ;
        Frm_Localizar_Cliente := Nil ;
     Except

     end;
end;

procedure TFrmHistorico.IncLINHA;
begin
     LINHA := LINHA + 1;

     If LINHA > 62
     then
         PRINT.NovaPagina ;
end;

procedure TFrmHistorico.EdClienteInicialExit(Sender: TObject);
begin
     CORFUNDO ( SENDER );

     if actok.Enabled
     then
         actok.Execute ;
end;

procedure TFrmHistorico.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     If Not DmHistorico.SelPessoas.Active
     then
         DmHistorico.SelPessoas.Open ;

     EdClienteInicial.SetFocus ;
end;

procedure TFrmHistorico.PRINTNewPage(Sender: TObject; Pagina: Integer);
begin
     // Cabeçalho...
     PRINT.impf(01,01,'===============================================================================',[Normal]);
     PRINT.impf(02,01,DmApp.NOME, [NORMAL,NEGRITO]);
     PRINT.impf(02,72,'Pag: ' + formatfloat('000',pagina),[Normal]);
     PRINT.impf(03,01,'HISTORICO DO CLIENTE ' ,[Normal]);
     PRINT.impf(03,45,'DATA: '+ DATETIMETOSTR(now),[Normal]);
     PRINT.impf(04,01,'===============================================================================',[Normal]);

     PRINT.impf(06,01,'LANC   DOCUMENTO     VENCTO    ATRASO             VALOR       JUROS      TOTAL',[Normal]);

     inc(pagina);
     
     LINHA  := 7;
end;

procedure TFrmHistorico.PRINTBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
     // Rodapé...
     PRINT.impf(63,01,'===============================================================================',[normal]);
     PRINT.impf(64,01,dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString,[comp17,italico]);
      
end;

procedure TFrmHistorico.ActImprimirExecute(Sender: TObject);
begin
     IMPRIME
end;

procedure TFrmHistorico.EdClienteInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmHistorico.FormCreate(Sender: TObject);
begin
  //
  ActImprimir.Hint := ActImprimir.Hint + LblTitulo.Caption + ' [F9]';

  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmHistorico.ActOkExecute(Sender: TObject);
begin
     If ( trim(EdClienteInicial.Text) ) <> ''
     then begin
          DmHistorico.SelPessoas.Close;
          DmHistorico.SelPessoas.Open;
          if DmHistorico.SelPessoas.locate ( 'CODIGO', trim(EdClienteInicial.Text),[] )
          then begin
               LBLCLIENTE.Caption := DmHistorico.SelPessoasNOME_RAZAO.Value ;

               SELECIONA ;
          end
          else begin
               Showmessage ('Cliente Não Cadastrado!');
               EdClienteInicial.SetFocus ;
          end;
     end
     ELSE BEGIN
          LBLCLIENTE.Caption := '' ;
     END;
end;

end.


