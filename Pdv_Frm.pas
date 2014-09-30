 unit Pdv_Frm;

interface

uses
  Windows, variants,Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, StdCtrls, Db, DBCtrls, Serial,
  ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, ppParameter, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppVar, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
    RDprint, cxGroupBox, cxLabel, jpeg, ACBrBase, ACBrExtenso, cxImage,
  cxDBEdit, cxDBLabel ;

type
  TFrmPdv = class(TForm)
    PnlPdv: TPanel;
    Bevel1: TBevel;
    PnDescricao: TPanel;
    PNQNTDE: TPanel;
    PNUNITARIO: TPanel;
    pncodigo: TPanel;
    ActLista: TActionList;
    AbreCupom: TAction;
    DsPdv: TDataSource;
    EdDigitacao: TEdit;
    PnTotal: TPanel;
    RxLabel1: TcxLabel;
    RxLabel2: TcxLabel;
    RxLabel3: TcxLabel;
    ActFechaCupom: TAction;
    Panel1: TPanel;
    LblTitulo: TcxLabel;
    ActDigita: TAction;
    status: TPanel;
    Lista: TPanel;
    PNMENSAGEM: TPanel;
    MENSAGEM: TcxLabel;
    ActQuantidade: TAction;
    ActFuncoes: TAction;
    ActFecharForm: TAction;
    Panel2: TPanel;
    lblhora: TcxLabel;
    Panel3: TPanel;
    lbldatacaixa: TcxLabel;
    Panel4: TPanel;
    LblUsuario: TcxLabel;
    LblNominal: TcxLabel;
    ActLocalizar: TAction;
    ActReceber: TAction;
    Print: TRDprint;
    ActPagar: TAction;
    ActMovimento: TAction;
    ActFechaCupomPrazo: TAction;
    ActComanda: TAction;
    ActTrocaVendedor: TAction;
    ActFuncoesAux: TAction;
    ActCalculadora: TAction;
    LblInsercao: TcxLabel;
    ActAlteraProduto: TAction;
    ActLczNat: TAction;
    ActImprimirVenda: TAction;
    ActCancelaAcresc: TAction;
    ActTransfereMesa: TAction;
    ActHelp: TAction;
    pnlMesa: TPanel;
    lblMesa: TcxLabel;
    ActHelp2: TAction;
    Panel5: TPanel;
    lblVendedor: TcxLabel;
    ppLayout: TppDBPipeline;
    ppSerieNF: TppDBPipeline;
    ppLayoutConvenio: TppDBPipeline;
    dsEdtSerieNF: TDataSource;
    dsPedidos: TDataSource;
    rptSerieNF: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    lblParcelamento: TppLabel;
    ppDetailBand3: TppDetailBand;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBText23: TppDBText;
    ppParameterList3: TppParameterList;
    dsQrySeriesNF: TDataSource;
    ppConvenio: TppDBPipeline;
    rtpConvenio2: TppReport;
    ppSubIndice: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    VLR: TACBrExtenso;
    Image1: TcxDBImage;
    dsApp: TDataSource;
    procedure AbreCupomExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ActFechaCupomExecute(Sender: TObject);
    procedure ActDigitaExecute(Sender: TObject);
    procedure ActQuantidadeExecute(Sender: TObject);
    procedure ActFuncoesExecute(Sender: TObject);
    procedure EdDigitacaoKeyPress(Sender: TObject; var Key: Char);
    procedure ActFecharFormExecute(Sender: TObject);
    Function  BarrasTotal ( Codigo: String ): String;
    procedure ActLocalizarExecute(Sender: TObject);
    procedure ActReceberExecute(Sender: TObject);
    procedure ActPagarExecute(Sender: TObject);
    procedure ActMovimentoExecute(Sender: TObject);
    procedure ActFechaCupomPrazoExecute(Sender: TObject);
    procedure ActComandaExecute(Sender: TObject);
    procedure ActTrocaVendedorExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure ActAlteraProdutoExecute(Sender: TObject);
    procedure PNQNTDEExit(Sender: TObject);
    procedure ActLczNatExecute(Sender: TObject);
    procedure ActCancelaAcrescExecute(Sender: TObject);
    procedure ActImprimirVendaExecute(Sender: TObject);
    procedure ActTransfereMesaExecute(Sender: TObject);
    procedure ActHelpExecute(Sender: TObject);
    procedure ppConvenioBeforeOpen(Sender: TObject);

  private
    { Private declarations }
    Vendedor : INTEGER;
    NomeVendedor : string;
    procedure CupomNominal   ;
    procedure Extrato        ;
    procedure LeituraX       ;
    procedure LeituraZ       ;
    procedure Dig_Quantidade ;

    procedure CabecalhoCaixas (Sender: TObject; Pagina: Integer) ;
    procedure Cabecalho(Sender: TObject; Pagina: Integer);
    procedure CabecalhoSaidas(Sender: TObject; Pagina: Integer);
    procedure CabecalhoVendas(Sender: TObject; Pagina: Integer);

    procedure ImprimeReceber (Opcao: String);
    procedure ImprimePagar   (Opcao: String);
    procedure ImprimeVendas  (Opcao: String);
    procedure ImprimeSaidas  (Opcao: String);

    procedure Rodape(Sender: TObject; Pagina: Integer);
    procedure inclinhaCx;

    procedure AbreMesas(Mesa: integer);

    procedure CoresFundoPDV;
  public
    { Public declarations }
    CupomAberto: Boolean ;
    Alterando_Produto: Boolean ;
    TotalIndice : Real;
    codindice: integer;
    Function  UtilizaBalanca ( Codigo: String ): String;
  end;

var
  FrmPdv: TFrmPdv;
  linhacx, Pagina: Integer;
  SaldoCaixa,
  SaldoSaidas,
  SaldoRecebidas,
  SaldoPagas,
  SaldoVendas,
  SaldoAVista,
  Saldo_Trocas : Real ;


implementation

uses Pdv_DM,
     Main,
     comsetup_Form,
     Funcoes,
     FaturaCupom_Form,
     TrocoPdv_Form,
     QuantidadePdv_Form,
     FuncoesPdv_Form,
     Application_DM,
     ConveniadoPdv_Form,
     LocalizarProd_DM,
     Localizar_ProdutoPdv,
     Entra_Dados_Receber_Pdv_Form,
     Entra_Dados_Movtos_Pdv_Form,
     Financeiro_Dm,
     Caixa_Dm,
     SenhaGerencialPdv_Form,
     Localizar_Mesa,
     Usuarios_DM,
     UDS300, Calculadora_Pdv_Form, Localizar_Natureza,
  Localizar_Vendedor_PDV, Help_Form, Cadastros_DM, Vendas_DM2,
  SerieCustomizaveis_DM, Baixa_Receber_Multiplos_Parc_Form,
  IndicesPdv_Form, Comandas_Form;

{$R *.DFM}

procedure TFrmPdv.CabecalhoVendas(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);

  If DmaPP.CX_Imp_Vnd_Agrup = 'S'
  THEN BEGIN
       Print.ImpF(05,01,'Vendedor                                                                                            Vista       Prazo        Vlr Liquido', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linhacx  := 08;
  END
  ELSE BEGIN
       //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
       Print.ImpF(05,01,'Fatura Cliente                                           Vendedor       Nf  Cf  Natureza            Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linhacx  := 08;
  END;

end;

procedure TFrmPdv.ImprimeVendas (Opcao: String);
Var
   VndVista, VndPrazo: Real;
   Total, Vista, Prazo: Real;
   Dinheiro, Cheque, Cartao, Ticket, Troco, Prazos: Real;
   DinheiroTxt, ChequeTxt, CartaoTxt, TicketTxt, PrazoTxt, TrocoTxt: String;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := CabecalhoVendas ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  Dinheiro := 0;
  Cheque   := 0;
  Cartao   := 0;
  Ticket   := 0;
  Troco    := 0;
  Prazos   := 0;

  DmCaixa.Vendas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Vendas Faturadas' ;
       print.Abrir;
  END
  ELSE BEGIN
       inclinhacx ;

       If DmaPP.Cx_Imp_Vnd_Agrup = 'S'
       THEN BEGIN
            Print.ImpF(linhacx, 01,'Vendedor                                                                                           Vista           Prazo     Vlr Liquido', [Comp17]);
       end
       else begin
            Print.ImpF(linhacx, 01,'Vendedor                                                                                           Total          Descto     Vlr Liquido', [Comp17]);
       end;

       inclinhacx ;

       Print.ImpF(linhacx, 01, 'Vendas Faturadas', [Comp17, Negrito]);

       inclinhacx ;
  END;

       //
       Total := 0;
       Vista := 0;
       Prazo := 0;

       //
       DmCaixa.Vendas.First;

       Print.ImpF(linhacx, 01,'Vendas a Vista', [Comp17, NEGRITO]);
       //
       inclinhacx;

       While Not DmCaixa.Vendas.Eof Do
       Begin
            //SOMENTE VENDAS A VISTA
            IF ( ARREDONDA(DmCaixa.VendasAVISTA.Value,2) > 0 ) and (DmCaixa.VendasTIPO_VENDA.Value <> 'FFT') then
            begin
                 If DmCaixa.VendasTIPO_VENDA.Value <> 'Con' then
                 begin
                      IF DmCaixa.VendasTIPO_VENDA.VALUE = 'FFT'
                      THEN BEGIN
                           Prazos   := Prazos   + DmCaixa.VendasDINHEIRO.value ;
                           Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                           Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                           Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                           Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                           Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                           Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                           Prazo := Prazo + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                           Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                      END
                      ELSE BEGIN
                           Dinheiro := Dinheiro + DmCaixa.VendasDINHEIRO.value ;
                           Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                           Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                           Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                           Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                           Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                           Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                           Vista := Vista + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                           Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                      END;
                      //
                      DmCaixa.Vendas.Next;

//                      inclinhacx;
                   end
                   else
                       DmCaixa.Vendas.Next;
                 END
                 ELSE
                     DmCaixa.Vendas.Next;
       End;

       //IMPRIME SO O TOTAL DAS VENDAS A VISTA
       Print.ImpF(linhacx,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
       ['0',
        copy('VENDAS A VISTA',1,48) ,
        '',
        '',
        '',
        '',
        FORMATFLOAT('###,##0.00', VISTA),
        FORMATFLOAT('###,##0.00', 0),
        FORMATFLOAT('###,##0.00', VISTA)]),[Comp17]);

       inclinhacx;
       inclinhacx;

       DmCaixa.Vendas.First ;

       Print.ImpF(linhacx, 01,'Vendas a Prazo', [Comp17, NEGRITO]);

       inclinhacx;

       While Not DmCaixa.Vendas.Eof Do
       Begin
                 //SOMENTE VENDAS A VISTA
                 IF (( ARREDONDA(DmCaixa.VendasAVISTA.Value,2) <= 0 ) AND ( ARREDONDA(DmCaixa.VendasAPRAZO.Value,2) > 0 ))
                 OR ( DmCaixa.VendasTIPO_VENDA.Value = 'FFT' )
                 THEN BEGIN
                   If DmCaixa.VendasTIPO_VENDA.Value <> 'Con'
                   then begin
                      //
                      Print.ImpF(linhacx,01,Format('%6s %-50s %-8s %5s %5s %5s %20s %14s %15s',
                      [DmCaixa.VendasCODIGO.Text,
                      copy(DmCaixa.VendasNOME.Text + '-' + DmCaixa.VendasPESSOA_FJ.Text,1,48) ,
                      '',
                      '',
                      '',
                      '',
                      DmCaixa.VendasTOTAL.Text,
                      DmCaixa.VendasDESC_ACRES.Text,
                      DmCaixa.VendasLIQUIDO.Text]),[Comp17]);

                      IF DmCaixa.VendasTIPO_VENDA.VALUE = 'FFT'
                      THEN BEGIN
                           Prazos   := Prazos   + DmCaixa.VendasDINHEIRO.value ;
                           Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                           Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                           Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                           Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                           Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                           Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                           Prazo := Prazo + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                           Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                      END
                      ELSE BEGIN
                           Dinheiro := Dinheiro + DmCaixa.VendasDINHEIRO.value ;
                           Cheque   := Cheque   + DmCaixa.VendasCHEQUE.value   ;
                           Cartao   := Cartao   + DmCaixa.VendasCARTAO.value   ;
                           Ticket   := Ticket   + DmCaixa.VendasTICKET.value   ;
                           Troco    := Troco    + DmCaixa.VendasTROCO.value    ;
                           Prazos   := Prazos   + DmCaixa.VendasAPRAZO.value    ;

                           Total := Total + Arredonda(DmCaixa.VendasLIQUIDO.Value,2);
                           Vista := Vista + Arredonda(DmCaixa.VendasAVISTA.Value ,2);
                           Prazo := Prazo + Arredonda(DmCaixa.VendasAPRAZO.Value ,2);
                      END;
                      //
                      DmCaixa.Vendas.Next;

                      inclinhacx;
                   end
                   else
                       DmCaixa.Vendas.Next;
                 END
                 ELSE
                     DmCaixa.Vendas.Next;
       End;

       inclinhacx;

       Print.ImpF   (linhacx, 01, 'VISTA', [Comp17]);
       Print.ImpVal (linhacx, 15, '###,##0.00', VISTA , [Comp17]);

       inclinhacx;

       Print.ImpF   (linhacx, 01, 'PRAZO', [Comp17]);
       Print.ImpVal (linhacx, 15, '###,##0.00', PRAZO, [Comp17]);

       inclinhacx;

       Print.ImpF   (linhacx, 01, 'TOTAL', [Comp17]);
       Print.ImpVal (linhacx, 15, '###,##0.00', TOTAL, [Comp17]);

       inclinhacx;
       inclinhacx;

       SALDOAVISTA := VISTA ;
       //
       inclinhacx;

       DmCaixa.Vendas.EnableControls ;

  SaldoVendas := VISTA ;

  If Opcao = 'S' Then
  Begin
    print.Fechar;
  END;
end;

procedure TFrmPdv.inclinhacx ;
begin
     linhacx := linhacx + 1 ;

     If (linhacx >= 60)
     Then begin
          Print.Novapagina;
          linhacx := 8;
     end;
end;

procedure TFrmPdv.CabecalhoSaidas(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Documento         Historico                                                                                                        Valor', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linhacx  := 08;

end;

procedure TFrmPdv.Cabecalho(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Codigo Data       Cliente                                            Documento                      Total       Desc/Jur     Vlr Liquido', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linhacx  := 08;

end;

procedure TFrmPdv.Rodape(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFrmPdv.ImprimeReceber (Opcao: String);
Var
   Total: Real;
   TotalCli, TotalDesc, TotalJur, TotalBaixaCli: Real;
   UltCod: Integer;
   AUx, Nome: String;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := Cabecalho ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  DmCaixa.Recebidas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Contas Recebidas' ;

       print.Abrir;
  END
  ELSE BEGIN
       inclinhacx ;

       Print.ImpF(linhacx, 01, 'Contas Recebidas', [Comp17, Negrito]);

       inclinhacx ;
  END;

  //
  Total := 0;


       //
       DmCaixa.Recebidas.First;

       UltCod        := DmCaixa.RecebidasPESSOA_FJ.Value;
       Nome          := DmCaixa.RecebidasNOME.Text ;
       TotalCli      := 0;
       TotalDesc     := 0;
       TotalJur      := 0;
       TotalBaixaCli := 0;

       While Not DmCaixa.Recebidas.Eof Do
       Begin
            If ( UltCod <> DmCaixa.RecebidasPESSOA_FJ.Value ) or ( DmCaixa.Recebidas.Eof )
            then begin
                 //
                 Print.ImpF(linhacx,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
                       [InttoStr(UltCod),
                       '',
                       Nome,
                       '',
                       FormatFloat('###,###,##0.00', Arredonda(TotalCli,2)),
                       FormatFloat('###,###,##0.00', Arredonda(TotalDesc + TotalJur,2)),
                       FormatFloat('###,###,##0.00', Arredonda(TotalBaixaCli,2))]),[Comp17]);

                 TotalCli      := 0;
                 TotalDesc     := 0;
                 TotalJur      := 0;
                 TotalBaixaCli := 0;

                 UltCod        := DmCaixa.RecebidasPESSOA_FJ.Value;
                 Nome          := DmCaixa.RecebidasNOME.Text ;

                 //
                 inclinhacx;
            end;

            Total := Total + Arredonda(DmCaixa.RecebidasVLR_BAIXA.Value,2);

            TotalCli      := TotalCli      + Arredonda(DmCaixa.RecebidasVLR_BAIXA.Value,2)     ;
            TotalDesc     := TotalDesc     + Arredonda(DmCaixa.RecebidasDESCONTOS.Value,2) ;
            TotalBaixaCli := TotalBaixaCli + Arredonda(DmCaixa.RecebidasVLR_BAIXA.Value,2) ;
            TotalJur      := TotalJur      + Arredonda(DmCaixa.RecebidasJUROS.Value,2)     ;

            //
            DmCaixa.Recebidas.Next;
       End;

       //
       Print.ImpF(linhacx,01,Format('%6s %-8s %-52s %-15s %20s %14s %15s',
             [DmCaixa.RecebidasPESSOA_FJ.Text,
             '',
             DmCaixa.RecebidasNOME.Text,
             '',
             FormatFloat('###,###,##0.00', Arredonda(TotalCli,2)),
             FormatFloat('###,###,##0.00', Arredonda(TotalDesc + TotalJur,2) ),
             FormatFloat('###,###,##0.00', Arredonda(TotalBaixaCli,2))]
       ),[Comp17]);

       inclinhacx;

  //
  Print.ImpF(linhacx, 01, Format('%102s Total Recebidas : %15s', ['', FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

  inclinhacx;


  //SALDO DAS ENTRADAS
  SaldoRecebidas := Total ;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;

  DmCaixa.Recebidas.EnableControls ;
end;

procedure TFrmPdv.ImprimePagar   (Opcao: String);
Var
   Total: Real;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := Cabecalho ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  DmCaixa.Pagas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Contas Pagas' ;

       print.Abrir;
  END
  ELSE BEGIN
       inclinhacx ;

       Print.ImpF(linhacx, 01, 'Contas Pagas', [Comp17, Negrito]);

       inclinhacx ;
  END;

  //
  Total := 0;

  //
  DmCaixa.Pagas.First;

  While Not DmCaixa.Pagas.Eof Do
  Begin
       //
       Print.ImpF(linhacx,01,Format('%6s %-8s %-50s %-15s %20s %14s %15s',
                  [DmCaixa.PagasCODIGO.Text,
                   DmCaixa.PagasDT_VENCTO.Text,
                   DmCaixa.PagasNOME.Text,
                   DmCaixa.PagasDOCTO.Text,
                   DmCaixa.PagasVALOR.Text,
                   DmCaixa.PagasDESCONTOS.Text,
                   DmCaixa.PagasVLR_BAIXA.Text]),[Comp17]);

       Total := Total + DmCaixa.PagasVLR_BAIXA.Value;
          //
       DmCaixa.Pagas.Next;
       //
       inclinhacx;
       //
  End;
  //
  Print.ImpF(linhacx, 01, Format('%106s Total Pagas : %15s', ['', FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

  //
  inclinhacx;

  //SALDO DAS PAGAS
  SaldoPagas := Total ;

  DmCaixa.Pagas.EnableControls ;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;
end;

procedure TFrmPdv.ImprimeSaidas (Opcao: String);
Var
   Total, credito, debito: Real;
begin
  If Opcao = 'S'
  Then Begin
       Print.OnBeforeNewPage := Rodape    ;
       Print.OnNewPage       := CabecalhoSaidas ;
  end
  else begin
       Print.OnBeforeNewPage := Nil ;
       Print.OnNewPage       := Nil ;
  end;

  DmCaixa.Saidas.DisableControls ;

  If Opcao = 'S'
  Then Begin
       Print.TitulodoRelatorio := 'Entradas e Saídas do Caixa' ;

       print.Abrir;
  END
  ELSE BEGIN

       inclinhacx;

       inclinhacx;

       Print.ImpF(linhacx, 01, 'Entradas e Saidas Do Caixa', [Comp17, Negrito]);

       inclinhacx ;
  END;

  //
  Total := 0;

  //
  DmCaixa.Saidas.First;

  credito := 0;
  debito  := 0;

  Print.ImpF(linhacx, 01, 'ENTRADAS', [Comp17, Negrito]);

  inclinhacx ;

  While Not DmCaixa.Saidas.Eof Do
  Begin
       IF DmCaixa.SaidasTIPO.VALUE = 'C'
       THEN BEGIN
             //
             Print.ImpF(linhacx,01,Format('%-35s %-20s %-60s %2s %15s',
                  [
                   COPY(DmCaixa.SaidasNOME.Text,1,35),
                   COPY(DmCaixa.SaidasDOCUMENTO.Text,1,20),
                   DmCaixa.SaidasHISTORICO.Text,
                   DmCaixa.SaidasTIPO.Text,
                   DmCaixa.SaidasVALOR.Text]),[Comp17]);

             CREDITO := CREDITO + DmCaixa.SaidasValor.Value;

             inclinhacx;
       END;

       DmCaixa.Saidas.Next;
  End;

  Print.ImpF(linhacx, 01, Format('%104s Total Entradas: %15s', ['', FormatFloat('#,##0.00', CREDITO)]), [Comp17]);

  inclinhacx;

  inclinhacx;

  DmCaixa.Saidas.First;

  Print.ImpF(linhacx, 01, 'SAIDAS', [Comp17, Negrito]);

  inclinhacx ;

  While Not DmCaixa.Saidas.Eof Do
  Begin
       IF DmCaixa.SaidasTIPO.VALUE = 'D'
       THEN BEGIN
            //
            Print.ImpF(linhacx,01,Format('%-35s %-20s %-60s %2s %15s',
            [
                   COPY(DmCaixa.SaidasNOME.Text,1,35),
                   COPY(DmCaixa.SaidasDOCUMENTO.Text,1,20),
                   DmCaixa.SaidasHISTORICO.Text,
                   DmCaixa.SaidasTIPO.Text,
                   DmCaixa.SaidasVALOR.Text]),[Comp17]);

            DEBITO := DEBITO + DmCaixa.SaidasValor.Value;

            inclinhacx;
       END;

       DmCaixa.Saidas.Next;
  End;

  TOTAL := CREDITO - DEBITO ;

  Print.ImpF(linhacx, 01, Format('%106s Total Saidas: %15s', ['', FormatFloat('#,##0.00', DEBITO)]), [Comp17]);

  //SALDO DAS SAIDAS
  SaldoSaidas := TOTAL ;

  inclinhacx;

  If Opcao = 'S'
  Then Begin
       print.Fechar;
  END;

  DmCaixa.Saidas.EnableControls ;
end;

procedure TFrmPdv.AbreCupomExecute(Sender: TObject);
begin
     dmPdv.Cliente_Desc_Especial := 0;
     //Insere um Novo Cupom
     IF not CupomAberto
     THEN BEGIN
          If DmPdv.Pdv.State in [ dsinsert, dsedit ]
          then begin
               DmPdv.Pdv.Cancel ;
          end;

          If DmPdv.Pdv_Itens.State in [ dsinsert, dsedit ]
          then begin
               DmPdv.Pdv_Itens.Cancel ;
          end;

          DmPdv.Pdv.Insert ;
          dmPdv.PdvPESSOA_FJ.value := 1;
          dmPdv.PdvVENDEDOR.VALUE := Vendedor;
          lblVendedor.CAPTION := NomeVendedor;
          DmPdv.Pdv.Post   ;
          DmPdv.Pdv_Itens.Close;
          DmPdv.Pdv_Itens.Open;
          DmPdv.Pdv_Itens.Insert ;
          CupomAberto := True ;
     END
     Else begin
          beep ;
          MensagemPdv('Cupom Aberto, Verifique');
     end;

end;

procedure TFrmPdv.CupomNominal ;
begin
     If cupomAberto
     then begin
          //Cupom Nominal
          FrmConveniadoPdv := TFrmConveniadoPdv.Create(Self);

          FrmConveniadoPdv.Cupom_Nominal := True ;

          If FrmConveniadoPdv.showmodal = mrok
          then begin
               if FrmConveniadoPdv.Cliente > 0
               then begin
                    DmPdv.Pdv_Itens.DataSource := Nil ;

                    If not (DmPdv.Pdv.state in [ dsinsert, dsedit ]) then
                      DmPdv.Pdv.edit ;

                    DmPdv.PdvPESSOA_FJ.value := FrmConveniadoPdv.Cliente ;

                    LblNominal.Caption       := 'Nominal a ' + DmPdv.PdvNOME.Value ;

//                    DmPdv.Pdv_Itens.DataSource := DmPdv.DsPdv ;

                    DmPdv.Pdv.Post ;
               end;
          end;

          FrmConveniadoPdv.Free   ;
          FrmConveniadoPdv := Nil ;
     end;
end;

procedure TFrmPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     dmApp.ZeraCaixaUsuario(owner);

     DMLocalizarProd.Produtos.Close ;
     DMLocalizarProd.ProdutosA.Close ;

     DMCAIXA.Caixas.Close ;
     DMCaixa.Recebidas.Close             ;
     DMCaixa.Pagas.Close                 ;
     DMCaixa.Vendas.Close                ;
     DMCaixa.Saidas.Close                ;


     DMCaixa.Vendas_Agrupadas.Close      ;
     DMCaixa.Lista_Produtos_Caixa.Close  ;
     DMCaixa.ACOMPANHAMENTO_VENDAS.Close ;
     DMCaixa.Trocas.Close                ;
     DMCaixa.Cheques.Close               ;
     DMCaixa.ChequesReceber.Close        ;

     DMCAIXA.Free   ;
     DMCAIXA := Nil ;

     DMLocalizarProd.Free   ;
     DMLocalizarProd := Nil ;

     FrmLocProdutoPdv.Free    ;
     FrmLocProdutoPdv := Nil  ;

     DmPdv.Pdv_Itens.Close ;
     DmPdv.Pdv.Close ;

     DmPdv.Free ;
     DmPdv := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmPdv.FormShow(Sender: TObject);
var
   ret:integer;
begin
     STatus.Caption := 'Comunicando com ECF!' ;
     LblInsercao.visible := false ;
     
     //--------- Padrão Vendedor LOJA ------------------------------------------
     Vendedor := 1;
     NomeVendedor := 'LOJA';

     //---------- Localizar Produtos -------------------------------------------
     If DMLocalizarProd = Nil then
     begin
          DMLocalizarProd  := TDMLocalizarProd.Create(Self);
          //ORDENACAO
          If DMLocalizarProd.Produtos.Active Then
              DMLocalizarProd.Produtos.Close;
          //ALFABETICA
          If DMLocalizarProd.ProdutosA.Active Then
             DMLocalizarProd.ProdutosA.Close;
     end;

     //---------- Localizar Produtos -------------------------------------------
     If FrmLocProdutoPdv = Nil then
         FrmLocProdutoPdv := TFrmLocProdutoPdv.Create(Application) ;
     DMCaixa := TDMCaixa.Create(Self);

     //-------------- SE POSSUI ECF AbrePorta-----------------------------------
     If DmApp.Pdv_Ecf = 'S' Then
     begin
            //          DmPdv.AbrePorta ;
     end;

     //-------------- ABERTURA DE DATASET --------------------------------------
     DmPdv.Pdv.Open       ;
     DmPdv.Pdv_Itens.Open ;
     PnDescricao.Caption := Trim(Cumprimento());

     //-------------- ALTERA LABELS DO PDV -------------------------------------
     STatus.Caption := 'Aguardando Comandos' ;
     STatus.Refresh ;
     LblUsuario.Caption   := DmApp.NomeCaixa ;
     lbldatacaixa.Caption := DateToStr(DATE);
     DmPdv.ZerarPaineis ;

     //-------------- ALTERA COR DE FUNDO DO PDV -------------------------------
     CoresFundoPDV;

     //---------- Configurações para o tipo de empresa -------------------------
     dmapp.SetForm;
end;

procedure TFrmPdv.ActFechaCupomExecute(Sender: TObject);
Var
   Qntde, Unitario, Descricao: String ;
begin
  //===========================================================================
  //------------ SOMENTE CUPOM ABERTO -----------------------------------------
  //===========================================================================
  If CupomAberto then
  begin
        DmPdv.AtualizaValores ('S') ;
        //-------------------- FECHA SOMENTE CUPOM COM PRODUTOS ----------------
        If DmPdv.PdvTotal.Value <= 0 then
        begin
          beep;
          MensagemPdv('Cupom Vazio, Verifique!');
          Exit;
        end;

        //-------------------- ATUALIZA LABELS ---------------------------------
        STatus.Caption := 'Fechando Cupom Fiscal!' ;
        STatus.Refresh ;
        FrmFaturaCupom := TFrmFaturaCupom.Create(Self);
        FrmFaturaCupom.PnTotal.Caption  := formatfloat('R$  ###,###,##0.00  ', arredonda(DmPdv.PdvTotal.Value,2)  ) ;
        Descricao := PnDescricao.Caption ;
        Qntde     := PNQNTDE.Caption     ;
        Unitario  := PNUNITARIO.Caption  ;
        PnDescricao.Caption := dmApp.MSG_PDVTELA;
        PNQNTDE.Caption     := 'Obrigado';
        PNUNITARIO.Caption  := 'Volte Sempre';
        PNQNTDE.Alignment   := taCenter;
        PNUNITARIO.Alignment:= taCenter;
        FrmFaturaCupom.APRAZO := false ;
        FrmFaturaCupom.Total  := arredonda(DmPdv.PdvTotal.Value,2)   ;

          If Not(DsPdv.State in [DsEdit]) Then
             DsPdv.DataSet.Edit;
          DmPdv.PdvDinheiro.Value         := arredonda(DmPdv.PdvTotal.Value,2)   ;

          if (dmapp.EXIBE_INDICE_PDV = 'S') then
          begin
            if (Pdv_FormIndices = nil) then
            begin
              Pdv_FormIndices := TPdv_FormIndices.Create(Self);
              Pdv_FormIndices.valoritem := DmPdv.PdvTotal.Value;
            end;

            if Pdv_FormIndices.ShowModal = mrOk then
            begin
              If Not(DsPdv.State in [DsEdit]) Then
               DsPdv.DataSet.Edit;

              DmPdv.PdvDinheiro.Value         := arredonda(TotalIndice,2)   ;
              DmPdv.PdvCOD_INDEXADOR.value := frmPdv.codindice;
              FrmFaturaCupom.PnTotal.Caption  := formatfloat('R$  ###,###,##0.00  ', arredonda(TotalIndice,2)  ) ;
            end
          end;

         if FrmFaturaCupom.Showmodal = mrok then
          begin
               If arredonda(DmPdv.PdvTroco.Value,2) <> 0 then
               begin
                    FrmTroco := TFrmTroco.Create(Self);
                    FrmTroco.Valor := arredonda(DmPdv.PdvTroco.Value,2) ;
                    FrmTroco.Showmodal ;
                    FrmTroco.Free ;
                    FrmTroco := Nil ;
               end;

               //Fecha o Cupom Fiscal
               if not DmPdv.TotalizaCupom then
                   exit ;

               //Inicia PAINEIS
               PNQNTDE.Caption       := formatfloat('###,###,##0.00  ', 0  ) ;
               PNUNITARIO.Caption    := formatfloat('###,###,##0.00  ', 0  ) ;
               PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', 0  ) ;
               EdDigitacao.Clear ;
               PnDescricao.Caption := Trim(Cumprimento());

               IF ( Pos('Trôco', status.caption) = 0 ) THEN
               BEGIN
                    STatus.Caption := 'Aguardando Comandos' ;
                    STatus.Refresh ;
               END;

               CupomAberto := False ;
          end
          else begin
               CupomAberto := True ;

               PNQNTDE.Alignment   := taRightJustify;
               PNUNITARIO.Alignment:= taRightJustify;
               PnDescricao.Caption  := Descricao ;
               PNQNTDE.Caption      := Qntde     ;
               PNUNITARIO.Caption   := Unitario  ;
               STatus.Caption := 'Pronto Para Leitura!' ;
               STatus.Refresh ;
               EdDigitacao.Clear    ;
               EdDigitacao.SetFocus ;
          end;

          PNQNTDE.Alignment   := taRightJustify;
          PNUNITARIO.Alignment:= taRightJustify;

          FrmFaturaCupom.Free ;
          FrmFaturaCupom := Nil;

          EdDigitacao.Clear    ;
          EdDigitacao.SetFocus ;
          //
          VENDEDOR := 1;
          NomeVendedor := 'LOJA';
          lblvendedor.caption := NomeVendedor;

     end
     else begin
          beep ;
          MensagemPdv('Cupom Fechado, Verifique!');
          EdDigitacao.Clear    ;
          EdDigitacao.SetFocus ;
          //  
          VENDEDOR := 1;
          NomeVendedor := 'LOJA';
          lblvendedor.caption := NomeVendedor;
     end;
end;

procedure TFrmPdv.ActDigitaExecute(Sender: TObject);
Var
   Aux: String;
   Item: String;
begin
  //------------------ Digitou Codigo do Produto -------------------------------
  if trim(EdDigitacao.text) <> '' then
  begin

        IF Alterando_Produto THEN
        begin
          DmPdv.Altera_Produtos_Pdv (trim(EdDigitacao.text));
          exit;
        end
        ELSE
          Item := '';
        //------------------ Abre Cupom se estiver FECHADO  --------------------
        IF ( FrmPdv.ActiveControl = EdDigitacao ) and ( not CupomAberto ) then
        begin
          Item := trim(EdDigitacao.Text) ;
          AbreCupom.Execute ;
        end;

        If ( FrmPdv.ActiveControl = EdDigitacao ) then
        begin
            //--- Armazenar em uma variavel, pois quando eu der um append na linha abaixo ele ira zerar a variavel do texto
            If Item <> '' then
              Aux := Item
            else
              Aux := trim(EdDigitacao.Text) ;

            With DmPdv do
            begin
                  If ( Not ( DmPdv.Pdv_Itens.state in [ dsinsert, dsedit ] ) ) then
                     DmPdv.Pdv_Itens.Insert ;

                  ProdBalanca := False ;
                  //------------- Acrescenta zeros a esquerda do produto -------
                  {If Copy ( Aux, 3, 3 ) = '000' Then
                    Aux := BarrasTotal ( Aux )
                  else}
                    Aux  := UtilizaBalanca ( Aux );

                  //passando os parametros q nao funcionam no settext
                  //-------- Passa Codigo do Produto com Zeros a esquerda ------
                  DmPdv.SetText(Aux);
                  //Pdv_ItensPRODUTO.Value :=  ;
                  ProdBalanca := False ;
                  if DMPdv.Pdv_ItensICM.isNull then
                    DMPdv.Pdv_ItensICM.value := 0;

                  DmPdv.Pdv_Itens.Post ;
            end;

            //DIGITA QUANTIDADE
            IF DmaPP.PDV_OBRIGA_QTDE = 'S' THEN
                  DIG_QUANTIDADE ;
        end;
  end;
end;

Function TFrmPdv.UtilizaBalanca ( Codigo: String ): String;
         procedure ValidaProduto ( Texto: String );
         begin
           With DmPdv do
           begin
              //BUSCA OS VALORES DO PRODUTO
              VerProduto.close ;

              VerProduto.ParamByName ('E').AsString  := DmApp.Cnpj   ;
              VerProduto.ParamByName ('C').AsString  := Texto ;

              VerProduto.Prepare ;
              VerProduto.Open ;

              If VerProdutoNOME.isNull then
              Begin
                   Beep ;
                   MensagemPdv ('Produto Inexistente!');
                   FrmPdv.EdDigitacao.SelectAll ;
                   Lendo := False ;
                   Lendob := False ;

                   Abort;
              end
              else begin
                   Pdv_ItensPRC_UNITARIO.Value := arredonda(VerProdutoPRC_VENDA.Value, 2) ;
              end;
           end;
         end;
Var
   Aux, sQtde, Aux1, Cod, Total: String;
   Len: Integer;
   VlrTotal: Real;
   VlrItem,Qtde: Real;
BEGIN
     if (dmApp.PDV_QTDE_COD_BARRAS = 'S') then
     begin
       if (length(trim(codigo)) <= 5) then
       begin
         Cod := Codigo;
         Result := Cod ;
         ValidaProduto (Cod);
         exit;
       end;

       Cod := Copy (Codigo, 2, 6);
       While Copy ( Cod, 1, 1 ) = '0' do
         Cod := Copy ( Cod, 2, 5 );


       //Novo Código do Produto
       Result := Cod ;
       ValidaProduto (Cod);
       //Total
       sQtde := Copy ( Codigo, 8, 6);
       sQtde := copy(sQtde,1,2)+','+copy(sQtde,3,4);
       Qtde := StrToFloat(sQtde);
       DmPdv.Pdv_ItensQUANTIDADE.Value := Qtde;
       UsaBalanca := True ;
       exit;
     end;

     If ( Copy ( Codigo, 1, 2 ) = '20' ) AND ( Length(Codigo) > 8 )
     then begin
          Cod := Copy ( Codigo, 3, 3 );

          If Cod = '000' Then
               Cod := '001' ;

        While Copy ( Cod, 1, 1 ) = '0' do
           Cod := Copy ( Cod, 2, 3 );


          //Novo Código do Produto
          Result := Cod ;
          ValidaProduto ( Cod );
          //Total
          Total := Copy ( Codigo, 8, 5 );

          While Copy ( Total, 1, 1 ) = '0' do
                Total := Copy ( Total, 2, 6 );

          Total := Total + '0' ;
          Len := Length(Total);

          If Len < 3 then
          begin
               While Length(Total) < 3 do
                    Total := '0' + Total ;

               Total := '0,' + Total ;
               VlrTotal := StrToFloat (Total);

               VlrItem := 0;
               VlrItem :=  dmapp.Verifica_Promocao (Cod, dmapp.DataCaixa);

               if ((VlrItem > DmPdv.Pdv_ItensPRC_UNITARIO.Value) or (VlrItem <= 0)) then
                 VlrItem := DmPdv.Pdv_ItensPRC_UNITARIO.Value;

               If VlrItem > 0 then
                  DmPdv.Pdv_ItensQUANTIDADE.Value := arredonda( VlrTotal / VlrItem, 4)
               else
                  DmPdv.Pdv_ItensQUANTIDADE.Value := 0;
          end ;

          If Len = 3 then
          begin
               Total := '0,' + Total ;
               VlrTotal := StrToFloat (Total);

               VlrItem := 0;
               VlrItem :=  dmapp.Verifica_Promocao (Cod, dmapp.DataCaixa);

               if ((VlrItem > DmPdv.Pdv_ItensPRC_UNITARIO.Value) or (VlrItem <= 0)) then
                 VlrItem := DmPdv.Pdv_ItensPRC_UNITARIO.Value;


               If VlrItem > 0 then
                  DmPdv.Pdv_ItensQUANTIDADE.Value := arredonda( VlrTotal / VlrItem, 4)
               else
                  DmPdv.Pdv_ItensQUANTIDADE.Value := 0;

          end ;

          If Len > 3 then
          begin
               IF ( LEN = 4 ) THEN
               BEGIN
                    Len   := Len - 3;
                    Aux   := Copy ( Total, Len - 1, Len ) ;
                    Aux1  := ',' + Copy ( Total, Len + 1, Len + 2 );
               END;

               IF ( LEN = 5 ) THEN
               BEGIN
                    Len   := Len - 3;
                    Aux   := Copy ( Total, Len - 1, Len ) ;
                    Aux1  := ',' + Copy ( Total, Len + 1, Len + 2 );
               END;

               IF ( LEN = 6 )
               THEN BEGIN
                    Len   := Len - 3;

                    Aux   := Copy ( Total, 1, 3 ) ;

                    Aux1  := ',' + Copy ( Total, 4, 3 );
               END;

               IF ( LEN = 7 )
               THEN BEGIN
                    Len   := Len - 3;

                    Aux   := Copy ( Total, 1, 4 ) ;

                    Aux1  := ',' + Copy ( Total, 5, 3 );
               END;

               Total := Aux + Aux1 ;
               VlrTotal := StrToFloat (Total);

               VlrItem := 0;
               VlrItem :=  dmapp.Verifica_Promocao (Cod, dmapp.DataCaixa);

               if ((VlrItem > DmPdv.Pdv_ItensPRC_UNITARIO.Value) or (VlrItem <= 0)) then
                 VlrItem := DmPdv.Pdv_ItensPRC_UNITARIO.Value;


               If VlrItem > 0 then
                  DmPdv.Pdv_ItensQUANTIDADE.Value := arredonda( VlrTotal / VlrItem, 4)
               else
                  DmPdv.Pdv_ItensQUANTIDADE.Value := 0;
          end ;

          UsaBalanca := True ;
     end
     ELSE BEGIN
          if (Copy ( Codigo, 1, 1 ) = '2' ) AND ( Length(Codigo) > 8 )
          then begin
               Cod := Copy ( Codigo, 2, 4 );

               If Cod = '0000'
               Then Begin
                    Cod := '0001' ;
               end;

               While Copy ( Cod, 1, 1 ) = '0' do
               begin
                    Cod := Copy ( Cod, 2, 3 );
               end;

               //Novo Código do Produto
               Result := Cod ;

               ValidaProduto ( Cod );

               //Total
               Total := Copy ( Codigo, 8, 5 );

               While Copy ( Total, 1, 1 ) = '0' do
               begin
                    Total := Copy ( Total, 2, 6 );
               end;

               Total := Total + '0' ;

               Len := Length(Total);

               If Len < 3
               then begin
                    While Length(Total) < 3 do
                    begin
                         Total := '0' + Total ;
                    end;

                    Total := '0,' + Total ;

                    VlrTotal := StrToFloat (Total);

                    DmPdv.Pdv_ItensQUANTIDADE.Value := arredonda( VlrTotal / DmPdv.Pdv_ItensPRC_UNITARIO.Value, 4);
               end ;

               If Len = 3
               then begin
                    Total := '0,' + Total ;

                    VlrTotal := StrToFloat (Total);

                    If DmPdv.Pdv_ItensPRC_UNITARIO.Value > 0
                    then
                        DmPdv.Pdv_ItensQUANTIDADE.Value := arredonda( VlrTotal / DmPdv.Pdv_ItensPRC_UNITARIO.Value, 4)
                    else
                        DmPdv.Pdv_ItensQUANTIDADE.Value := 0;
               end ;

               If Len > 3
               then begin
                    IF ( LEN = 4 )
                    THEN BEGIN
                         Len   := Len - 3;

                         Aux   := Copy ( Total, Len - 1, Len ) ;

                         Aux1  := ',' + Copy ( Total, Len + 1, Len + 2 );
                    END;

                    IF ( LEN = 5 )
                    THEN BEGIN
                         Len   := Len - 3;

                         Aux   := Copy ( Total, Len - 1, Len ) ;

                         Aux1  := ',' + Copy ( Total, Len + 1, Len + 2 );
                    END;

                    IF ( LEN = 6 )
                    THEN BEGIN
                         Len   := Len - 3;

                         Aux   := Copy ( Total, 1, 3 ) ;

                         Aux1  := ',' + Copy ( Total, 4, 3 );
                    END;

                    IF ( LEN = 7 )
                    THEN BEGIN
                         Len   := Len - 3;

                         Aux   := Copy ( Total, 1, 4 ) ;

                         Aux1  := ',' + Copy ( Total, 5, 3 );
                    END;

                    Total := Aux + Aux1 ;

                    VlrTotal := StrToFloat (Total);

                    If DmPdv.Pdv_ItensPRC_UNITARIO.Value > 0
                    then
                        DmPdv.Pdv_ItensQUANTIDADE.Value := arredonda( VlrTotal / DmPdv.Pdv_ItensPRC_UNITARIO.Value, 4)
                    Else
                        DmPdv.Pdv_ItensQUANTIDADE.Value := 0;
               end ;

               UsaBalanca := True ;
          end
          else begin
               If ( Copy ( Codigo, 8, 8) = '  000000' ) AND ( Length(Codigo) = 15 )
               //EAN128
               then begin
                    Cod := Copy ( Codigo, 1, 6 );

                    While Copy ( Cod, 1, 1 ) = '0' do
                    begin
                         Cod := Copy ( Cod, 2, 5 );
                    end;

                    //Novo Código do Produto
                    Result := Cod ;

                    UsaBalanca := False ;
               END
               ELSE BEGIN
                    Result := Codigo ;

                    UsaBalanca := False ;
               END;
          end;
     END;
END;

Function TFrmPdv.BarrasTotal ( Codigo: String ): String;
Var
   Aux, Aux1, Cod, Total: String;
   Len: Integer;
   VlrTotal: Real;
BEGIN
     If ( Copy ( Codigo, 1, 2 ) = '20' ) AND ( Length(Codigo) > 8 )
     then begin
          IF ( Length(Codigo) = 13 )
          THEN BEGIN
               Cod := Copy ( Codigo, 3, 5 );

               DmPdv.ProdBalanca := True ;

               if Cod = '00000'
               then begin
                    Cod := '00001' ;
               end;

               DmPdV.ProdBalanca := True ;

               While Copy ( Cod, 1, 1 ) = '0' do
               begin
                    Cod := Copy ( Cod, 2, 5 );
               end;

               //Novo Código do Produto
               Result := Cod ;

               //Total
               Total := Copy ( Codigo, 8, 7 );

               While Copy ( Total, 1, 1 ) = '0' do
               begin
                    Total := Copy ( Total, 2, 7 );
               end;

               Len := Length(Total);

               If Len < 3
               then begin
                    While Length(Total) < 3 do
                    begin
                         Total := '0' + Total ;
                    end;

                    Total := '0,' + Total ;

                    VlrTotal := StrToFloat (Total);

                    DmPdv.Pdv_ItensPRC_UNITARIO.Value := VlrTotal;

                    DmPdv.Pdv_ItensQUANTIDADE.Value := 1;
               end ;

               If Len = 3
               then begin
                    Total := '0,' + Total ;

                    VlrTotal := StrToFloat (Total);

                    DmPdv.Pdv_ItensPRC_UNITARIO.Value := VlrTotal;

                    DmPdv.Pdv_ItensQUANTIDADE.Value := 1;
               end ;

               If Len > 3
               then begin
                    Len   := Len - 3;

                    Aux   := Copy ( Total, 1, Len ) ;

                    Aux1  := ',' + Copy ( Total, Len + 1, Len + 1 );

                    Total := Aux + Aux1 ;

                    VlrTotal := StrToFloat (Total);

                    DmPdv.Pdv_ItensPRC_UNITARIO.Value := VlrTotal;

                    DmPdv.Pdv_ItensQUANTIDADE.Value := 1;
               end ;

               UsaBalanca := False ;
          END
          ELSE BEGIN
               Cod := Copy ( Codigo, 3, 3 );

               DmPdv.ProdBalanca := True ;

               if Cod = '000'
               then begin
                    Cod := '001' ;
               end;

               DmPdV.ProdBalanca := True ;

               While Copy ( Cod, 1, 1 ) = '0' do
               begin
                    Cod := Copy ( Cod, 2, 3 );
               end;

               //Novo Código do Produto
               Result := Cod ;

               //Total
               Total := Copy ( Codigo, 7, 7 );

               While Copy ( Total, 1, 1 ) = '0' do
               begin
                    Total := Copy ( Total, 2, 7 );
               end;

               Len := Length(Total);

               If Len < 3
               then begin
                    While Length(Total) < 3 do
                    begin
                         Total := '0' + Total ;
                    end;

                    Total := '0,' + Total ;

                    VlrTotal := StrToFloat (Total);

                    DmPdv.Pdv_ItensPRC_UNITARIO.Value := VlrTotal;

                    DmPdv.Pdv_ItensQUANTIDADE.Value := 1;
               end ;

               If Len = 3
               then begin
                    Total := '0,' + Total ;

                    VlrTotal := StrToFloat (Total);

                    DmPdv.Pdv_ItensPRC_UNITARIO.Value := VlrTotal;

                    DmPdv.Pdv_ItensQUANTIDADE.Value := 1;
               end ;

               If Len > 3
               then begin
                    Len   := Len - 3;

                    Aux   := Copy ( Total, 1, Len ) ;

                    Aux1  := ',' + Copy ( Total, Len + 1, Len + 1 );

                    Total := Aux + Aux1 ;

                    VlrTotal := StrToFloat (Total);

                    DmPdv.Pdv_ItensPRC_UNITARIO.Value := VlrTotal;

                    DmPdv.Pdv_ItensQUANTIDADE.Value := 1;
               end ;

               UsaBalanca := False ;
          END;
     end
     ELSE BEGIN
          If ( Copy ( Codigo, 8, 8 ) = '  000000' ) AND ( Length(Codigo) = 15 )
          //EAN128
          then begin
               Cod := Copy ( Codigo, 1, 6 );

               While Copy ( Cod, 1, 1 ) = '0' do
               begin
                    Cod := Copy ( Cod, 2, 5 );
               end;

               //Novo Código do Produto
               Result := Cod ;


               UsaBalanca := False ;
          END
          ELSE BEGIN
               Result := Codigo ;

               UsaBalanca := False ;
          END;
     END;
END;

procedure TFrmPdv.ActQuantidadeExecute(Sender: TObject);
begin
     Lendo := true ;

     If Not CupomAberto then
          AbreCupom.execute;

     Lendo := False ;

     //DIGITA QUANTIDADE
     DIG_QUANTIDADE ;
end;

procedure TFrmPdv.ActFuncoesExecute(Sender: TObject);
begin
     Lendo := true ;

     FrmFuncoesPdv := TFrmFuncoesPdv.Create(Self);

     IF FrmFuncoesPdv.Showmodal = MrOk THEN
     BEGIN
          If FrmFuncoesPdv.Nominal then
               CupomNominal ;

          If FrmFuncoesPdv.Extrato then
               Extrato ;

          If FrmFuncoesPdv.LeituraX then
               LeituraX ;

          If FrmFuncoesPdv.LeituraZ then
               LeituraZ ;
     END;

     Lendo := False ;

     FrmFuncoesPdv.Free ;
     FrmFuncoesPdv := Nil ;

     EdDigitacao.Enabled := TRUE ;
     EdDigitacao.SetFocus ;
end;

procedure TFrmPdv.EdDigitacaoKeyPress(Sender: TObject; var Key: Char);
begin
  //TROCA A TECLA 191 POR 46 = "."

  IF KEY = ';' THEN
    KEY := '.';

  IF ( KEY = #84 ) or ( KEY = #85 ) or ( KEY = #86 ) or ( Key = #116 ) or ( KEY = #117 ) or ( KEY = #118 ) THEN
    KEY := CHAR(8);

end;

procedure TFrmPdv.ActFecharFormExecute(Sender: TObject);
begin
     If Not CupomAberto then
     begin
          If PerguntaPdv ('Fechar o Pdv ?') = 'S' THEN
               Close ;
     end;
end;

procedure TFrmPdv.LEITURAZ;
begin
     LEITURAX ;

     //FECHAR O CAIXA
     DmCaixa.Fechar_Caixa ( DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.DataCaixa, SaldoCaixa, DmCaixa.CaixasPLANILHA.Value, DmCaixa.CaixasVendas_Vista.Value, DmCaixa.CaixasVendas_Prazo.Value, DmCaixa.CaixasTURNO.Value );
     Close ;
end;

procedure TFrmPdv.ActLocalizarExecute(Sender: TObject);
begin
     Lendo := true ;
     If (FrmPdv.ActiveControl = EdDigitacao) then
     begin
       If not CupomABerto then
          AbreCupom.Execute ;

       //Localizar o Produto no Pdv
       if FrmLocProdutoPdv.Showmodal = mrok then
           EdDigitacao.text := ( FrmLocProdutoPdv.CampTrecho );
     end;
     Lendo := False ;
end;

procedure TFrmPdv.ActReceberExecute(Sender: TObject);
Var
   Cliente: Integer;
   Documento, NomeCliente, DOCUMENTOSCLIENTE: String;
   Valor: Real;
   Data: TDateTime;
   Dia, Ano, Mes, Nome, ValorCheque: String;
begin
     IF DmApp.Perfil_ComputadorTIPO_IMP_PEDIDO.value = 'HP'
     THEN BEGIN
          Print.Impressora := hp ;
     END;

     Cliente := 0;

     Lendo := true ;

     //Pega Informações do Cliente
     FrmConveniadoPdv := TFrmConveniadoPdv.Create(Self);

     If FrmConveniadoPdv.Showmodal = MROK
     Then Begin
          Cliente            := FrmConveniadoPdv.Cliente     ;
          NomeCliente        := FrmConveniadoPdv.EdNome.text ;
          DOCUMENTOSCLIENTE  := FrmConveniadoPdV.EDENDERECO.TEXT + ', N ' + FrmConveniadoPdV.EDNUMERO.TEXT + ' CIDADE ' + FrmConveniadoPdV.EDCIDADE.TEXT ;
     END
     ELSE
         EXIT ;

     IF CLIENTE <= 1
     THEN
         EXIT ;

     FrmConveniadoPdv.Free ;
     FrmConveniadoPdv := Nil;

     DmPdv.PessoaCPF.Close ;
     DmPdv.PessoaNome.Close ;
     DmPdv.PessoaCOD.Close ;

     If Cliente > 1
     then begin
          //LANCA O CONTAS A RECEBER
          FrmEntraDados_Receber_Pdv := TFrmEntraDados_Receber_Pdv.Create(Self);

          IF FrmEntraDados_Receber_Pdv.Showmodal = MROK
          THEN BEGIN
               Documento := FrmEntraDados_Receber_Pdv.EdDocumento.Text ;
               Valor     := FrmEntraDados_Receber_Pdv.EdValor.value    ;
               Data      := FrmEntraDados_Receber_Pdv.EdData.Date      ;

               //LANCA CONTAS A RECEBER
               DMApp.Lanca_Convenio_Pdv (
               0,
               Cliente,
               Valor,
               DATA + 30,
               Data,
               Documento);

               if valor > 0
               then begin
                    IF DMAPP.Perfil_ComputadorTIPO_IMP_PDV.VALUE = 'DS300'
                    THEN BEGIN
                         //o comprovante tem que ser em 36 ou a4
                         dia := copy ( datetostr ( DATA ), 1, 2 );
                         ano := copy ( datetostr ( DATA ), 7, 4 );

                         case ( strtoint( (copy ( datetostr ( DATA ), 4, 2 ))))
                         of
                         1 : mes := 'Janeiro';
                         2 : mes := 'Fevereiro';
                         3 : mes := 'Março';
                         4 : mes := 'Abril';
                         5 : mes := 'Maio';
                         6 : mes := 'Junho';
                         7 : mes := 'Julho';
                         8 : mes := 'Agosto';
                         9 : mes := 'Setembro';
                         10: mes := 'Outubro';
                         11: mes := 'Novembro';
                         12: mes := 'Dezembro';
                         else
                         mes := '<>' ;
                         end;

                         //ESCREVE O VALOR DO ACUMULADO PARA UM CENTRO
                         NOME := DMAPP.Nome ;

                    END
                    ELSE BEGIN
                         IF TRIM(DmApp.Perfil_ComputadorPORTA_PDV.VALUE  ) <> ''
                         THEN BEGIN
                              SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_PDV.VALUE )       ;
                              Print.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_PDV.VALUE );
                              Print.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_PDV.VALUE  ;
                         END;

                         //IMPRIME UM COMPROVANTE
                         Print.Abrir  ;

                         //o comprovante tem que ser em 36 ou a4
                         dia := copy ( datetostr ( DATA ), 1, 2 );
                         ano := copy ( datetostr ( DATA ), 7, 4 );

                         case ( strtoint( (copy ( datetostr ( DATA ), 4, 2 ))))
                         of
                         1 : mes := 'Janeiro';
                         2 : mes := 'Fevereiro';
                         3 : mes := 'Março';
                         4 : mes := 'Abril';
                         5 : mes := 'Maio';
                         6 : mes := 'Junho';
                         7 : mes := 'Julho';
                         8 : mes := 'Agosto';
                         9 : mes := 'Setembro';
                         10: mes := 'Outubro';
                         11: mes := 'Novembro';
                         12: mes := 'Dezembro';
                         else
                         mes := '<>' ;
                         end;

                         //ESCREVE O VALOR DO ACUMULADO PARA UM CENTRO
                         NOME := DMAPP.Nome ;

                         REPEAT
                           NOME := CONCAT ( ' ', NOME );
                           NOME := CONCAT ( NOME, ' ' );
                         UNTIL ( LENGTH ( NOME ) >= 40 );

                         print.IMPF ( 2, 1, NOME,[NEGRITO,EXPANDIDO]);

                         print.IMPF ( 4, 22,'COMPROVANTE DE COMPRA',[NEGRITO, EXPANDIDO]);

                         print.IMPF ( 6, 9, ' CLIENTE           = ' + NOMECLIENTE ,[COMP12]);

                         print.IMPF ( 8, 9, ' DOCUMENTOS        = ' + DOCUMENTOSCLIENTE ,[COMP12]);

                         print.IMPF ( 10, 9,' DOCUMENTO         = ' + DOCUMENTO,[COMP12]) ;

                         IF ( LENGTH (DOCUMENTO) > 55 )
                         Then Begin
                              print.IMPF ( 12, 9, ' HISTORICO        = ' + COPY ( DOCUMENTO,0,45),[COMP12])  ;
                              print.IMPF ( 13, 9, '                  = ' + COPY ( DOCUMENTO,46,150),[COMP12])  ;
                         end
                         Else Begin
                              print.IMPF ( 12, 9, ' HISTORICO         = ' + DOCUMENTO,[COMP12])  ;
                         end;

                         VALORCHEQUE := formatfloat('###,###,###0.00',VALOR);

                         WHILE LENGTH ( VALORCHEQUE ) < 12 DO
                         Begin
                              VALORCHEQUE := CONCAT ( '*',VALORCHEQUE );
                         end;

                         print.impF ( 15, 8,'R$ ' + VALORCHEQUE ,[NEGRITO]);

                         VLR.VALOR := VALOR ;

                         VALORCHEQUE := VLR.TEXTO ;

                         WHILE LENGTH ( VALORCHEQUE ) < 60 DO
                         Begin
                              VALORCHEQUE := CONCAT ( VALORCHEQUE,'*' );
                         end;

                         print.impF ( 16, 8,VALORCHEQUE,[NEGRITO]);

                         print.IMPF ( 19, 45, dmapp.CIDADE + ' ' + dmapp.UF,[COMP17]);
                         print.IMPF ( 19, 56, dia + ' De ' ,[COMP17]);
                         print.IMPF ( 19, 64, mes + ' De ' ,[COMP17]);
                         print.IMPF ( 19, 71, ano,[COMP17]);

                         print.IMPF ( 24, 09, '______________________________________',[COMP12]);
                         print.IMPF ( 25, 09, 'VISTO DO CLIENTE',[COMP12]);

                         IF DmApp.PDV_IMP_END_PRAZO = 'S'
                         THEN BEGIN
                              Print.TamanhoQteLinhas := 27;
                         END
                         ELSE BEGIN
                              Print.TamanhoQteLinhas := 29;
                         END;

{                         Print.Imp(02, 01, DMAPP.Nome  );

                         Print.Imp(03, 01, DMAPP.ENDER  );

                         Print.Imp(04, 01, ' FONE ' + DmApp.FONE   );

                         Print.Imp(05, 01, Replicate('-', 40)  );

                         Print.Imp(06, 01, 'VENDA No ' + INTTOSTR(CLIENTE));

                         Print.Imp(06, 21, '   TICKET DO CLIENTE' );

                         Print.Imp(07, 01, '2a VIA - CLIENTE       1a VIA - EMPRESA' );

                         Print.Imp(08, 01, Replicate('-', 40)  );

                         Print.Imp(09, 01, 'CLIENTE: ' + copy(INTTOSTR(CLIENTE) + '-' + NOMECLIENTE,1,30));

                         Print.Imp(10, 01, 'DATA   : ' + DATETOSTR(DATA));

                         Print.Imp(11, 01,  'VALOR  : '  );

                         Print.Imp(11, 15,  FORMATFLOAT('###,##0.00',VALOR)  );

                         Print.Imp(12, 01, 'HORA   : ' + TIMETOSTR(TIME)  );

                         Print.Imp(16, 01, Replicate('-', 40)  );

                         Print.Imp(17, 01, NOMECLIENTE );

                         DmpDV.VerPessoa ( CLIENTE );

                         Print.Imp(18, 01, Copy(DmpDV.Endereco  ,1,40) );
                         Print.Imp(19, 01, Copy(DmpDV.NomeBairro,1,40) );
                         Print.Imp(20, 01, Copy(DmpDV.NumeroFone,1,40) );

                         Print.Imp(21, 01, '' );

                         Print.Imp(22, 01, '' );

                         Print.Imp(24, 01, '_' );
}
                         Print.Fechar ;
                    END;
               END;
          END;

          FrmEntraDados_Receber_Pdv.Free   ;
          FrmEntraDados_Receber_Pdv := Nil ;
     end
     ELSE BEGIN
          IF CLIENTE = 1
          THEN BEGIN
               MENSAGEMPDV('Cliente Venda A Vista, Verifique!');
          END;
     END;

     Lendo := False ;
end;

procedure TFrmPdv.CabecalhoCaixas(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, 'Caixa ' + DateToStr(DmApp.DataCaixa) + '/' + DmApp.NomeCaixa + ' - ' + Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01, Replicate('-', 136), [Comp17]);

  linhacx  := 07;
end;

procedure TFrmPdv.LeituraX ;
Var
   Str: String;
   Total: Real;
   SaldoInicial: Real;
begin
       WITH DMCAIXA DO
       BEGIN
            If ( TRIM(DmApp.Perfil_ComputadorPORTA_PDV.Value) <> '' )
            THEN BEGIN
                 SetDefaultPrinter( trim(DmApp.Perfil_ComputadorPORTA_PDV.Value)) ;
                 Print.SetPrinterbyPorta(trim(DmApp.Perfil_ComputadorPORTA_PDV.Value)) ;
                 Print.PortaComunicacao := trim(DmApp.Perfil_ComputadorPORTA_PDV.Value) ;
            END
            ELSE BEGIN
                 Print.SetPrinterbyPorta('LPT1')  ;
                 Print.PortaComunicacao := 'LPT1' ;
            END;

            IF DmApp.Perfil_ComputadorTIPO_IMP_PDV.value = 'HP'
            THEN BEGIN
                 Print.Impressora := hp ;
            END;

            Print.OpcoesPreview.Preview := true ;

            Print.TamanhoQteLinhas := 66;

            Print.OnBeforeNewPage := Rodape    ;

            Print.OnNewPage       := CabecalhoCaixas ;

            Print.TitulodoRelatorio := 'Caixa' ;

            Caixas.Close ;

            Caixas.Params.ByName ('CNPJ'  ).AsString  := DmaPP.CNPJ         ;
            Caixas.Params.ByName ('ESTADO').AsString  := 'N'                ;
            Caixas.Params.ByName ('DATA'  ).AsDate    := DmApp.DataCaixa    ;
            Caixas.Params.ByName ('USR'   ).AsInteger := DmApp.UsuarioCaixa ;
            Caixas.Params.ByName ('TURNO' ).AsInteger := DmApp.TurnoCaixa   ;

            Caixas.Prepare ;

            Caixas.Open    ;

            //SE CONSIDERA CONTAS A PAGAR NO CAIXA
            If DmApp.Pagar_Caixa = 'S'
            THEN BEGIN
                 Pagas_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa, DmApp.ContaCaixa );
            END;

            //SE CONSIDERA CONTAS A RECEBER NO CAIXA
            If DmApp.Receber_Caixa = 'S'
            THEN BEGIN
                 Recebidas_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa, DmApp.ContaCaixa );
            END;

            //Vendas no Caixa
            Vendas_Caixa         ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa );

            //Saidas do Caixa
            Saidas_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa );

            //Valores do Caixa
            Proc_Valores_Caixa ( DmApp.UsuarioCaixa, DmApp.DataCaixa, DmApp.TurnoCaixa );

            Caixas.DisableControls ;

            print.Abrir;

            //
            Total := 0;

            Total := Total + Arredonda(DmCaixa.CaixasDINHEIRO.Value,2);
            Total := Total + Arredonda(DmCaixa.CaixasCHEQUE.Value,2);
            Total := Total + Arredonda(DmCaixa.CaixasTICKET.Value,2);

            IF DmApp.Cx_Comp_Sld_Ant = 'S'
            THEN BEGIN
                 //SALDO ANTERIOR
                 Print.ImpF (linhacx,63, '     Sld Ant :' ,[Comp17]);
                 Print.ImpVal(linhacx,72, '###,###,##0.00', Arredonda(CaixasSALDO_ANTERIOR.Value,2) ,[Comp17]);
                 Total := Total + Arredonda(CaixasSALDO_ANTERIOR.Value,2);
            END
            ELSE BEGIN
                 //SALDO ANTERIOR
                 Print.ImpF (linhacx,63, '   Sld Final :' ,[Comp17]);
                 Print.ImpVal(linhacx,72, '###,###,##0.00', 0 ,[Comp17]);
                 Total := Total + 0;
            END;

            //
            Print.ImpF(linhacx+1, 01, Format('%103s Total Abertura : %15s', ['', FormatFloat('#,##0.00', TOTAL)]), [Comp17]);

            SaldoInicial := Arredonda(TOTAL,2) ;

            //SALDO DO CAIXA RECEBE OS VALORES DE ABERTURA
            SaldoCaixa := Arredonda(Total,2) ;

            inclinhacx;

            //IMPRIME AS SAIDAS DO CAIXA
            SaldoSaidas := 0;
            ImprimeSaidas ( 'N' );
            SaldoCaixa  := Arredonda(SaldoCaixa,2) + Arredonda(SaldoSaidas,2) ;

            //VENDAS NO CAIXA
            SaldoVendas := 0;
            ImprimeVendas ( 'N' );
            SaldoCaixa  := Arredonda(SaldoCaixa,2) + Arredonda(SaldoVendas,2) ;


            //SE CONSIDERA CONTAS A PAGAR NO CAIXA
            If DmApp.Pagar_Caixa = 'S'
            THEN BEGIN
                 SaldoPagas := 0;
                 ImprimePagar ( 'N' );
                 SaldoCaixa  := Arredonda(SaldoCaixa,2) - Arredonda(SaldoPagas,2) ;
            END;

            //SE CONSIDERA CONTAS A RECEBER NO CAIXA
            If DmApp.Receber_Caixa = 'S'
            THEN BEGIN
                 SaldoRecebidas := 0;
                 ImprimeReceber ( 'N' );
                 SaldoCaixa  := Arredonda(SaldoCaixa,2) + Arredonda(SaldoRecebidas,2) ;
            END;

            inclinhacx;

            //Imprime Saldo Inicial
            Print.ImpF(linhacx, 01, 'SALDO INICIAL = ' + FORMATFLOAT('###,###,##0.00', Arredonda(SALDOINICIAL,2)) ,[Comp17]);

            //Imprime Entradas No Caixa
            Print.ImpF(linhacx, 25, 'ENTRADAS = ' + FORMATFLOAT('###,###,##0.00', Arredonda((SALDOAVISTA + SaldoRecebidas),2)),[Comp17]);

            //Imprime RETIRADAS NO CAIXA
            IF SALDOSAIDAS < 0
            THEN
                SALDOSAIDAS := SALDOSAIDAS * -1 ;

            Print.ImpF(linhacx, 55, 'SAIDAS = ' + FORMATFLOAT('###,###,##0.00', Arredonda(SALDOSAIDAS + SaldoPagas,2)),[Comp17]);

            Print.ImpF(linhacx, 70, 'SALDO  = ', [Comp17]);
            Print.ImpF(linhacx, 76, FormatFloat('#,##0.00', Arredonda(SaldoCaixa,2)), [Comp17]);

            inclinhacx;
            inclinhacx;
       END;

       print.Fechar;

       Print.TamanhoQteLinhas := 33;
end;

procedure TFrmPdv.ActPagarExecute(Sender: TObject);
Var
   Cliente: Integer;
   Documento, NomeCliente, DOCUMENTOSCLIENTE: String;
   Valor: Real;
   Data: TDateTime;
   Dia, Ano, Mes, Nome, ValorCheque: String;
begin
     Lendo := true ;

     Cliente := 0;

     //Pega Informações do Cliente
     FrmConveniadoPdv := TFrmConveniadoPdv.Create(Self);

     FrmConveniadoPdv.Venda_Prazo := False ;

     If FrmConveniadoPdv.Showmodal = MROK
     Then Begin
          Cliente            := FrmConveniadoPdv.Cliente     ;
          NomeCliente        := FrmConveniadoPdv.EdNome.text ;
          DOCUMENTOSCLIENTE  := FrmConveniadoPdV.EDENDERECO.TEXT + ', N ' + FrmConveniadoPdV.EDNUMERO.TEXT + ' CIDADE ' + FrmConveniadoPdV.EDCIDADE.TEXT ;
     END;

     FrmConveniadoPdv.Free ;
     FrmConveniadoPdv := Nil;

     DmPdv.PessoaCPF.Close ;
     DmPdv.PessoaNome.Close ;
     DmPdv.PessoaCOD.Close ;

     If Cliente > 0
     then begin
          //LANCA O CONTAS A PAGAR
          FrmEntraDados_Receber_Pdv := TFrmEntraDados_Receber_Pdv.Create(Self);

          FrmEntraDados_Receber_Pdv.LblTitulo.CAPTION := 'Dados do Pagar';

          IF FrmEntraDados_Receber_Pdv.Showmodal = MROK
          THEN BEGIN
               Documento := FrmEntraDados_Receber_Pdv.EdDocumento.Text ;
               Valor     := FrmEntraDados_Receber_Pdv.EdValor.value    ;
               Data      := FrmEntraDados_Receber_Pdv.EdData.Date      ;

               //LANCA CONTAS A PAGAR
               DMApp.Lanca_Pagar_Pdv (
               0,
               Cliente,
               Valor,
               DATA + 30,
               Data,
               Documento);
          END;

          FrmEntraDados_Receber_Pdv.Free   ;
          FrmEntraDados_Receber_Pdv := Nil ;
     end;

     Lendo := False ;
end;

procedure TFrmPdv.ActMovimentoExecute(Sender: TObject);
Var
   Documento, Historico, Tipo: String;
   Valor: Real;
   Data: TDateTime;
begin
     Lendo := true ;

     //LANCA
     FrmEntraDados_Movtos_Pdv := TFrmEntraDados_Movtos_Pdv.Create(Self);

     IF FrmEntraDados_Movtos_Pdv.Showmodal = MROK
     THEN BEGIN
          Documento := COPY(FrmEntraDados_Movtos_Pdv.EdDocumento.Text + ' ' +TIMETOSTR(NOW),1,20) ;
          Historico := FrmEntraDados_Movtos_Pdv.EdHistorico.Text ;
          Tipo      := FrmEntraDados_Movtos_Pdv.EdTipo.Text ;

          Valor     := FrmEntraDados_Movtos_Pdv.EdValor.value    ;
          Data      := FrmEntraDados_Movtos_Pdv.EdData.Date      ;

          //LANCA CONTAS A RECEBER
          DMApp.Lanca_Movto_Caixa (
               DmApp.UsuarioCaixa ,
               DmApp.ContaCaixa  ,
               DmApp.TurnoCaixa ,
               Data,
               Valor,
               Tipo,
               Documento,
               Historico
               );
          if Tipo = 'C' Then
            begin
              DmPdv.Suprimento (Valor);
            end
          else
            begin
              DmPdv.Sangria (Valor);
            end;

          
     END
     ELSE BEGIN
          MENSAGEMPDV('LANCAMENTO CANCELADO');
     END;

     FrmEntraDados_Receber_Pdv.Free   ;
     FrmEntraDados_Receber_Pdv := Nil ;

     Lendo := False ;
end;

procedure TFrmPdv.Extrato ;
begin
     { * * * * * }
     If FrmBaixaReceberSelecaoParc = Nil Then
     Begin
       //
       Application.ProcessMessages;
       FrmBaixaReceberSelecaoParc := TFrmBaixaReceberSelecaoParc.Create(Self);
       FrmBaixaReceberSelecaoParc.Showmodal ;
     End;

     {If FrmBaixaReceberPdv = Nil
     Then Begin
          //
          FrmBaixaReceberPdv := TFrmBaixaReceberPdv.Create(Self);
          //
          FrmBaixaReceberPdv.Showmodal ;
     End;}
end;
procedure TFrmPdv.ActFechaCupomPrazoExecute(Sender: TObject);
Var
   Qntde, Unitario, Descricao: String ;
begin
     If CupomAberto then
     begin
       DmPdv.AtualizaValores ('S') ;

          If DmPdv.PdvTotal.Value <= 0 then
          begin
             beep ;
             MensagemPdv('Cupom Vazio, Verifique!');
             Exit;
          end;

          STatus.Caption := 'Fechando Cupom Fiscal!' ;
          STatus.Refresh ;

          FrmFaturaCupom := TFrmFaturaCupom.Create(Self);

          FrmFaturaCupom.PnTotal.Caption  := formatfloat('R$  ###,###,##0.00  ', arredonda(DmPdv.PdvTotal.Value,2)  ) ;

          Descricao := PnDescricao.Caption ;

          Qntde     := PNQNTDE.Caption     ;

          Unitario  := PNUNITARIO.Caption  ;

          PnDescricao.Caption  := dmApp.MSG_PDVTELA;

          PNQNTDE.Caption      := 'Obrigado';
          PNUNITARIO.Caption   := 'Volte Sempre';

          PNQNTDE.Alignment    := taCenter;
          PNUNITARIO.Alignment := taCenter;

          FrmFaturaCupom.Total := arredonda(DmPdv.PdvTotal.Value,2)   ;

          If Not(DsPdv.State in [DsEdit]) Then
             DsPdv.DataSet.Edit;

          DmPdv.PdvDINHEIRO.Value     := 0                                   ;
          DmPdv.PdvVLR_PARC_LC.Value  := arredonda(DmPdv.PdvTotal.Value,2)   ;
          FrmFaturaCupom.APRAZO       := TRUE ;
          DmPdv.PdvFORMA_PGTO.value   := 2;

          {if (dmapp.EXIBE_INDICE_PDV = 'S') then
          begin
            if (Pdv_FormIndices = nil) then
            begin
              Pdv_FormIndices := TPdv_FormIndices.Create(Self);
              Pdv_FormIndices.valoritem := DmPdv.PdvTotal.Value;
            end;

            if Pdv_FormIndices.ShowModal = mrOk then
            begin
              If Not(DsPdv.State in [DsEdit]) Then
               DsPdv.DataSet.Edit;

              DmPdv.PdvDinheiro.Value         := arredonda(TotalIndice,2)   ;
              DmPdv.PdvCOD_INDEXADOR.value := frmPdv.codindice;
              FrmFaturaCupom.PnTotal.Caption  := formatfloat('R$  ###,###,##0.00  ', arredonda(TotalIndice,2)  ) ;
            end
          end;}

          if FrmFaturaCupom.Showmodal = mrok then
          begin
               If arredonda(DmPdv.PdvTroco.Value,2) <> 0 then
               begin
                    FrmTroco := TFrmTroco.Create(Self);
                    FrmTroco.Valor := arredonda(DmPdv.PdvTroco.Value,2) ;
                    FrmTroco.Showmodal ;
                    FrmTroco.Free ;
                    FrmTroco := Nil ;
               end;

               //Fecha o Cupom Fiscal
               if not DmPdv.TotalizaCupom then
                   exit ;

               //Inicia PAINEIS
               PNQNTDE.Caption       := formatfloat('###,###,##0.00  ', 0  ) ;
               PNUNITARIO.Caption    := formatfloat('###,###,##0.00  ', 0  ) ;
               PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', 0  ) ;
               EdDigitacao.Clear ;
               PnDescricao.Caption := Trim(Cumprimento());

               STatus.Caption := 'Aguardando Comandos' ;
               STatus.Refresh ;

               CupomAberto := False ;
          end
          else begin
               CupomAberto := True ;

               PNQNTDE.Alignment   := taRightJustify;
               PNUNITARIO.Alignment:= taRightJustify;

               PnDescricao.Caption  := Descricao ;

               PNQNTDE.Caption      := Qntde     ;

               PNUNITARIO.Caption   := Unitario  ;

               STatus.Caption := 'Pronto Para Leitura!' ;
               STatus.Refresh ;

               EdDigitacao.Clear    ;
               EdDigitacao.SetFocus ;
          end;

          PNQNTDE.Alignment   := taRightJustify;
          PNUNITARIO.Alignment:= taRightJustify;

          FrmFaturaCupom.Free ;
          FrmFaturaCupom := Nil;

          EdDigitacao.Clear    ;
          EdDigitacao.SetFocus ;
          //
          VENDEDOR := 1;
          NomeVendedor := 'LOJA';
          lblVendedor.caption := NomeVendedor;
     end
     else begin
          beep ;
          MensagemPdv('Cupom Fechado, Verifique!');
          EdDigitacao.Clear    ;
          EdDigitacao.SetFocus ;
          //
          VENDEDOR := 1;
          NomeVendedor := 'LOJA';
          lblVendedor.caption := NomeVendedor;
     end;
end;

procedure TFrmPdv.ActComandaExecute(Sender: TObject);
begin
    Application.CreateForm(TfrmComandas, frmComandas);
    frmComandas.showmodal;
    frmComandas.free;
    frmComandas := Nil;
end;

procedure TFrmPdv.Dig_Quantidade;
begin
     FrmQuantidadePdv := TFrmQuantidadePdv.Create(Self);
     IF FrmQuantidadePdv.Showmodal = MrOk
     THEN BEGIN
          DmPdv.PdvQuantidade  := FrmQuantidadePdv.Vlr ;
          PNQNTDE.Caption      := formatfloat('###,###,##0.000  ', Arredonda(FrmQuantidadePdv.Vlr,3) ) ;
     END;
     FrmQuantidadePdv.Free ;
     FrmQuantidadePdv := Nil ;
end;

procedure TFrmPdv.ActTrocaVendedorExecute(Sender: TObject);
Var
   Venda: Integer;
begin
     try

         If CUPOMABERTO then
         begin
                  Lendo := true ;

                  {IF NOT CUPOMABERTO
                  THEN BEGIN
                       AbreCupom.EXECUTE ;
                  END;}

                  Vendedor := 1;

                  //Chama a Tela Para Localizar Mesas
                  Application.CreateForm(TFrm_Localizar_Vendedor, Frm_Localizar_Vendedor);


                  if ( Frm_Localizar_Vendedor.showmodal = mrOk )Then
                  begin
                     Vendedor := (Frm_Localizar_Vendedor.CampTrecho) ;
                     NomeVendedor := (Frm_Localizar_Vendedor.CampVendedor) ;
                  end;

                  Frm_Localizar_Vendedor.free   ;
                  Frm_Localizar_Vendedor := Nil ;

                  IF ( Vendedor > 0 ) THEN
                  BEGIN
                    If DmPdv.Pdv_itens.state in [ dsinsert, dsedit ] then
                       DmPdv.Pdv_itens.Cancel ;

                       DmPdv.Pdv.Edit  ;
                       DmPdv.PdvVENDEDOR.Value := Vendedor ;
                       lblvendedor.caption := NomeVendedor;
                       DmPdv.Pdv.post    ;
                  END;

                  Lendo := False ;
         end
         else
            application.messagebox(Pchar('É necessário Abrir Cupom para escolher vendedor ') ,'Aviso', mb_iconquestion + MB_OK)

     Except
        Lendo := False ;
     end;
end;

procedure TFrmPdv.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
    If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(ActLista))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(ActLista, DMUsuarios.Direito);

  dmpdv.iniciado := true ;
  Alterando_Produto := false ;
end;

procedure TFrmPdv.ActCalculadoraExecute(Sender: TObject);
begin
  Application.CreateForm(TFrmCalculadora_Pdv, FrmCalculadora_Pdv);

  FrmCalculadora_Pdv.Showmodal ;

  FrmCalculadora_Pdv.Free ;
  FrmCalculadora_Pdv := Nil ;
end;

procedure TFrmPdv.ActAlteraProdutoExecute(Sender: TObject);
begin
     if Alterando_Produto
     then begin
          Alterando_Produto := false ;
          LblInsercao.Caption := 'Inserindo Novo Produto';
          LblInsercao.visible := false ;
     end
     else begin
          Alterando_Produto := true ;
          LblInsercao.Caption := 'Alterando Produto';
          LblInsercao.visible := true ;
     end;
end;

procedure TFrmPdv.PNQNTDEExit(Sender: TObject);
begin
  if strtofloat(trim(PNQNTDE.Caption)) > 1000 then
  begin
    if application.messagebox(Pchar('Tem certeza que deseja confirmar esta quantidade: '+PNQNTDE.caption+'?') ,'Aviso', mb_iconquestion + mb_yesno) = id_no then
    begin
      PNQNTDE.caption := '0,00';
      PNQNTDE.SetFocus;
    end;
  end;
end;

procedure TFrmPdv.ActLczNatExecute(Sender: TObject);
begin
    //Chama a Tela Para Localizar Terceiros
    if not CupomAberto then
      exit;

    Application.CreateForm(TFrm_Localizar_Natureza, Frm_Localizar_Natureza);

    Frm_Localizar_Natureza.DSource.dataset := DmPdv.SelNatureza ;

    if ( Frm_Localizar_Natureza.showmodal = mrOk ) then
    begin
      with dmPdv do
      begin
        if not (Pdv.state in [dsEdit,dsInsert]) then
        begin
          pdv_itens.cancel;
          Pdv.edit;
        end;

        PdvNATUREZA.Value := (Frm_Localizar_Natureza.CampTrecho) ;
      end;
    end;

    Frm_Localizar_Natureza.free   ;
    Frm_Localizar_Natureza := Nil ;
end;

procedure TFrmPdv.ActCancelaAcrescExecute(Sender: TObject);
begin
  //
end;

procedure TFrmPdv.ActImprimirVendaExecute(Sender: TObject);
begin
  with dmPdv do
  begin
    if messagedlg('Confirma a Impressão?', mtConfirmation,[mbok, mbcancel],0) = mrok  then
      iMPRIMEVENDA ;
  end;
end;

procedure TFrmPdv.ActTransfereMesaExecute(Sender: TObject);
var
  mesa, newvenda: integer;
begin
    //Chama a Tela Para Localizar Mesas
    with dmPdv do
    begin
      if PDVCodigo.AsInteger = 0 then
      begin
        application.MessageBox('Não existe uma venda selecionada para transferência de mesa','Aviso', mb_ok);
        exit;
      end;

      Application.CreateForm(TFrm_Localizar_Mesas, Frm_Localizar_Mesas);
      Frm_Localizar_Mesas.caption := 'Transferir Mesas';
      Frm_Localizar_Mesas.LblTitulo.caption := 'Transferir Mesas - Selecione a Mesa Destino';
      if (Frm_Localizar_Mesas.showmodal = mrOk) Then
        Mesa := (Frm_Localizar_Mesas.CampTrecho) ;

      Frm_Localizar_Mesas.free   ;
      Frm_Localizar_Mesas := Nil ;

      //caso tenha sido selecionado alguma mesa para a transferência
      if (mesa > 0) then
      begin
        if (application.messagebox(Pchar('A transferência fará com que todos os itens da mesa de origem sejam excluidos.'+#13+'Deseja continuar?'),'Aviso', mb_yesno + MB_ICONQUESTION) = id_no) then
           exit;
        //selecionando o codigo da venda, e a maxima sequencia da mesa destino
        qryMesaDestino.close;
        qryMesaDestino.parambyname('cnpj').value := dmapp.cnpj;
        qryMesaDestino.parambyname('mesa').value := mesa;
        qryMesaDestino.open;

        if (qryMesaDestinoNewCodigo.asInteger <= 0) then
          newvenda := DmApp.Vendas_Abertas_Mesas(Mesa)
        else
          newvenda := qryMesaDestinoNewCodigo.asInteger;

        qryTransfereMesas.close;
        qryTransfereMesas.parambyname('cnpj').value := dmapp.cnpj;
        qryTransfereMesas.parambyname('codigo').value := PDVCodigo.value;
        qryTransfereMesas.open;
        qryTransfereMesas.fetchall;

        //-------------------------------------------------------------------------------------------------------//
        //Acertando primeirmente a sequencia para evitar erro de chave primária em caso de produtos duplicados nas mesas
        TransfereMesas.SQL.text :=   ' update fat_vendas_itens vdi set vdi.sequencia = vdi.sequencia + :newsequencia'+
                                     ' where vdi.cnpj = :cnpj and vdi.codigo = :codigo and vdi.sequencia = :sequencia';

        qryTransfereMesas.first;
        while not qryTransfereMesas.eof do
        begin
          TransfereMesas.parambyname('cnpj').value := dmapp.cnpj;
          TransfereMesas.parambyname('codigo').value := qryTransfereMesasCodigo.value;
          TransfereMesas.parambyname('sequencia').value := qryTransfereMesasSequencia.value;
          TransfereMesas.parambyname('newsequencia').value := qryMesaDestinoMax.value;
          TransfereMesas.ExecQuery;

          qryTransfereMesas.next;
        end;

        //-----------------------Transferindo itens da venda-----------------------------------------------------//
        TransfereMesas.SQL.text := ' update fat_vendas_itens vdi set vdi.codigo = :newcodigo '+
                                   ' where vdi.cnpj = :cnpj and vdi.codigo = :codigo';


        TransfereMesas.parambyname('cnpj').value := dmapp.cnpj;
        TransfereMesas.parambyname('newcodigo').value := newVenda;
        TransfereMesas.parambyname('codigo').value := PDVCodigo.value;
        TransfereMesas.ExecQuery;

        //-----------------------Excluindo a venda original------------------------------------------------------//
        TransfereMesas.SQL.text := 'delete from fat_vendas vd where vd.cnpj = :cnpj and vd.codigo = :codigo';
        TransfereMesas.parambyname('cnpj').value := dmapp.cnpj;
        TransfereMesas.parambyname('codigo').value := PDVCodigo.value;
        TransfereMesas.ExecQuery;


        //-----------------------------abrindo a mesa destino---------------------------------------//
        AbreMesas(Mesa);
      end;
    end;
end;

procedure TFrmPdv.AbreMesas(Mesa: integer);
var
  Venda: Integer;
  Codigo, Descricao, Unitario, Quantidade, Total, Linha, Item: String;
  Vezes: Integer;
begin
//    lblMesa.caption := 'Mesa: '+IntToStr(Mesa);
    lblMesa.caption := VarToStr(RetornaValor('select ms.codigo_2 from fat_mesas ms where ms.codigo ='+inttostr(mesa),nil));
    //Verificando se existe venda aberta para a mesa selecionada
    Venda := DmApp.Vendas_Abertas_Mesas(Mesa);

    //Caso venda > 0 então temos venda aberta para a mesa, senão insere uma nova venda
    if (Venda > 0) then
    begin
      //Abrindo venda
      with dmPdv do
      begin
        Pdv.Close;
        Pdv.SelectSQL.text := ' Select * from FAT_VENDAS WHERE CNPJ = :CNPJ and CODIGO = '+IntToStr(Venda);
        Pdv.Open    ;

        MesaAberta := True ;

        if Not(Pdv_Itens.Active) then
          Pdv_Itens.Open ;

        //abrindo cumpom fiscal
        Imprime ('', 'NOVO');
        CupomAberto := True;
        STatus.Caption := 'Pronto Para Leitura!' ;
        STatus.Refresh ;

        edDigitacao.Enabled := true ;
        EdDigitacao.SetFocus ;
        TotalCupom := 0 ;

        PNUNITARIO.Caption    := formatfloat('###,###,##0.00  ',0) ;
        PNTOTAL.Caption       := formatfloat('###,###,##0.00  ',0) ;//- DesctoCpCanc, 2)) ;
        EdDigitacao.Text      := '' ;

        Pdv_Itens.first;
        while not Pdv_Itens.EOF do
        begin
          TotalCupom := TotalCupom + arredonda((Pdv_ItensQUANTIDADE.Value * Pdv_ItensPRC_UNITARIO.Value), 2);

          //Imprimindo itens do cumpom
          PnDescricao.Caption   := Pdv_ItensNOME_PRODUTO.Value ;
          PNUNITARIO.Caption    := formatfloat('###,###,##0.00  ', arredonda(Pdv_ItensPRC_UNITARIO.Value, 2)) ;
          PNTOTAL.Caption       := formatfloat('###,###,##0.00  ', arredonda(TotalCupom , 2)) ;//- DesctoCpCanc, 2)) ;
          EdDigitacao.Text      := '' ;

          Codigo      := Trim(Pdv_ItensPRODUTO.Value);

          //preenchendo com zeros a esquerda do código
          While Length (Codigo) <= 15 do
          begin
            Codigo := '0' + Codigo ;
          end;

          Descricao   := Pdv_ItensNOME_PRODUTO.Value;
          While Length ( Descricao ) <= 60 do
          begin
            Descricao := Descricao + ' ';
          end;

          Item := formatfloat('###,###,##0  ', Pdv_ItensSequencia.Value );
          While Length ( Item ) <= 30 do
          begin
            Item := ' ' + Item ;
          end;

          Unitario    := formatfloat('###,###,##0.00  ', arredonda(Pdv_ItensPRC_UNITARIO.Value,2));
          While Length ( Unitario ) <= 30 do
          begin
            Unitario := ' ' + Unitario ;
          end;

          Quantidade  := formatfloat('###,###,##0.000  ', arredonda(Pdv_ItensQUANTIDADE.Value,3) );
          while Length ( Quantidade ) <= 30 do
          begin
            Quantidade := ' ' + Quantidade ;
          end;

          Total       := formatfloat('###,###,##0.00  ', arredonda(Pdv_ItensPRC_UNITARIO.Value * Pdv_ItensQUANTIDADE.Value,2)) ;
          While Length ( Total ) <= 30 do
          begin
            Total := ' ' + Total ;
          end;

          //Parametro de impressão na impressora
          Linha := Codigo + '       ' + Descricao ;
          Imprime ('<B><P align="left"><FONT color="#000000">'+ Linha +'</FONT></P></B><br>', 'CODIGO');

          Linha := Item + Quantidade + ' X ' + Unitario + Total ;
          Imprime ('<B><P align="left"><FONT color="#FFFFFF">'+ Linha +'</FONT></P></B><br>', 'QNTDE');

          Pdv_Itens.NEXT ;
        end; //Final do laço while

        //Digita Quantidade
        IF DmaPP.PDV_OBRIGA_QTDE = 'S' THEN
          DIG_QUANTIDADE ;
      end//End with
    end
    else
    begin
      //INSERIRINDO VENDA
      with dmpdv do
      begin
        Pdv.Close;
        Pdv.SelectSQL.text := ' Select * from FAT_VENDAS WHERE CNPJ = :CNPJ';
        Pdv.Open;


        Pdv.Insert;
        PdvMesa.Value := Mesa ;
        Pdv.Post;

        CupomAberto := true;
        //DIGITA QUANTIDADE
        if DmaPP.PDV_OBRIGA_QTDE = 'S' then
           DIG_QUANTIDADE;

        PNUNITARIO.Caption    := formatfloat('###,###,##0.00  ',0) ;
        PNTOTAL.Caption       := formatfloat('###,###,##0.00  ',0) ;//- DesctoCpCanc, 2)) ;
        EdDigitacao.Text      := '' ;
      end;
    end;
end;

procedure TFrmPdv.ActHelpExecute(Sender: TObject);
begin
  frmHelpPDV := TfrmHelpPDV.Create(Self);
  frmHelpPDV.Showmodal;
  frmHelpPDV.free;
  frmHelpPDV := nil;
end;

procedure TFrmPdv.CoresFundoPDV;
begin
     //TROCANDO COR DE FUNDO
     IF (( TRIM(DMAPP.PDV_COR_FUNDO) <> '') and ( TRIM(DMAPP.PDV_COR_FUNDO) <> '0')) THEN
     BEGIN
          Panel1.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PnDescricao.Color := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PnTotal.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          pncodigo.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          PNMENSAGEM.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
          status.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FUNDO));
     END;

     IF ((TRIM(DMAPP.PDV_COR_FONTE) <> '') and (TRIM(DMAPP.PDV_COR_FONTE) <> '0')) THEN
     BEGIN
          LblTitulo.Style.Font.Color     := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          LblUsuario.Style.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          LblMesa.Style.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          lbldatacaixa.Style.Font.Color  := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          lblhora.Style.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          PnDescricao.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          status.Font.Color        := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          PNMENSAGEM.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          PnTotal.Font.Color       := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          EdDigitacao.Font.Color   := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          PNMENSAGEM.Font.Color    := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
          MENSAGEM.Style.Font.Color      := STRTOINT(TRIM(DMAPP.PDV_COR_FONTE));
     END;
end;

procedure TFrmPdv.ppConvenioBeforeOpen(Sender: TObject);
var
 teste : integer;
begin
  {teste := 1;
  showmessage('pagar aqui doido'); }
end;

end.

