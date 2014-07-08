 unit CopiaNota_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   DBCtrls,   cxGraphics,
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
  TFrmCopiaNota = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    btnimprimir: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    Print: TRDprint;
    ActBuscarProd: TAction;
    LBLPEDIDO: TcxLabel;
    btnver: TcxButton;
    DSource: TDataSource;
    ActAlteraNumero: TAction;
    Vias: TdxSpinEdit;
    ActVer: TAction;
    Extenso: TValorPorExtenso;
    ActImprimir: TAction;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ImprimeFatura;
    procedure ActVerExecute(Sender: TObject);
    procedure Imprime( Op: String);
    procedure ActImprimirExecute(Sender: TObject);

  private
    { Private declarations }
    FinalArq, FinalCli : Boolean ;
    UltNumero: Integer;
  public
    { Public declarations }
    PedidoNumero: Integer ;
    NumeroNf    : Integer ;
    Tipo        : String  ;
    NumeroCf    : Integer ;
    AcumuladoNf : Extended;//PARA NOTAS COM MAIS DE UMA PAGINA
    VendaParcelada : Boolean ;

  end;

var
  FrmCopiaNota: TFrmCopiaNota;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, OBSERVACAO, NomeVendedor, Endereco  , NomeCidade: String;
  NomeBairro, EstadoCep , NumeroFone, Documentos, IERG , Condicoes : String ;
  Opcao, TipoDoc, Cep, Fone, Fax, InscMun, UF, Numero : String;
  Empresa, Total, Desconto, Liquido, Peso, Volume: String;
  Vencimento: TDateTime;
  TotPeso, TotVolume: Extended ;
  LocalCobranca, NumeroBoleto, Item: Integer;
  NF_CF, Str: String;
  TotProdutos, TotDesconto: Extended ;
  Detransporte: Boolean ;


  //TOTALIZADORES DA NF
  TOTALNOTA, ICM, IPI, BASECALCULOICM, BASECALCULOSUBSTITUICAO: Extended ;
  VALORTOTAL, ISS, VALORICMSSUB, DESPESAS, VALORFRETE: Extended ;
  SEGURO, FRETE, DESC_ACRESC: Extended ;
  MENSAGEMREDUCAO: String ;
implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Vendas_Dm,
     Cadastros_DM;

{$R *.DFM}

procedure TFrmCopiaNota.FormCreate(Sender: TObject);
begin
     // Se o Usuário for Supervisor
     If DMUsuarios.Direito = 'SUPERVISOR'
     Then
         DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
     Else
         If DMUsuarios.Objeto = Self.Name
         Then
             AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmCopiaNota.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmCopiaNota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmVendas.Consulta_Venda_Itens.Close ;
     DmVendas.Consulta_Venda_Parc.Close  ;
     DmVendas.Consulta_Venda.Close       ;

     Action := caFree;

     FrmCopiaNota := Nil;
end;

procedure TFrmCopiaNota.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCopiaNota.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
Var
   Mult, C, I: Integer;
   Str: String;
begin
     If DmApp.ITENSORCAMENTO = 33
     then begin
          Mult := 0;
     end
     else begin
          Mult := 30;
     end;

     // Rodapé...
     Print.ImpF(27+Mult, 01, Replicate('-', 80), [Normal]);

     Print.ImpF(28+Mult, 01, razao, [comp17]);

     I := 28+Mult ;

     C := 0  ;

     //Forma de Parcelamento
     DmVendas.Consulta_Venda_Parc.First;
     While Not DmVendas.Consulta_Venda_Parc.Eof
     Do Begin
        IF C = 0
        THEN BEGIN
             //DATA
             Print.ImpF(I+Mult, 30, DateToStr(DmVendas.Consulta_Venda_ParcVENCTO.Value), [Comp17]);

             //VALOR
             STR :=  FORMATFLOAT ('###,###,##0.00', DmVendas.Consulta_Venda_ParcVALOR.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(I+Mult, 37, STR ,[comp17]);

             C := 1;

             DmVendas.Consulta_Venda_Parc.Next;
        END
        ELSE BEGIN
             Print.ImpF(I+Mult, 47, DateToStr(DmVendas.Consulta_Venda_ParcVENCTO.Value), [Comp17]);

             //QNTDE
             STR :=  FORMATFLOAT ('###,###,##0.00', DmVendas.Consulta_Venda_ParcVALOR.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(I+Mult, 54, STR ,[comp17]);

             C := 0;

             DmVendas.Consulta_Venda_Parc.Next;

             I := I + 1;
        END;
     END;

     IF DmVendas.Consulta_Venda_Parc.Eof
     THEN BEGIN
          STR :=  FORMATFLOAT ('###,###,##0.00', IteM - 1 );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(31+Mult, 01, 'ITENS.......:' ,[comp17]);

          Print.ImpF(31+Mult, 10, Str, [COMP17]);

          While Length(TOTAL) < 12
          do begin
             TOTAL := ' ' + TOTAL ;
          end;

          //Total Bruto
          Print.impf(28+Mult, 73, TOTAL    ,[comp17]);

          Print.impf(28+Mult, 63, 'TOTAL......:' ,[comp17]);

          While Length(DESCONTO) < 12
          do begin
             DESCONTO := ' ' + DESCONTO ;
          end;

          //Desconto
          Print.impf(29+Mult, 73, DESCONTO ,[comp17]);

          Print.impf(29+Mult, 63, 'DESC/ACRESC:' ,[comp17]);

          While Length(LIQUIDO) < 12
          do begin
             LIQUIDO := ' ' + LIQUIDO ;
          end;

          Print.impf(30+Mult, 63, 'LIQUIDO....:' ,[comp17]);

          //Total da Venda
          Print.impf(30+Mult, 73, LIQUIDO  ,[comp17]);

          //PESO E VOLUME
          STR :=  FORMATFLOAT ('###,###,##0.00', TotVolume );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(31+Mult, 47, 'VOLUME.:' ,[comp17]);

          Print.ImpF(31+Mult, 53, Str, [COMP17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', TotPeso );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(31+Mult, 63, 'PESO.......:' ,[comp17]);

          Print.ImpF(31+Mult, 73, Str, [COMP17]);
     END;
end;

procedure TFrmCopiaNota.PrintNewPage(Sender: TObject; Pagina: Integer);
Var
   Lin, Dst: Integer;
   Dpl     : Integer;
   NumColuna, Coluna, Largura, ColunaAtual: Integer ;
   ES: String;
begin
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
     Print.ImpF(12, 25, 'NF/CF......: ' + NF_CF       , [COMP17]);
     Print.ImpF(12, 45, 'PRAZO......: '               , [COMP17]);

     Print.ImpF(13, 01, 'OBS........: ' + OBSERVACAO  , [COMP17]);
     Print.ImpF(13, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);

     Print.ImpF(14, 01, Replicate('-', 80), [Normal]);

     //DADOS DOS PRODUTOS
     //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
     Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO                                                  UNIDADE            UNIT     DESCONTO        TOTAL', [Comp17]);
     Print.ImpF(16, 01, Replicate('-', 80), [Normal]);

     linha  := 17;
end;

procedure TFrmCopiaNota.FormShow(Sender: TObject);
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

        Tipo := 'COPIA DA NOTA' ;

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
           Else Begin
                ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
                Exit;
           End;
     End;
end;

procedure TFrmCopiaNota.EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFrmCopiaNota.ImprimeFatura;
begin
     With DmVendas do
     begin
          Proc_Imprime_Venda (PedidoNumero);

          If Consulta_Venda_Parc.RecordCount > 0
          then begin
               VendaParcelada := True ;
          end
          else begin
               VendaParcelada := False ;
          end;

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

          If Endereco = '< NAO ESPECIFICADO >'
          then
              Endereco := '';

          NomeCidade   := Ver_PessoaCIDADE.Value;

          If NomeCidade = '< NAO ESPECIFICADO >'
          then
              NomeCidade := '';

          NomeBairro   := Ver_PessoaBAIRRO.Value;

          If NomeBairro = '< NAO ESPECIFICADO >'
          then
              NomeBairro := '';

          EstadoCep    := Ver_PessoaUF.Value + '   ,CEP ' + Ver_PessoaCEP.Value;
          Cep          := Ver_PessoaCEP.Value ;
          NumeroFone   := Ver_PessoaFONE.Value + '/' + Ver_PessoaFAX.Value;
          Fone         := Ver_PessoaFONE.Value ;
          Fax          := Ver_PessoaFAX.Value  ;
          If length(Ver_PessoaCPF_CGC.Value) > 11
          then begin
               Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
          end
          else begin
               Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
          end;
          IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
          Condicoes         := Consulta_VendaNOME_FORMA.Value      ;
          NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
          Peso              := Formatfloat('###,###,##0.00', Consulta_VendaPeso.Value);
          Volume            := Formatfloat('###,###,##0.00', Consulta_VendaVolume.Value);
          Total             := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value);
          Desconto          := Formatfloat('###,###,##0.00', Consulta_VendaDESC_ACRES.Value);
          Liquido           := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
          LocalCobranca     := Consulta_VendaLocal_COBRANCA.Value ;
          NF_CF             := Consulta_VendaNUM_NF.TEXT          ;
          
          IF TRIM(NF_CF) = '0'
          THEN BEGIN
               IF (Consulta_VendaNUM_CUPOM.Text) <> '0'
               THEN BEGIN
                    NF_CF := '0/' + Consulta_VendaNUM_CUPOM.TEXT ;
               END
               ELSE BEGIN
                    NF_CF := '0/0';
               END;
          END
          ELSE BEGIN
               IF (Consulta_VendaNUM_CUPOM.Text) <> '0'
               THEN BEGIN
                    NF_CF := NF_CF + Consulta_VendaNUM_CUPOM.TEXT ;
               END
               ELSE BEGIN
                    NF_CF := NF_CF + '/0' ;
               END;
          END;

          If DmApp.ITENSORCAMENTO = 33
          then begin
               Print.TamanhoQteLinhas := 33;
          end
          else begin
               Print.TamanhoQteLinhas := 66;
          end;

          If ( VIAS.Value > 0 ) and ( VIAS.Value < 3 )
          then
              Print.NumerodeCopias := Trunc( VIAS.Value )
          else
              Print.NumerodeCopias := 1;

          If Opcao = 'S'
          then
              Print.OpcoesPreview.Preview := TRUE
          else
              Print.OpcoesPreview.Preview := FALSE ;

          print.Abrir;

          //
          Item := 1;

          //Peso e Volume
          TotPeso   := 0;
          TotVolume := 0;

          Consulta_Venda_Itens.First;

          While Not Consulta_Venda_Itens.Eof
          Do Begin
             Print.ImpF(Linha, 01, Consulta_Venda_ItensPRODUTO.Value, [Comp17]);

             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.ImpF(Linha, 01, Consulta_Venda_ItensPRODUTO.Value, [Comp17]);

             //QNTDE
             STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensQUANTIDADE.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 10, STR ,[comp17]);
             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.impf(Linha, 10, STR ,[comp17]);

             Print.ImpF(Linha, 17, Consulta_Venda_ItensNOME_PRODUTO.Value, [Comp17]);
             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.ImpF(Linha, 17, Consulta_Venda_ItensNOME_PRODUTO.Value, [Comp17]);

             //VOLUME
             TotVolume := TotVolume + Consulta_Venda_ItensVOLUME.Value ;

             //PESO
             TotPeso   := TotPeso + Consulta_Venda_ItensPESO.Value ;

             //UNIDADE
             Print.ImpF(Linha, 51, Consulta_Venda_ItensUNIDADE.Value, [Comp17]);
             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.ImpF(Linha, 51, Consulta_Venda_ItensUNIDADE.Value, [Comp17]);

             //UNITARIO
             STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 59, STR ,[comp17]);
             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.impf(Linha, 59, STR ,[comp17]);

             //DESCONTO
             STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensDESCONTO.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 66, STR ,[comp17]);
             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.impf(Linha, 66, STR ,[comp17]);

             //TOTAL
             STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensTotal.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(Linha, 74, STR ,[comp17]);
             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.impf(Linha, 74, STR ,[comp17]);

             Consulta_Venda_Itens.Next;

             Item := Item + 1;

             //
             Inc(Linha);

             //
             If DmApp.ITENSORCAMENTO = 33
             then begin
                  If Linha >= 25
                  Then
                      Print.Novapagina;
             end
             else begin
                  If Linha >= 58
                  Then
                      Print.Novapagina;
             end;
          END;

          //
          print.Fechar;
     end;

     Close ;

END;

procedure TFrmCopiaNota.Imprime ( Op: String );
var
   Prod: String ;
begin
     //TOTALIZADORES DA NF
     TotPeso                 := 0;
     TotVolume               := 0;
     TOTALNOTA               := 0;
     DESC_ACRESC             := 0;
     VALORTOTAL              := 0;
     ISS                     := 0;
     ICM                     := 0;
     IPI                     := 0;
     VALORICMSSUB            := 0;
     BASECALCULOICM          := 0;
     BASECALCULOSUBSTITUICAO := 0;
     DESPESAS                := 0;
     VALORFRETE              := 0;
     SEGURO                  := 0;
     FRETE                   := 0;
     MENSAGEMREDUCAO         := '';

     Opcao := Op ;

     ImprimeFatura ;
end;

procedure TFrmCopiaNota.ActVerExecute(Sender: TObject);
begin
     Imprime ( 'S' );
end;

procedure TFrmCopiaNota.ActImprimirExecute(Sender: TObject);
begin
     Imprime ( 'N' );
end;

end.

