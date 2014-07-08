  unit NotaPromissoria_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppDB,
  ppDBPipe, ppCtrls, ppPrnabl, ppClass, ppCache, ppBands, ppComm, ppRelatv,
  ppProd, ppReport, ppStrtch, ppRichTx, ppParameter, cxGraphics,
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
  TFrmImprimePromissoria = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    btnimprimir: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    LBLNOME: TcxLabel;
    Promissora: TRDprint;
    ActBuscarProd: TAction;
    LBLPEDIDO: TcxLabel;
    btnver: TcxButton;
    ActVisualizar: TAction;
    Vias: TdxSpinEdit;
    rptPromissoria: TppReport;
    ppPromissoria: TppDBPipeline;
    dsPromissoria: TDataSource;
    dsLayout: TDataSource;
    ppLayout: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText16: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText21: TppDBText;
    ppDBText25: TppDBText;
    ppDBText27: TppDBText;
    ppLabel6: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    Procedure ImprimeVenda ;
    Procedure ImprimeTroca ;
    procedure ActVisualizarExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    TIPO : String ;
    PedidoNumero: Integer ;
    Total_Orcamento : Real ;
    TIPO_NOTA: String;

  end;

var
  FrmImprimePromissoria: TFrmImprimePromissoria;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, OBSERVACAO, NomeVendedor, Endereco  , NomeCidade: String;
  NomeBairro, EstadoCep , NumeroFone, Documentos, IERG , Condicoes : String ;
  Opcao, TipoDoc, NUMERO, Fone, Fax : String;
  Empresa, Total, Desconto, Liquido, Peso, Volume, Cep, InscMun, UF : String;
  Vencimento: TDateTime;
  TotPeso, TotVolume: Extended ;
  Codigo_Cliente, Item, LocalCobranca: Integer;

  //TOTALIZADORES DA NF
  TOTALNOTA, ICM, IPI, BASECALCULOICM, BASECALCULOSUBSTITUICAO: Extended ;
  VALORTOTAL, ISS, VALORICMSSUB, DESPESAS, VALORFRETE: Extended ;
  SEGURO, FRETE: Extended ;
  MENSAGEMREDUCAO: String ;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Vendas_Dm, Financeiro_Dm2,
  Cadastros_DM, Vendas_DM2;

{$R *.DFM}

procedure TFrmImprimePromissoria.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmImprimePromissoria.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmImprimePromissoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmVendas.Consulta_Venda_Itens.Close ;
     DmVendas.Consulta_Venda_Parc.Close ;
     DmVendas.Consulta_Venda.Close ;

     Action := caFree;
     FrmImprimePromissoria := Nil;
end;

procedure TFrmImprimePromissoria.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFrmImprimePromissoria.FormShow(Sender: TObject);
Var
   Str: String;
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
     If TIPO_NOTA = 'TROCA'
     THEN BEGIN
          Str := '';

          Str := Str + IntToStr(PedidoNumero);

          WHILE LENGTH(STR) < 11 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Str := 'Troca Nº =>' + Str ;

          LBLPEDIDO.Caption := Str;

          While Length(Tipo) < 39
          do begin
             Tipo := ' ' + Tipo + ' ' ;
          end;

          Empresa := DmApp.Nome ;

          While Length(Empresa) < 135
          do begin
             Empresa := ' ' + Empresa + ' ' ;
          end;

          EndEmpresa := DmApp.Ender + '    FONE ' + DMAPP.FONE + ' FAX ' + DMAPP.FAX ;

          While Length(EndEmpresa) < 135
          do begin
             EndEmpresa := ' ' + EndEmpresa + ' ' ;
          end;
     END
     ELSE BEGIN
          Str := '';

          Str := Str + IntToStr(PedidoNumero);

          WHILE LENGTH(STR) < 11 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Str := 'Pedido Nº =>' + Str ;

          LBLPEDIDO.Caption := Str;

          While Length(Tipo) < 39
          do begin
             Tipo := ' ' + Tipo + ' ' ;
          end;

          Empresa := DmApp.Nome ;

          While Length(Empresa) < 135
          do begin
             Empresa := ' ' + Empresa + ' ' ;
          end;

          EndEmpresa := DmApp.Ender + '    FONE ' + DMAPP.FONE + ' FAX ' + DMAPP.FAX ;

          While Length(EndEmpresa) < 135
          do begin
             EndEmpresa := ' ' + EndEmpresa + ' ' ;
          end;
     END;

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

procedure TFrmImprimePromissoria.ActPreviewExecute(Sender: TObject);
begin
     Opcao := 'N' ;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     if TIPO_NOTA = 'TROCA'
     THEN BEGIN
          ImprimeTroca ;
     END
     ELSE BEGIN
          ImprimeVenda ;
     END;
end;

Procedure TFrmImprimePromissoria.ImprimeVenda ;
Var
   Dia, Mes, Ano: String;
   D, M,A: WORD ;
   Str, Str2, Codigo_Vendedor : String ;
   Dst : Integer;
   Pulo: Integer;
   N_Parcelas, Parcela: Integer;
   Soma_Valores: Real;
begin
     With DmVendas do
     begin

           NotaPromissoria.Close;
           NotaPromissoria.parambyname('cnpj').value := dmApp.cnpj;
           NotaPromissoria.open;
           //impressão grafica
           if NotaPromissoriaPR_GRAF.asString = 'S' then
           begin
              //Carregando as opções do banco de dados
              rptPromissoria.Template.DatabaseSettings.Name := NotaPromissoriaCNPJ.asString;
              rptPromissoria.Template.LoadFromDatabase;

              dmFinanceiro2.qryPromissorias.close;
              dmFinanceiro2.qryPromissorias.parambyname('cnpj').value := dmApp.cnpj;
              dmFinanceiro2.qryPromissorias.parambyname('codigo').value := PedidoNumero;
              dmFinanceiro2.qryPromissorias.parambyname('tipo').value := 'V';
              dmFinanceiro2.qryPromissorias.open;

              rptPromissoria.Print;
              exit;
           end;


              dmvendas2.Proc_Imprime_Venda(PedidoNumero);

              VerPessoa ( Consulta_VendaPESSOA_FJ.Value );

              Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
              codigo_Cliente := Ver_PessoaCodigo.value ;
              NomeCliente  := Ver_PessoaFANTASIA.Value           ;
              Data         := DateToStr(Consulta_VendaDATA.Value);
              OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;
              If Trim(Observacao )= '' then
                OBSERVACAO   := Consulta_VendaHISTORICO.Value ;

              NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
              TipoDoc      := Consulta_VendaTIPO_DOCTO.Value  ;
              Endereco     := Ver_PessoaENDERECO.Value + ', N ' + Ver_PessoaNUMERO.Value ;
              Numero       := Ver_PessoaNUMERO.Value ;
              NomeCidade   := Ver_PessoaCIDADE.Value ;
              NomeBairro   := Ver_PessoaBAIRRO.Value ;
              EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
              Cep          := Ver_PessoaCEP.Value;
              Uf           := Ver_PessoaUF.Value ;
              NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;
              Fone         := Ver_PessoaFONE.Value ;
              Fax          := Ver_PessoaFAX.Value  ;
              If Length(Ver_PessoaCPF_CGC.Value) > 11
              then begin
                   Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
              end
              else begin
                   Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
              end;

              IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
              InscMun           := Ver_PessoaINSC_MUNIC.Value ;
              Condicoes         := Consulta_VendaNOME_FORMA.Value      ;
              NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
              Peso              := Formatfloat('###,###,##0.00', Consulta_VendaPeso.Value);
              Volume            := Formatfloat('###,###,##0.00', Consulta_VendaVolume.Value);
              Total             := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value);
              Desconto          := Formatfloat('###,###,##0.00', Consulta_VendaDESC_ACRES.Value);
              Liquido           := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
              LocalCobranca     := Consulta_VendaLocal_COBRANCA.Value ;
              Codigo_Vendedor   := Consulta_VendaVendedor.AsString ;

              Promissora.TamanhoQteLinhas := NotaPromissoriaTAMANHOPAGINA.Value ;

              If ( VIAS.Value > 0 ) and ( VIAS.Value < 3 )
              then
                  Promissora.NumerodeCopias := Trunc( VIAS.Value )
              else
                  Promissora.NumerodeCopias := 1;

              If Opcao = 'S'
              then
                  Promissora.OpcoesPreview.Preview := TRUE
              else
                  Promissora.OpcoesPreview.Preview := FALSE ;

              If NotaPromissoriaLPP.Value = 6
              Then
                  Promissora.TamanhoQteLPP := Seis
              Else
                  Promissora.TamanhoQteLPP := Oito ;

              If ( TRIM( NotaPromissoriaPORTA.Value ) <> '' ) AND ( DMAPP.PORTA_PRAZO <> 'LPT1')
              THEN BEGIN
                   SetDefaultPrinter( NotaPromissoriaPORTA.Value ) ;
                   Promissora.PortaComunicacao  := trim(NotaPromissoriaPORTA.Value ) ;
                   Promissora.SetPrinterbyPorta (trim( NotaPromissoriaPORTA.Value )) ;
              END
              ELSE BEGIN
                   Promissora.PortaComunicacao  := ('LPT1') ;
                   Promissora.SetPrinterbyPorta ('LPT1') ;
              END;

              Pulo := 1 ;

              Promissora.Abrir;

              ////IMPRIME UMA NOTA COM O TOTAL DAS NOTAS
              IF NotaPromissoriaIMPRIME_TOTALIZADOR.VALUE = 'S'
              THEN BEGIN
                   Consulta_Venda_Parc.First ;

                   N_Parcelas := 0;

                   Soma_Valores := 0 ;

                   While Not Consulta_Venda_Parc.Eof do
                   begin
                        N_Parcelas := N_Parcelas + 1 ;

                        Soma_Valores := Soma_Valores + Consulta_Venda_ParcVALOR.Value ;

                        Consulta_Venda_Parc.Next ;
                   end;


                   ////CANHOTO
                   //Vencimento
                   Dst := NotaPromissoriaVENCIMENTO1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S' THEN
                            Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE - 1 , Dst, 'VENCIMENTO', [Comp17]);
                        Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE ,Dst, DateToStr(dmapp.DATA_SERVIDOR), [Comp17]);
                   END;

                   //Venda
                   Dst   := NotaPromissoriaVENDA1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN
                            Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value - 1 , Dst, 'VENDA', [Comp17]);
                        Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);
                   END;

                   //Parcela
                   Dst := NotaPromissoriaPARCELA1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN
                            Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE - 1, Dst, 'PARCELA', [Comp17]);
                        Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE, Dst, INTTOSTR(N_Parcelas), [Comp17]);
                   END;

                   //Valor
                   Dst := NotaPromissoriaVALOR1_DST.Value ;

                   STR :=  FORMATFLOAT ('###,###,##0.00', Soma_Valores );
                   WHILE LENGTH(STR) < 10 DO
                   BEGIN
                        STR := ' ' + STR ;
                   END;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN
                            Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value - 1 , Dst, 'VALOR', [Comp17]);
                        Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value, Dst, Str, [Comp17]);
                   END;

                   //CODIGO DO CLIENTE
                   Dst := NotaPromissoriaCODIGO_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaCODIGO_ALT.VALUE , Dst, inttostr(codigo_Cliente), [Comp17, negrito]);
                   END;

                   //CODIGO DO CLIENTE NA VIA DO CLIENTE
                   Dst := NotaPromissoriaCODIGO2_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaCODIGO2_ALT.VALUE , Dst, inttostr(codigo_Cliente), [Comp17, negrito]);
                   END;

                   //DATA DA COMPRA
                   Dst := NotaPromissoriaDATA2_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaDATA2_ALT.VALUE , Dst, DATA, [Comp17]);
                   END;

                   //CODIGO DO VENDEDOR
                   Dst := NotaPromissoriaVENDEDOR1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaVENDEDOR1_ALT.VALUE , Dst, CODIGO_VENDEDOR, [Comp17]);
                   END;

                   //DATA DA COMPRA NA ASSINATURA
                   Dst := NotaPromissoriaDATA3_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaDATA3_ALT.VALUE , Dst, DATA, [Comp17]);
                   END;

                   //Codigo do Cliente
                   Dst := NotaPromissoriaSACADO1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
    //                    Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE - 1, Dst, 'CLIENTE', [Comp17]);
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN BEGIN
                            IF NotaPromissoriaTAMANHO_NOME.VALUE > 0
                            THEN BEGIN
                                 Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE, Dst, Copy(Razao,1,NotaPromissoriaTAMANHO_NOME.VALUE), [Comp17]);
                                 Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE + 1, Dst, Copy(Razao,1+NotaPromissoriaTAMANHO_NOME.VALUE,NotaPromissoriaTAMANHO_NOME.VALUE), [Comp17]);
                            END
                            ELSE BEGIN
                                 Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE, Dst, Copy(Razao,1,17), [Comp17]);
                                 Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE + 1, Dst, Copy(Razao,18,35), [Comp17]);
                            END;
                        END;
                   END;

                   ////*****NOTA PROMISSORIA

                   //Vencimento
                   Dst := NotaPromissoriaVENCIMENTO2_DST.Value ;

                   IF DST > 0
                   THEN
                       Promissora.ImpF( NotaPromissoriaVENCIMENTO2_ALT.VALUE ,Dst, DateToStr(dmapp.DATA_SERVIDOR), [Comp17]);

                   //Venda
                   Dst   := NotaPromissoriaVENDA2_DST.Value ;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaVENDA2_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);

                   //Parcela
                   Dst := NotaPromissoriaPARCELA2_DST.Value ;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaPARCELA2_ALT.VALUE, Dst, inttostr(N_PARCELAS) , [Comp17]);

                   //Valor
                   Dst := NotaPromissoriaVALOR2_DST.Value ;

                   STR :=  FORMATFLOAT ('###,###,##0.00', SOMA_VALORES );
                   WHILE LENGTH(STR) < 10 DO
                   BEGIN
                        STR := ' ' + STR ;
                   END;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaVALOR2_ALT.Value, Dst, Str, [Comp17]);

                   //DIA MES E ANO DO VENCIMENTO
                   DECODEDATE ( dmapp.DATA_SERVIDOR, A, M, D );

                   ANO := INTTOSTR( A );

                   case M of
                   1 : mes := 'Janeiro';
                   2 : mes := 'Fevereiro';
                   3 : mes := 'Marco';
                   4 : mes := 'Abril';
                   5 : mes := 'Maio';
                   6 : mes := 'Junho';
                   7 : mes := 'Julho';
                   8 : mes := 'Agosto';
                   9 : mes := 'Setembro';
                   10: mes := 'Outubro';
                   11: mes := 'Novembro';
                   12: mes := 'Dezembro';
                   end;

                   DIA := INTTOSTR( D );

                   Dst := NotaPromissoriaDATA_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst, DIA  , [Comp17]);
                        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+4, MES  , [Comp17]);
                        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+13, ANO  , [Comp17]);
                   END;

                   //Vencimento por extenso
                   Dst := NotaPromissoriaVECTO_EXT_DST.Value ;

                   If Dst > 0
                   THEN BEGIN
                        CASE D OF
                           1:Str := 'Primeiro ';
                           2:Str := 'Segundo ';
                           3:Str := 'Terceiro ';
                           4:Str := 'Quarto ';
                           5:Str := 'Quinto ';
                           6:Str := 'Sexto ';
                           7:Str := 'Setimo ';
                           8:Str := 'Oitavo ';
                           9:Str := 'Nono ';
                           10:Str := 'Decimo ';
                           11:Str := 'Decimo Primeiro ';
                           12:Str := 'Decimo Segundo ';
                           13:Str := 'Decimo Terceiro ';
                           14:Str := 'Decimo Quarto ';
                           15:Str := 'Decimo Quinto ';
                           16:Str := 'Decimo Sexto ';
                           17:Str := 'Decimo Setimo ';
                           18:Str := 'Decimo Oitavo ';
                           19:Str := 'Decimo Nono ';
                           20:Str := 'Vigesimo ';
                           21:Str := 'Vigesimo Primeiro ';
                           22:Str := 'Vigesimo Segundo ';
                           23:Str := 'Vigesimo Terceiro ';
                           24:Str := 'Vigesimo Quarto ';
                           25:Str := 'Vigesimo Quinto ';
                           26:Str := 'Vigesimo Sexto ';
                           27:Str := 'Vigesimo Setimo ';
                           28:Str := 'Vigesimo Oitavo ';
                           29:Str := 'Vigesimo Nono ';
                           30:Str := 'Trigesimo ';
                           31:Str := 'Trigesimo Primeiro ';
                        end;

                        Str := Str + ' dia(s) do Mes de ' + Mes + ' do Ano de ' ;

                        CASE A OF
                            2000: Str := Str + 'Dois Mil';
                            2001: Str := Str + 'Dois Mil e Um';
                            2002: Str := Str + 'Dois Mil e Dois';
                            2003: Str := Str + 'Dois Mil e Tres';
                            2004: Str := Str + 'Dois Mil e Quatro';
                            2005: Str := Str + 'Dois Mil e Cinco';
                            2006: Str := Str + 'Dois Mil e Seis';
                            2007: Str := Str + 'Dois Mil e Sete';
                            2008: Str := Str + 'Dois Mil e Oito';
                            2009: Str := Str + 'Dois Mil e Nove';
                            2010: Str := Str + 'Dois Mil e Dez';
                        END;

                        Promissora.ImpF( NotaPromissoriaVECTO_EXT_ALT.value ,Dst, STR , [Comp17]);
                   END;

                   Dst := NotaPromissoriaEMPRESA_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        //NOME
                        Promissora.ImpF( NotaPromissoriaEMPRESA_ALT.VALUE, Dst, NotaPromissoriaEMPRESA.VALUE , [Comp17]);
                   END;

                   //Codigo do Cliente
                   Dst := NotaPromissoriaSACADO2_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        //NOME
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE, Dst, Razao, [Comp17]);
                        //ENDERECO
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+1, Dst, ENDERECO + ', ' + NOMECIDADE + ' UF ' + UF, [Comp17]);
                        //BAIRRO + COMPLEMENTO
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+2, Dst, NOMEBAIRRO , [Comp17]);
                        //DOCUMENTOS
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+3, Dst, 'CPF/CNPJ: ' + DOCUMENTOS + ' RG/IE: ' + IERG, [Comp17]);
                        //FONE
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+4, Dst, FONE , [Comp17]);
                   END;

                   //CODIGO DO VENDEDOR
                   Dst := NotaPromissoriaVENDEDOR_DST.VALUE ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaVENDEDOR_ALT.VALUE , Dst, 'VEND = '+CODIGO_VENDEDOR, [Comp17]);
                   END;

                   //EXTENSO
                   Dst := NotaPromissoriaEXTENSO_DST.Value ;

                   EXTENSO.Valor := SOMA_VALORES ;

                   STR  := COPY(EXTENSO.Texto,1,50) ;

                   WHILE LENGTH(STR) < 50 DO
                   BEGIN
                        STR :=  STR + '*';
                   END;

                   STR2 := COPY(EXTENSO.Texto,51,50) ;

                   IF ( TRIM(STR2) <> '' )
                   THEN BEGIN
                        WHILE LENGTH(STR2) < 50 DO
                        BEGIN
                             STR2 :=  STR2 + '*'
                        END;
                   END;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value, Dst, Str, [Comp17]);

                   IF TRIM(STR2) <> ''
                   THEN
                       Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value + 1, Dst, Str2, [Comp17]);

                   Promissora.NovaPagina ;
              END;




              ///IMPRESSAO DAS PARCELAS   aqui fi..
              Consulta_Venda_Parc.First ;

              While Not Consulta_Venda_Parc.Eof do
              begin
                   //-------------Novo Canhoto-------------------//
                   //Parcela
                   Dst := NotaPromissoriaCAN_PARC_DST.Value;
                   if (Dst > 0) then
                     Promissora.ImpF(NotaPromissoriaCAN_PARC_ALT.VALUE - 1 , Dst,Consulta_Venda_ParcPARCELA.Text, [Comp20]);

                   //Valor
                   dst := NotaPromissoriaCAN_VALOR_DST.Value;
                   if (Dst > 0) then
                   begin
                     STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ParcVALOR.Value);
                     while length(str) < 10 DO
                     begin
                        STR := ' ' + STR ;
                     end;
                     Promissora.ImpF(NotaPromissoriaCAN_VALOR_ALT.VALUE - 1 , Dst,str, [Comp20]);
                   end;

                   //Cód Cliente
                   dst := NotaPromissoriaCAN_COD_CLI_DST.value;
                   if (dst > 0) then
                     Promissora.ImpF(NotaPromissoriaCAN_COD_CLI_ALT.VALUE - 1 , Dst,'Cli: '+inttostr(codigo_Cliente), [Comp20]);

                   //Cód Venda
                   dst := NotaPromissoriaCAN_COD_VENDA_DST.value;
                   if (dst > 0) then
                     Promissora.ImpF(NotaPromissoriaCAN_COD_VENDA_ALT.VALUE - 1 , Dst,'Vnd: '+IntToStr(PedidoNumero), [Comp20]);

                   dst := NotaPromissoriaCAN_VENCTO_DST.value;
                   if (dst > 0) then
                     Promissora.ImpF(NotaPromissoriaCAN_VENCTO_ALT.VALUE - 1 , Dst,DateToStr(Consulta_Venda_ParcVENCTO.Value), [Comp20]);

                   //MENSAGEM DA NP
                   IF TRIM(NotaPromissoriaMENSAGEM_NP.VALUE) <> ''
                   THEN BEGIN
                        Dst := NotaPromissoriaMENSAGEM_DST.Value ;

                        IF DST > 0
                        THEN
                            Promissora.ImpF( NotaPromissoriaMENSAGEM_ALT.VALUE, Dst, NotaPromissoriaMENSAGEM_NP.VALUE, [Comp17]);
                   END;

                   //Vencimento
                   Dst := NotaPromissoriaVENCIMENTO1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN
                            Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE - 1 , Dst, 'VENCIMENTO', [Comp17]);
                        Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE ,Dst, DateToStr(Consulta_Venda_ParcVENCTO.Value), [Comp17]);
                   END;

                   //Venda
                   Dst   := NotaPromissoriaVENDA1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN
                            Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value - 1 , Dst, 'VENDA', [Comp17]);
                        Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);
                   END;

                   //Parcela
                   Dst := NotaPromissoriaPARCELA1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN
                            Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE - 1, Dst, 'PARCELA', [Comp17]);
                        Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE, Dst, Consulta_Venda_ParcPARCELA.Text, [Comp17]);
                   END;

                   //Valor
                   Dst := NotaPromissoriaVALOR1_DST.Value ;

                   STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ParcVALOR.Value );
                   WHILE LENGTH(STR) < 10 DO
                   BEGIN
                        STR := ' ' + STR ;
                   END;

                   IF DST > 0
                   THEN BEGIN
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN
                            Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value - 1 , Dst, 'VALOR', [Comp17]);
                        Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value, Dst, Str, [Comp17]);
                   END;

                   //CODIGO DO CLIENTE
                   Dst := NotaPromissoriaCODIGO_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaCODIGO_ALT.VALUE , Dst, inttostr(codigo_Cliente), [Comp17, negrito]);
                   END;

                   //CODIGO DO CLIENTE NA VIA DO CLIENTE
                   Dst := NotaPromissoriaCODIGO2_DST.Value ;
                   //Código da extrema direita
                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaCODIGO2_ALT.VALUE , Dst, inttostr(codigo_Cliente), [Comp17, negrito]);
                   END;

                   //DATA DA COMPRA
                   Dst := NotaPromissoriaDATA2_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaDATA2_ALT.VALUE , Dst, DATA, [Comp17]);
                   END;

                   //DATA DA COMPRA NA ASSINATURA
                   Dst := NotaPromissoriaDATA3_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaDATA3_ALT.VALUE , Dst, DATA, [Comp17]);
                   END;

                   //Codigo do Cliente
                   Dst := NotaPromissoriaSACADO1_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
    //                    Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE - 1, Dst, 'CLIENTE', [Comp17]);
                        IF NotaPromissoriaDESCRICAO_CANHOTO.value = 'S'
                        THEN BEGIN
                             IF NotaPromissoriaTAMANHO_NOME.VALUE > 0
                             THEN BEGIN
                                  Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE, Dst, Copy(Razao,1,NotaPromissoriaTAMANHO_NOME.VALUE), [Comp17]);
                                  Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE + 1, Dst, Copy(Razao,1+NotaPromissoriaTAMANHO_NOME.VALUE,NotaPromissoriaTAMANHO_NOME.VALUE), [Comp17]);
                             END
                             ELSE BEGIN
                                  Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE, Dst, Copy(Razao,1,17), [Comp17]);
                                  Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE + 1, Dst, Copy(Razao,18,35), [Comp17]);
                             END;
                        END;
                   END;

    ////*****NOTA PROMISSORIA

                   //Vencimento
                   Dst := NotaPromissoriaVENCIMENTO2_DST.Value ;

                   IF DST > 0
                   THEN
                       Promissora.ImpF( NotaPromissoriaVENCIMENTO2_ALT.VALUE ,Dst, DateToStr(Consulta_Venda_ParcVENCTO.Value), [Comp17]);

                   //Venda
                   Dst   := NotaPromissoriaVENDA2_DST.Value ;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaVENDA2_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);

                   //Parcela
                   Dst := NotaPromissoriaPARCELA2_DST.Value ;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaPARCELA2_ALT.VALUE, Dst, Consulta_Venda_ParcPARCELA.Text , [Comp17]);

                   //Valor
                   Dst := NotaPromissoriaVALOR2_DST.Value ;

                   STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ParcVALOR.Value );
                   WHILE LENGTH(STR) < 10 DO
                   BEGIN
                        STR := ' ' + STR ;
                   END;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaVALOR2_ALT.Value, Dst, Str, [Comp17]);

                   //DIA MES E ANO DO VENCIMENTO
                   DECODEDATE ( Consulta_Venda_ParcVENCTO.Value, A, M, D );

                   ANO := INTTOSTR( A );

                   case M of
                   1 : mes := 'Janeiro';
                   2 : mes := 'Fevereiro';
                   3 : mes := 'Marco';
                   4 : mes := 'Abril';
                   5 : mes := 'Maio';
                   6 : mes := 'Junho';
                   7 : mes := 'Julho';
                   8 : mes := 'Agosto';
                   9 : mes := 'Setembro';
                   10: mes := 'Outubro';
                   11: mes := 'Novembro';
                   12: mes := 'Dezembro';
                   end;

                   DIA := INTTOSTR( D );

                   Dst := NotaPromissoriaDATA_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst, DIA  , [Comp17]);
                        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+4, MES  , [Comp17]);
                        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+13, ANO  , [Comp17]);
                   END;

                   //Vencimento por extenso
                   Dst := NotaPromissoriaVECTO_EXT_DST.Value ;

                   If Dst > 0
                   THEN BEGIN
                        CASE D OF
                           1:Str := 'Primeiro ';
                           2:Str := 'Segundo ';
                           3:Str := 'Terceiro ';
                           4:Str := 'Quarto ';
                           5:Str := 'Quinto ';
                           6:Str := 'Sexto ';
                           7:Str := 'Setimo ';
                           8:Str := 'Oitavo ';
                           9:Str := 'Nono ';
                           10:Str := 'Decimo ';
                           11:Str := 'Decimo Primeiro ';
                           12:Str := 'Decimo Segundo ';
                           13:Str := 'Decimo Terceiro ';
                           14:Str := 'Decimo Quarto ';
                           15:Str := 'Decimo Quinto ';
                           16:Str := 'Decimo Sexto ';
                           17:Str := 'Decimo Setimo ';
                           18:Str := 'Decimo Oitavo ';
                           19:Str := 'Decimo Nono ';
                           20:Str := 'Vigesimo ';
                           21:Str := 'Vigesimo Primeiro ';
                           22:Str := 'Vigesimo Segundo ';
                           23:Str := 'Vigesimo Terceiro ';
                           24:Str := 'Vigesimo Quarto ';
                           25:Str := 'Vigesimo Quinto ';
                           26:Str := 'Vigesimo Sexto ';
                           27:Str := 'Vigesimo Setimo ';
                           28:Str := 'Vigesimo Oitavo ';
                           29:Str := 'Vigesimo Nono ';
                           30:Str := 'Trigesimo ';
                           31:Str := 'Trigesimo Primeiro ';
                        end;

                        Str := Str + ' dia(s) do Mes de ' + Mes + ' do Ano de ' ;

                        CASE A OF
                            2000: Str := Str + 'Dois Mil';
                            2001: Str := Str + 'Dois Mil e Um';
                            2002: Str := Str + 'Dois Mil e Dois';
                            2003: Str := Str + 'Dois Mil e Tres';
                            2004: Str := Str + 'Dois Mil e Quatro';
                            2005: Str := Str + 'Dois Mil e Cinco';
                            2006: Str := Str + 'Dois Mil e Seis';
                            2007: Str := Str + 'Dois Mil e Sete';
                            2008: Str := Str + 'Dois Mil e Oito';
                            2009: Str := Str + 'Dois Mil e Nove';
                            2010: Str := Str + 'Dois Mil e Dez';
                        END;

                        Promissora.ImpF( NotaPromissoriaVECTO_EXT_ALT.value ,Dst, STR , [Comp17]);
                   END;

                   Dst := NotaPromissoriaEMPRESA_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        //NOME
                        Promissora.ImpF( NotaPromissoriaEMPRESA_ALT.VALUE, Dst, NotaPromissoriaEMPRESA.VALUE , [Comp17]);
                   END;

                   //Codigo do Cliente
                   Dst := NotaPromissoriaSACADO2_DST.Value ;

                   IF DST > 0
                   THEN BEGIN
                        //NOME
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE, Dst, Razao, [Comp17]);
                        //ENDERECO
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+1, Dst, ENDERECO , [Comp17]);
                        //CIDADE
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+2, Dst, NOMECIDADE + ' UF ' + UF, [Comp17]);
                        //BAIRRO + COMPLEMENTO
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+3, Dst, NOMEBAIRRO , [Comp17]);
                        //DOCUMENTOS
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+4, Dst, 'CPF/CNPJ: ' + DOCUMENTOS + ' RG/IE: ' + IERG, [Comp17]);
                        //FONE
                        Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+5, Dst, FONE , [Comp17]);
                   END;

                   //CODIGO DO VENDEDOR
                   Dst := NotaPromissoriaVENDEDOR_DST.VALUE ;

                   IF DST > 0
                   THEN BEGIN
                        Promissora.ImpF(NotaPromissoriaVENDEDOR_ALT.VALUE , Dst, 'VEND = '+CODIGO_VENDEDOR, [Comp17]);
                   END;

                   //EXTENSO
                   Dst := NotaPromissoriaEXTENSO_DST.Value ;

                   EXTENSO.Valor := Consulta_Venda_ParcVALOR.Value ;

                   STR  := COPY(EXTENSO.Texto,1,50) ;

                   WHILE LENGTH(STR) < 50 DO
                   BEGIN
                        STR :=  STR + '*'
                   END;

                   STR2 := COPY(EXTENSO.Texto,51,50) ;

                   IF ( TRIM(STR2) <> '' )
                   THEN BEGIN
                        WHILE LENGTH(STR2) < 50 DO
                        BEGIN
                             STR2 :=  STR2 + '*'
                        END;
                   END;

                   IF DST > 0
                   THEN
                       Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value, Dst, Str, [Comp17]);

                   IF TRIM(STR2) <> ''
                   THEN
                       Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value + 1, Dst, Str2, [Comp17]);

                   Consulta_Venda_Parc.Next ;

                   If Not Consulta_Venda_Parc.Eof
                   Then
                       Promissora.NovaPagina ;
              end;

              Promissora.Fechar;

              NotaPromissoria.Close ;

     END;

     Close ;
end;

Procedure TFrmImprimePromissoria.ImprimeTroca ;
Var
   Dia, Mes, Ano: String;
   D, M,A: WORD ;
   Str, Str2 : String ;
   Dst : Integer;
   Pulo: Integer;
begin
     With DmVendas do
     begin
          dmvendas2.Proc_Imprime_Venda(PedidoNumero);

          VerPessoa ( Consulta_VendaPESSOA_FJ.Value );

          Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          NomeCliente  := Ver_PessoaFANTASIA.Value           ;
          Data         := DateToStr(Consulta_VendaDATA.Value);
          OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;
          If Trim(Observacao )= ''
          then begin
               OBSERVACAO   := Consulta_VendaHISTORICO.Value ;
          end;

          NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
          TipoDoc      := Consulta_VendaTIPO_DOCTO.Value  ;
          Endereco     := Ver_PessoaENDERECO.Value + ', N ' + Ver_PessoaNUMERO.Value ;
          Numero       := Ver_PessoaNUMERO.Value ;
          NomeCidade   := Ver_PessoaCIDADE.Value ;
          NomeBairro   := Ver_PessoaBAIRRO.Value ;
          EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
          Cep          := Ver_PessoaCEP.Value;
          Uf           := Ver_PessoaUF.Value ;
          NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;
          Fone         := Ver_PessoaFONE.Value ;
          Fax          := Ver_PessoaFAX.Value  ;
          If Length(Ver_PessoaCPF_CGC.Value) > 11
          then begin
               Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
          end
          else begin
               Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
          end;

          IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
          InscMun           := Ver_PessoaINSC_MUNIC.Value ;
          Condicoes         := Consulta_VendaNOME_FORMA.Value      ;
          NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
          Peso              := Formatfloat('###,###,##0.00', Consulta_VendaPeso.Value);
          Volume            := Formatfloat('###,###,##0.00', Consulta_VendaVolume.Value);
          Total             := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value);
          Desconto          := Formatfloat('###,###,##0.00', Consulta_VendaDESC_ACRES.Value);
          Liquido           := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
          LocalCobranca     := Consulta_VendaLocal_COBRANCA.Value ;

          NotaPromissoria.open ;

          Promissora.TamanhoQteLinhas := NotaPromissoriaTAMANHOPAGINA.Value ;

          If ( VIAS.Value > 0 ) and ( VIAS.Value < 3 )
          then
              Promissora.NumerodeCopias := Trunc( VIAS.Value )
          else
              Promissora.NumerodeCopias := 1;

          If Opcao = 'S'
          then
              Promissora.OpcoesPreview.Preview := TRUE
          else
              Promissora.OpcoesPreview.Preview := FALSE ;

          If NotaPromissoriaLPP.Value = 6
          Then
              Promissora.TamanhoQteLPP := Seis
          Else
              Promissora.TamanhoQteLPP := Oito ;

          If ( TRIM( NotaPromissoriaPORTA.Value ) <> '' ) AND ( DMAPP.PORTA_PRAZO <> 'LPT1')
          THEN BEGIN
               SetDefaultPrinter( NotaPromissoriaPORTA.Value ) ;
               Promissora.PortaComunicacao  := trim(NotaPromissoriaPORTA.Value ) ;
               Promissora.SetPrinterbyPorta (trim( NotaPromissoriaPORTA.Value )) ;
          END
          ELSE BEGIN
               Promissora.PortaComunicacao  := ('LPT1') ;
               Promissora.SetPrinterbyPorta ('LPT1') ;
          END;

          Pulo := 1 ;

          Promissora.Abrir;

          Consulta_Venda_Parc.First ;

          While Not Consulta_Venda_Parc.Eof do
          begin
          ////CANHOTO
               //Vencimento
               Dst := NotaPromissoriaVENCIMENTO1_DST.Value ;

               IF DST > 0
               THEN BEGIN
                    Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE - 1 , Dst, 'VENCIMENTO', [Comp17]);
                    Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE ,Dst, DateToStr(Consulta_Venda_ParcVENCTO.Value), [Comp17]);
               END;

               //Venda
               Dst   := NotaPromissoriaVENDA1_DST.Value ;

               IF DST > 0
               THEN BEGIN
                    Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value - 1 , Dst, 'VENDA', [Comp17]);
                    Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);
               END;

               //Parcela
               Dst := NotaPromissoriaPARCELA1_DST.Value ;

               IF DST > 0   THEN BEGIN
                    Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE - 1, Dst, 'PARCELA', [Comp17]);
                    Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE, Dst, Consulta_Venda_ParcPARCELA.Text, [Comp17]);
               END;

               //Valor
               Dst := NotaPromissoriaVALOR1_DST.Value ;

               STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ParcVALOR.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IF DST > 0
               THEN BEGIN
                    Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value - 1 , Dst, 'VALOR', [Comp17]);
                    Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value, Dst, Str, [Comp17]);
               END;


               //Codigo do Cliente
               Dst := NotaPromissoriaSACADO1_DST.Value ;

               IF DST > 0
               THEN BEGIN
                    Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE - 1, Dst, 'CLIENTE', [Comp17]);
                    Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE, Dst, Copy(Razao,1,17), [Comp17]);
                    Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE + 1, Dst, Copy(Razao,18,35), [Comp17]);
               END;

////*****NOTA PROMISSORIA

               //Vencimento
               Dst := NotaPromissoriaVENCIMENTO2_DST.Value ;

               IF DST > 0
               THEN
                   Promissora.ImpF( NotaPromissoriaVENCIMENTO2_ALT.VALUE ,Dst, DateToStr(Consulta_Venda_ParcVENCTO.Value), [Comp17]);

               //Venda
               Dst   := NotaPromissoriaVENDA2_DST.Value ;

               IF DST > 0
               THEN
                   Promissora.ImpF(NotaPromissoriaVENDA2_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);

               //Parcela
               Dst := NotaPromissoriaPARCELA2_DST.Value ;

               IF DST > 0
               THEN
                   Promissora.ImpF(NotaPromissoriaPARCELA2_ALT.VALUE, Dst, Consulta_Venda_ParcPARCELA.Text , [Comp17]);

               //Valor
               Dst := NotaPromissoriaVALOR2_DST.Value ;

               STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ParcVALOR.Value );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               IF DST > 0
               THEN
                   Promissora.ImpF(NotaPromissoriaVALOR2_ALT.Value, Dst, Str, [Comp17]);

               //DIA MES E ANO DO VENCIMENTO
               DECODEDATE ( Consulta_Venda_ParcVENCTO.Value, A, M, D );

               ANO := INTTOSTR( A );

               case M of
               1 : mes := 'Janeiro';
               2 : mes := 'Fevereiro';
               3 : mes := 'Marco';
               4 : mes := 'Abril';
               5 : mes := 'Maio';
               6 : mes := 'Junho';
               7 : mes := 'Julho';
               8 : mes := 'Agosto';
               9 : mes := 'Setembro';
               10: mes := 'Outubro';
               11: mes := 'Novembro';
               12: mes := 'Dezembro';
               end;

               DIA := INTTOSTR( D );

               Dst := NotaPromissoriaDATA_DST.Value ;

               IF DST > 0
               THEN BEGIN
                    Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst, DIA  , [Comp17]);
                    Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+5, MES  , [Comp17]);
                    Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+15, ANO  , [Comp17]);
               END;

               //Vencimento por extenso
               Dst := NotaPromissoriaVECTO_EXT_DST.Value ;

               If Dst > 0
               THEN BEGIN
                    CASE D OF
                       1:Str := 'Primeiro ';
                       2:Str := 'Segundo ';
                       3:Str := 'Terceiro ';
                       4:Str := 'Quarto ';
                       5:Str := 'Quinto ';
                       6:Str := 'Sexto ';
                       7:Str := 'Setimo ';
                       8:Str := 'Oitavo ';
                       9:Str := 'Nono ';
                       10:Str := 'Decimo ';
                       11:Str := 'Decimo Primeiro ';
                       12:Str := 'Decimo Segundo ';
                       13:Str := 'Decimo Terceiro ';
                       14:Str := 'Decimo Quarto ';
                       15:Str := 'Decimo Quinto ';
                       16:Str := 'Decimo Sexto ';
                       17:Str := 'Decimo Setimo ';
                       18:Str := 'Decimo Oitavo ';
                       19:Str := 'Decimo Nono ';
                       20:Str := 'Vigesimo ';
                       21:Str := 'Vigesimo Primeiro ';
                       22:Str := 'Vigesimo Segundo ';
                       23:Str := 'Vigesimo Terceiro ';
                       24:Str := 'Vigesimo Quarto ';
                       25:Str := 'Vigesimo Quinto ';
                       26:Str := 'Vigesimo Sexto ';
                       27:Str := 'Vigesimo Setimo ';
                       28:Str := 'Vigesimo Oitavo ';
                       29:Str := 'Vigesimo Nono ';
                       30:Str := 'Trigesimo ';
                       31:Str := 'Trigesimo Primeiro ';
                    end;

                    Str := Str + ' dia(s) do Mes de ' + Mes + ' do Ano de ' ;

                    CASE A OF
                        2000: Str := Str + 'Dois Mil';
                        2001: Str := Str + 'Dois Mil e Um';
                        2002: Str := Str + 'Dois Mil e Dois';
                        2003: Str := Str + 'Dois Mil e Tres';
                        2004: Str := Str + 'Dois Mil e Quatro';
                        2005: Str := Str + 'Dois Mil e Cinco';
                        2006: Str := Str + 'Dois Mil e Seis';
                        2007: Str := Str + 'Dois Mil e Sete';
                        2008: Str := Str + 'Dois Mil e Oito';
                        2009: Str := Str + 'Dois Mil e Nove';
                        2010: Str := Str + 'Dois Mil e Dez';
                    END;

                    Promissora.ImpF( NotaPromissoriaVECTO_EXT_ALT.value ,Dst, STR , [Comp17]);
               END;

               Dst := NotaPromissoriaEMPRESA_DST.Value ;

               IF DST > 0
               THEN BEGIN
                    //NOME
                    Promissora.ImpF( NotaPromissoriaEMPRESA_ALT.VALUE, Dst, NotaPromissoriaEMPRESA.VALUE , [Comp17]);
               END;

               //Codigo do Cliente
               Dst := NotaPromissoriaSACADO2_DST.Value ;

               IF DST > 0
               THEN BEGIN
                    //NOME
                    Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE, Dst, Razao, [Comp17]);
                    //ENDERECO
                    Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+1, Dst, ENDERECO , [Comp17]);
                    //CIDADE
                    Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+2, Dst, NOMECIDADE + ' UF ' + UF, [Comp17]);
                    //BAIRRO + COMPLEMENTO
                    Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+3, Dst, NOMEBAIRRO , [Comp17]);
                    //DOCUMENTOS
                    Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+4, Dst, 'CPF/CNPJ: ' + DOCUMENTOS + ' RG/IE: ' + IERG, [Comp17]);
                    //FONE
                    Promissora.ImpF(NotaPromissoriaSACADO2_ALT.VALUE+5, Dst, FONE , [Comp17]);
               END;

               //EXTENSO
               Dst := NotaPromissoriaEXTENSO_DST.Value ;

               EXTENSO.Valor := Consulta_Venda_ParcVALOR.Value ;

               STR  := COPY(EXTENSO.Texto,1,50) ;

               WHILE LENGTH(STR) < 50 DO
               BEGIN
                    STR :=  STR + '*'
               END;

               STR2 := COPY(EXTENSO.Texto,51,50) ;

               WHILE LENGTH(STR2) < 50 DO
               BEGIN
                    STR2 :=  STR2 + '*'
               END;

               IF DST > 0
               THEN
                   Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value, Dst, Str, [Comp17]);

               IF TRIM(STR2) <> ''
               THEN
                   Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value + 1, Dst, Str2, [Comp17]);

               Consulta_Venda_Parc.Next ;

               If Not Consulta_Venda_Parc.Eof
               Then
                   Promissora.NovaPagina ;
          end;

          Promissora.Fechar;

          NotaPromissoria.Close ;
     END;

     Close ;
end;

procedure TFrmImprimePromissoria.ActVisualizarExecute(Sender: TObject);
begin
     Opcao := 'S' ;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     ImprimeVENDA ;
end;

end.


