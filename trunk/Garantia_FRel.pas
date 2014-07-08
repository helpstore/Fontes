unit Garantia_FRel;

interface

uses
  Windows, Messages, SysUtils,
   Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, cxGraphics, cxControls,
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
  TFRelGarantia = class(TForm)
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
    LblTipo: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure ActVisualizarExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Cabecalho ;
    Procedure Corpo     ;
  public
    { Public declarations }
    TIPO : String ;
    PedidoNumero: Integer ;
  end;

var
  FRelGarantia: TFRelGarantia;
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
     Vendas_Dm ;

{$R *.DFM}

procedure TFRelGarantia.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelGarantia.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelGarantia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmVendas.Consulta_Venda.Close ;

     Action := caFree;
     FRelGarantia := Nil;
end;


procedure TFRelGarantia.Cabecalho ;
VAR
   LIN, DST: INTEGER;
Begin
          Print.ImpF(01, 01, trim(Empresa), [NORMAL, negrito]);
          Print.ImpF(01, 50, 'GARANTIA' + ' ' + NPEDIDO, [NORMAL, Negrito]);
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

          Print.ImpF(09, 01, 'DATA : '+ DateTimeToStr(date()), [COMP17]);
          Print.ImpF(09, 15, 'OBS........: ' + OBSERVACAO  , [COMP17]);
          Print.ImpF(09, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);

          Print.ImpF(10, 01, Replicate('-', 80), [Normal]);

          linha  := 11;
end;

procedure TFRelGarantia.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
     Cabecalho    ;
end;

procedure TFRelGarantia.FormShow(Sender: TObject);
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

procedure TFRelGarantia.ActPreviewExecute(Sender: TObject);
begin
     //Testa a Impressora
     Opcao := 'N' ;

     PAGINA := 1;

     CORPO ;
end;

Procedure TFRelGarantia.Corpo ;
Var
   Str, Complemento, Complemento1, Complemento2, Complemento3 : String ;
   VlrLiquido, VlrParcelado, VlrBruto: Real;
   Cont: Integer;
   Unitario, TotalFatura, Porcentagem, TotalDescAcresc : Real;
begin
     With DmVendas do
     begin
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

          TotalFatura  := Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value ;

          TotalDescAcresc := Consulta_VendaDESC_ACRES.Value ;

          //NUMERO DE LINHAS
          If DmApp.ITENSORCAMENTO = 33
          then begin
               Print.TamanhoQteLinhas := 33;
          end
          else begin
               Print.TamanhoQteLinhas := 66;
          end;

          If Opcao = 'S'
          then
              Print.OpcoesPreview.Preview := TRUE
          else
              Print.OpcoesPreview.Preview := FALSE ;

          print.Abrir;

          ////
          Complemento  := COPY(Ver_Fat_Vendas_GarantiaTEXTO.Value, 1 , 120 );

          CONT := 1 ;

          while TRIM(COMPLEMENTO) <> '' do
          begin
               Complemento  := COPY(Ver_Fat_Vendas_GarantiaTEXTO.Value, CONT , 120 );

               Inc(Linha);

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

               Print.ImpF(Linha, 04, TRIM(COMPLEMENTO) , [Comp17]);

               CONT := CONT + 120;
          end;

          Inc(Linha);

          ////
          Ver_Fat_Vendas_Garantia.First;

          While Not Ver_Fat_Vendas_Garantia.Eof
          Do Begin
             Complemento  := Ver_Fat_Vendas_GarantiaPRODUTO.Value ;

             repeat

                   Complemento := Complemento + ' ' ;

             until ( length ( complemento ) > 15 );

             Complemento  := complemento + ' - ' + Ver_Fat_Vendas_GarantiaNOME.Value ;

             Print.ImpF(Linha, 04, TRIM(COMPLEMENTO) , [Comp17]);

             Complemento  := Ver_Fat_Vendas_GarantiaCOMPLEMENTO.Value;

             If trim( Complemento ) <> ''
             then begin
                  Inc(Linha);

                  Print.ImpF(Linha, 04, TRIM(COMPLEMENTO) , [Comp17]);
             end;

             Ver_Fat_Vendas_Garantia.Next;

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

          Inc(Linha);

          Print.ImpF(10, 01, Replicate('-', 80), [Normal]);

          Inc(Linha);

          Inc(Linha);

          Print.ImpF(Linha, 01, '----------------------------------------' , [Comp17]);

          Inc(Linha);

          Print.ImpF(Linha, 01, razao , [Comp17]);

          PRINT.FECHAR ;
     end;
end;


procedure TFRelGarantia.ActVisualizarExecute(Sender: TObject);
begin
     //Testa a Impressora
     Opcao := 'S' ;

     PAGINA := 1;

     CORPO ;
end;

end.


