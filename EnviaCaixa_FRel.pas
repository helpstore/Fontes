unit EnviaCaixa_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls,  
  ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppProd, ppReport,
  ppComm, ppRelatv, ppDB, ppDBPipe,   ppParameter, ppStrtch, ppRichTx,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelEnviaCaixa = class(TForm)
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
    rptSerieNF: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppSystemVariable1: TppSystemVariable;
    Cliente: TppDBText;
    ppDBText17: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    lblParcelamento: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText11: TppDBText;
    ppDBText6: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText18: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppDBText19: TppDBText;
    ppParameterList1: TppParameterList;
    ppSerieNF: TppDBPipeline;
    ppLayout: TppDBPipeline;
    rptSerieOrcaNF: TppReport;
    ppHeaderBand4: TppHeaderBand;
    ppSystemVariable3: TppSystemVariable;
    ppDBText71: TppDBText;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel23: TppLabel;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText113: TppDBText;
    ppLabel22: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel24: TppLabel;
    ppDBText115: TppDBText;
    ppDBText116: TppDBText;
    ppLabel25: TppLabel;
    ppDBText118: TppDBText;
    ppLabel26: TppLabel;
    ppDBText117: TppDBText;
    ppDBText119: TppDBText;
    ppDBText121: TppDBText;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel30: TppLabel;
    ppDBText124: TppDBText;
    ppLabel32: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLine4: TppLine;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLine3: TppLine;
    ppDBText112: TppDBText;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine7: TppLine;
    ppDBText114: TppDBText;
    ppLabel31: TppLabel;
    ppLabel33: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppDetailBand5: TppDetailBand;
    ppDBText120: TppDBText;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText125: TppDBText;
    ppDBText126: TppDBText;
    ppDBText127: TppDBText;
    ppFooterBand3: TppFooterBand;
    ppLabel20: TppLabel;
    ppDBText128: TppDBText;
    ppDBText129: TppDBText;
    ppSystemVariable5: TppSystemVariable;
    ppLabel40: TppLabel;
    ppSystemVariable6: TppSystemVariable;
    ppDBText130: TppDBText;
    ppLabel42: TppLabel;
    ppDBRichText1: TppDBRichText;
    ppLabel41: TppLabel;
    ppLine6: TppLine;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel12: TppLabel;
    ppLine5: TppLine;
    ppLabel43: TppLabel;
    ppDBRichText2: TppDBRichText;
    ppLabel21: TppLabel;
    ppDBRichText3: TppDBRichText;
    ppLabel29: TppLabel;
    ppParameterList4: TppParameterList;
    ppLayoutOrca: TppDBPipeline;
    ppSerieOrcaNF: TppDBPipeline;
    ppSerieOrcaNFppField1: TppField;
    ppSerieOrcaNFppField2: TppField;
    ppSerieOrcaNFppField3: TppField;
    ppSerieOrcaNFppField4: TppField;
    ppSerieOrcaNFppField5: TppField;
    ppSerieOrcaNFppField6: TppField;
    ppSerieOrcaNFppField7: TppField;
    ppSerieOrcaNFppField8: TppField;
    ppSerieOrcaNFppField9: TppField;
    ppSerieOrcaNFppField10: TppField;
    ppSerieOrcaNFppField11: TppField;
    ppSerieOrcaNFppField12: TppField;
    ppSerieOrcaNFppField13: TppField;
    ppSerieOrcaNFppField14: TppField;
    ppSerieOrcaNFppField15: TppField;
    ppSerieOrcaNFppField16: TppField;
    ppSerieOrcaNFppField17: TppField;
    ppSerieOrcaNFppField18: TppField;
    ppSerieOrcaNFppField19: TppField;
    ppSerieOrcaNFppField20: TppField;
    ppSerieOrcaNFppField21: TppField;
    ppSerieOrcaNFppField22: TppField;
    ppSerieOrcaNFppField23: TppField;
    ppSerieOrcaNFppField24: TppField;
    ppSerieOrcaNFppField25: TppField;
    ppSerieOrcaNFppField26: TppField;
    ppSerieOrcaNFppField27: TppField;
    ppSerieOrcaNFppField28: TppField;
    ppSerieOrcaNFppField29: TppField;
    ppSerieOrcaNFppField30: TppField;
    ppSerieOrcaNFppField31: TppField;
    ppSerieOrcaNFppField32: TppField;
    ppSerieOrcaNFppField33: TppField;
    ppSerieOrcaNFppField34: TppField;
    ppSerieOrcaNFppField35: TppField;
    ppSerieOrcaNFppField36: TppField;
    ppSerieOrcaNFppField37: TppField;
    ppSerieOrcaNFppField38: TppField;
    ppSerieOrcaNFppField39: TppField;
    ppSerieOrcaNFppField40: TppField;
    ppSerieOrcaNFppField41: TppField;
    ppSerieOrcaNFppField42: TppField;
    ppSerieOrcaNFppField43: TppField;
    ppSerieOrcaNFppField44: TppField;
    ppSerieOrcaNFppField45: TppField;
    ppSerieOrcaNFppField46: TppField;
    ppSerieOrcaNFppField47: TppField;
    ppSerieOrcaNFppField48: TppField;
    ppSerieOrcaNFppField49: TppField;
    ppSerieOrcaNFppField50: TppField;
    ppSerieOrcaNFppField51: TppField;
    ppSerieOrcaNFppField52: TppField;
    ppSerieOrcaNFppField53: TppField;
    ppSerieOrcaNFppField54: TppField;
    ppSerieOrcaNFppField55: TppField;
    ppSerieOrcaNFppField56: TppField;
    ppSerieOrcaNFppField57: TppField;
    ppSerieOrcaNFppField58: TppField;
    ppSerieOrcaNFppField59: TppField;
    ppSerieOrcaNFppField60: TppField;
    dsPedidos: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    Procedure Imprime ;
    procedure ActVisualizarExecute(Sender: TObject);
    procedure ImprimeOrcamentoSerie ;
    procedure RodapeOrcamento ;
    procedure ImprimeBoleto;

  private
    { Private declarations }
    Procedure ImpRodapeFatura ( Mult: Integer );
    Procedure ImpRodapeOrcamento ( Mult: Integer );
    procedure CabecalhoOrcamento ;
    procedure CabecalhoFatura ;
    procedure CabecalhoFaturaSerie ;
    procedure CabecalhoOrcamentoSerie ;
    Procedure ImprimeFatura40Colunas ;
    Procedure ImprimeFaturaA4 ;
    Procedure CorpoFatura     ;
    Procedure CorpoOrcamento  ;
    Function  FormataMP20CI ( Str : String ) : String;

  public
    { Public declarations }
    TIPO, TIPO_VND: String ;
    PedidoNumero: Integer ;
    Aba : integer;
    Total_Orcamento, Total_Orcamento2 : Real ;
  end;

var
  FRelEnviaCaixa: TFRelEnviaCaixa;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa, PedFechado, Requisicao: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, Data_Caixa, OBSERVACAO, NomeVendedor, Endereco  , NomeCidade: String;
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
     NotaPromissoria_FRel,
     Cadastros_DM, Vendas_DM2;

{$R *.DFM}

procedure TFRelEnviaCaixa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelEnviaCaixa.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelEnviaCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DmVendas <> Nil
     then begin
          DmVendas.Consulta_Venda_Itens.Close ;
          DmVendas.Consulta_Venda_Parc.Close ;
          DmVendas.Consulta_Venda.Close ;
          DSource.DataSet.Close ;
     end;

     Action := caFree;
     FRElenviaCaixa := Nil;
end;

procedure TFRelEnviaCaixa.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

Procedure TFRelEnviaCaixa.ImpRodapeFatura ( Mult: Integer );
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
     DmVendas.Consulta_Venda_Parc.First;
     While Not DmVendas.Consulta_Venda_Parc.Eof
     Do Begin
        IF C = 0
        THEN BEGIN
             //DATA
             Print.ImpF(I, 30, DateToStr(DmVendas.Consulta_Venda_ParcVENCTO.Value), [Comp17]);

             //VALOR
             STR :=  FORMATFLOAT ('###,###,##0.00', DmVendas.Consulta_Venda_ParcVALOR.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(I, 37, STR ,[comp17]);

             C := 1;

             DmVendas.Consulta_Venda_Parc.Next;
        END
        ELSE BEGIN
             Print.ImpF(I, 47, DateToStr(DmVendas.Consulta_Venda_ParcVENCTO.Value), [Comp17]);

             //QNTDE
             STR :=  FORMATFLOAT ('###,###,##0.00', DmVendas.Consulta_Venda_ParcVALOR.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(I, 54, STR ,[comp17]);

             C := 0;

             DmVendas.Consulta_Venda_Parc.Next;

             I := I + 1;
        END;
     END;

     IF DmVendas.Consulta_Venda_Parc.Eof
     THEN BEGIN
          If DmaPP.CASAS_QNTDE = 'N'
          THEN BEGIN
               STR :=  FORMATFLOAT ('###,###,##0', TotProdutos );

               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.impf(29+Mult, 01, 'PRODUTOS....:' ,[comp17]);

               Print.ImpF(29+Mult, 10, Str, [COMP17]);
          END
          ELSE BEGIN
               STR :=  FORMATFLOAT ('###,###,##0.00', TotProdutos );

               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.impf(29+Mult, 01, 'PRODUTOS....:' ,[comp17]);

               Print.ImpF(29+Mult, 10, Str, [COMP17]);
          END;

          STR :=  FORMATFLOAT ('###,###,##0.00', IteM - 1 );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          Print.impf(30+Mult, 01, 'ITENS.......:' ,[comp17]);

          Print.ImpF(30+Mult, 10, Str, [COMP17]);

          While Length(TOTAL) < 12
          do begin
             TOTAL := ' ' + TOTAL ;
          end;

          if ( DMVendas.Consulta_Venda_Itens.eof )
          then begin
               If DmaPP.EMBUTIR_JUROS = 'S'
               THEN BEGIN
                    While Length(LIQUIDO) < 12
                    do begin
                       LIQUIDO := ' ' + LIQUIDO ;
                    end;

                    //Total Bruto
                    Print.impf(27+Mult, 73, LIQUIDO  ,[comp17]);

                    Print.impf(27+Mult, 63, 'TOTAL......:' ,[comp17]);

                    DESCONTO := FORMATFLOAT('###,###,##0.00', 0 );

                    While Length(DESCONTO) < 12
                    do begin
                       DESCONTO := ' ' + DESCONTO ;
                    end;

                    //Desconto
                    Print.impf(28+Mult, 73, DESCONTO ,[comp17]);

                    Print.impf(28+Mult, 63, 'DESC/ACRESC:' ,[comp17]);

                    Print.impf(29+Mult, 63, 'LIQUIDO....:' ,[comp17]);

                    //Total da Venda
                    Print.impf(29+Mult, 73, LIQUIDO  ,[comp17]);
               END
               ELSE BEGIN
                    //Total Bruto
                    Print.impf(27+Mult, 73, TOTAL    ,[comp17]);

                    Print.impf(27+Mult, 63, 'TOTAL......:' ,[comp17]);

                    DESCONTO := FORMATFLOAT('###,###,##0.00', TotDesconto );

                    While Length(DESCONTO) < 12
                    do begin
                       DESCONTO := ' ' + DESCONTO ;
                    end;

                    //Desconto
                    Print.impf(28+Mult, 73, DESCONTO ,[comp17]);

                    Print.impf(28+Mult, 63, 'DESC/ACRESC:' ,[comp17]);

                    While Length(LIQUIDO) < 12
                    do begin
                       LIQUIDO := ' ' + LIQUIDO ;
                    end;

                    Print.impf(29+Mult, 63, 'LIQUIDO....:' ,[comp17]);

                    //Total da Venda
                    Print.impf(29+Mult, 73, LIQUIDO  ,[comp17]);
               END;
          end
          else begin
               If ( DmApp.IMPRIME_SUBTOTORC = 'S' )
               THEN BEGIN
                    Str := FORMATFLOAT('###,###,##0.00', 0 );

                    While Length(Str) < 12
                    do begin
                       Str := ' ' + Str ;
                    end;

                    //Total Bruto
                    Print.impf(27+Mult, 73, Str, [comp17]);

                    Print.impf(27+Mult, 63, 'TOTAL......:' ,[comp17]);

                    //Desconto
                    Print.impf(28+Mult, 73, Str,[comp17]);

                    Print.impf(28+Mult, 63, 'DESC/ACRESC:' ,[comp17]);

                    Print.impf(29+Mult, 63, 'LIQUIDO....:' ,[comp17]);

                    //Total da Venda
                    Print.impf(29+Mult, 73, Str, [comp17]);
               end
               ELSE BEGIN
                    If DmaPP.EMBUTIR_JUROS = 'S'
                    THEN BEGIN
                         While Length(LIQUIDO) < 12
                         do begin
                            LIQUIDO := ' ' + LIQUIDO ;
                         end;

                         //Total Bruto
                         Print.impf(27+Mult, 73, LIQUIDO    ,[comp17]);

                         Print.impf(27+Mult, 63, 'TOTAL......:' ,[comp17]);

                         DESCONTO := FORMATFLOAT('###,###,##0.00', 0 );

                         While Length(DESCONTO) < 12
                         do begin
                            DESCONTO := ' ' + DESCONTO ;
                         end;

                         //Desconto
                         Print.impf(28+Mult, 73, DESCONTO ,[comp17]);

                         Print.impf(28+Mult, 63, 'DESC/ACRESC:' ,[comp17]);

                         Print.impf(29+Mult, 63, 'LIQUIDO....:' ,[comp17]);

                         //Total da Venda
                         Print.impf(29+Mult, 73, LIQUIDO  ,[comp17, negrito]);
                    END
                    ELSE BEGIN
                         //Total Bruto
                         Print.impf(27+Mult, 73, TOTAL    ,[comp17]);

                         Print.impf(27+Mult, 63, 'TOTAL......:' ,[comp17]);

                         DESCONTO := FORMATFLOAT('###,###,##0.00', TotDesconto );

                         While Length(DESCONTO) < 12
                         do begin
                            DESCONTO := ' ' + DESCONTO ;
                         end;

                         //Desconto
                         Print.impf(28+Mult, 73, DESCONTO ,[comp17]);

                         Print.impf(28+Mult, 63, 'DESC/ACRESC:' ,[comp17]);

                         While Length(LIQUIDO) < 12
                         do begin
                            LIQUIDO := ' ' + LIQUIDO ;
                         end;

                         Print.impf(29+Mult, 63, 'LIQUIDO....:' ,[comp17]);

                         //Total da Venda
                         Print.impf(29+Mult, 73, LIQUIDO  ,[comp17, negrito]);
                    END;
               END;
          END;

          //Entrada
          Print.ImpF(30+Mult, 30, 'Entrada =' + VlrEntrada, [Comp17]);

          //PESO E VOLUME
          STR :=  FORMATFLOAT ('###,###,##0.00', TotVolume );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(30+Mult, 47, 'VOLUME.:' ,[comp17]);

          Print.ImpF(30+Mult, 53, Str, [COMP17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', TotPeso );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;
          Print.impf(30+Mult, 63, 'PESO.......:' ,[comp17]);

          Print.ImpF(30+Mult, 73, Str, [COMP17]);
     END;

     Pagina := Pagina + 1;
end;

Procedure TFRelEnviaCaixa.ImpRodapeOrcamento ( Mult: Integer );
Var
   I: Integer;
   Str: String;
begin
     //SE IMPRIME RODAPE NO FINAL DO ORCAMENTO OU NO FINAL DA LISTAGEM DE PRODUTOS
     IF DmaPP.IMP_RODAPE_ORC <> 'N'
     THEN BEGIN
          // Rodapé...
          Print.ImpF(29+Mult, 01, Replicate('-', 80), [Normal]);

          //DESCONTO
          DESCONTO := FORMATFLOAT('###,###,##0.00', TOTDESCONTO );

          WHILE LENGTH(DESCONTO) < 10 DO
          BEGIN
               DESCONTO := ' ' + DESCONTO ;
          END;

          Print.ImpF(30+Mult, 01, razao, [comp17]);

          Print.ImpF(30+Mult, 60, 'DESCONTO', [COMP17]);

          Print.ImpF(30+Mult, 73, DESCONTO, [COMP17]);

          //TOTAL
          STR :=  FORMATFLOAT ('###,###,##0.00', Total_Orcamento );

          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(31+Mult, 73, STR, [COMP17]);

          STR :=  FORMATFLOAT ('###,###,##0.00', IteM - 1 );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.impf(31+Mult, 01, 'ITENS.......:' ,[comp17]);

          Print.ImpF(31+Mult, 10, Str, [COMP17]);
     END;

     Pagina := Pagina + 1;
end;

procedure TFRelEnviaCaixa.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
Var
   C, I, Mult: Integer;
   Str: String;
begin
     IF TRIM(UpperCase(Tipo)) = 'FATURA'
     THEN BEGIN
          If DmApp.ITENSORCAMENTO = 33
          then begin
               Mult := 0;
          end
          else begin
               Mult := 30;
          end;
     END ;

     IF TRIM(UpperCase(Tipo)) = 'ORCAMENTO'
     THEN BEGIN
          If DmApp.ITENSORCAMENTOORC = 33
          then begin
               Mult := 0;
          end
          else begin
               Mult := 30;
          end;
     END ;

     IF DmApp.Orcamento = 'FT'
     THEN BEGIN
          IF TRIM(UpperCase(Tipo)) = 'FATURA'
          THEN BEGIN
               ImpRodapeFatura (Mult);
          end
          ELSE BEGIN
               ImpRodapeOrcamento (Mult);
          END;
     end
     else begin

     end;
end;

procedure TFRelEnviaCaixa.CabecalhoOrcamento ;
VAR
   LIN, DST: INTEGER;
Begin
     IF ((DmaPP.IMPRIME_CABEC_2FOL = 'S' ) OR (Pagina = 1)) //SE IMPRIME O CABECALHO NA SEGUNDA PAGINA EM DIANTE
     THEN BEGIN
          // Cabeçalho...
          Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
          Print.ImpF(02, 01, TIPO, [EXPANDIDO, Negrito]);
          Print.ImpF(03, 37, NPEDIDO, [Normal,NEGRITO]);
          Print.ImpF(04, 01, Empresa, [comp17]);
          Print.ImpF(04, 70, 'PG - ' + IntToStr(Pagina), [Comp17]);
          Print.ImpF(05, 01, EndEmpresa , [Comp17]);
          Print.ImpF(05, 62, 'DATA : '+ DateTimeToStr(now()), [COMP17]);
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

          IF TRIM(REQUISICAO) <> ''
          THEN
              Print.ImpF(10, 30, 'REQ: ' + REQUISICAO  , [COMP17]);

          Print.ImpF(10, 45, 'IE/RG......: ' + IERG        , [COMP17]);

          Print.ImpF(11, 01, 'CONSULTOR..: ' + NomeVendedor, [COMP17]);
          Print.ImpF(11, 45, 'CONDICOES..: ' + Condicoes  + ' ' + TipoDoc , [COMP17]);

          Print.ImpF(12, 01, 'CLIENTE....: ' + NomeCliente , [COMP17]);
          Print.ImpF(12, 45, ''               , [COMP17]);

          Print.ImpF(13, 01, 'OBS........: ' + OBSERVACAO  , [COMP17]);
          Print.ImpF(13, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);
          Print.ImpF(13, 69, 'VALIDADE: ' + Validade        , [COMP17]);

          Print.ImpF(14, 01, Replicate('-', 80), [Normal]);

          If DmaPP.TIPO_ORCAMENTO = 'Detalhado'
          THEN BEGIN
                                 //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
               Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO                               MARCA          UNIT        TOTAL       MARCA          UNIT      TOTAL', [Comp17]);
               Print.ImpF(16, 01, Replicate('-', 80), [Normal]);
          END
          ELSE BEGIN
                                 //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
               Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO                    COMPLEMENTO               MARCA                 UND     UNIT  DESCTO      TOTAL', [Comp17]);
               Print.ImpF(16, 01, Replicate('-', 80), [Normal]);
          END;

          linha  := 17;
     END
     ELSE BEGIN
          // Cabeçalho...
          Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
          Print.ImpF(02, 01, NPEDIDO, [Normal,NEGRITO]);
          Print.ImpF(02, 20, 'PG - ' + IntToStr(Pagina), [Comp17]);
          Print.ImpF(02, 55, 'DATA : '+ DateTimeToStr(now()), [COMP17]);
          Print.ImpF(03, 01, Replicate('-', 80), [Normal]);
          If DmaPP.TIPO_ORCAMENTO = 'Detalhado'
          THEN BEGIN
               Print.ImpF(04, 01, 'CODIGO              QNTDE  DESCRICAO             -      COMPLEMENTO/MARCA                 UND              UNIT     DESCONTO      TOTAL', [Comp17]);
          END
          ELSE BEGIN
               Print.ImpF(04, 01, 'CODIGO              QNTDE  DESCRICAO             -      COMPLEMENTO/MARCA                 UND              UNIT     DESCONTO      TOTAL', [Comp17]);
          END;
          Print.ImpF(05, 01, Replicate('-', 80), [Normal]);

          linha  := 06;
     END;
end;

procedure TFRelEnviaCaixa.CabecalhoFatura ;
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

          IF TRIM(REQUISICAO) <> ''
          THEN
              Print.ImpF(07, 30, 'REQ: ' + REQUISICAO  , [COMP17]);

          Print.ImpF(07, 22, 'IE/RG......: ' + IERG        , [COMP17]);

          Print.ImpF(08, 01, 'CONSULTOR..: ' + NomeVendedor, [COMP17]);
          Print.ImpF(07, 45, 'CONDICOES..: ' + Condicoes  + ' ' + TipoDoc , [COMP17]);

          Print.ImpF(09, 01, 'DATA EMISSÃO: '+ DateTimeToStr(date()), [COMP17]);
          Print.ImpF(09, 22, 'DATA CAIXA.: '+Data_Caixa, [COMP17]);

          Print.ImpF(09, 45, 'OBS........: ' + OBSERVACAO  , [COMP17]);
          Print.ImpF(08, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);
          Print.ImpF(09, 78, PedFechado  , [COMP17]);

          Print.ImpF(10, 01, Replicate('-', 80), [Normal]);

          //DADOS DOS PRODUTOS
          //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
          IF DmApp.IMP_DESC_AGRUPADO = 'S'
          THEN BEGIN
               Print.ImpF(11, 01, 'CODIGO              QNTDE  DESCRICAO                                                      UND              UNIT                   TOTAL', [Comp17]);
          END
          ELSE BEGIN
               Print.ImpF(11, 01, 'CODIGO              QNTDE  DESCRICAO            -       COMPLEMENTO/MARCA                 UND              UNIT     DESCONTO      TOTAL', [Comp17]);
          END;

          linha  := 12;
     END
     ELSE BEGIN
          // Cabeçalho...
          Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
          IF DMVendas.TIPO_VENDA = 'Con' THEN
            Print.ImpF(02, 01, '                CONDICIONAL             ', [EXPANDIDO, Negrito])
          ELSE
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

          IF TRIM(REQUISICAO) <> ''
          THEN
              Print.ImpF(10, 30, 'REQ: ' + REQUISICAO  , [COMP17]);

          Print.ImpF(10, 45, 'IE/RG......: ' + IERG        , [COMP17]);

          Print.ImpF(11, 01, 'CONSULTOR..: ' + NomeVendedor, [COMP17]);
          Print.ImpF(11, 45, 'CONDICOES..: ' + Condicoes  + ' ' + TipoDoc , [COMP17]);

          Print.ImpF(12, 01, 'MOTORISTA..: '               , [COMP17]);
          Print.ImpF(12, 45, 'PRAZO......: '               , [COMP17]);

          Print.ImpF(13, 01, 'OBS........: ' + OBSERVACAO  , [COMP17]);
          Print.ImpF(13, 45, 'FONE.......: ' + NumeroFone  , [COMP17]);
          Print.ImpF(13, 78, PedFechado  , [COMP17]);

          Print.ImpF(14, 01, Replicate('-', 80), [Normal]);

          //DADOS DOS PRODUTOS
          //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
          IF DmApp.IMP_DESC_AGRUPADO = 'S'
          THEN BEGIN
               Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO                                                      UND              UNIT                   TOTAL', [Comp17]);
          END
          ELSE BEGIN
               Print.ImpF(15, 01, 'CODIGO              QNTDE  DESCRICAO            -       COMPLEMENTO/MARCA                 UND              UNIT     DESCONTO      TOTAL', [Comp17]);
          END;

          Print.ImpF(16, 01, Replicate('-', 80), [Normal]);

          linha  := 17;
     END;
end;

procedure TFRelEnviaCaixa.CabecalhoFaturaSerie ;
VAR
   LIN, DST: INTEGER;
begin
     WITH DmVendas do
     begin
          //Data por Extenso dia
          Lin := SerieOrcDATA_DIA_ALT.Value ;
          Dst := SerieOrcDATA_DIA_DST.Value ;

          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, copy(DateToStr(Consulta_VendaDATA.Value),1,2) , [Normal,NEGRITO]);
          end;

          //Data por Extenso mes exteso
          Lin := SerieOrcDATA_MES_ALT.Value ;
          Dst := SerieOrcDATA_MES_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, MesExtenso(StrToInt(copy(DateToStr(Consulta_VendaDATA.Value),4,2))) , [Normal,NEGRITO]);
          end;

          //Data por Extenso Ano
          Lin := SerieOrcDATA_ANO_ALT.Value ;
          Dst := SerieOrcDATA_ANO_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, copy(DateToStr(Consulta_VendaDATA.Value),7,4) , [Normal,NEGRITO]);
          end;

          //Numero da Nota
          Lin := SerieOrcNOTA_NUM_ALT.Value ;
          Dst := SerieOrcNOTA_NUM_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, IntToStr(Consulta_VendaNUM_NF.Value) , [Normal,NEGRITO]);
          end;

          //Numero do Recibo
          Lin := SerieOrcNOTA_NUMRECIBO_ALT.Value ;
          Dst := SerieOrcNOTA_NUMRECIBO_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, '' , [Normal,NEGRITO]);
          end;

          //Entrada/Saida
          Lin := SerieOrcNOTA_ENT_SAI_ALT.Value ;
          Dst := SerieOrcNOTA_ENT_SAI_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, 'X' , [Normal,NEGRITO]);
          end;

          //Cfop
          Lin := SerieOrcNOTA_CFOP_ALT.Value ;
          Dst := SerieOrcNOTA_CFOP_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, IntToStr(Consulta_VendaNATUREZA.VALUE) , [Normal]);
          end;

          //Natureza
          Lin := SerieOrcNOTA_NATUREZA_ALT.Value ;
          Dst := SerieOrcNOTA_NATUREZA_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Consulta_VendaNOME_NATUREZA.VALUE , [Normal]);
          end;

          //Substituicao Tributaria
          Lin := SerieOrcNOTA_SUBS_TRIB_ALT.Value ;
          Dst := SerieOrcNOTA_SUBS_TRIB_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, '' , [Normal]);
          end;

          //Condicao Pagamento
          Lin := SerieOrcNOTA_CNDPG_ALT.Value ;
          Dst := SerieOrcNOTA_CNDPG_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Consulta_VendaNOME_FORMA.VALUE, [Normal]);
          End;

          //Nome Cliente
          Lin := SerieOrcCLI_NOME_ALT.Value ;
          Dst := SerieOrcCLI_NOME_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Consulta_VendaNOME.VALUE + ' -' + INTTOSTR(Consulta_VendaPESSOA_FJ.VALUE), [Normal]);
          end;

          //Cgc/Cpf
          Lin := SerieOrcCLI_CGCCPF_ALT.Value ;
          Dst := SerieOrcCLI_CGCCPF_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Documentos, [Comp17]);
          end;

          //Endereco
          Lin := SerieOrcCLI_END_ALT.Value ;
          Dst := SerieOrcCLI_END_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Endereco, [Comp17]);
          end;

          //Bairro
          Lin := SerieOrcCLI_BAIRRO_ALT.Value ;
          Dst := SerieOrcCLI_BAIRRO_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, NomeBairro, [Comp17]);
          end;

          //Cep
          Lin := SerieOrcCLI_CEP_ALT.Value ;
          Dst := SerieOrcCLI_CEP_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Cep, [Comp17]);
          end;

          //Cidade
          Lin := SerieOrcCLI_CID_ALT.Value ;
          Dst := SerieOrcCLI_CID_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, NomeCidade, [Comp17]);
          end;

          //Fone
          Lin := SerieOrcCLI_FONE_ALT.Value ;
          Dst := SerieOrcCLI_FONE_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Fone, [Comp17]);
          end;

          //Fax
          Lin := SerieOrcCLI_FAX_ALT.Value ;
          Dst := SerieOrcCLI_FAX_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Fax, [Comp17]);
          end;

          //Uf
          Lin := SerieOrcCLI_UF_ALT.Value ;
          Dst := SerieOrcCLI_UF_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Uf, [Comp17]);
          end;

          //IE
          Lin := SerieOrcCLI_INSCEST_ALT.Value ;
          Dst := SerieOrcCLI_INSCEST_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, IERG, [Comp17]);
          end;

          //Dt Emissao
          Lin := SerieOrcCLI_DATEMIS_ALT.Value ;
          Dst := SerieOrcCLI_DATEMIS_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, DateToStr(Date), [Comp17]);
          end;

          //Dt Entrada/Saida
          Lin := SerieOrcCLI_DATENTSAI_ALT.Value ;
          Dst := SerieOrcCLI_DATENTSAI_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, DateToStr(Consulta_VendaDATA.VALUE), [Comp17]);
          end;

          //Dt Hora Entrada/Saida
          Lin := SerieOrcCLI_HORASAI_ALT.Value ;
          Dst := SerieOrcCLI_HORASAI_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, TimeToStr(Now), [Comp17]);
          end;

          //Pedido Numero
          Lin := SerieOrcCLI_PEDNUM_ALT.Value ;
          Dst := SerieOrcCLI_PEDNUM_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, NPEDIDO, [Comp17]);
          end;

          //Insc. Municipal
          Lin := SerieOrcCLI_INSCMUN_ALT.Value ;
          Dst := SerieOrcCLI_INSCMUN_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, InscMun, [Comp17]);
          end;

          //Obs / Histórico
          Lin := SerieOrcOBS_ALT.Value ;
          Dst := SerieOrcOBS_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, OBSERVACAO, [Comp17]);
          end;

          IF SerieOrcLOCALDUPLICATAS.Value = 'C'
          THEN BEGIN
          END;
     end;
end;

procedure TFRelEnviaCaixa.CabecalhoOrcamentoSerie ;
VAR
   LIN, DST: INTEGER;
begin
     WITH DmVendas do
     begin
          //Data por Extenso dia
          Lin := SerieOrcDATA_DIA_ALT.Value ;
          Dst := SerieOrcDATA_DIA_DST.Value ;

          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, copy(DateToStr(Consulta_OrcamentoDATA.Value),1,2) , [Normal,NEGRITO]);
          end;

          //Data por Extenso mes exteso
          Lin := SerieOrcDATA_MES_ALT.Value ;
          Dst := SerieOrcDATA_MES_DST.Value ;

          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, MesExtenso(StrToInt(copy(DateToStr(Consulta_OrcamentoDATA.Value),4,2))) , [Normal,NEGRITO]);
          end;

          //Data por Extenso Ano
          Lin := SerieOrcDATA_ANO_ALT.Value ;
          Dst := SerieOrcDATA_ANO_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, copy(DateToStr(Consulta_OrcamentoDATA.Value),7,4) , [Normal,NEGRITO]);
          end;

          //Numero da Nota
          Lin := SerieOrcNOTA_NUM_ALT.Value ;
          Dst := SerieOrcNOTA_NUM_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, '' , [Normal,NEGRITO]);
          end;

          //Numero do Recibo
          Lin := SerieOrcNOTA_NUMRECIBO_ALT.Value ;
          Dst := SerieOrcNOTA_NUMRECIBO_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, '' , [Normal,NEGRITO]);
          end;

          //Entrada/Saida
          Lin := SerieOrcNOTA_ENT_SAI_ALT.Value ;
          Dst := SerieOrcNOTA_ENT_SAI_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, 'X' , [Normal,NEGRITO]);
          end;

          //Cfop
          Lin := SerieOrcNOTA_CFOP_ALT.Value ;
          Dst := SerieOrcNOTA_CFOP_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, '' , [Normal]);
          end;

          //Natureza
          Lin := SerieOrcNOTA_NATUREZA_ALT.Value ;
          Dst := SerieOrcNOTA_NATUREZA_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, '' , [Normal]);
          end;

          //Substituicao Tributaria
          Lin := SerieOrcNOTA_SUBS_TRIB_ALT.Value ;
          Dst := SerieOrcNOTA_SUBS_TRIB_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, '' , [Normal]);
          end;

          //Condicao Pagamento
          Lin := SerieOrcNOTA_CNDPG_ALT.Value ;
          Dst := SerieOrcNOTA_CNDPG_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Consulta_OrcamentoNOME_FORMA.VALUE, [Normal]);
          End;

          //Nome Cliente
          Lin := SerieOrcCLI_NOME_ALT.Value ;
          Dst := SerieOrcCLI_NOME_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Consulta_OrcamentoNOME_RAZAO.VALUE + ' -' + INTTOSTR(Consulta_OrcamentoPESSOA_FJ.VALUE), [Normal]);
          end;

          //Cgc/Cpf
          Lin := SerieOrcCLI_CGCCPF_ALT.Value ;
          Dst := SerieOrcCLI_CGCCPF_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Documentos, [Comp17]);
          end;

          //Endereco
          Lin := SerieOrcCLI_END_ALT.Value ;
          Dst := SerieOrcCLI_END_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Endereco, [Comp17]);
          end;

          //Bairro
          Lin := SerieOrcCLI_BAIRRO_ALT.Value ;
          Dst := SerieOrcCLI_BAIRRO_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, NomeBairro, [Comp17]);
          end;

          //Cep
          Lin := SerieOrcCLI_CEP_ALT.Value ;
          Dst := SerieOrcCLI_CEP_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Cep, [Comp17]);
          end;

          //Cidade
          Lin := SerieOrcCLI_CID_ALT.Value ;
          Dst := SerieOrcCLI_CID_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, NomeCidade, [Comp17]);
          end;

          //Fone
          Lin := SerieOrcCLI_FONE_ALT.Value ;
          Dst := SerieOrcCLI_FONE_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Fone, [Comp17]);
          end;

          //Fax
          Lin := SerieOrcCLI_FAX_ALT.Value ;
          Dst := SerieOrcCLI_FAX_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Fax, [Comp17]);
          end;

          //Uf
          Lin := SerieOrcCLI_UF_ALT.Value ;
          Dst := SerieOrcCLI_UF_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, Uf, [Comp17]);
          end;

          //IE
          Lin := SerieOrcCLI_INSCEST_ALT.Value ;
          Dst := SerieOrcCLI_INSCEST_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, IERG, [Comp17]);
          end;

          //Dt Emissao
          Lin := SerieOrcCLI_DATEMIS_ALT.Value ;
          Dst := SerieOrcCLI_DATEMIS_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, DateToStr(Date), [Comp17]);
          end;

          //Dt Entrada/Saida
          Lin := SerieOrcCLI_DATENTSAI_ALT.Value ;
          Dst := SerieOrcCLI_DATENTSAI_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, DateToStr(Consulta_OrcamentoDATA.VALUE), [Comp17]);
          end;

          //Dt Hora Entrada/Saida
          Lin := SerieOrcCLI_HORASAI_ALT.Value ;
          Dst := SerieOrcCLI_HORASAI_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, TimeToStr(Now), [Comp17]);
          end;

          //Pedido Numero
          Lin := SerieOrcCLI_PEDNUM_ALT.Value ;
          Dst := SerieOrcCLI_PEDNUM_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, NPEDIDO, [Comp17]);
          end;

          //Insc. Municipal
          Lin := SerieOrcCLI_INSCMUN_ALT.Value ;
          Dst := SerieOrcCLI_INSCMUN_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, InscMun, [Comp17]);
          end;

          //Obs / Histórico
          Lin := SerieOrcOBS_ALT.Value ;
          Dst := SerieOrcOBS_DST.Value ;
          If Lin > 0
          Then Begin
               Print.ImpF(Lin , Dst, OBSERVACAO, [Comp17]);
          end;

          IF SerieOrcLOCALDUPLICATAS.Value = 'C'
          THEN BEGIN

          END;
     end ;
end;

procedure TFRelEnviaCaixa.PrintNewPage(Sender: TObject; Pagina: Integer);
VAR
   LIN, DST: INTEGER;
begin
     IF ( DmApp.Orcamento = 'FT' ) or ( TRIM(Tipo) = 'PRE-NOTA' ) or ( TRIM(Tipo) = 'ORCAMENTO' )
     THEN BEGIN
          IF ( TRIM(Tipo) = 'ORCAMENTO' )
          THEN BEGIN
               CabecalhoOrcamento ;
          END
          ELSE BEGIN
               CabecalhoFatura    ;
          END;
     END
     ELSE BEGIN
          with dmvendas do
          begin
               IF (( TRIM(Tipo) <> 'PRE-NOTA' ) AND ( TRIM(Tipo) <> 'ORCAMENTO' ) AND ( TRIM(Tipo) <> 'SERIE' ))
               THEN BEGIN
                    CabecalhoFaturaSerie ;
               END
               ELSE BEGIN
                    CabecalhoOrcamentoSerie ;
               END;
          END;
     END;
end;

Procedure TFRelEnviaCaixa.ImprimeBoleto ;
Var
   Mensagem2, Vencimento, Str: String  ;
   Bol    : Integer ;
   DespesaBanc : Variant;
begin
     With DmVendas do
     begin
        //Verificando para ver se o sistema faz a impressão completa dos boletos(Gráfica)
        if DMApp.BLT_GERA_BOLETOS = 'S' then
        begin
          dmapp.ImprimeTitulo(Consulta_VendaCODIGO.Value, Consulta_VendaLOCAL_COBRANCA.Value,'V');
          exit;
        end;
     end
end;

procedure TFRelEnviaCaixa.FormShow(Sender: TObject);
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

procedure TFRelEnviaCaixa.ActPreviewExecute(Sender: TObject);
begin
     //Testa a Impressora
     Opcao := 'N' ;

     PAGINA := 1;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     IF ( DmApp.Orcamento = 'FT' ) or ( TRIM(Tipo) = 'PRE-NOTA' ) or ( TRIM(Tipo) = 'ORCAMENTO' )
     THEN BEGIN
          Imprime ;
     END
     ELSE BEGIN
          ImprimeOrcamentoSerie ;
     END
end;

Procedure TFRelEnviaCaixa.ImprimeOrcamentoSerie ;
Var
   Str : String ;
   Dst : Integer;
   Pulo: Integer;
begin
     dmvendas2.Proc_Imprime_Venda(PedidoNumero);
     With DmVendas do
     begin
          dmCadastros.serie.close;
          dmCadastros.serie.parambyname('cnpj').value := dmapp.cnpj;
          dmCadastros.serie.open;
          //impressão gráfica
          if dmCadastros.SerieNF_GRAFICA.value = 'S' then
          begin
             if Aba = 0 then
             begin

               if (dmVendas.Consulta_VendaIMP_PEDIDO.value = 'N') then
               begin
                 Application.messagebox('Operação interna do faturamento não permite impressão de pedidos','Aviso',mb_iconerror + mb_ok);
                 Exit;
               end;
               
               DMCadastros.EdtSerieNF.close;
               DMCadastros.EdtSerieNF.parambyname('cnpj').value := dmapp.cnpj;
               DMCadastros.EdtSerieNF.open;

               rptSerieNF.Template.DatabaseSettings.Name := dmapp.cnpj;
               rptSerieNF.Template.LoadFromDatabase;


               DmVendas2.qrySeriesNF.Close;
               DmVendas2.qrySeriesNF.sql.clear;
               DmVendas2.qrySeriesNF.sql.text :=' select * from PCD_IMPRIME_SERIE_NF(:venda,:cnpj)';
               DmVendas2.qrySeriesNF.ParamByName('cnpj').value := dmApp.cnpj;
               DmVendas2.qrySeriesNF.ParamByName('venda').value := PedidoNumero;
               DmVendas2.qrySeriesNF.open;

               rptSerieNF.print;


               if(dmvendas.Consulta_Vendalocal_cobranca.value > 0) and (DMvENDAS.Consulta_Venda_Parc.RecordCount > 0) then
                  ImprimeBoleto;


               if ((DMvENDAS.Consulta_Venda_Parc.RecordCount > 0) AND ( DMAPP.Perfil_ComputadorIMPRIME_PROMISSORIA.VALUE = 'S' )) then
               begin
                   //CHAMA O TIPO DE SAÍDA ( NOTAS PROMISSORIAS )
                  FrmImprimePromissoria := TFrmImprimePromissoria.Create(Self);
                 FrmImprimePromissoria.PedidoNumero := PedidoNumero ;
                 FrmImprimePromissoria.Showmodal ;
               end;
              end;

             if Aba = 1 then
             begin
               DMCadastros.EdtSerieOrcNF.close;
               DMCadastros.EdtSerieOrcNF.parambyname('cnpj').value := dmApp.cnpj;
               DMCadastros.EdtSerieOrcNF.Open;

               rptSerieOrcaNF.Template.DatabaseSettings.Name := DMCadastros.EdtSerieOrcNFcnpj.asstring;;
               rptSerieOrcaNF.Template.LoadFromDatabase;

               DmVendas2.qrySeries_ORC_NF.CLOSE;
               DmVendas2.qrySeries_ORC_NF.sql.text :=' select * from PCD_IMPRIME_SERIE_ORC_NF(:orca,:cnpj)';
               DmVendas2.qrySeries_ORC_NF.ParamByName('cnpj').value := dmApp.cnpj;
               DmVendas2.qrySeries_ORC_NF.ParamByName('orca').value := PedidoNumero;
               DmVendas2.qrySeries_ORC_NF.open;


               rptSerieOrcaNF.print;
             end;

             close;
             exit;
          end;
          //impressão texto
          IF (( TRIM(Tipo) <> 'PRE-NOTA' ) AND ( TRIM(Tipo) <> 'ORCAMENTO' ) AND ( TRIM(Tipo) <> 'SERIE' ))
          THEN BEGIN


               VerPessoa ( Consulta_VendaPESSOA_FJ.Value );

               Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
               NomeCliente  := Ver_PessoaFANTASIA.Value           ;
               Data         := DateToStr(Consulta_VendaDATA.Value);
               Data_Caixa   := DateToStr(Consulta_VendaDATA_CAIXA.Value);
               OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;
               If Trim(Observacao )= ''
               then begin
                    OBSERVACAO   := Consulta_VendaHISTORICO.Value ;
               end;
               NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
               REQUISICAO   := Consulta_VendaREQUISICAO.Value      ;
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

               If Length(Ver_PessoaCPF_CGC.Value) > 11 then
               begin
                 Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
               end
               else
               begin
                 Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
               end;

               IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
               InscMun           := Ver_PessoaINSC_MUNIC.Value ;
               Condicoes         := Consulta_VendaNOME_FORMA.Value      ;
               PedFechado        := Consulta_VendaFechada.Value         ;
               NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
               Peso              := Formatfloat('###,###,##0.00', Consulta_VendaPeso.Value);
               Volume            := Formatfloat('###,###,##0.00', Consulta_VendaVolume.Value);
               Total             := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value);
               Liquido           := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
               LocalCobranca     := Consulta_VendaLocal_COBRANCA.Value ;

               SerieOrc.open ;

               Print.TamanhoQteLinhas := SerieOrcNUMERODELINHASDANOTA.Value ;

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

               If SerieOrcIMPRESSORA_LPP.Value = 'seis'
               Then
                   Print.TamanhoQteLPP := Seis
               Else
                   Print.TamanhoQteLPP := Oito ;

               Pulo := SerieOrcIMPRESSORA_PULO.Value ;

               print.Abrir;

               //NUMERO DE ITENS DA NOTA
               Item := 0;

               //Peso e Volume
               TotPeso     := 0;
               TotVolume   := 0;
               TotDesconto := 0;

               Consulta_Venda_Itens.First;

               Linha := SerieOrcPROD_COD_ALT.Value ;

               While Not Consulta_Venda_Itens.Eof
               Do Begin
                  Dst   := SerieOrcPROD_COD_DST.Value ;

                  IF DST > 0
                  THEN
                      Print.ImpF(Linha, Dst, Consulta_Venda_ItensPRODUTO.Value, [Comp17]);

                  Dst   := SerieOrcPROD_PROD_DST.Value ;

                  IF DST > 0
                  THEN
                      Print.ImpF(Linha, Dst, Consulta_Venda_ItensNOME_PRODUTO.Value, [Comp17]);

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Dst   := SerieOrcPROD_QUANT_DST.Value ;

                  If Dst > 0
                  then
                      Print.impf(Linha, Dst, STR ,[comp17]);

                  //VOLUME
                  TotVolume := TotVolume + (Consulta_Venda_ItensVOLUME.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //PESO
                  TotPeso   := TotPeso + (Consulta_Venda_ItensPESO.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //UNIDADE
                  Dst   := SerieOrcPROD_UNIDADE_DST.Value ;

                  If Dst > 0
                  then
                      Print.ImpF(Linha, Dst, Consulta_Venda_ItensUNIDADE.Value, [Comp17]);

                  Dst := SerieOrcPROD_VALORUNIT_DST.Value ;

                  If Dst > 0
                  then begin
                       //UNITARIO
                       STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, Dst, STR ,[comp17]);
                  end;

                  //DESCONTO
                  Dst   := SerieOrcPROD_DESC_DST.Value ;

                  TotDesconto  := TotDesconto + Consulta_Venda_ItensDESCONTO.Value;

                  If Dst > 0
                  then begin
                       STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensDESCONTO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, Dst, STR ,[comp17]);
                  end;

                  //TOTAL
                  Dst   := SerieOrcPROD_VALORTOT_DST.Value ;

                  If Dst > 0
                  then begin
                       STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;
                       Print.impf(Linha, Dst, STR ,[comp17]);
                  end;

                  TOTALNOTA := TOTALNOTA + Consulta_Venda_ItensTotal.Value ;

                  Consulta_Venda_Itens.Next;

                  Item := Item + 1;

                  //
                  Linha := Linha + Pulo ;

                  //
                  If Item >= SerieOrcPRODUTOSNOTA.Value
                  Then
                      RodapeOrcamento;

               end;
               //

               //
               RodapeOrcamento;

               print.Fechar;

               If ( LocalCobranca > 0 ) and ( DMvENDAS.Consulta_Venda_Parc.RecordCount > 0 )
               then begin
                    //Imprime Venda
                    ImprimeBoleto ;
               end;
          End
          ELSE BEGIN //ORCAMENTO SERIE
               Proc_Imprime_Orcamento (PedidoNumero);

               VerPessoa ( Consulta_OrcamentoPESSOA_FJ.Value );

               Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
               REQUISICAO   := Consulta_VendaREQUISICAO.Value      ;
               NomeCliente  := Consulta_OrcamentoCLIENTE.VALUE        ;
               Data         := DateToStr(Consulta_OrcamentoDATA.Value);
               OBSERVACAO   := Consulta_OrcamentoOBSERVACAO.Value     ;
               NomeVendedor := Consulta_OrcamentoNOME_VENDEDOR.Value   ;
               TipoDoc      := 'ORC'  ;
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
               Validade     := datetostr(Consulta_OrcamentoValidade.Value);

               If Length(Ver_PessoaCPF_CGC.Value) > 11
               then begin
                    Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
               end
               else begin
                    Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
               end;

               IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
               InscMun           := Ver_PessoaINSC_MUNIC.Value ;
               Condicoes         := Consulta_OrcamentoNOME_FORMA.Value      ;
               NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
               Peso              := Formatfloat('###,###,##0.00', Consulta_OrcamentoPeso.Value);
               Volume            := Formatfloat('###,###,##0.00', Consulta_OrcamentoVolume.Value);
               Total             := Formatfloat('###,###,##0.00', Consulta_OrcamentoTotal.Value);
               Liquido           := Formatfloat('###,###,##0.00', Consulta_OrcamentoTotal.Value + Consulta_OrcamentoDESC_ACRESC.Value);
               LocalCobranca     := 0 ;

               SerieOrc.open ;

               IF SerieOrc.RECORDCOUNT <= 0
               THEN BEGIN
                    MESSAGEDLG('Não existe Série Configurada, verifique!', mterror, [mbok],0);
                    exit;
               END;

               Print.TamanhoQteLinhas := SerieOrcNUMERODELINHASDANOTA.Value ;

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

               If SerieOrcIMPRESSORA_LPP.Value = 'seis'
               Then
                   Print.TamanhoQteLPP := Seis
               Else
                   Print.TamanhoQteLPP := Oito ;

               Pulo := SerieOrcIMPRESSORA_PULO.Value ;

               print.Abrir;

               //NUMERO DE ITENS DA NOTA
               Item := 0;

               //Peso e Volume
               TotPeso     := 0;
               TotVolume   := 0;
               TotDesconto := 0;

               Consulta_Orcamento_Itens.First;

               Linha := SerieOrcPROD_COD_ALT.Value ;

               IF Linha = 0
               then
                   Linha := SerieOrcPROD_PROD_ALT.Value ;

               While Not Consulta_Orcamento_Itens.Eof
               Do Begin
                  Dst   := SerieOrcPROD_COD_DST.Value ;

                  IF DST > 0
                  THEN
                      Print.ImpF(Linha, Dst, Consulta_Orcamento_ItensPRODUTO.Value, [Comp17]);

                  Dst   := SerieOrcPROD_PROD_DST.Value ;

                  IF DST > 0
                  THEN
                      Print.ImpF(Linha, Dst, Consulta_Orcamento_ItensNOME.Value, [Comp17]);

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Orcamento_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Dst   := SerieOrcPROD_QUANT_DST.Value ;

                  If Dst > 0
                  then
                      Print.impf(Linha, Dst, STR ,[comp17]);

                  //VOLUME
                  TotVolume := TotVolume + (Consulta_Orcamento_ItensVOLUME.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //PESO
                  TotPeso   := TotPeso + (Consulta_Orcamento_ItensPESO.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //UNIDADE
                  Dst   := SerieOrcPROD_UNIDADE_DST.Value ;

                  If Dst > 0
                  then
                      Print.ImpF(Linha, Dst, Consulta_Orcamento_ItensUNIDADE.Value, [Comp17]);

                  Dst := SerieOrcPROD_VALORUNIT_DST.Value ;

                  If Dst > 0
                  then begin
                       //UNITARIO
                       STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Orcamento_ItensPRC_UNITARIO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, Dst, STR ,[comp17]);
                  end;

                  //DESCONTO
                  Dst   := SerieOrcPROD_DESC_DST.Value ;

                  TotDesconto := TotDesconto + Consulta_Orcamento_ItensDESCONTO.Value ;

                  If Dst > 0
                  then begin
                       STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Orcamento_ItensDESCONTO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, Dst, STR ,[comp17]);
                  end;

                  //TOTAL
                  Dst   := SerieOrcPROD_VALORTOT_DST.Value ;

                  If Dst > 0
                  then begin
                       STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Orcamento_ItensTotal.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;
                       Print.impf(Linha, Dst, STR ,[comp17]);
                  end;

                  TOTALNOTA := TOTALNOTA + Consulta_Orcamento_ItensTotal.Value ;


                  //IMPRIMINDO AS PEÇAS DO ORCAMENTO

                  //
                  If Item >= SerieOrcPRODUTOSNOTA.Value
                  Then
                      RodapeOrcamento;

               end;//

               //
               RodapeOrcamento;

               print.Fechar;

          END;
     END;

     DmVendas.SerieOrc.Close ;

     Close ;
end;

procedure TFRelEnviaCaixa.RodapeOrcamento;
Var
   C, I: Integer;
   Str: String;
   Lin, Dst, Alt: Integer;
begin
     I := 28 ;
     C := 0  ;

{     //Forma de Parcelamento
     DmVendas.Consulta_Venda_Parc.First;
     While Not DmVendas.Consulta_Venda_Parc.Eof
     Do Begin
        IF C = 0
        THEN BEGIN
             //DATA
             Print.ImpF(I, 30, DateToStr(DmVendas.Consulta_Venda_ParcVENCTO.Value), [Comp17]);

             //VALOR
             STR :=  FORMATFLOAT ('###,###,##0.00', DmVendas.Consulta_Venda_ParcVALOR.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(I, 37, STR ,[comp17]);

             C := 1;

             DmVendas.Consulta_Venda_Parc.Next;
        END
        ELSE BEGIN
             Print.ImpF(I, 47, DateToStr(DmVendas.Consulta_Venda_ParcVENCTO.Value), [Comp17]);

             //QNTDE
             STR :=  FORMATFLOAT ('###,###,##0.00', DmVendas.Consulta_Venda_ParcVALOR.Value );
             WHILE LENGTH(STR) < 10 DO
             BEGIN
                  STR := ' ' + STR ;
             END;

             Print.impf(I, 54, STR ,[comp17]);

             C := 0;

             DmVendas.Consulta_Venda_Parc.Next;

             I := I + 1;
        END;

     END;}

     IF (( TRIM(Tipo) <> 'PRE-NOTA' ) AND ( TRIM(Tipo) <> 'ORCAMENTO' ) AND
     ( TRIM(Tipo) <> 'SERIE' ))
     THEN BEGIN
          IF DmVendas.Consulta_Venda_Itens.Eof
          THEN BEGIN
               WITH DMVENDAS DO
               BEGIN
                    //Base Icms
                    Lin := SerieOrcFEC_BASEICMS_DST.Value ;
                    Dst := SerieOrcFEC_BASEICMS_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', BASECALCULOICM );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Frete
                    Lin := SerieOrcFEC_VALORFRETE_ALT.Value ;
                    Dst := SerieOrcFEC_VALORFRETE_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', VALORFRETE );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Icm
                    Lin := SerieOrcFEC_VALORICMS_ALT.Value ;
                    Dst := SerieOrcFEC_VALORICMS_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', ICM );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Seguro
                    Lin := SerieOrcFEC_VALORSEGURO_ALT.Value ;
                    Dst := SerieOrcFEC_VALORSEGURO_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', SEGURO );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Base de Calc Subst
                    Lin := SerieOrcFEC_BASECALCICMS_ALT.Value ;
                    Dst := SerieOrcFEC_BASECALCICMS_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', BASECALCULOSUBSTITUICAO );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;


                    //Despesas
                    Lin := SerieOrcFEC_DESPESAS_ALT.Value ;
                    Dst := SerieOrcFEC_DESPESAS_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', DESPESAS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;


                    //Valor Icm Subst
                    Lin := SerieOrcFEC_VALORICMSSUB_ALT.Value ;
                    Dst := SerieOrcFEC_VALORICMSSUB_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', VALORICMSSUB );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Ipi
                    Lin := SerieOrcFEC_IPI_ALT.Value ;
                    Dst := SerieOrcFEC_IPI_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', IPI );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //ISS
                    Lin := SerieOrcFEC_ISS_ALT.Value ;
                    Dst := SerieOrcFEC_ISS_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', ISS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Total
                    Lin := SerieOrcFEC_VALORTOTAL_ALT.Value ;
                    Dst := SerieOrcFEC_VALORTOTAL_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', VALORTOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Total da Nota
                    Lin := SerieOrcFEC_VALORNOTA_ALT.Value ;
                    Dst := SerieOrcFEC_VALORNOTA_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTALNOTA );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17,NEGRITO]);
                    end;

                    //Transportadora
                    Lin := SerieOrcTRANS_NOME_ALT.Value ;
                    Dst := SerieOrcTRANS_NOME_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //End da Transportadora
                    Lin := SerieOrcTRANS_END_ALT.Value ;
                    Dst := SerieOrcTRANS_END_DST.Value ;
                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Quantidade de Itens
                    Lin := SerieOrcTRANS_QUANTIDADE_ALT.Value ;
                    Dst := SerieOrcTRANS_QUANTIDADE_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', ITEM );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Especie
                    Lin := SerieOrcTRANS_ESPECIE_ALT.Value ;
                    Dst := SerieOrcTRANS_ESPECIE_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Marca
                    Lin := SerieOrcTRANS_MARCA_ALT.Value ;
                    Dst := SerieOrcTRANS_MARCA_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Frete por Conta
                    Lin := SerieOrcTRANS_FRETECONTA_ALT.Value ;
                    Dst := SerieOrcTRANS_FRETECONTA_DST.Value ;

                    If lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, 'X', [Comp17]);
                    end;

                    //Cidade
                    Lin := SerieOrcTRANS_CID_ALT.Value ;
                    Dst := SerieOrcTRANS_CID_DST.Value ;
                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //UF
                    Lin := SerieOrcTRANS_UF_ALT.Value ;
                    Dst := SerieOrcTRANS_UF_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Numero
                    Lin := SerieOrcTRANS_NUMERO_ALT.Value ;
                    Dst := SerieOrcTRANS_NUMERO_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Placa
                    Lin := SerieOrcTRANS_PLACA_ALT.Value ;
                    Dst := SerieOrcTRANS_PLACA_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //UF do Veiculo
                    Lin := SerieOrcTRANS_UFVEIALT.Value ;
                    Dst := SerieOrcTRANS_UFVEI_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Cgc/Cpf
                    Lin := SerieOrcTRANS_CGCCPF_ALT.Value ;
                    Dst := SerieOrcTRANS_CGCCPF_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Insc Est
                    Lin := SerieOrcTRANS_INSCEST_ALT.Value ;
                    Dst := SerieOrcTRANS_INSCEST_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Peso Bruto
                    Lin := SerieOrcTRANS_PESOBRT_ALT.Value ;
                    Dst := SerieOrcTRANS_PESBRT_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', TotPeso );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Obs
                    Lin := SerieOrcTRANS_OBS_ALT.Value ;
                    Dst := SerieOrcTRANS_OBS_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;
               END;
          END;
     end
     else begin ///orcamentos
          IF DmVendas.Consulta_Orcamento_Itens.Eof
          THEN BEGIN
               WITH DMVENDAS DO
               BEGIN
                    //Base Icms
                    Lin := SerieOrcFEC_BASEICMS_DST.Value ;
                    Dst := SerieOrcFEC_BASEICMS_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', BASECALCULOICM );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Frete
                    Lin := SerieOrcFEC_VALORFRETE_ALT.Value ;
                    Dst := SerieOrcFEC_VALORFRETE_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', VALORFRETE );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Icm
                    Lin := SerieOrcFEC_VALORICMS_ALT.Value ;
                    Dst := SerieOrcFEC_VALORICMS_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', ICM );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Seguro
                    Lin := SerieOrcFEC_VALORSEGURO_ALT.Value ;
                    Dst := SerieOrcFEC_VALORSEGURO_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', SEGURO );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Base de Calc Subst
                    Lin := SerieOrcFEC_BASECALCICMS_ALT.Value ;
                    Dst := SerieOrcFEC_BASECALCICMS_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', BASECALCULOSUBSTITUICAO );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;


                    //Despesas
                    Lin := SerieOrcFEC_DESPESAS_ALT.Value ;
                    Dst := SerieOrcFEC_DESPESAS_DST.Value ;
                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', DESPESAS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;


                    //Valor Icm Subst
                    Lin := SerieOrcFEC_VALORICMSSUB_ALT.Value ;
                    Dst := SerieOrcFEC_VALORICMSSUB_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', VALORICMSSUB );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Ipi
                    Lin := SerieOrcFEC_IPI_ALT.Value ;
                    Dst := SerieOrcFEC_IPI_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', IPI );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //ISS
                    Lin := SerieOrcFEC_ISS_ALT.Value ;
                    Dst := SerieOrcFEC_ISS_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', ISS );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Valor Total
                    Lin := SerieOrcFEC_VALORTOTAL_ALT.Value ;
                    Dst := SerieOrcFEC_VALORTOTAL_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', VALORTOTAL );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Total da Nota
                    Lin := SerieOrcFEC_VALORNOTA_ALT.Value ;
                    Dst := SerieOrcFEC_VALORNOTA_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', TOTALNOTA );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17,NEGRITO]);
                    end;

                    //Transportadora
                    Lin := SerieOrcTRANS_NOME_ALT.Value ;
                    Dst := SerieOrcTRANS_NOME_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //End da Transportadora
                    Lin := SerieOrcTRANS_END_ALT.Value ;
                    Dst := SerieOrcTRANS_END_DST.Value ;
                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Quantidade de Itens
                    Lin := SerieOrcTRANS_QUANTIDADE_ALT.Value ;
                    Dst := SerieOrcTRANS_QUANTIDADE_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', ITEM );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Especie
                    Lin := SerieOrcTRANS_ESPECIE_ALT.Value ;
                    Dst := SerieOrcTRANS_ESPECIE_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Marca
                    Lin := SerieOrcTRANS_MARCA_ALT.Value ;
                    Dst := SerieOrcTRANS_MARCA_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Frete por Conta
                    Lin := SerieOrcTRANS_FRETECONTA_ALT.Value ;
                    Dst := SerieOrcTRANS_FRETECONTA_DST.Value ;

                    If lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, 'X', [Comp17]);
                    end;

                    //Cidade
                    Lin := SerieOrcTRANS_CID_ALT.Value ;
                    Dst := SerieOrcTRANS_CID_DST.Value ;
                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //UF
                    Lin := SerieOrcTRANS_UF_ALT.Value ;
                    Dst := SerieOrcTRANS_UF_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Numero
                    Lin := SerieOrcTRANS_NUMERO_ALT.Value ;
                    Dst := SerieOrcTRANS_NUMERO_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Placa
                    Lin := SerieOrcTRANS_PLACA_ALT.Value ;
                    Dst := SerieOrcTRANS_PLACA_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //UF do Veiculo
                    Lin := SerieOrcTRANS_UFVEIALT.Value ;
                    Dst := SerieOrcTRANS_UFVEI_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Cgc/Cpf
                    Lin := SerieOrcTRANS_CGCCPF_ALT.Value ;
                    Dst := SerieOrcTRANS_CGCCPF_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Insc Est
                    Lin := SerieOrcTRANS_INSCEST_ALT.Value ;
                    Dst := SerieOrcTRANS_INSCEST_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    //Peso Bruto
                    Lin := SerieOrcTRANS_PESOBRT_ALT.Value ;
                    Dst := SerieOrcTRANS_PESBRT_DST.Value ;

                    If Lin > 0
                    Then Begin
                         STR :=  FORMATFLOAT ('###,###,##0.00', TotPeso );

                         WHILE LENGTH(STR) < 12 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(Lin , Dst, Str, [Comp17]);
                    end;

                    //Obs
                    Lin := SerieOrcTRANS_OBS_ALT.Value ;
                    Dst := SerieOrcTRANS_OBS_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, '', [Comp17]);
                    end;

                    Lin := SerieOrcNOTA_VENDEDOR_ALT.Value ;
                    Dst := SerieOrcNOTA_VENDEDOR_DST.Value ;

                    If Lin > 0
                    Then Begin
                         Print.ImpF(Lin , Dst, NOMEVENDEDOR, [Comp17]);
                    end;
               END;
          END;
     end;
end;

Procedure TFRelEnviaCaixa.ImprimeFatura40Colunas ;
Var
   Data_Parc, Produto, Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Ret, Cont: Integer;
   Incremento: Integer;
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
          Data_Caixa   := DateToStr(Consulta_VendaDATA_CAIXA.Value);
          OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;
          NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
          REQUISICAO   := Consulta_VendaREQUISICAO.Value      ;
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
          Total        := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value);
          Desconto     := Formatfloat('###,###,##0.00', Consulta_VendaDesc_Acres.Value);
          Liquido      := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
          VlrLiquido   := Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value;

          //Todos os dados para a memoria
          Consulta_Venda_Itens.FetchAll ;

          //Visualizar ou Direto para a Impressora
          If Opcao = 'S'
          THEN BEGIN
               Print.OpcoesPreview.Preview := TRUE ;
          END
          ELSE BEGIN
               Print.OpcoesPreview.Preview := False;
          END;

          Print.OnNewPage := Nil ;
          Print.OnBeforeNewPage := Nil ;

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

          If UPPERCASE(DmApp.TIPO_IMPRESSORA) = 'EPSON' //IMPRIME EM FONTE PARA IMPRESSORA EPSON
          then begin
               //Venda ou Condicional
               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 23;
               END
               ELSE BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 25;
               END;

               If ( TRIM( DmApp.PORTA_IMPRESSORA ) <> '' )
               THEN BEGIN
                    SetDefaultPrinter( trim(DmApp.PORTA_IMPRESSORA) ) ;
                    print.PortaComunicacao  := trim(DmApp.PORTA_IMPRESSORA ) ;
                    print.SetPrinterbyPorta (trim( DmApp.PORTA_IMPRESSORA )) ;
               END
               ELSE BEGIN
                    print.PortaComunicacao  := ('LPT1') ;
                    print.SetPrinterbyPorta ('LPT1') ;
               END;

               print.Abrir;

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

               Print.ImpF(04, 01, NPEDIDO,[COMP17, NEGRITO]);
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
               Print.ImpF(11 + Incremento, 01, 'Produto   '  ,[COMP17]);
               Print.ImpF(11 + Incremento, 13, 'Descricao '  ,[COMP17]);
               Print.ImpF(12 + Incremento, 01, '       Qtd'  ,[COMP17]);
               Print.ImpF(12 + Incremento, 15, '  Unitario'  ,[COMP17]);
               Print.ImpF(12 + Incremento, 25, '     Total'  ,[COMP17]);
               Print.ImpF(13 + Incremento, 01, Replicate('=', 52),[COMP17]);

               //
               Item  := 00;

               Linha := 14 + Incremento;

               TotDesconto := 0;

               Consulta_Venda_Itens.First;

               While Not Consulta_Venda_Itens.Eof
               Do Begin
                  Print.ImpF(Linha, 01, Consulta_Venda_ItensPRODUTO.Value,[COMP17]);

                  Print.ImpF(Linha, 12, COPY(Consulta_Venda_ItensNOME_PRODUTO.Value,1, 28),[COMP17]);

                  Linha := Linha + 1;

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensQUANTIDADE.Value);
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.ImpF(Linha, 01, STR ,[COMP17]);

                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.ImpF(Linha, 15, STR ,[COMP17]);

                  TotDesconto := TotDesconto + Consulta_Venda_ItensDESCONTO.Value ;

                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.ImpF(Linha, 25, STR,[COMP17] );

                  Consulta_Venda_Itens.Next;

                  Item := Item + trunc(Consulta_Venda_ItensQUANTIDADE.Value);

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

               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
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

                    IF ARREDONDA(CONSULTA_VENDAENTRADA.Value,2) > 0
                    THEN BEGIN
                         STR := FORMATFLOAT('###,###,##0.00', ARREDONDA(CONSULTA_VENDAENTRADA.Value,2)) ;

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

                    Consulta_Venda_Parc.First ;

                    while not Consulta_Venda_Parc.eof do
                    begin
                         Data_Parc := Consulta_Venda_ParcVENCTO.text ;

                         Str := FormatFloat ('###,###0.00', Consulta_Venda_ParcValor.value );

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

                         Consulta_Venda_Parc.next ;

                         Linha := Linha + 1;
                    end;
               END
               ELSE BEGIN
                    Print.ImpF(Linha, 01, '----------------C O N D I C I O N A L---------------',[COMP17]);

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Str :=  '_';

                    WHILE LENGTH(STR) < 30 DO
                    BEGIN
                         STR := STR + '-';
                    END;

                    Print.ImpF(Linha, 01, Str ,[COMP17]);

                    Linha := Linha + 1;

                    Print.ImpF(Linha, 01, Razao ,[COMP17]);

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Print.ImpF(Linha, 01, DMAPP.MENSAGEM_CONDIC ,[COMP17]);

                    Linha := Linha + 1;
               END;

               Linha := Linha + 1;
               Linha := Linha + 1;

               Print.ImpF(Linha, 01, 'NAO VALE COMO COMPROVANTE FISCAL',[COMP17]);

               Linha := Linha + 1;

               Print.ImpF(Linha, 01, Replicate('-', 52),[COMP17]);
          end;

          If UPPERCASE(DmApp.TIPO_IMPRESSORA) = 'DIEBOLD' //IMPRIME EM FONTE PARA IMPRESSORA DIEBOLD
          then begin
               //Venda ou Condicional
               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 6;
               END
               ELSE BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 6;
               END;

               If ( TRIM( DmApp.PORTA_IMPRESSORA ) <> '' )
               THEN BEGIN
                    SetDefaultPrinter( trim(DmApp.PORTA_IMPRESSORA) ) ;
                    print.PortaComunicacao  := trim(DmApp.PORTA_IMPRESSORA ) ;
                    print.SetPrinterbyPorta (trim( DmApp.PORTA_IMPRESSORA )) ;
               END
               ELSE BEGIN
                    print.PortaComunicacao  := ('LPT1') ;
                    print.SetPrinterbyPorta ('LPT1') ;
               END;

               print.FonteTamanhoPadrao := S20cpp ;

               print.Abrir;

               Print.Imp(01, 01, Replicate('-', 56));

               Print.Imp(02, 01, DMAPP.Nome );
               Print.Imp(03, 01, DMAPP.ENDER + ' FONE ' + DmApp.FONE );

               Print.Imp(04, 01, NPEDIDO);
               Print.Imp(04, 12, NomeVendedor);

               Print.Imp(05, 01, 'NOME ' + Razao);

               Incremento := 0;

               IF ( TRIM( Endereco ) <> '' )
               THEN BEGIN
                    Print.Imp(06, 01, 'END  ' + TRIM( Endereco   ));
                    Print.Imp(07, 01, 'BAI  ' + TRIM( NomeBairro ));
                    Print.Imp(08, 01, 'CID  ' + TRIM( NomeCidade ));

                    Incremento := 3;
               END;

               Print.Imp(06 + Incremento, 01, 'DATA ' + Data + ' ' + Timetostr(time));

               Print.Imp(07 + Incremento, 01, 'FONE ' + NUMEROFONE);

               Print.Imp(08 + Incremento, 01, Replicate('-', 60));

               Print.Imp(09 + Incremento, 01, DmApp.PDV_MENSAGEM );

               //CABECALHO DO PEDIDO
               Print.Imp(11 + Incremento, 01, 'Produto   '  );
               Print.Imp(11 + Incremento, 15, 'Descricao '  );
               Print.Imp(12 + Incremento, 01, '     Qtd'  );
               Print.Imp(12 + Incremento, 40, '  Unitario'  );
               Print.Imp(12 + Incremento, 51, '     Total'  );
               Print.Imp(13 + Incremento, 01, Replicate('=', 60));

               //
               Item  := 00;

               Linha := 14 + Incremento;

               TotDesconto := 0;

               Consulta_Venda_Itens.First;

               While Not Consulta_Venda_Itens.Eof
               Do Begin
                  Print.Imp(Linha, 01, Consulta_Venda_ItensPRODUTO.Value);

                  Print.Imp(Linha, 15, COPY(Consulta_Venda_ItensNOME_PRODUTO.Value,1, 28));

                  Linha := Linha + 1;

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensQUANTIDADE.Value);
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.Imp(Linha, 01, STR);

                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.Imp(Linha, 40, STR);

                  TotDesconto := TotDesconto + Consulta_Venda_ItensDESCONTO.Value ;

                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.Imp(Linha, 50, STR);

                  Consulta_Venda_Itens.Next;

                  Item := Item + trunc(Consulta_Venda_ItensQUANTIDADE.Value);

                  Linha := Linha + 1;
               end;//

               //TOTAL SEM DESCONTO
               STR :=  TOTAL ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.Imp(Linha, 40, '--------------------');
               Linha := Linha + 1;
               Print.Imp(Linha, 01, 'TOTAL..........:');
               Print.Imp(Linha, 50, STR);

               Linha := Linha + 1;

               //DESCONTO
               STR :=  DESCONTO ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.Imp(Linha, 01, 'DESCONTO.......:');
               Print.Imp(Linha, 50, STR );

               Linha := Linha + 1;

               //TOTAL
               STR :=  Liquido ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.Imp(Linha, 01, 'LIQUIDO........:');
               Print.Imp(Linha, 50, STR );

               Linha := Linha + 1;

               //PECAS
               STR :=  FORMATFLOAT ('###,###,##0', Item );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.Imp(Linha, 01, 'TOTAL DE PECAS.:');
               Print.Imp(Linha, 50, STR);

               Linha := Linha + 1;

               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) <> 'CON'
               THEN BEGIN
                    Print.Imp(Linha, 01, '---------------FORMAS DE PAGAMENTO-------------');

                    Linha := Linha + 1;
                    Linha := Linha + 1;

                    Str :=  Condicoes;

                    WHILE LENGTH(STR) < 27 DO
                    BEGIN
                         STR := STR + '.';
                    END;

                    Print.Imp(Linha, 01, Str);

                    STR :=  LIQUIDO;

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    Print.Imp(Linha, 50, Str);

                    Linha := Linha + 1;
                    Linha := Linha + 1;

                    IF ARREDONDA(CONSULTA_VENDAENTRADA.Value,2) > 0
                    THEN BEGIN
                         STR := FORMATFLOAT('###,###,##0.00', ARREDONDA(CONSULTA_VENDAENTRADA.Value,2)) ;

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         DATA_PARC := 'ENTRADA' ;

                         WHILE LENGTH(DATA_PARC) < 27 DO
                         BEGIN
                              DATA_PARC := DATA_PARC + '.';
                         END;

                         Print.Imp(Linha, 01, DATA_PARC );

                         Print.Imp(Linha, 50, STR );

                         Linha := Linha + 1;
                    END;

                    Consulta_Venda_Parc.First ;

                    while not Consulta_Venda_Parc.eof do
                    begin
                         Data_Parc := Consulta_Venda_ParcVENCTO.text ;

                         Str := FormatFloat ('###,###0.00', Consulta_Venda_ParcValor.value );

                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         WHILE LENGTH(DATA_PARC) < 27 DO
                         BEGIN
                              DATA_PARC := DATA_PARC + '.';
                         END;

                         Print.Imp(Linha, 01, DATA_PARC );

                         Print.Imp(Linha, 50, Str );

                         Consulta_Venda_Parc.next ;

                         Linha := Linha + 1;

                         Linha := Linha + 1;
                    end;
               END
               ELSE BEGIN
                    Print.Imp(Linha, 01, '-------------C O N D I C I O N A L-------------');

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Str :=  '_';

                    WHILE LENGTH(STR) < 27 DO
                    BEGIN
                         STR := STR + '-';
                    END;

                    Print.Imp(Linha, 01, Str );

                    Linha := Linha + 1;

                    Print.Imp(Linha, 01, Razao );

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Print.Imp(Linha, 01, DMAPP.MENSAGEM_CONDIC );

                    Linha := Linha + 4;
               END;

               Linha := Linha + 1;
               Linha := Linha + 1;

               Print.Imp(Linha, 01, 'NAO VALE COMO COMPROVANTE FISCAL');

               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;

               Print.Imp(Linha, 01, Replicate('-', 60));
               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Print.Imp(Linha, 01, '-');
          end;


          If UPPERCASE(DmApp.TIPO_IMPRESSORA) = 'CITIZEN' //IMPRIME EM FONTE PARA IMPRESSORA EPSON
          then begin
               //Venda ou Condicional
               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 16;
               END
               ELSE BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 16;
               END;

               print.Abrir;

               Print.Imp(01, 01, Replicate('-', 39) + '0');
               Print.Imp(02, 18, 'PEDIDO');
               Print.Imp(03, 01, NPEDIDO);
               Print.Imp(03, 12 , NomeVendedor);
               Print.Imp(04, 01, 'NOME ' + Razao);
               Print.Imp(05, 01, 'DATA ' + Data);
               Print.Imp(06, 01, Replicate('-', 40));

               //CABECALHO DO PEDIDO
               Print.Imp(07, 01, 'Produto   '  );
               Print.Imp(07, 09, 'Descricao '  );
               Print.Imp(08, 10, '       Qtd'  );
               Print.Imp(08, 20, '  Unitario'  );
               Print.Imp(08, 30, '     Total'  );
               Print.Imp(09, 01, Replicate('=', 40));

               //
               Item  := 00;
               Linha := 10;

               TotDesconto := 0;

               Consulta_Venda_Itens.First;

               While Not Consulta_Venda_Itens.Eof
               Do Begin
                  Print.Imp(Linha, 01, Consulta_Venda_ItensPRODUTO.Value);

                  Print.Imp(Linha, 12, COPY(Consulta_Venda_ItensNOME_PRODUTO.Value,1, 28));

                  Linha := Linha + 1;

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.imp(Linha, 10, STR );

                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.imp(Linha, 20, STR );

                  TotDesconto := TotDesconto + Consulta_Venda_ItensDESCONTO.Value ;

                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.imp(Linha, 30, STR );

                  Consulta_Venda_Itens.Next;

                  Item := Item + 1;

                  Linha := Linha + 1;
               end;//

               Linha := Linha + 1;
               Linha := Linha + 1;

               //TOTAL
               STR :=  Liquido ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.imp(Linha, 20, '--------------------');
               Linha := Linha + 1;
               Print.imp(Linha, 01, 'TOTAL..........:');
               Print.imp(Linha, 30, STR );

               Linha := Linha + 1;

               //PECAS
               STR :=  FORMATFLOAT ('###,###,##0', Item );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.imp(Linha, 01, 'TOTAL DE PECAS.:');
               Print.imp(Linha, 30, STR);

               Linha := Linha + 1;

               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    Print.imp(Linha, 01, '-----------FORMAS DE PAGAMENTO----------');

                    Linha := Linha + 1;
                    Linha := Linha + 1;

                    SelFormaPgto.Close ;

                    SelFormaPgto.SQL.Clear ;
                    SelFormaPgto.SQL.Add( ' Select * From FIN_FORMAS_PAGTO ' );
                    SelFormaPgto.SQL.Add( ' Where Cnpj = :CNPJ             ' );
                    SelFormaPgto.SQL.Add( ' Order By Codigo                ' );

                    SelFormaPgto.Open ;

                    Cont := 0;

                    Repeat
                          If SelFormaPgtoAVISTA.Value = 'S'
                          THEN BEGIN
                               VlrParcelado := VlrLiquido + ((VlrLiquido * SelFormaPgtoACRESCIMO.Value )/100);
                               VlrParcelado := VlrParcelado - ((VlrParcelado * SelFormaPgtoDESCONTO.Value  )/100);
                          END
                          ELSE BEGIN
                               VlrParcelado := VlrLiquido + ((VlrLiquido * SelFormaPgtoACRESCIMO.Value )/100);
                               VlrParcelado := VlrParcelado - ((VlrParcelado * SelFormaPgtoDESCONTO.Value  )/100);

                               If SelFormaPgtoNPARCELAS.Value <> 0
                               then begin
                                    VlrParcelado := VlrParcelado / SelFormaPgtoNPARCELAS.Value;
                               end
                               else begin
                                    VlrParcelado := VlrParcelado ;
                               end;
                          END;

                          Str := SelFormaPgtoNOME.Value ;

                          WHILE LENGTH(STR) < 20 DO
                          BEGIN
                               STR := STR + '.';
                          END;

                          Print.imp(Linha, 01, Str );

                          STR :=  FORMATFLOAT ('###,###,##0.00', VlrParcelado );
                          WHILE LENGTH(STR) < 10 DO
                          BEGIN
                               STR := ' ' + STR ;
                          END;

                          Print.imp(Linha, 30, Str );

                          Linha := Linha + 1;

                          SelFormaPgto.Next ;

                          Cont := Cont + 1;
                    until Cont > 3 ;
               END;

               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Linha := Linha + 1;
               Print.Imp(Linha, 01, Replicate('-', 40));
          end;

          ///IMPRESSORA BEMATECH MP20CI
          If UPPERCASE(DmApp.TIPO_IMPRESSORA) = 'MP20CI' //IMPRIME EM FONTE PARA IMPRESSORA BEMATECH
          then begin

               ret := 0;


               //MP20CI

               If Ret = -2
               Then BEGIN
                    MessageDlg('Parâmetro inválido na função "ConfiguraModeloImpressora."', mtError, [mbOk], 0 );
                    Exit;
               END;


//               HabilitaExtratoLongo(1);

//               ConfiguraTamanhoExtrato(50);

               if ret <= 0
               then Begin
                   MessageDlg('Problemas ao abrir a porta de Comunicação.', mtError, [mbOk], 0 );
                   Exit;
               end;


               //ITALICO + NEGRITO


               //
               Item  := 00;

               TotDesconto := 0;

               Consulta_Venda_Itens.First;

               While Not Consulta_Venda_Itens.Eof
               Do Begin
                  Str := COPY(Consulta_Venda_ItensNOME_PRODUTO.Value,1, 16) ;
                  while length(str) <= 16 do
                  begin
                       Str := Str + ' ' ;
                  end;

                  Produto := Str ;

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0',Consulta_Venda_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 4 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Produto := Produto + Str  ;

                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 7 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Produto := Produto + Str  ;

                  TotDesconto := TotDesconto + Consulta_Venda_ItensDESCONTO.Value ;

                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                  WHILE LENGTH(STR) < 8 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Produto := Produto + Str  ;

                  //IMPRIME PRODUTOS

                  Consulta_Venda_Itens.Next;

                  Item := Item + 1;

               end;//


               //DESCONTO
               IF ARREDONDA(CONSULTA_VENDADESC_ACRES.Value,2) <> 0
               THEN BEGIN
                    //BRUTO
                    STR := FORMATFLOAT('###,##0.00', ARREDONDA( VLRLIQUIDO - CONSULTA_VENDADESC_ACRES.Value,2));

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;



                    //DESCONTO
                    STR := FORMATFLOAT('###,##0.00', ARREDONDA(CONSULTA_VENDADESC_ACRES.Value,2));

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

               END;

               //TOTAL
               STR :=  Liquido ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;


               //PECAS
               STR :=  FORMATFLOAT ('###,###,##0', Item );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Produto :=  'TOTAL DE PECAS.:';
               WHILE LENGTH(Produto) < 26 DO
               BEGIN
                    Produto := ' ' + Produto  ;
               END;

               Produto := Produto + Str ;


               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN


                    //ENTRADA
                    IF ARREDONDA(CONSULTA_VENDAENTRADA.Value,2) > 0
                    THEN BEGIN

                         //TOTAL
                         STR := FORMATFLOAT('###,##0.00', ARREDONDA(CONSULTA_VENDAENTRADA.Value,2));
                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;


                    END;

                    //PARCELAS
                    Consulta_Venda_Parc.First;

                    While Not Consulta_Venda_parc.Eof
                    Do Begin
                       PRODUTO := COPY(Consulta_Venda_ParcVENCTO.TEXT,1, 16) ;

                       while length(PRODUTO) <= 25 do
                       begin
                            PRODUTO := PRODUTO + ' ' ;
                       end;

                       //TOTAL
                       STR := FORMATFLOAT('###,##0.00', ARREDONDA(Consulta_Venda_ParcVALOR.Value,2));

                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;


                       Consulta_Venda_Parc.next ;
                    end;
               END
               ELSE BEGIN

                    Produto := RAZAO ;

               END;

          end;


          ///IMPRESSORA 30 COLUNAS
          If UPPERCASE(DmApp.TIPO_IMPRESSORA) = 'TEXTO'
          then begin
               LINHA := 2 ;

               //Venda ou Condicional
               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 23;
               END
               ELSE BEGIN
                    Print.TamanhoQteLinhas := Consulta_Venda_Itens.RecordCount + 25;
               END;

               If ( TRIM( DmApp.PORTA_IMPRESSORA ) <> '' )
               THEN BEGIN
                    SetDefaultPrinter( trim(DmApp.PORTA_IMPRESSORA) ) ;
                    print.PortaComunicacao  := trim(DmApp.PORTA_IMPRESSORA ) ;
                    print.SetPrinterbyPorta (trim( DmApp.PORTA_IMPRESSORA )) ;
               END
               ELSE BEGIN
                    print.PortaComunicacao  := ('LPT1') ;
                    print.SetPrinterbyPorta ('LPT1') ;
               END;

               Print.Abrir ;

               //ITALICO + NEGRITO
               Print.ImpF(linha, 01, Replicate('-', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, ('PEDIDO ' + NPEDIDO), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, ('VENDEDOR ' + NomeVendedor), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, ('NOME ' + Razao), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, ('DATA ' + Data), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate('-', 36), [Comp17, Negrito] );

               //CABECALHO DO PEDIDO
               Linha := Linha + 1;

               Print.ImpF(linha, 01, ('Produto           Qtd   Unit   Total'), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate('=', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               //
               Item  := 00;

               TotDesconto := 0;

               Consulta_Venda_Itens.First;

               While Not Consulta_Venda_Itens.Eof
               Do Begin
                  Str := COPY(Consulta_Venda_ItensNOME_PRODUTO.Value,1, 16) ;
                  while length(str) <= 16 do
                  begin
                       Str := Str + ' ' ;
                  end;

                  Produto := Str ;

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0',Consulta_Venda_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 4 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Produto := Produto + Str  ;

                  //UNITARIO
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                  WHILE LENGTH(STR) < 7 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Produto := Produto + Str  ;

                  TotDesconto := TotDesconto + Consulta_Venda_ItensDESCONTO.Value ;

                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                  WHILE LENGTH(STR) < 8 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Produto := Produto + Str  ;

                  //IMPRIME PRODUTOS
                  Print.ImpF(linha, 01, (Produto), [Comp17, Negrito] );

                  Consulta_Venda_Itens.Next;

                  Item := Item + 1;

                  Linha := Linha + 1;
               end;//

               Print.ImpF(linha, 01, Replicate('=', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               //DESCONTO
               IF ARREDONDA(CONSULTA_VENDADESC_ACRES.Value,2) <> 0
               THEN BEGIN
                    //BRUTO
                    STR := FORMATFLOAT('###,##0.00', ARREDONDA( VLRLIQUIDO - CONSULTA_VENDADESC_ACRES.Value,2));

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    Print.ImpF(linha, 01, '          BRUTO..........:' + Str , [Comp17, Negrito] );

                    Linha := Linha + 1;

                    //DESCONTO
                    STR := FORMATFLOAT('###,##0.00', ARREDONDA(CONSULTA_VENDADESC_ACRES.Value,2));

                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    Print.ImpF(linha, 01, '          DESCONTO.......:' + Str , [Comp17, Negrito] );

                    Linha := Linha + 1;
               END;

               //TOTAL
               STR :=  Liquido ;
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Print.ImpF(linha, 01, '          TOTAL..........:' + Str , [Comp17, Negrito] );

               Linha := Linha + 1;

               //PECAS
               STR :=  FORMATFLOAT ('###,###,##0', Item );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               Produto :=  'TOTAL DE PECAS.:';
               WHILE LENGTH(Produto) < 26 DO
               BEGIN
                    Produto := ' ' + Produto  ;
               END;

               Produto := Produto + Str ;

               Print.ImpF(linha, 01, Produto, [Comp17, Negrito] );

               Linha := Linha + 1;

               If UPPERCASE(Consulta_VendaTIPO_VENDA.Value) = 'VEN'
               THEN BEGIN
                    Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

                    Linha := Linha + 1;

                    Print.ImpF(linha, 01, '---------FORMAS DE PAGAMENTO--------', [Comp17, Negrito] );

                    //ENTRADA
                    IF ARREDONDA(CONSULTA_VENDAENTRADA.Value,2) > 0
                    THEN BEGIN
                         Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

                         //TOTAL
                         STR := FORMATFLOAT('###,##0.00', ARREDONDA(CONSULTA_VENDAENTRADA.Value,2));
                         WHILE LENGTH(STR) < 10 DO
                         BEGIN
                              STR := ' ' + STR ;
                         END;

                         Print.ImpF(linha, 01, '          ENTRADA........:' + Str , [Comp17, Negrito] );

                         Linha := Linha + 1;

                         Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

                         Linha := Linha + 1;
                    END;

                    //PARCELAS
                    Consulta_Venda_Parc.First;

                    Linha := Linha + 1;

                    While Not Consulta_Venda_parc.Eof
                    Do Begin
                       PRODUTO := COPY(Consulta_Venda_ParcVENCTO.TEXT,1, 16) ;

                       while length(PRODUTO) <= 25 do
                       begin
                            PRODUTO := PRODUTO + ' ' ;
                       end;

                       //TOTAL
                       STR := FORMATFLOAT('###,##0.00', ARREDONDA(Consulta_Venda_ParcVALOR.Value,2));

                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.ImpF( linha, 01, FormataMp20Ci(Produto+STR) , [Comp17, Negrito] );

                       Linha := Linha + 1;

                       Consulta_Venda_Parc.next ;
                    end;
               END
               ELSE BEGIN
                    Linha := Linha + 1;

                    Print.ImpF(linha, 01, '-------------CONDICIONAL------------', [Comp17, Negrito] );

                    Linha := Linha + 1;

                    Produto := RAZAO ;

                    Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

                    Linha := Linha + 1;

                    Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

                    Linha := Linha + 1;

                    Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

                    Linha := Linha + 1;

                    Print.ImpF(linha, 01, (Produto) , [Comp17, Negrito] );

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Linha := Linha + 1;

                    Print.ImpF(linha, 01, DMAPP.MENSAGEM_CONDIC , [Comp17, Negrito] );

                    Linha := Linha + 1;
               END;

               Print.ImpF(linha, 01, Replicate('-', 36) , [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );

               Linha := Linha + 1;

               Print.ImpF(linha, 01, Replicate(' ', 36), [Comp17, Negrito] );
          end;

     end;
end;

Function TFRelEnviaCaixa.FormataMP20CI ( Str : String ) : String;
VAR
   I, LEN: INTEGER;
   AUX, AUX1: STRING;
Begin
     LEN := LENGTH(STR);

     AUX := '';
     AUX1 := '';

     I := 1;

     WHILE I <= LEN DO
     BEGIN
          AUX := COPY ( STR, I, 1 );

          IF AUX = 'Ç'
          THEN
              AUX := 'C' ;

          IF AUX = 'Á'
          THEN
              AUX := 'A' ;

          IF AUX = 'É'
          THEN
              AUX := 'E' ;

          IF AUX = 'Í'
          THEN
              AUX := 'I' ;

          IF AUX = 'Ó'
          THEN
              AUX := 'O' ;

          IF AUX = 'Ú'
          THEN
              AUX := 'U' ;

          IF AUX = 'Ã'
          THEN
              AUX := 'A' ;

          IF AUX = 'Õ'
          THEN
              AUX := 'O' ;

          IF AUX = 'Ô'
          THEN
              AUX := 'O' ;

          IF AUX = 'Â'
          THEN
              AUX := 'A' ;

          IF AUX = 'Ê'
          THEN
              AUX := 'E' ;

          IF AUX = 'Î'
          THEN
              AUX := 'I' ;

          AUX1 := AUX1 + AUX ;

          I := I + 1;
     END;

     Str :=Copy ( AUX1, 1, 36 );

     While Length ( Str ) < 36 do
     begin
       Str := Str + ' ';
     end;

     Result := Str ;
End;

Procedure TFRelEnviaCaixa.CorpoFatura ;
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

          IF DMApp.IMP_VENDA_NOMINAL = 'S'
          THEN BEGIN
               NomeCliente  := Consulta_VendaNOME_CONSUMIDOR.Value           ;

               IF ( TRIM ( Consulta_VendaENDERECO_CONSUMIDOR.Value ) <> '' )
               THEN
                   Endereco     := Consulta_VendaENDERECO_CONSUMIDOR.Value
               ELSE
                   Endereco     := Ver_PessoaENDERECO.Value + ', N ' + Ver_PessoaNUMERO.Value ;

               IF ( TRIM ( Consulta_VendaCIDADE_CONSUMIDOR.Value ) <> '' )
               THEN
                   NomeCidade   := Consulta_VendaCIDADE_CONSUMIDOR.Value
               ELSE
                   NomeCidade   := Ver_PessoaCIDADE.Value ;

               NomeBairro   := '';

               If Length(Consulta_VendaDOCUMENTOS_CONSUMIDOR.Value) > 11
               then begin
                    Documentos   := mascaracnpj( Consulta_VendaDOCUMENTOS_CONSUMIDOR.Value );
               end
               else begin
                    Documentos   := mascaracpf(Consulta_VendaDOCUMENTOS_CONSUMIDOR.Value);
               end;
          END
          ELSE BEGIN
               NomeCliente  := Ver_PessoaFANTASIA.Value           ;
               Endereco     := Ver_PessoaENDERECO.Value + ', N ' + Ver_PessoaNUMERO.Value ;
               NomeCidade   := Ver_PessoaCIDADE.Value;
               NomeBairro   := Ver_PessoaBAIRRO.Value;

               If Length(Ver_PessoaCPF_CGC.Value) > 11
               then begin
                    Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value);
               end
               else begin
                    Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);
               end;
          END;

          Data         := DateToStr(Consulta_VendaDATA.Value);
          Data_Caixa   := DateToStr(Consulta_VendaDATA_CAIXA.Value);
          OBSERVACAO   := Consulta_VendaOBSERVACAO.Value     ;
          NomeVendedor := Consulta_VendaNOME_VENDEDOR.Value   ;
          REQUISICAO   := Consulta_VendaREQUISICAO.Value      ;
          TipoDoc      := Consulta_VendaTIPO_DOCTO.Value  ;
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
          PedFechado   := Consulta_VendaFechada.Value         ;
          NPedido      := preenche(IntToStr(PedidoNumero),'0',6);
          Peso         := Formatfloat('###,###,##0.00', Consulta_VendaPeso.Value);
          Volume       := Formatfloat('###,###,##0.00', Consulta_VendaVolume.Value);
          Liquido      := Formatfloat('###,###,##0.00', Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value);
          VlrEntrada   := Formatfloat('###,###,##0.00', Consulta_VendaEntrada.Value);
          LocalCobranca:= Consulta_VendaLocal_COBRANCA.Value ;

          TotalFatura  := Consulta_VendaTotal.Value + Consulta_VendaDESC_ACRES.Value ;

          TotalDescAcresc := Consulta_VendaDESC_ACRES.Value ;

//////
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

          print.Abrir;

          //
          Item       := 1;
          TotProdutos:= 0;

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

             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.ImpF(Linha, 01, Consulta_Venda_ItensPRODUTO.Value, [Comp17]);

             If DmaPP.CASAS_QNTDE = 'N'
             THEN BEGIN
                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0', Consulta_Venda_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;
             END
             ELSE BEGIN
                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;
             END;

             TotProdutos := TotProdutos + Consulta_Venda_ItensQUANTIDADE.Value ;
             //qtde
             Print.impf(Linha, 10, STR ,[comp17]);

             Complemento  := COPY(Consulta_Venda_ItensNOME_PRODUTO.Value + ' ' + Consulta_Venda_ItensCOMPLEMENTO.Value, 1 , 50 );
             Complemento1 := COPY(Consulta_Venda_ItensNOME_PRODUTO.Value + ' ' + Consulta_Venda_ItensCOMPLEMENTO.Value, 51 , 50 );

             Print.ImpF(Linha, 17, Complemento , [Comp17]);

             IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
             THEN
                 Print.ImpF(Linha, 17, Complemento, [Comp17]);

             IF TRIM(COMPLEMENTO1) <> ''
             THEN BEGIN
                  //
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

                  Print.ImpF(Linha, 17, TRIM(COMPLEMENTO1) , [Comp17]);

                  IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
                  THEN
                      Print.ImpF(Linha, 17, TRIM(COMPLEMENTO1) , [Comp17]);
             END;

             ///SERVICO
             Complemento  := COPY(Consulta_Venda_ItensSERVICO.Value, 1   , 50 );
             Complemento1 := COPY(Consulta_Venda_ItensSERVICO.Value, 51  , 50 );
             Complemento2 := COPY(Consulta_Venda_ItensSERVICO.Value, 101 , 50 );
             Complemento3 := COPY(Consulta_Venda_ItensSERVICO.Value, 151 , 50 );

             IF TRIM(COMPLEMENTO) <> ''
             THEN BEGIN
                  //
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

                  Print.ImpF(Linha, 17, TRIM(COMPLEMENTO) , [Comp17]);

                  IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
                  THEN
                      Print.ImpF(Linha, 17, TRIM(COMPLEMENTO) , [Comp17]);
             END;

             IF TRIM(COMPLEMENTO1) <> ''
             THEN BEGIN
                  //
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

                  Print.ImpF(Linha, 17, TRIM(COMPLEMENTO1) , [Comp17]);

                  IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
                  THEN
                      Print.ImpF(Linha, 17, TRIM(COMPLEMENTO1) , [Comp17]);
             END;

             IF TRIM(COMPLEMENTO2) <> ''
             THEN BEGIN
                  //
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

                  Print.ImpF(Linha, 17, TRIM(COMPLEMENTO2) , [Comp17]);

                  IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
                  THEN
                      Print.ImpF(Linha, 17, TRIM(COMPLEMENTO2) , [Comp17]);
             END;

             IF TRIM(COMPLEMENTO3) <> ''
             THEN BEGIN
                  //
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

                  Print.ImpF(Linha, 17, TRIM(COMPLEMENTO3) , [Comp17]);

                  IF DMAPP.Perfil_ComputadorIMP_FORCADO_PROD_PED.VALUE = 'S'
                  THEN
                      Print.ImpF(Linha, 17, TRIM(COMPLEMENTO3) , [Comp17]);
             END;

             {IF ( DMAPP.TIPO_EMPRESA = 'Tintas' )
             THEN BEGIN
                  Imprime_Vendas_Cor ( Consulta_VendaCODIGO.VALUE, Consulta_Venda_ItensPRODUTO.Value, Consulta_Venda_ItensSequencia.value );

                  IF TRIM(Imp_Vendas_CorCODIGO.TEXT) <> ''
                  THEN BEGIN
                       str := '' ;

                       while not Imp_Vendas_Cor.eof do
                       begin
                            IF Imp_Vendas_CorQUANTIDADE.VALUE > 0
                            THEN BEGIN
                                 if str = ''
                                 then
                                     Str := Imp_Vendas_CorNome.value + ' QNTDE ' + Imp_Vendas_CorQUANTIDADE.TEXT
                                 else
                                     str := Str + ' / ' + Imp_Vendas_CorNome.value + ' QNTDE ' + Imp_Vendas_CorQUANTIDADE.TEXT ;
                            end;

                            Imp_Vendas_Cor.next ;
                       END;

                       if str <> ''
                       then begin
                            Item := Item + 2;

                            Inc(Linha);

                            Print.ImpF(Linha, 17, STR, [Comp17]);

                            Inc(Linha);
                       end;
                  END;

                  Imp_Vendas_Cor.CLOSE ;
             END;}

             //VOLUME
             TotVolume := TotVolume + (Consulta_Venda_ItensVOLUME.Value * Consulta_Venda_ItensQUANTIDADE.Value);

             //PESO
             TotPeso   := TotPeso + (Consulta_Venda_ItensPESO.Value * Consulta_Venda_ItensQUANTIDADE.Value);

             //UNIDADE
             Print.ImpF(Linha, 53, Consulta_Venda_ItensUNIDADE.Value + ' C/ ' + Consulta_Venda_ItensSUBUNIDADE.TEXT, [Comp17]);

             If DmaPP.EMBUTIR_JUROS = 'S'
             THEN BEGIN

                  Unitario := Consulta_Venda_ItensPRC_UNITARIO.Value - Consulta_Venda_ItensDESCONTO.Value ;

                  IF (TotalFatura - TotalDescAcresc) > 0
                  THEN
                      Porcentagem := unitario  / (TotalFatura - TotalDescAcresc)
                  ELSE
                      Porcentagem := 0;

                  Unitario := Unitario + ( Porcentagem * TotalDescAcresc );

                  IF DmApp.IMP_DESC_AGRUPADO = 'S'
                  THEN BEGIN
                       //UNITARIO
                       STR :=  FORMATFLOAT ('###,###,##0.00', Unitario );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, 62, STR ,[comp17]);
                  END
                  ELSE BEGIN
                       Unitario := Consulta_Venda_ItensPRC_UNITARIO.Value ;

                       Porcentagem := unitario  / TotalFatura ;

                       Unitario := Unitario + ( Porcentagem * TotalDescAcresc );

                       //UNITARIO
                       STR :=  FORMATFLOAT ('###,###,##0.00', Unitario );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, 62, STR ,[comp17]);

                       //DESCONTO
                       STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensDESCONTO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, 68, STR ,[comp17]);
                  END;
             END
             ELSE BEGIN
                  IF DmApp.IMP_DESC_AGRUPADO = 'S'
                  THEN BEGIN
                       //UNITARIO
                       STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensPRC_UNITARIO.Value - Consulta_Venda_ItensDESCONTO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, 59, STR ,[comp17]);
                  END
                  ELSE BEGIN
                       //UNITARIO
                       STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Venda_ItensPRC_UNITARIO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, 60, STR ,[comp17]);

                       //DESCONTO
                       STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensDESCONTO.Value );
                       WHILE LENGTH(STR) < 10 DO
                       BEGIN
                            STR := ' ' + STR ;
                       END;

                       Print.impf(Linha, 68, STR ,[comp17]);
                  END;
             END;

             TotDesconto := TotDesconto + ( Consulta_Venda_ItensDESCONTO.Value * Consulta_Venda_ItensQUANTIDADE.Value );

             VlrBruto   := VlrBruto   + ( Consulta_Venda_ItensPRC_UNITARIO.Value *  Consulta_Venda_ItensQUANTIDADE.Value );
             VlrLiquido := VlrLiquido + ( (Consulta_Venda_ItensPRC_UNITARIO.Value - Consulta_Venda_ItensDESCONTO.Value ) *  Consulta_Venda_ItensQUANTIDADE.Value  );

             If DmaPP.EMBUTIR_JUROS = 'S'
             THEN BEGIN
                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Unitario *  Consulta_Venda_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 74, STR ,[comp17]);
             END
             ELSE BEGIN
                  //TOTAL
                  STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Venda_ItensTotal.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 74, STR ,[comp17]);
             END;

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
                  If Linha >= 56 //aqui mano
                  Then
                      Print.Novapagina;
             end;
          end;//

          TotDesconto := TotDesconto * -1 ;

          Liquido      := Formatfloat('###,###,##0.00', VlrLiquido + Consulta_VendaDESC_ACRES.Value );

          IF DmApp.IMP_DESC_AGRUPADO = 'S'
          THEN BEGIN
               Total  := Formatfloat('###,###,##0.00', VlrBruto + TotDesconto );

               //Acrescenta o Total dos descontos Unitários com o desconto total
               TotDesconto := Consulta_VendaDESC_ACRES.Value ;
          END
          ELSE BEGIN
               //Acrescenta o Total dos descontos Unitários com o desconto total
               TotDesconto := TotDesconto +  Consulta_VendaDESC_ACRES.Value ;

               Total  := Formatfloat('###,###,##0.00', VlrBruto );
          END;
     end;
end;

Procedure TFRelEnviaCaixa.CorpoOrcamento;
Var
   Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Cont: Integer;
begin
     With DmVendas do
     begin
        Proc_Imprime_Orcamento (PedidoNumero);

        VerPessoa ( Consulta_OrcamentoPESSOA_FJ.Value );

        Razao    := Ver_PessoaCodigo.Text + '-' + Consulta_OrcamentoNOME_RAZAO.Value;
        REQUISICAO   := ''      ;
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
          Peso         := Formatfloat('###,###,##0.00', Consulta_OrcamentoPeso.Value);
          Volume       := Formatfloat('###,###,##0.00', Consulta_OrcamentoVolume.Value);
          Total        := Formatfloat('###,###,##0.00', Consulta_Orcamentototal.Value);
          Liquido      := Formatfloat('###,###,##0.00', Consulta_OrcamentoTotal.Value + Consulta_OrcamentoDESC_ACRESC.Value);
          Validade     := datetostr(Consulta_OrcamentoValidade.Value);

          //NUMERO DE LINHAS
          If DmApp.ITENSORCAMENTOORC = 33
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

////
          Total_Orcamento  := 0 ;
          Total_Orcamento2 := 0 ;
          TotDesconto      := 0 ;

          Consulta_Orcamento_Itens.First;

          While Not Consulta_Orcamento_Itens.Eof
          Do Begin
             //IMPRESSAO DE ORCAMENTO DETALHADO
             IF DmaPP.TIPO_ORCAMENTO = 'Detalhado' THEN
             BEGIN
                  Print.ImpF(Linha, 01, Consulta_Orcamento_ItensPRODUTO.Value, [Comp17]);

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',Consulta_Orcamento_ItensQUANTIDADE.Value );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 10, STR ,[comp17]);

                  Print.ImpF(Linha, 17, COPY(Consulta_Orcamento_ItensNOME.Value,1,38), [Comp17]);

                  //VOLUME
                  TotVolume := TotVolume + (Consulta_Orcamento_ItensVOLUME.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //PESO
                  TotPeso   := TotPeso + (Consulta_Orcamento_ItensPESO.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //MARCA1
                  Print.ImpF(Linha, 40, COPY(Consulta_Orcamento_ItensMARCA.Value,1,12), [Comp17]);

                  //UNITARIO 1
                  STR :=  FORMATFLOAT ('###,###,##0.00', arredonda(Consulta_Orcamento_ItensPRC_UNITARIO.Value - Consulta_Orcamento_ItensDESCONTO.Value,2) );
                  WHILE LENGTH(STR) < 8 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 47, STR ,[comp17]);

                  //TOTAL 1
                  STR := FORMATFLOAT ( '###,###,##0.00', arredonda(Consulta_Orcamento_ItensTotal.Value,2) );
                  WHILE LENGTH(STR) < 8 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 54, STR ,[comp17]);

                  //MARCA2
                  Print.ImpF(Linha, 62, COPY(Consulta_Orcamento_ItensMARCA_2.Value,1,12), [Comp17]);

                  //UNITARIO 2
                  STR :=  FORMATFLOAT ('###,###,##0.00', arredonda(Consulta_Orcamento_ItensPRC_UNITARIO_2.Value,2) );
                  WHILE LENGTH(STR) < 8 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 69, STR ,[comp17]);

                  //TOTAL 2
                  STR := FORMATFLOAT ( '###,###,##0.00', arredonda(Consulta_Orcamento_ItensTotal_2.Value,2) );
                  WHILE LENGTH(STR) < 8 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 76, STR ,[comp17]);

                  Total_Orcamento  := Total_Orcamento + Consulta_Orcamento_ItensTotal.Value ;

                  Total_Orcamento2 := Total_Orcamento2 + Consulta_Orcamento_ItensTotal_2.Value ;

                  Consulta_Orcamento_Itens.Next;

                  Item := Item + 1;

                  //
                  Inc(Linha);
                  //
                  If DmApp.ITENSORCAMENTOORC = 33
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
             END
             ELSE
             BEGIN //orçamento normal
                  Print.ImpF(Linha, 01, Consulta_Orcamento_ItensPRODUTO.Value, [Comp17]);

                  //QNTDE
                  STR :=  FORMATFLOAT ('###,###,##0.00',arredonda(Consulta_Orcamento_ItensQUANTIDADE.Value,2) );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 10, STR ,[comp17]);
                  //produto fabiano diminui o tamanho do produto p/20 não tinha
                  Print.ImpF(Linha, 17,Consulta_Orcamento_ItensNOME.Value, [Comp17]);

                  //complemento
                  Print.ImpF(Linha, 34,copy(Consulta_Orcamento_ItensCOMPLEMENTO.Value,1,23), [Comp17]);
                  //marca
                  Print.ImpF(Linha, 49,copy(Consulta_Orcamento_ItensMarca.Value,1,23), [Comp17]);

                  //VOLUME
                  TotVolume := TotVolume + (Consulta_Orcamento_ItensVOLUME.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //PESO
                  TotPeso   := TotPeso + (Consulta_Orcamento_ItensPESO.Value * Consulta_Venda_ItensQUANTIDADE.Value);

                  //UNIDADE
                  Print.ImpF(Linha, 62, Consulta_Orcamento_ItensUNIDADE.Value, [Comp17]);

                  If DmApp.Imp_Unit_Orc = 'S'
                  THEN BEGIN
                       IF DmaPP.IMP_DESC_AGRUPADO = 'N'
                       THEN BEGIN
                            //UNITARIO
                            STR :=  FORMATFLOAT ('###,###,##0.00', arredonda(Consulta_Orcamento_ItensPRC_UNITARIO.Value,2) );
                            WHILE LENGTH(STR) < 8 DO
                            BEGIN
                                 STR := ' ' + STR ;
                            END;

                            Print.impf(Linha, 64, STR ,[comp17]);

                            //DESCONTO
                            STR :=  FORMATFLOAT ('###,###,##0.00',arredonda(Consulta_Orcamento_ItensDESCONTO.Value,2) );
                            WHILE LENGTH(STR) < 5 DO
                            BEGIN
                                 STR := ' ' + STR ;
                            END;

                            Print.impf(Linha, 71, STR ,[comp17]);
                       END
                       ELSE BEGIN
                            //UNITARIO
                            STR :=  FORMATFLOAT ('###,###,##0.00', arredonda(Consulta_Orcamento_ItensPRC_UNITARIO.Value - Consulta_Orcamento_ItensDESCONTO.Value,2) );
                            WHILE LENGTH(STR) < 10 DO
                            BEGIN
                                 STR := ' ' + STR ;
                            END;

                            Print.impf(Linha, 61, STR ,[comp17]);
                       END;
                  END;

                  TotDesconto := TotDesconto + Consulta_Orcamento_ItensDESCONTO.Value ;

                  //TOTAL
                  STR := FORMATFLOAT ( '###,###,##0.00', arredonda(Consulta_Orcamento_ItensTotal.Value,2) );
                  WHILE LENGTH(STR) < 10 DO
                  BEGIN
                       STR := ' ' + STR ;
                  END;

                  Print.impf(Linha, 74, STR ,[comp17]);

                  Total_Orcamento := Total_Orcamento + arredonda(Consulta_Orcamento_ItensTotal.Value,2) ;

                  Consulta_Orcamento_Itens.Next;

                  Item := Item + 1;

                  //
                  Inc(Linha);
                  //
                  If DmApp.ITENSORCAMENTOORC = 33
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
             END;
          end;//FIM WHILE

          TotDesconto := TotDesconto * -1 ;

          //Acrescenta o Total dos descontos Unitários com o desconto total
          TotDesconto := TotDesconto +  arredonda(Consulta_OrcamentoDESC_ACRESC.Value,2) ;

          Total_Orcamento := Total_Orcamento + arredonda(Consulta_OrcamentoDESC_ACRESC.Value,2) ;

          IF DmaPP.IMP_RODAPE_ORC = 'N'
          THEN BEGIN
               //IMPRESSAO DE ORCAMENTO DETALHADO
               IF DmaPP.TIPO_ORCAMENTO = 'Detalhado'
               THEN BEGIN
                    //Rodapé...
                    Print.ImpF(Linha, 01, Replicate('-', 80), [Normal]);

                    Inc ( Linha );

                    Print.ImpF(Linha, 42, 'DESCONTO', [COMP17]);

                    DESCONTO := FORMATFLOAT ('###,###,##0.00', arredonda(TOTDESCONTO,2) );

                    WHILE LENGTH(DESCONTO) < 10 DO
                    BEGIN
                         DESCONTO := ' ' + DESCONTO ;
                    END;

                    Print.ImpF(Linha, 53, DESCONTO, [COMP17]);

                    DESCONTO := FORMATFLOAT ('###,###,##0.00', arredonda(Consulta_OrcamentoDESC_ACRESC_2.Value,2) );

                    WHILE LENGTH(DESCONTO) < 10 DO
                    BEGIN
                         DESCONTO := ' ' + DESCONTO ;
                    END;

                    Print.ImpF(Linha, 75, DESCONTO, [COMP17]);

                    Inc( Linha );

                    STR :=  FORMATFLOAT ('###,###,##0.00', IteM - 1 );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    Print.impf(Linha, 01, 'ITENS.......:' ,[comp17]);

                    Print.ImpF(Linha, 10, Str, [COMP17]);

                    Print.ImpF(Linha, 42, 'Total = >', [COMP17, negrito]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', arredonda(Total_Orcamento + TotDesconto,2) );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    Print.ImpF(Linha, 53, STR, [COMP17]);

                    //TOTAL
                    STR :=  FORMATFLOAT ('###,###,##0.00', arredonda(Total_Orcamento2 + Consulta_OrcamentoDESC_ACRESC_2.Value,2) );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    Print.ImpF(Linha, 75, STR, [COMP17]);


                    Inc( Linha );
                    Inc( Linha );

                    //Vendedor
                    Print.ImpF(Linha, 01, 'CONSULTOR..: ' + NomeVendedor, [COMP17]);

                    Inc( Linha );

                    Print.ImpF(Linha, 01, 'CONDICOES..: ' + Condicoes  + ' ' + TipoDoc , [COMP17]);

                    Inc( Linha );

                    Print.ImpF(Linha, 01, 'ORCAMENTO VALIDO POR ' + floattostr(Consulta_OrcamentoVALIDADE.Value - Consulta_Orcamentodata.value)  + ' DIAS A PARTIR DA DATA DO ORCAMENTO (' + DATA + ')' , [COMP17]);
               END
               ELSE BEGIN
                    //Rodapé...
                    Print.ImpF(Linha, 01, Replicate('-', 80), [Normal]);

                    Inc ( Linha );

                    Print.ImpF(Linha, 01, razao, [comp17]);

                    DESCONTO := FORMATFLOAT ('###,###,##0.00', arredonda(TOTDESCONTO,2) );

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
                    STR :=  FORMATFLOAT ('###,###,##0.00', arredonda(Total_Orcamento,2) );
                    WHILE LENGTH(STR) < 10 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    Print.ImpF(Linha, 60, 'Total = >', [COMP17, negrito]);

                    Print.ImpF(Linha, 74, STR, [COMP17]);
               END;
          END;
     end;
end;


Procedure TFRelEnviaCaixa.ImprimeFaturaA4 ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Cont: Integer;
begin
     With DmVendas do
     begin
          IF TRIM(UpperCase(Tipo)) = 'FATURA' THEN
            CorpoFatura    //venda
          ELSE
            CorpoOrcamento ;
     END;
END;

Procedure TFRelEnviaCaixa.Imprime ;
Var
   Str : String ;
   VlrLiquido, VlrParcelado: Real;
   Cont: Integer;
begin
  With DmVendas do
  begin
    //Filtra as Vendas
    IF TRIM(UpperCase(Tipo)) = 'FATURA' THEN
    BEGIN
               dmvendas2.Proc_Imprime_Venda(PedidoNumero);

               Consulta_Venda_Parc.FetchAll ;

               If Consulta_Venda_Parc.RecordCount > 0
               then begin
                    VendaParcelada := True ;
               end
               else begin
                    VendaParcelada := False ;
               end;

               //Dados do Cliente
               VerPessoa ( Consulta_VendaPESSOA_FJ.Value );

               IF CONSULTA_VENDATIPO_VENDA.value = 'Ven' THEN
               BEGIN
                    IF VENDAPARCELADA THEN
                    BEGIN
                         //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
                         If trim(uppercase(dmapp.Perfil_ComputadorFOLHA_PRAZO_PEDIDO.VALUE)) = 'A4' THEN
                               ImprimeFaturaA4
                         else
                         //IMPRIME VENDA LOJA COM IMPRESSORA DE 40 COLUNAS
                         IF trim(uppercase(dmapp.Perfil_ComputadorFOLHA_PRAZO_PEDIDO.VALUE)) = '36' THEN
                               ImprimeFatura40Colunas
                         else
                         begin
                             MessageDlg(Pchar('Prezado Usuário, o "Perfil do Computador" não esta configurado. Por favor entre em contato com Help Desk da '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString), mtWarning, [mbOk], 0 );
                             exit;
                         end;
                    end else
                    begin
                         //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS  aqui a venda
                         If trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_PEDIDO.VALUE)) = 'A4' then
                             ImprimeFaturaA4
                         else
                         //IMPRIME VENDA LOJA COM IMPRESSORA DE 40 COLUNAS
                         IF trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_PEDIDO.VALUE)) = '36' then
                             ImprimeFatura40Colunas
                         else
                         begin
                             MessageDlg(Pchar('Prezado Usuário, o "Perfil do Computador" não esta configurado. Por favor entre em contato com Help Desk da '+dmApp.QryParceiroPARC_NOME_FANTASIA.asString), mtWarning, [mbOk], 0 );
                             exit;
                         end;
                    end;
               end
               ELSE BEGIN
                    IF VENDAPARCELADA THEN
                    BEGIN
                         //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
                         If trim(uppercase(dmapp.Perfil_ComputadorFOLHA_PRAZO_CONDICIONAL.VALUE)) = 'A4' then
                              ImprimeFaturaA4
                         else
                         //IMPRIME VENDA LOJA COM IMPRESSORA DE 40 COLUNAS
                         if trim(uppercase(dmapp.Perfil_ComputadorFOLHA_PRAZO_CONDICIONAL.VALUE)) = '36' then
                              ImprimeFatura40Colunas
                         else
                         begin
                               MessageDlg('Prezado Usuário, o "Perfil do Computador" não esta configurado. Por favor entre em contato com Help Desk da '+dmApp.QryParceiroPARC_NOME_FANTASIA.AsString, mtWarning, [mbOk], 0 );
                               exit;
                         end;
                    END
                    ELSE BEGIN
                         //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
                         If trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_CONDICIONAL.VALUE)) = 'A4' THEN
                               ImprimeFaturaA4
                         else
                         //IMPRIME VENDA LOJA COM IMPRESSORA DE 40 COLUNAS
                         IF trim(uppercase(dmapp.Perfil_ComputadorFOLHA_VISTA_CONDICIONAL.VALUE)) = '36' THEN
                               ImprimeFatura40Colunas
                         else
                         begin
                               MessageDlg('Prezado Usuário, o "Perfil do Computador" não esta configurado. Por favor entre em contato com Help Desk da '+dmApp.QryParceiroPARC_NOME_FANTASIA.AsString, mtWarning, [mbOk], 0 );
                               exit;
                         end;
                    END;
               END;
          End;

          //Filtra as Vendas
          IF TRIM(UpperCase(Tipo)) = 'ORCAMENTO'
          THEN BEGIN
               VendaParcelada := False ;
               //IMPRIME A VENDA EM FOLHA DE 66 LINHAS OU 33 LINHAS NORMAIS
               If trim(uppercase(dmapp.Perfil_ComputadorFOLHA_PRAZO_PEDIDO.VALUE)) = 'A4' THEN
                    ImprimeFaturaA4
               else
               //IMPRIME VENDA LOJA COM IMPRESSORA DE 40 COLUNAS
               IF trim(uppercase(dmapp.Perfil_ComputadorFOLHA_PRAZO_PEDIDO.VALUE)) = '36' then
                    ImprimeFatura40Colunas
               else
               begin
                    MessageDlg('Prezado Usuário, o "Perfil" não esta configurado. Por favor entre em contato com Help Desk da '+dmApp.QryParceiroPARC_NOME_FANTASIA.AsString, mtWarning, [mbOk], 0 );
                    exit;
               end;
          END;
     END;

     //
//     If UPPERCASE(DmApp.TIPO_IMPRESSORA) <> 'MP20CI' then //IMPRIME EM FONTE PARA IMPRESSORA BEMATECH
     print.Fechar;


     If (( VendaParcelada ) AND ( DMAPP.Perfil_ComputadorIMPRIME_PROMISSORIA.VALUE = 'S' ))
     then begin
          //CHAMA O TIPO DE SAÍDA ( NOTAS PROMISSORIAS )
          FrmImprimePromissoria := TFrmImprimePromissoria.Create(Self);
          FrmImprimePromissoria.PedidoNumero := PedidoNumero ;
          FrmImprimePromissoria.Showmodal ;
     end;

     If ( LocalCobranca > 0 ) and ( DMvENDAS.Consulta_Venda_Parc.RecordCount > 0 ) then
     begin
      //Imprime Venda
        ImprimeBoleto ;
     end;

     Close ;
end;

procedure TFRelEnviaCaixa.ActVisualizarExecute(Sender: TObject);
begin
     Opcao := 'S' ;
     PAGINA := 1;
     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     if (DmApp.Orcamento = 'FT') and ((TRIM(Tipo) = 'PRE-NOTA') or (TRIM(Tipo) = 'ORCAMENTO') or (TRIM(Tipo) ='FATURA')) then
       Imprime
     else
       ImprimeOrcamentoSerie ;
end;

end.


