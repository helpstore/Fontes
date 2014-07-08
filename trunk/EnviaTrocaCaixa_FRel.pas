unit EnviaTrocaCaixa_FRel;

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
  TFRelEnviaTrocaCaixa = class(TForm)
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
    Boleto: TRDprint;
    LblTipo: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    Procedure Imprime ;
    procedure ActVisualizarExecute(Sender: TObject);

  private
    { Private declarations }
    Procedure ImpRodapeFatura ( Mult: Integer );
    procedure CabecalhoFatura ;
    Procedure CorpoFatura     ;
    Procedure ImprimeFatura40Colunas   ;
  public
    { Public declarations }
    TIPO : String ;
    PedidoNumero: Integer ;
    Total_Orcamento, Total_Orcamento2 : Real ;

  end;

var
  FRelEnviaTrocaCaixa: TFRelEnviaTrocaCaixa;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, OBSERVACAO, NomeVendedor, CodVendedor, Endereco  , NomeCidade: String;
  NomeBairro, EstadoCep , NumeroFone, Documentos, IERG , Condicoes : String ;
  Opcao, TipoDoc, NUMERO, Fone, Fax, Validade : String;
  VlrEntrada, Empresa, Total, Desconto, Liquido, Peso, Volume, Cep, InscMun, UF : String;
  Vencimento: TDateTime;
  TotProdutos, TotDesconto, TotPeso, TotVolume: Extended ;
  Item, LocalCobranca: Integer;
  AVISTA: Boolean;

  //TOTALIZADORES DA NF
  TOTALNOTA, ICM, IPI, BASECALCULOICM, BASECALCULOSUBSTITUICAO: Extended ;
  VALORTOTAL, ISS, VALORICMSSUB, DESPESAS, VALORFRETE: Extended ;
  SEGURO, FRETE: Extended ;
  MENSAGEMREDUCAO: String ;

  //Entradas e Saidas
  TotEntradas, TotSaidas : Real;
  TotDescEntradas, TotDescSaidas : Real;
implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Vendas_Dm, NotaPromissoriaTroca_FRel;

{$R *.DFM}

procedure TFRelEnviaTrocaCaixa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelEnviaTrocaCaixa.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEnviaTrocaCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmVendas.Consulta_Troca_Itens.Close ;
     DmVendas.Consulta_Troca_Parc.Close  ;
     DmVendas.Consulta_Troca.Close       ;

     DSource.DataSet.Close ;

     Action := caFree;
     FRElenviaTrocaCaixa := Nil;
end;

procedure TFRelEnviaTrocaCaixa.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

Procedure TFRelEnviaTrocaCaixa.ImpRodapeFatura ( Mult: Integer );
Var
   C, I: Integer;
   Str: String;
begin
     //Imprime o Cabecalho das Faturas
     // Rodapé...
     Print.ImpF(26+Mult, 01, Replicate('-', 80), [Normal]);

     Print.ImpF(27+Mult, 01, razao, [comp17]);

     Print.ImpF(28+Mult, 01, 'DECLARO TER RECEBIDO OS PRODUTOS ACIMA DESCRITOS', [COMP20]);

     I := 27+Mult ;

     C := 0  ;

     //Forma de Parcelamento
     DmVendas.Consulta_Troca_Parc.First;
     While ( Not DmVendas.Consulta_Troca_Parc.Eof )  AND ( C <= 4 )
     Do Begin
        //DATA
        Print.ImpF(I, 30, DateToStr(DmVendas.Consulta_Troca_ParcVENCTO.Value), [Comp17]);

        //VALOR
        STR :=  FORMATFLOAT ('###,###,##0.00', DmVendas.Consulta_Troca_ParcVALOR.Value );
        WHILE LENGTH(STR) < 10 DO
        BEGIN
             STR := ' ' + STR ;
        END;

        Print.impf(I, 37, STR ,[comp17]);

        C := C + 1;

        DmVendas.Consulta_Troca_Parc.Next;
     END;

     IF DmVendas.Consulta_Troca_Parc.Eof
     THEN BEGIN
          //Entrada
          Print.ImpF(30+Mult, 01, 'Entrada =' + VlrEntrada, [Comp17]);

          Str := FormatFloat ( '###,###,##0.00', TotSaidas );

          While Length(Str) < 12
          do begin
             Str := ' ' + Str ;
          end;

          //Total Saidas
          Print.impf(27+Mult, 47, 'TOTAL  SAI.:' ,[comp17]);

          Print.impf(27+Mult, 54, Str    ,[comp17]);

          DESCONTO := FORMATFLOAT('###,###,##0.00', TotDescSaidas );

          While Length(DESCONTO) < 12
          do begin
             DESCONTO := ' ' + DESCONTO ;
          end;

          //Desconto
          Print.impf(28+Mult, 47, 'DESC/ACRESC:' ,[comp17]);

          Print.impf(28+Mult, 54, DESCONTO ,[comp17]);


          //Total Entradas
          Print.impf(27+Mult, 63, 'TOTAL ENT..:' ,[comp17]);

          Str := FormatFloat ( '###,###,##0.00', TotEntradas );

          While Length(Str) < 12
          do begin
             Str := ' ' + Str ;
          end;

          Print.impf(27+Mult, 73, Str    ,[comp17]);

          DESCONTO := FORMATFLOAT('###,###,##0.00', TotDescEntradas );

          While Length(DESCONTO) < 12
          do begin
             DESCONTO := ' ' + DESCONTO ;
          end;

          //Desconto
          Print.impf(28+Mult, 63, 'DESC/ACRESC:' ,[comp17]);

          Print.impf(28+Mult, 73, DESCONTO ,[comp17]);

          //DESCONTO
{          Str := FormatFloat ( '###,###,##0.00', TotDesconto );

          While Length(Str) < 12
          do begin
             Str := ' ' + Str ;
          end;

          Print.impf(29+Mult, 63, 'DESCTO.....:' ,[comp17]);

          //Total da Venda
          Print.impf(29+Mult, 73, Str  ,[comp17]);}

          //LIQUIDO
          Str := FormatFloat ( '###,###,##0.00', ( TotSaidas + TotDescSaidas ) - ( TotEntradas + TotDescEntradas ) );

          While Length(Str) < 12
          do begin
             Str := ' ' + Str ;
          end;

          Print.impf(30+Mult, 63, 'LIQUIDO....:' ,[comp17]);

          //Total da Venda
          Print.impf(30+Mult, 73, Str  ,[comp17]);
     END;

     Pagina := Pagina + 1;
end;

procedure TFRelEnviaTrocaCaixa.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
Var
   C, I, Mult: Integer;
   Str: String;
begin
     //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
     IF (( trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_PEDIDO.VALUE)) = 'A4' ) OR ( NOT AVISTA ))
     THEN BEGIN
          If DmApp.ITENSORCAMENTO = 33
          then begin
               Mult := 0;
          end
          else begin
               Mult := 30;
          end;

          ImpRodapeFatura (Mult);
     END;
end;

procedure TFRelEnviaTrocaCaixa.CabecalhoFatura ;
VAR
   LIN, DST: INTEGER;
Begin
     If uppercase(DmApp.TIPO_CAB_FATURA) = 'RED'
     THEN BEGIN
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

          Print.ImpF(08, 01, 'CONSULTOR..: ' + CodVendedor + '  -  ' + NomeVendedor, [COMP17]);
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
     END
     ELSE BEGIN
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
          Print.ImpF(07, 09,  Razao       , [COMP17, NEGRITO]);

          Print.ImpF(07, 45, 'NOME. FANT.: ' + NomeCliente , [COMP17]);

          Print.ImpF(08, 01, 'ENDERECO...: ' + Endereco    , [COMP17]);
          Print.ImpF(08, 45, 'CIDADE.....: ' + NomeCidade  , [COMP17]);

          Print.ImpF(09, 01, 'BAIRRO.....: ' + NomeBairro  , [COMP17]);
          Print.ImpF(09, 45, 'ESTADO.....: ' + EstadoCep   , [COMP17]);

          Print.ImpF(10, 01, 'CNPJ/CPF...: ' + Documentos  , [COMP17]);
          Print.ImpF(10, 45, 'IE/RG......: ' + IERG        , [COMP17]);

          Print.ImpF(11, 01, 'CONSULTOR..: ' + CodVendedor + '  -  ' + NomeVendedor, [COMP17]);
          Print.ImpF(11, 45, 'CONDICOES..: ' + Condicoes  + ' ' + TipoDoc , [COMP17]);

          Print.ImpF(12, 01, 'MOTORISTA..: '               , [COMP17]);
          Print.ImpF(12, 45, 'PRAZO......: '               , [COMP17]);

          Print.ImpF(13, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);
          Print.ImpF(13, 01, 'OBS........: ' + OBSERVACAO  , [COMP17]);

          Print.ImpF(14, 01, Replicate('-', 80), [Normal]);

          //DADOS DOS PRODUTOS
          //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
          IF DmApp.IMP_DESC_AGRUPADO = 'S'
          THEN BEGIN
               Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO                                                  UNIDADE            UNIT                     TOTAL', [Comp17]);
          END
          ELSE BEGIN
               Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO                                                  UNIDADE            UNIT     DESCONTO        TOTAL', [Comp17]);
          END;

          Print.ImpF(16, 01, Replicate('-', 80), [Normal]);

          linha  := 17;
     END;
end;


procedure TFRelEnviaTrocaCaixa.PrintNewPage(Sender: TObject; Pagina: Integer);
VAR
   LIN, DST: INTEGER;
begin
     //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
     IF (( trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_PEDIDO.VALUE)) = 'A4' ) OR ( NOT AVISTA ))
     THEN BEGIN
          CabecalhoFatura;
     END;
end;

procedure TFRelEnviaTrocaCaixa.FormShow(Sender: TObject);
Var
   Str: String;
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
     Str := '';

     TIPO := 'TROCAS' ;

     Str := Str + IntToStr(PedidoNumero);

     WHILE LENGTH(STR) < 11 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     Str := 'Troca Nº =>' + Str ;

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

procedure TFRelEnviaTrocaCaixa.ActPreviewExecute(Sender: TObject);
begin
     //Testa a Impressora
     Opcao := 'N' ;

     PAGINA := 1;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;


Procedure TFRelEnviaTrocaCaixa.CorpoFatura ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado, VlrBruto: Real;
   Cont: Integer;
begin
     With DmVendas do
     begin
          VerPessoa ( Consulta_TrocaPESSOA_FJ.Value );

          If (( trim(Consulta_TrocaNOME_CONSUMIDOR.value) = '' ) or ( Consulta_Trocapessoa_fj.value <> 1 )) 
          then begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          end
          else begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Consulta_TrocaNOME_CONSUMIDOR.value ;
          end;

          NomeCliente  := Ver_PessoaFANTASIA.Value           ;
          Data         := DateToStr(Consulta_TrocaDATA.Value);
          OBSERVACAO   := Consulta_TrocaOBSERVACAO.Value     ;
          NomeVendedor := Consulta_TrocaNOME_VENDEDOR.Value   ;
          CodVendedor  := Consulta_TrocaVENDEDOR.asstring;
          TipoDoc      := Consulta_TrocaTIPO_DOCTO.Value  ;
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
          Condicoes    := Consulta_TrocaNOME_FORMA.Value      ;
          NPedido      := preenche(IntToStr(PedidoNumero),'0',6);
          Peso         := Formatfloat('###,###,##0.00', 0);
          Volume       := Formatfloat('###,###,##0.00', 0);
          Liquido      := Formatfloat('###,###,##0.00', Consulta_TrocaLiquido.value );
          VlrEntrada   := Formatfloat('###,###,##0.00', Consulta_TrocaEntrada.Value);
          LocalCobranca:= Consulta_TrocaLocal_COBRANCA.Value ;

          TotDesconto  := Consulta_TrocaDESC_ACRESC.Value ;

          TotDescSaidas   := Consulta_TrocaDESC_ACRESC_2.VALUE  ;
          TotDescEntradas := Consulta_TrocaDESC_ACRESC.VALUE;

          Consulta_Troca_Parc.FetchAll ;

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
          Item       := 1;
          TotProdutos:= 0;

          //Peso e Volume
          TotEntradas := 0;
          TotSaidas   := 0;

          TotDesconto := 0;
          VlrBruto    := 0;
          VlrLiquido  := 0;

          ////
          Consulta_Troca_Itens.First;

          While Not Consulta_Troca_Itens.Eof
          Do Begin

             Print.ImpF(Linha, 01, Consulta_Troca_ItensPRODUTO.Value , [Comp17]);

             If Consulta_Troca_ItensTipo.Value = 'E'
             THEN BEGIN
                  TotEntradas     := TotEntradas     + Consulta_Troca_ItensTotal.Value ;

//                  TotDescEntradas := TotDescEntradas + ( Consulta_Troca_ItensDESCONTO.Value * Consulta_Troca_ItensQUANTIDADE.Value );

                  Print.ImpF(Linha, 11, 'E' , [Comp17]);
             END
             ELSE BEGIN
                  TotSaidas       := TotSaidas       + Consulta_Troca_ItensTotal.Value ;

//                  TotDescSaidas   := TotDescSaidas   + ( Consulta_Troca_ItensDESCONTO.Value * Consulta_Troca_ItensQUANTIDADE.Value );

                  Print.ImpF(Linha, 11, 'S' , [Comp17]);
             END;

             If DmaPP.CASAS_QNTDE = 'N'
             THEN BEGIN
                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0', Consulta_Troca_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;
             END
             ELSE BEGIN
                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Troca_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;
             END;

             TotProdutos := TotProdutos + Consulta_Troca_ItensQUANTIDADE.Value ;

             Print.impf(Linha, 10, STR ,[comp17]);

             Print.ImpF(Linha, 17, Consulta_Troca_ItensNOME_PRODUTO.Value, [Comp17]);

             //VOLUME
             TotVolume := TotVolume + Consulta_Troca_ItensVOLUME.Value ;

             //PESO
             TotPeso   := TotPeso + Consulta_Troca_ItensPESO.Value ;

             //UNIDADE
             Print.ImpF(Linha, 51, Consulta_Troca_ItensUNIDADE.Value + ' C/ ' + Consulta_Troca_ItensSUBUNIDADE.TEXT, [Comp17]);

             IF DmApp.IMP_DESC_AGRUPADO = 'S'
             THEN BEGIN
                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Troca_ItensPRC_UNITARIO.Value - Consulta_Troca_ItensDESCONTO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 59, STR ,[comp17]);
             END
             ELSE BEGIN
                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Troca_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 59, STR ,[comp17]);

                  //DESCONTO
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Troca_ItensDESCONTO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 66, STR ,[comp17]);
             END;

             TotDesconto := TotDesconto + ( Consulta_Troca_ItensDESCONTO.Value * Consulta_Troca_ItensQUANTIDADE.Value );

             VlrBruto   := VlrBruto   + ( Consulta_Troca_ItensPRC_UNITARIO.Value *  Consulta_Troca_ItensQUANTIDADE.Value );
             VlrLiquido := VlrLiquido + ( (Consulta_Troca_ItensPRC_UNITARIO.Value - Consulta_Troca_ItensDESCONTO.Value ) *  Consulta_Troca_ItensQUANTIDADE.Value  );

             //TOTAL
             STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Troca_ItensTotal.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 74, STR ,[comp17]);

             Consulta_Troca_Itens.Next;

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

          TotDesconto := TotDesconto * -1 ;

          Liquido      := Formatfloat('###,###,##0.00', VlrLiquido + Consulta_TrocaDESC_ACRESC.Value );

          IF DmApp.IMP_DESC_AGRUPADO = 'S'
          THEN BEGIN
               Total  := Formatfloat('###,###,##0.00', VlrBruto + TotDesconto );

               //Acrescenta o Total dos descontos Unitários com o desconto total
               TotDesconto := Consulta_TrocaDESC_ACRESC.Value ;
          END
          ELSE BEGIN
               //Acrescenta o Total dos descontos Unitários com o desconto total
               TotDesconto := TotDesconto +  Consulta_TrocaDESC_ACRESC.Value ;

               Total  := Formatfloat('###,###,##0.00', VlrBruto );
          END;
     end;
end;

Procedure TFRelEnviaTrocaCaixa.ImprimeFatura40Colunas ;
Var
   Data_Parc, Str : String ;
   VlrLiquido, VlrParcelado, VlrBruto: Real;
   Cont: Integer;
   Incremento: Integer;
begin
     With DmVendas do
     begin
          VerPessoa ( Consulta_TrocaPESSOA_FJ.Value );

          If (( trim(Consulta_TrocaNOME_CONSUMIDOR.value) = '' ) or ( Consulta_Trocapessoa_fj.value <> 1 ))
          then begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          end
          else begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Consulta_TrocaNOME_CONSUMIDOR.value ;
          end;

          NomeCliente  := Ver_PessoaFANTASIA.Value           ;
          Data         := DateToStr(Consulta_TrocaDATA.Value);
          OBSERVACAO   := Consulta_TrocaOBSERVACAO.Value     ;
          NomeVendedor := Consulta_TrocaNOME_VENDEDOR.Value   ;
          CodVendedor  := Consulta_TrocaVENDEDOR.asstring;
          TipoDoc      := Consulta_TrocaTIPO_DOCTO.Value  ;
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
          Condicoes    := Consulta_TrocaNOME_FORMA.Value      ;
          NPedido      := preenche(IntToStr(PedidoNumero),'0',6);
          Peso         := Formatfloat('###,###,##0.00', 0);
          Volume       := Formatfloat('###,###,##0.00', 0);
          Liquido      := Formatfloat('###,###,##0.00', Consulta_TrocaLiquido.value );
          VlrEntrada   := Formatfloat('###,###,##0.00', Consulta_TrocaEntrada.Value);
          LocalCobranca:= Consulta_TrocaLocal_COBRANCA.Value ;

          TotDesconto  := Consulta_TrocaDESC_ACRESC.Value ;

          TotDescSaidas   := Consulta_TrocaDESC_ACRESC_2.VALUE  ;
          TotDescEntradas := Consulta_TrocaDESC_ACRESC.VALUE;

          Consulta_Troca_Parc.FetchAll ;

          IF DMAPP.VIASVISTA = ''
          THEN BEGIN
               If ( VIAS.Value > 0 ) and ( VIAS.Value < 3 )
               then begin
                    Print.NumerodeCopias := Trunc( VIAS.Value ) ;
               end
               else begin
                    Print.NumerodeCopias := 1;
               end;
          END
          ELSE BEGIN
               Print.NumerodeCopias := STRTOINT(DMAPP.VIASVISTA);
          END;

          //PORTA DE IMPRESSAO
          If ( Consulta_VendaAvista.Value = 'S' ) and ( Consulta_Venda_Parc.RecordCount <= 0 )
          THEN BEGIN
               IF TRIM(DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_VISTA.VALUE ) <> ''
               THEN BEGIN
                    SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_VISTA.VALUE )       ;
                    print.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_VISTA.VALUE );
                    Print.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_VISTA.VALUE  ;
               END;
          END
          ELSE BEGIN
               IF TRIM(DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_PRAZO.VALUE ) <> ''
               THEN BEGIN
                    SetDefaultPrinter( DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_PRAZO.VALUE )       ;
                    print.SetPrinterbyPorta ( DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_PRAZO.VALUE );
                    Print.PortaComunicacao := DmApp.Perfil_ComputadorPORTA_IMP_PEDIDO_PRAZO.VALUE  ;
               END;
          END;

          Print.TamanhoQteLinhas := Consulta_Troca_Itens.RecordCount + 23;

          If Opcao = 'S'
          then
              Print.OpcoesPreview.Preview := TRUE
          else
              Print.OpcoesPreview.Preview := FALSE ;

          print.Abrir;

          //
          Item       := 1;
          TotProdutos:= 0;

          //Peso e Volume
          TotEntradas := 0;
          TotSaidas   := 0;

          TotDesconto := 0;
          VlrBruto    := 0;
          VlrLiquido  := 0;

          Print.ImpF(01, 01, Replicate('-', 52) ,[COMP17,NEGRITO]);

          If DmApp.Perfil_ComputadorIMP_NEGRITO_EMPRESA_36.Value = 'S'
          THEN BEGIN
               Print.ImpF(02, 01, DMAPP.Nome ,[COMP17, NEGRITO]);
               Print.ImpF(03, 01, DMAPP.ENDER + ' FONE ' + DmApp.FONE  ,[COMP17]);
          END
          ELSE BEGIN
               Print.ImpF(02, 01, DMAPP.Nome ,[COMP17, NEGRITO]);
               Print.ImpF(03, 01, DMAPP.ENDER + ' FONE ' + DmApp.FONE  ,[COMP17]);
          END;

          Print.ImpF(04, 01, 'TROCA ' + NPEDIDO,[COMP17, NEGRITO]);
          Print.ImpF(04, 12, NomeVendedor,[COMP17]);

          Print.ImpF(05, 01, 'NOME ' + Razao,[COMP17]);

          Incremento := 0;

          IF ( TRIM( Endereco ) <> '' )
          THEN BEGIN
               Print.ImpF(06, 01, 'END  ' + TRIM( Endereco   ),[COMP17]);
               Print.ImpF(07, 01, 'BAI  ' + TRIM( NomeBairro ),[COMP17]);
               Print.ImpF(08, 01, 'CID  ' + TRIM( NomeCidade ),[COMP17]);

               Incremento := 3;
          END;

          Print.ImpF(06 + Incremento, 01, 'DATA ' + Data + ' ' + Timetostr(time),[COMP17]);

          Print.ImpF(07 + Incremento, 01, 'FONE ' + NUMEROFONE ,[COMP17]);

          Print.ImpF(08 + Incremento, 01, Replicate('-', 52),[COMP17]);
          Print.ImpF(09 + Incremento, 01, DmApp.PDV_MENSAGEM ,[COMP17]);

          //CABECALHO DO PEDIDO
          Print.ImpF(11 + Incremento, 01, 'T'  ,[COMP17]);
          Print.ImpF(11 + Incremento, 02, 'Produto   '  ,[COMP17]);
          Print.ImpF(11 + Incremento, 13, 'Descricao '  ,[COMP17]);
          Print.ImpF(12 + Incremento, 01, '       Qtd'  ,[COMP17]);
          Print.ImpF(12 + Incremento, 15, '  Unitario'  ,[COMP17]);
          Print.ImpF(12 + Incremento, 25, '     Total'  ,[COMP17]);
          Print.ImpF(13 + Incremento, 01, Replicate('=', 52),[COMP17]);

          ////
          Consulta_Troca_Itens.First;

          Linha := 14 + Incremento;

          While Not Consulta_Troca_Itens.Eof
          Do Begin
                  Print.ImpF(Linha, 01, Consulta_Troca_ItensTIPO.Value,[COMP17]);

                  Print.ImpF(Linha, 02, Consulta_Troca_ItensPRODUTO.Value,[COMP17]);

                  Print.ImpF(Linha, 12, COPY(Consulta_Troca_ItensNOME_PRODUTO.Value,1, 28),[COMP17]);

                  Linha := Linha + 1;

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Troca_ItensQUANTIDADE.Value);
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.ImpF(Linha, 01, STR ,[COMP17]);

                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Troca_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.ImpF(Linha, 15, STR ,[COMP17]);

                  TotDesconto := TotDesconto + Consulta_Troca_ItensDESCONTO.Value ;

                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Troca_ItensTotal.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.ImpF(Linha, 25, STR,[COMP17] );

                  Consulta_Troca_Itens.Next;

                  Item := Item + trunc(Consulta_Troca_ItensQUANTIDADE.Value);

                  Linha := Linha + 1;
          end;//

          Linha := Linha + 1;
          Linha := Linha + 1;

          //TOTAL SEM DESCONTO
          STR :=  TOTAL ;
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 20, '--------------------',[COMP17]);
          Linha := Linha + 1;
          Print.ImpF(Linha, 01, 'TOTAL..........:',[COMP17]);
          Print.ImpF(Linha, 25, STR,[COMP17] );

          Linha := Linha + 1;

          //DESCONTO
          STR :=  DESCONTO ;
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 01, 'DESCONTO.......:',[COMP17]);
          Print.ImpF(Linha, 25, STR,[COMP17] );

          Linha := Linha + 1;

          //TOTAL
          STR :=  Liquido ;
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 01, 'LIQUIDO........:',[COMP17]);
          Print.ImpF(Linha, 25, STR,[COMP17] );

          Linha := Linha + 1;

          //PECAS
          STR :=  FORMATFLOAT ('###,###,##0', Item );
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 01, 'TOTAL DE PECAS.:',[COMP17]);
          Print.ImpF(Linha, 25, STR,[COMP17]);

          Linha := Linha + 1;

          Print.ImpF(Linha, 01, '-----------------FORMAS DE PAGAMENTO----------------',[COMP17]);

          Linha := Linha + 1;
          Linha := Linha + 1;

          Str :=  Condicoes;

          WHILE LENGTH(STR) < 30 DO
          BEGIN
               STR := STR + '.';
          END;

          Print.ImpF(Linha, 01, Str ,[COMP17]);

          STR :=  LIQUIDO;

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 25, Str ,[COMP17]);

          Linha := Linha + 1;
          Linha := Linha + 1;

          IF ARREDONDA(CONSULTA_TrocaENTRADA.Value,2) > 0
          THEN BEGIN
               STR := FORMATFLOAT('###,###,##0.00', ARREDONDA(CONSULTA_TrocaENTRADA.Value,2)) ;

               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               DATA_PARC := 'ENTRADA' ;

               WHILE LENGTH(DATA_PARC) < 30 DO
               BEGIN
                    DATA_PARC := DATA_PARC + '.';
               END;

               Print.ImpF(Linha, 01, DATA_PARC ,[COMP17]);

               Print.ImpF(Linha, 25, STR ,[COMP17]);

               Linha := Linha + 1;
          END;

          Consulta_Troca_Parc.First ;

          while not Consulta_Troca_Parc.eof do
          begin
               Data_Parc := Consulta_Troca_ParcVENCTO.text ;

               Str := FormatFloat ('###,###0.00', Consulta_Troca_ParcValor.value );

               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               WHILE LENGTH(DATA_PARC) < 30 DO
               BEGIN
                    DATA_PARC := DATA_PARC + '.';
               END;

               Print.ImpF(Linha, 01, DATA_PARC ,[COMP17]);

               Print.ImpF(Linha, 25, Str ,[COMP17]);

               Consulta_Troca_Parc.next ;

               Linha := Linha + 1;
          end;

          Linha := Linha + 1;
          Linha := Linha + 1;

          Print.ImpF(Linha, 01, 'NAO VALE COMO COMPROVANTE FISCAL',[COMP17]);

          Linha := Linha + 1;

          Print.ImpF(Linha, 01, Replicate('-', 52),[COMP17]);
     end;
end;

Procedure TFRelEnviaTrocaCaixa.Imprime ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Cont: Integer;
begin
     With DmVendas do
     begin
          Proc_Imprime_Troca (PedidoNumero);

          IF Consulta_Troca_Parc.RecordCount <= 0
          THEN BEGIN
               AVISTA := TRUE ;
          END
          ELSE BEGIN
               IF Consulta_TrocaLiquido.value > 0
               THEN BEGIN
                    AVISTA := FALSE ;
               END
               ELSE BEGIN
                    AVISTA := TRUE ;
               END;
          END;

          //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
          IF (( trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_TROCA.VALUE)) = 'A4' ) OR ( NOT AVISTA ))
          THEN BEGIN
               CorpoFatura ;
          end;

          IF ( trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_TROCA.VALUE)) = '36' ) AND ( AVISTA )
          THEN BEGIN
               ImprimeFatura40Colunas ;
          end;
     End;

     //
     print.Fechar;

     If (NOT AVISTA )
     then begin
          //CHAMA O TIPO DE SAÍDA ( NOTAS PROMISSORIAS )
          FrmImprimePromissoriaTroca := TFrmImprimePromissoriaTroca.Create(Self);
          FrmImprimePromissoriaTroca.PedidoNumero := PedidoNumero ;
          FrmImprimePromissoriaTroca.Showmodal ;
     end;

     Close ;
end;

procedure TFRelEnviaTrocaCaixa.ActVisualizarExecute(Sender: TObject);
begin
     Opcao := 'S' ;

     PAGINA := 1;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;

end.


