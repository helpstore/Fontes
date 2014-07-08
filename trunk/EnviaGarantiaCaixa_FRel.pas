unit EnviaGarantiaCaixa_FRel;

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
  TFRelEnviaGarantiaCaixa = class(TForm)
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
  public
    { Public declarations }
    TIPO : String ;
    PedidoNumero: Integer ;
    Total_Orcamento, Total_Orcamento2 : Real ;

  end;

var
  FRelEnviaGarantiaCaixa: TFRelEnviaGarantiaCaixa;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, OBSERVACAO, NomeVendedor, Endereco  , NomeCidade: String;
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
     Servicos_DM;

{$R *.DFM}

procedure TFRelEnviaGarantiaCaixa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelEnviaGarantiaCaixa.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEnviaGarantiaCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmServicos.Consulta_garantia_Itens.Close ;
     DmServicos.Consulta_garantia_Parc.Close  ;
     DmServicos.Consulta_garantia.Close       ;

     DSource.DataSet.Close ;

     Action := caFree;
     FRElenviagarantiaCaixa := Nil;
end;

procedure TFRelEnviaGarantiaCaixa.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

Procedure TFRelEnviaGarantiaCaixa.ImpRodapeFatura ( Mult: Integer );
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
     DmServicos.Consulta_garantia_Parc.First;
     While ( Not DmServicos.Consulta_garantia_Parc.Eof )  AND ( C <= 4 )
     Do Begin
        //DATA
        Print.ImpF(I, 30, DateToStr(DmServicos.Consulta_garantia_ParcVENCTO.Value), [Comp17]);

        //VALOR
        STR :=  FORMATFLOAT ('###,###,##0.00', DmServicos.Consulta_garantia_ParcVALOR.Value );
        WHILE LENGTH(STR) < 10 DO
        BEGIN
             STR := ' ' + STR ;
        END;

        Print.impf(I, 37, STR ,[comp17]);

        C := C + 1;

        DmServicos.Consulta_garantia_Parc.Next;
     END;

     IF DmServicos.Consulta_garantia_Parc.Eof
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

procedure TFRelEnviaGarantiaCaixa.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
Var
   C, I, Mult: Integer;
   Str: String;
begin
     If DmApp.ITENSORCAMENTO = 33
     then begin
          Mult := 0;
     end
     else begin
          Mult := 30;
     end;

     ImpRodapeFatura (Mult);
end;

procedure TFRelEnviaGarantiaCaixa.CabecalhoFatura ;
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

          Print.ImpF(11, 01, 'CONSULTOR..: ' + NomeVendedor, [COMP17]);
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


procedure TFRelEnviaGarantiaCaixa.PrintNewPage(Sender: TObject; Pagina: Integer);
VAR
   LIN, DST: INTEGER;
begin
     CabecalhoFatura    ;
end;

procedure TFRelEnviaGarantiaCaixa.FormShow(Sender: TObject);
Var
   Str: String;
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
     Str := '';

     TIPO := 'garantiaS' ;

     Str := Str + IntToStr(PedidoNumero);

     WHILE LENGTH(STR) < 11 DO
     BEGIN
          STR := ' ' + STR ;
     END;

     Str := 'Garantia Nº =>' + Str ;

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

procedure TFRelEnviaGarantiaCaixa.ActPreviewExecute(Sender: TObject);
begin
     //Testa a Impressora
     Opcao := 'N' ;

     PAGINA := 1;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;


Procedure TFRelEnviaGarantiaCaixa.CorpoFatura ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado, VlrBruto: Real;
   Cont: Integer;
begin
     With DmServicos do
     begin
          Proc_Imprime_garantia (PedidoNumero);

          VerPessoa ( Consulta_garantiaPESSOA_FJ.Value );

          If trim(Consulta_garantiaNOME_CONSUMIDOR.value) = ''
          then begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
          end
          else begin
               Razao        := Ver_PessoaCodigo.Text + '-' + Consulta_garantiaNOME_CONSUMIDOR.value ;
          end;

          NomeCliente  := Ver_PessoaFANTASIA.Value           ;
          Data         := DateToStr(Consulta_garantiaDATA.Value);
          OBSERVACAO   := Consulta_garantiaOBSERVACAO.Value     ;
          NomeVendedor := Consulta_garantiaNOME_VENDEDOR.Value   ;
          TipoDoc      := Consulta_garantiaTIPO_DOCTO.Value  ;
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
          Condicoes    := Consulta_garantiaNOME_FORMA.Value      ;
          NPedido      := preenche(IntToStr(PedidoNumero),'0',6);
          Peso         := Formatfloat('###,###,##0.00', 0);
          Volume       := Formatfloat('###,###,##0.00', 0);
          Liquido      := Formatfloat('###,###,##0.00', Consulta_garantiaLiquido.value );
          VlrEntrada   := Formatfloat('###,###,##0.00', Consulta_garantiaEntrada.Value);
          LocalCobranca:= Consulta_garantiaLocal_COBRANCA.Value ;

          TotDesconto  := Consulta_garantiaDESC_ACRESC.Value ;

          TotDescSaidas   := Consulta_garantiaDESC_ACRESC_2.VALUE  ;
          TotDescEntradas := Consulta_garantiaDESC_ACRESC.VALUE;

          Consulta_garantia_Parc.FetchAll ;

          IF Consulta_garantia_Parc.RecordCount <= 0
          THEN BEGIN
               AVISTA := TRUE ;
          END
          ELSE BEGIN
               IF Consulta_garantiaLiquido.value > 0
               THEN BEGIN
                    AVISTA := FALSE ;
               END
               ELSE BEGIN
                    AVISTA := TRUE ;
               END;
          END;

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
          Consulta_garantia_Itens.First;

          While Not Consulta_garantia_Itens.Eof
          Do Begin

             Print.ImpF(Linha, 01, Consulta_garantia_ItensPRODUTO.Value , [Comp17]);

             If Consulta_garantia_ItensTipo.Value = 'E'
             THEN BEGIN
                  TotEntradas     := TotEntradas     + Consulta_garantia_ItensTotal.Value ;

//                  TotDescEntradas := TotDescEntradas + ( Consulta_garantia_ItensDESCONTO.Value * Consulta_garantia_ItensQUANTIDADE.Value );

                  Print.ImpF(Linha, 11, 'E' , [Comp17]);
             END
             ELSE BEGIN
                  TotSaidas       := TotSaidas       + Consulta_garantia_ItensTotal.Value ;

//                  TotDescSaidas   := TotDescSaidas   + ( Consulta_garantia_ItensDESCONTO.Value * Consulta_garantia_ItensQUANTIDADE.Value );

                  Print.ImpF(Linha, 11, 'S' , [Comp17]);
             END;

             If DmaPP.CASAS_QNTDE = 'N'
             THEN BEGIN
                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0', Consulta_garantia_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;
             END
             ELSE BEGIN
                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_garantia_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;
             END;

             TotProdutos := TotProdutos + Consulta_garantia_ItensQUANTIDADE.Value ;

             Print.impf(Linha, 10, STR ,[comp17]);

             Print.ImpF(Linha, 17, Consulta_garantia_ItensNOME_PRODUTO.Value, [Comp17]);

             //VOLUME
             TotVolume := TotVolume + Consulta_garantia_ItensVOLUME.Value ;

             //PESO
             TotPeso   := TotPeso + Consulta_garantia_ItensPESO.Value ;

             //UNIDADE
             Print.ImpF(Linha, 51, Consulta_garantia_ItensUNIDADE.Value + ' C/ ' + Consulta_garantia_ItensSUBUNIDADE.TEXT, [Comp17]);

             IF DmApp.IMP_DESC_AGRUPADO = 'S'
             THEN BEGIN
                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_garantia_ItensPRC_UNITARIO.Value - Consulta_garantia_ItensDESCONTO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 59, STR ,[comp17]);
             END
             ELSE BEGIN
                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_garantia_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 59, STR ,[comp17]);

                  //DESCONTO
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_garantia_ItensDESCONTO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 66, STR ,[comp17]);
             END;

             TotDesconto := TotDesconto + ( Consulta_garantia_ItensDESCONTO.Value * Consulta_garantia_ItensQUANTIDADE.Value );

             VlrBruto   := VlrBruto   + ( Consulta_garantia_ItensPRC_UNITARIO.Value *  Consulta_garantia_ItensQUANTIDADE.Value );
             VlrLiquido := VlrLiquido + ( (Consulta_garantia_ItensPRC_UNITARIO.Value - Consulta_garantia_ItensDESCONTO.Value ) *  Consulta_garantia_ItensQUANTIDADE.Value  );

             //TOTAL
             STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_garantia_ItensTotal.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 74, STR ,[comp17]);

             Consulta_garantia_Itens.Next;

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

          Liquido      := Formatfloat('###,###,##0.00', VlrLiquido + Consulta_garantiaDESC_ACRESC.Value );

          IF DmApp.IMP_DESC_AGRUPADO = 'S'
          THEN BEGIN
               Total  := Formatfloat('###,###,##0.00', VlrBruto + TotDesconto );

               //Acrescenta o Total dos descontos Unitários com o desconto total
               TotDesconto := Consulta_garantiaDESC_ACRESC.Value ;
          END
          ELSE BEGIN
               //Acrescenta o Total dos descontos Unitários com o desconto total
               TotDesconto := TotDesconto +  Consulta_garantiaDESC_ACRESC.Value ;

               Total  := Formatfloat('###,###,##0.00', VlrBruto );
          END;
     end;
end;


Procedure TFRelEnviaGarantiaCaixa.Imprime ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Cont: Integer;
begin
     With DmServicos do
     begin
          //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
          CorpoFatura ;
     End;
     //
     print.Fechar;

     Close ;
end;

procedure TFRelEnviaGarantiaCaixa.ActVisualizarExecute(Sender: TObject);
begin
     Opcao := 'S' ;

     PAGINA := 1;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;

end.


