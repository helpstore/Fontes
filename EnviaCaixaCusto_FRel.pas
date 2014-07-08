unit EnviaCaixaCusto_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls, cxGraphics, cxControls,
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
  TFRelEnviaCaixaOrcamento = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    btnimprimir: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    LBLNOME: TcxLabel;
    Print: TRDprint;
    ActBuscarProd: TAction;
    LBLPEDIDO: TcxLabel;
    btnver: TcxButton;
    ActVisualizar: TAction;
    Vias: TdxSpinEdit;
    DSource: TDataSource;
    LblTipo: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    Procedure Imprime ;
    procedure ActVisualizarExecute(Sender: TObject);

  private
    { Private declarations }
    procedure CabecalhoOrcamento ;
    procedure CabecalhoFatura ;
    Procedure ImprimeFaturaA4 ;
    Procedure CorpoFatura     ;
    Procedure CorpoOrcamento  ;

  public
    { Public declarations }
    TIPO : String ;
    PedidoNumero: Integer ;
    Total_Orcamento, Total_Orcamento2 : Real ;

  end;

var
  FRelEnviaCaixaOrcamento: TFRelEnviaCaixaOrcamento;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, OBSERVACAO, NomeVendedor, Endereco  , NomeCidade: String;
  NomeBairro, EstadoCep , NumeroFone, Documentos, IERG , Condicoes : String ;
  Opcao, TipoDoc, NUMERO, Fone, Fax, Validade : String;
  VlrEntrada, Empresa, Total, Desconto, Liquido, Peso, Volume, Cep, InscMun, UF : String;
  Vencimento: TDateTime;
  TotProdutos, TotDesconto, TotPeso, TotVolume: Extended ;
  Item, LocalCobranca: Integer;

  //TOTALIZADORES DA NF
  TOTALNOTA, ICM, IPI, BASECALCULOICM, BASECALCULOSUBSTITUICAO: Extended ;
  VALORTOTAL, ISS, VALORICMSSUB, DESPESAS, VALORFRETE: Extended ;
  SEGURO, FRETE: Extended ;
  MENSAGEMREDUCAO: String ;
  VendaParcelada: Boolean ;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Vendas_Dm,
     NotaPromissoria_FRel, Vendas_DM2;

{$R *.DFM}

procedure TFRelEnviaCaixaOrcamento.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelEnviaCaixaOrcamento.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEnviaCaixaOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmVendas.Consulta_Venda_Itens.Close ;
     DmVendas.Consulta_Venda_Parc.Close ;
     DmVendas.Consulta_Venda.Close ;

     DSource.DataSet.Close ;

     Action := caFree;
     FRelEnviaCaixaOrcamento := Nil;
end;

procedure TFRelEnviaCaixaOrcamento.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelEnviaCaixaOrcamento.CabecalhoOrcamento ;
VAR
   LIN, DST: INTEGER;
Begin
          // Cabeçalho...
          Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
          Print.ImpF(02, 01, TIPO, [EXPANDIDO, Negrito]);
          Print.ImpF(03, 37, NPEDIDO, [Normal,NEGRITO]);
          Print.ImpF(04, 01, Empresa, [comp17]);
          Print.ImpF(04, 70, 'PG - ' + IntToStr(Pagina), [Comp17]);
          Print.ImpF(05, 01, EndEmpresa , [Comp17]);
          Print.ImpF(05, 61, 'DATA : '+ DateTimeToStr(now()), [COMP17]);
          Print.ImpF(06, 01, Replicate('-', 80), [Normal]);
          //DADOS DO CLIENTE
          Print.ImpF(07, 01, 'RAZAO......: '               , [COMP17]);
          Print.ImpF(07, 09,  Razao       , [COMP12, NEGRITO]);

          Print.ImpF(07, 45, 'DATA ORC...: ' + Data , [COMP17]);

          Print.ImpF(08, 01, 'ENDERECO...: ' + Endereco    , [COMP17]);
          Print.ImpF(08, 45, 'CIDADE.....: ' + NomeCidade  , [COMP17]);

          Print.ImpF(09, 01, 'BAIRRO.....: ' + NomeBairro  , [COMP17]);
          Print.ImpF(09, 45, 'ESTADO.....: ' + EstadoCep   , [COMP17]);

          Print.ImpF(10, 01, 'CNPJ/CPF...: ' + mascaracpf(Documentos)  , [COMP17]);
          Print.ImpF(10, 45, 'IE/RG......: ' + IERG        , [COMP17]);

          Print.ImpF(11, 01, 'CONSULTOR..: ' + NomeVendedor, [COMP17]);
          Print.ImpF(11, 45, 'CONDICOES..: ' + Condicoes  + ' ' + TipoDoc , [COMP17]);

          Print.ImpF(12, 01, 'CLIENTE....: ' + NomeCliente , [COMP17]);
          Print.ImpF(12, 45, ''               , [COMP17]);

          Print.ImpF(13, 01, 'OBS........: ' + OBSERVACAO  , [COMP17]);
          Print.ImpF(13, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);
          Print.ImpF(13, 69, 'VALIDADE: ' + Validade        , [COMP17]);

          Print.ImpF(14, 01, Replicate('-', 80), [Normal]);

          //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
          Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO                                                  UNIDADE            UNIT     DESCONTO        TOTAL', [Comp17]);
          Print.ImpF(16, 01, Replicate('-', 80), [Normal]);

          linha  := 17;
end;

procedure TFRelEnviaCaixaOrcamento.CabecalhoFatura ;
VAR
   LIN, DST: INTEGER;
Begin
          Print.ImpF(01, 01, trim(Empresa), [NORMAL, negrito]);
          Print.ImpF(01, 50, trim(TIPO)+ ' ' + NPEDIDO, [NORMAL, Negrito]);
          Print.ImpF(01, 75, 'PG - ' + IntToStr(Pagina), [Comp17]);
          Print.ImpF(02, 01, TRIM(EndEmpresa) , [Comp17]);
          Print.ImpF(03, 01, Replicate('-', 80), [Normal]);

          //DADOS DO CLIENTE
          Print.ImpF(04, 01, 'RAZAO......: '               , [COMP17]);
          Print.ImpF(04, 09,  Razao       , [COMP17, NEGRITO]);
          Print.ImpF(04, 45, 'NOME. FANT.: ' + NomeCliente , [COMP17]);

          Print.ImpF(05, 01, 'ENDERECO...: ' + Endereco    , [COMP17]);
          Print.ImpF(05, 45, 'CIDADE.....: ' + NomeCidade  , [COMP17]);

          Print.ImpF(06, 01, 'BAIRRO.....: ' + NomeBairro  , [COMP17]);
          Print.ImpF(06, 45, 'ESTADO.....: ' + EstadoCep   , [COMP17]);

          Print.ImpF(07, 01, 'CNPJ/CPF...: ' + Documentos  , [COMP17]);
          Print.ImpF(07, 45, 'IE/RG......: ' + IERG        , [COMP17]);

          Print.ImpF(08, 01, 'CONSULTOR..: ' + NomeVendedor, [COMP17]);
          Print.ImpF(08, 45, 'CONDICOES..: ' + Condicoes  + ' ' + TipoDoc , [COMP17]);

          Print.ImpF(09, 01, 'DATA : '+ DateTimeToStr(now()), [COMP17]);
          Print.ImpF(09, 15, 'OBS........: ' + OBSERVACAO  , [COMP17]);
          Print.ImpF(09, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);

          Print.ImpF(10, 01, Replicate('-', 80), [Normal]);

          //DADOS DOS PRODUTOS
          //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
          IF DmApp.IMP_DESC_AGRUPADO = 'S'
          THEN BEGIN
               Print.ImpF(11, 01, 'CODIGO              QNTDE  DESCRICAO                                                  UNIDADE            UNIT                     TOTAL', [Comp17]);
          END
          ELSE BEGIN
               Print.ImpF(11, 01, 'CODIGO              QNTDE  DESCRICAO                                                  UNIDADE            UNIT     DESCONTO        TOTAL', [Comp17]);
          END;

          linha  := 12;
end;

procedure TFRelEnviaCaixaOrcamento.PrintNewPage(Sender: TObject; Pagina: Integer);
VAR
   LIN, DST: INTEGER;
begin
     IF ( TRIM(Tipo) = 'ORCAMENTO' )
     THEN BEGIN
          CabecalhoOrcamento ;
     END
     ELSE BEGIN
          CabecalhoFatura    ;
     END;
end;


procedure TFRelEnviaCaixaOrcamento.FormShow(Sender: TObject);
Var
   Str: String;
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
     Str := '';

     Str := Str + IntToStr(PedidoNumero);

     WHILE LENGTH(STR) < 11 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     Str := 'Pedido Nº =>' + Str ;

     LBLPEDIDO.Caption := Str;

     LBLNOME.Caption := Tipo ;

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

procedure TFRelEnviaCaixaOrcamento.ActPreviewExecute(Sender: TObject);
begin
     //Testa a Impressora
     Opcao := 'N' ;

     PAGINA := 1;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;

Procedure TFRelEnviaCaixaOrcamento.CorpoFatura ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado, VlrBruto: Real;
   Cont: Integer;
   Unitario, TotalFatura, Porcentagem, TotalDescAcresc : Real;
begin
     With DmVendas do
     begin
          dmvendas2.Proc_Imprime_Venda (PedidoNumero);

          VerPessoa ( Consulta_VendaPESSOA_FJ.Value );

          If trim(Consulta_VendaNOME_CONSUMIDOR.value) = ''
          then begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          end
          else begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Consulta_VendaNOME_CONSUMIDOR.value ;
          end;

          NomeCliente  := Ver_PessoaFANTASIA.Value           ;
          Data         := DateToStr(Consulta_VendaDATA.Value);
          OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;
          NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
          TipoDoc      := Consulta_VendaTIPO_DOCTO.Value  ;
          Endereco     := Ver_PessoaENDERECO.Value + ', N ' + Ver_PessoaNUMERO.Value ;
          NomeCidade   := Ver_PessoaCIDADE.Value;
          NomeBairro   := Ver_PessoaBAIRRO.Value;
          EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
          NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;

          If Length(Ver_PessoaCPF_CGC.Value) > 11
          then begin
               Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
          end
          else begin
               Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
          end;

          IERG         := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
          Condicoes    := Consulta_VendaNOME_FORMA.Value      ;
          NPedido      := preenche(IntToStr(PedidoNumero),'0',6);
          Peso         := Formatfloat('###,###,##0.00', Consulta_VendaPeso.Value);
          Volume       := Formatfloat('###,###,##0.00', Consulta_VendaVolume.Value);
          Liquido      := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
          VlrEntrada   := Formatfloat('###,###,##0.00', Consulta_VendaEntrada.Value);
          LocalCobranca:= Consulta_VendaLocal_COBRANCA.Value ;

          TotalFatura  := 0 ;

          TotalDescAcresc := Consulta_VendaDESC_ACRES.Value ;

          //NUMERO DE LINHAS
          If DmApp.ITENSORCAMENTO = 33
          then begin
               Print.TamanhoQteLinhas := 33;
          end
          else begin
               Print.TamanhoQteLinhas := 66;
          end;

          IF DMAPP.VIASPRAZO = ''
          THEN BEGIN
               If ( VIAS.Value > 0 ) and ( VIAS.Value < 3 )
               then BEGIN
                    Print.NumerodeCopias := Trunc( VIAS.Value ) ;
               END
               else BEGIN
                    Print.NumerodeCopias := 1;
               END;
          END
          ELSE BEGIN
               Print.NumerodeCopias := STRTOINT(DMAPP.VIASPRAZO);
          END;

          If Opcao = 'S'
          then
              Print.OpcoesPreview.Preview := TRUE
          else
              Print.OpcoesPreview.Preview := FALSE ;

          print.Abrir;

          //
          Item        := 1;
          TotProdutos := 0;
          VlrLiquido  := 0;

          //Peso e Volume
          TotPeso     := 0;
          TotVolume   := 0;
          TotDesconto := 0;
          VlrBruto    := 0;
          VlrLiquido  := 0;

          ////
          Consulta_Venda_Itens.First;

          While Not Consulta_Venda_Itens.Eof
          Do Begin
             Print.ImpF(Linha, 01, Consulta_Venda_ItensPRODUTO.Value, [Comp17]);

             //QNTDE
             STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensQUANTIDADE.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             TotProdutos := TotProdutos + Consulta_Venda_ItensQUANTIDADE.Value ;

             Print.impf(Linha, 10, STR ,[comp17]);

             Print.ImpF(Linha, 17, Consulta_Venda_ItensNOME_PRODUTO.Value, [Comp17]);

             //VOLUME
             TotVolume := TotVolume + Consulta_Venda_ItensVOLUME.Value ;

             //PESO
             TotPeso   := TotPeso + Consulta_Venda_ItensPESO.Value ;

             //UNIDADE
             Print.ImpF(Linha, 51, Consulta_Venda_ItensUNIDADE.Value + ' C/ ' + Consulta_Venda_ItensSUBUNIDADE.TEXT, [Comp17]);

             //UNITARIO
             STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensPRC_CUSTO.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 59, STR ,[comp17]);

             //DESCONTO
             STR :=  FORMATFLOAT ('###,###,##0.00', 0 ) ;
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 66, STR ,[comp17]);

             TotDesconto := 0;

             VlrBruto   := VlrBruto   + ( Consulta_Venda_ItensPRC_CUSTO.Value *  Consulta_Venda_ItensQUANTIDADE.Value );

             VlrLiquido := VlrLiquido + ( Consulta_Venda_ItensPRC_CUSTO.Value *  Consulta_Venda_ItensQUANTIDADE.Value );

             //TOTAL
             STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensPRC_CUSTO.Value * Consulta_Venda_ItensQUANTIDADE.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 74, STR ,[comp17]);

             Consulta_Venda_Itens.Next;

             Total        := Formatfloat('###,###,##0.00', VlrBruto   );
             Liquido      := Formatfloat('###,###,##0.00', VlrLiquido );

             Item := Item + 1;

             //
             Inc(Linha);
             //
             If DmApp.ITENSORCAMENTO = 33
             then begin
                  If Linha >= 26
                  Then
                      Print.Novapagina;
             end
             else begin
                  If Linha >= 58
                  Then
                      Print.Novapagina;
             end;
          end;//

          TotDesconto  := 0;

          //Acrescenta o Total dos descontos Unitários com o desconto total
          TotDesconto := 0;

          //Rodapé...
          Print.ImpF(Linha, 01, Replicate('-', 80), [Normal]);

          Inc ( Linha );

          Print.ImpF(Linha, 01, razao, [comp17]);

          DESCONTO := FORMATFLOAT ('###,###,##0.00', 0 );

          WHILE LENGTH(DESCONTO) < 10 DO
          BEGIN
               DESCONTO := ' ' + DESCONTO ;
          END;

          Print.ImpF(Linha, 60, 'DESCONTO', [COMP17]);

          Print.ImpF(Linha, 74, DESCONTO, [COMP17]);

          Inc( Linha );

          STR :=  FORMATFLOAT ('###,###,##0.00', IteM - 1 );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(Linha, 01, 'ITENS.......:' ,[comp17]);

          Print.ImpF(Linha, 10, Str, [COMP17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', VlrLiquido );
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 60, 'Total = >', [COMP17, negrito]);

          Print.ImpF(Linha, 74, STR, [COMP17]);

     end;
end;

Procedure TFRelEnviaCaixaOrcamento.CorpoOrcamento;
Var
   Str : String ;
   VlrLiquido, VlrParcelado, Total: Real;
   Cont: Integer;
begin
     With DmVendas do
     begin
          Proc_Imprime_Orcamento (PedidoNumero);

          VerPessoa ( Consulta_OrcamentoPESSOA_FJ.Value );

          Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          NomeCliente  := Consulta_OrcamentoCLIENTE.VALUE        ;
          Data         := DateToStr(Consulta_OrcamentoDATA.Value);
          OBSERVACAO   := Consulta_OrcamentoOBSERVACAO.Value     ;
          TipoDoc      := ''  ;
          NomeVendedor := Consulta_OrcamentoNOME_VENDEDOR.Value   ;
          Endereco     := Ver_PessoaENDERECO.Value + ', N ' + Ver_PessoaNUMERO.Value ;
          NomeCidade   := Ver_PessoaCIDADE.Value;
          NomeBairro   := Ver_PessoaBAIRRO.Value;
          EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
          NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;
          If Length(Ver_PessoaCPF_CGC.Value) > 11
          then begin
               Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
          end
          else begin
               Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
          end;
          IERG         := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
          Condicoes    := Consulta_OrcamentoNOME_FORMA.Value      ;
          NPedido      := preenche(IntToStr(PedidoNumero),'0',6);
          Peso         := Formatfloat('###,###,##0.00', Consulta_OrcamentoPeso.Value   );
          Volume       := Formatfloat('###,###,##0.00', Consulta_OrcamentoVolume.Value );
          Validade     := datetostr(Consulta_OrcamentoValidade.Value);

          //NUMERO DE LINHAS
          If DmApp.ITENSORCAMENTO = 33
          then begin
               Print.TamanhoQteLinhas := 33;
          end
          else begin
               Print.TamanhoQteLinhas := 66;
          end;

          If ( VIAS.Value > 0 ) and ( VIAS.Value < 3 )
          then BEGIN
              Print.NumerodeCopias := Trunc( VIAS.Value ) ;
          END
          else BEGIN
               Print.NumerodeCopias := 1;
          END;

          If Opcao = 'S'
          then
              Print.OpcoesPreview.Preview := TRUE
          else
              Print.OpcoesPreview.Preview := FALSE ;

          print.Abrir;

          //
          Item := 1;

          //Peso e Volume
          TotPeso     := 0;
          TotVolume   := 0;
          TotDesconto := 0;

          Total_Orcamento  := 0 ;
          Total_Orcamento2 := 0 ;
          TotDesconto      := 0 ;

          Consulta_Orcamento_Itens.First;

          While Not Consulta_Orcamento_Itens.Eof
          Do Begin
                  Print.ImpF(Linha, 01, Consulta_Orcamento_ItensPRODUTO.Value, [Comp17]);

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Orcamento_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 10, STR ,[comp17]);

                  Print.ImpF(Linha, 17, Consulta_Orcamento_ItensNOME.Value, [Comp17]);

                  //VOLUME
                  TotVolume := TotVolume + Consulta_Orcamento_ItensVOLUME.Value ;

                  //PESO
                  TotPeso   := TotPeso + Consulta_Orcamento_ItensPESO.Value ;

                  //UNIDADE
                  Print.ImpF(Linha, 51, Consulta_Orcamento_ItensUNIDADE.Value, [Comp17]);


                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Orcamento_ItensPRC_CUSTO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 59, STR ,[comp17]);

                  //TOTAL
                  STR := FORMATFLOAT ( '###,###,##0.00', Consulta_Orcamento_ItensPRC_CUSTO.Value * Consulta_Orcamento_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 74, STR ,[comp17]);

                  Total_Orcamento := Total_Orcamento + (Consulta_Orcamento_ItensPRC_CUSTO.Value * Consulta_Orcamento_ItensQUANTIDADE.Value) ;

                  Consulta_Orcamento_Itens.Next;

                  Item := Item + 1;

                  //
                  Inc(Linha);

                  //
                  If DmApp.ITENSORCAMENTO = 33
                  then begin
                       If Linha >= 29
                       Then
                           Print.Novapagina;
                  end
                  else begin
                       If Linha >= 63
                       Then
                           Print.Novapagina;
                  end;
          end;//FIM WHILE

          TotDesconto := 0 ;

          //Acrescenta o Total dos descontos Unitários com o desconto total
          TotDesconto := 0;

          Total_Orcamento := Total_Orcamento  ;

          //Rodapé...
          Print.ImpF(Linha, 01, Replicate('-', 80), [Normal]);

          Inc ( Linha );

          Print.ImpF(Linha, 01, razao, [comp17]);

          DESCONTO := FORMATFLOAT ('###,###,##0.00', 0 );

          WHILE LENGTH(DESCONTO) < 10 DO
          BEGIN
               DESCONTO := ' ' + DESCONTO ;
          END;

          Print.ImpF(Linha, 60, 'DESCONTO', [COMP17]);

          Print.ImpF(Linha, 74, DESCONTO, [COMP17]);

          Inc( Linha );

          STR :=  FORMATFLOAT ('###,###,##0.00', IteM - 1 );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(Linha, 01, 'ITENS.......:' ,[comp17]);

          Print.ImpF(Linha, 10, Str, [COMP17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', Total_Orcamento );
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 60, 'Total = >', [COMP17, negrito]);

          Print.ImpF(Linha, 74, STR, [COMP17]);
     end;
end;

Procedure TFRelEnviaCaixaOrcamento.ImprimeFaturaA4 ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Cont: Integer;
begin
     With DmVendas do
     begin
          IF TRIM(UpperCase(Tipo)) = 'FATURA'
          THEN BEGIN
               CorpoFatura ;
          END
          ELSE BEGIN
               CorpoOrcamento ;
          END;
     END;
END;

Procedure TFRelEnviaCaixaOrcamento.Imprime ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Cont: Integer;
begin
     With DmVendas do
     begin
          //PORTA DE IMPRESSAO
          IF TRIM(DmApp.PORTA_IMPRESSORA) <> ''
          THEN BEGIN
               SetDefaultPrinter( DmApp.PORTA_IMPRESSORA ) ;
               print.SetPrinterbyPorta ( DmApp.PORTA_IMPRESSORA );
               Print.PortaComunicacao := DmApp.PORTA_IMPRESSORA;
          END;

          //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
          ImprimeFaturaA4 ;
     End;

     //
     print.Fechar;

     Close ;
end;

procedure TFRelEnviaCaixaOrcamento.ActVisualizarExecute(Sender: TObject);
begin
     Opcao := 'S' ;

     PAGINA := 1;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;

end.


