  unit NotaPromissoriaTroca_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppBands, ppProd, ppReport, ppDB, ppComm,
  ppRelatv, ppDBPipe, ppParameter, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmImprimePromissoriaTroca = class(TForm)
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
    dsLayout: TDataSource;
    ppLayout: TppDBPipeline;
    ppLayoutppField1: TppField;
    ppLayoutppField2: TppField;
    ppLayoutppField3: TppField;
    ppLayoutppField4: TppField;
    ppLayoutppField5: TppField;
    ppLayoutppField6: TppField;
    ppLayoutppField7: TppField;
    ppLayoutppField8: TppField;
    ppLayoutppField9: TppField;
    ppLayoutppField10: TppField;
    ppLayoutppField11: TppField;
    ppLayoutppField12: TppField;
    ppLayoutppField13: TppField;
    ppLayoutppField14: TppField;
    ppLayoutppField15: TppField;
    ppLayoutppField16: TppField;
    ppLayoutppField17: TppField;
    ppLayoutppField18: TppField;
    ppLayoutppField19: TppField;
    ppLayoutppField20: TppField;
    ppLayoutppField21: TppField;
    ppLayoutppField22: TppField;
    ppLayoutppField23: TppField;
    ppLayoutppField24: TppField;
    ppLayoutppField25: TppField;
    ppLayoutppField26: TppField;
    ppLayoutppField27: TppField;
    ppLayoutppField28: TppField;
    ppLayoutppField29: TppField;
    ppLayoutppField30: TppField;
    ppLayoutppField31: TppField;
    ppLayoutppField32: TppField;
    ppLayoutppField33: TppField;
    ppLayoutppField34: TppField;
    ppLayoutppField35: TppField;
    ppLayoutppField36: TppField;
    ppLayoutppField37: TppField;
    ppLayoutppField38: TppField;
    ppLayoutppField39: TppField;
    ppLayoutppField40: TppField;
    ppLayoutppField41: TppField;
    ppLayoutppField42: TppField;
    ppLayoutppField43: TppField;
    ppLayoutppField44: TppField;
    ppLayoutppField45: TppField;
    ppLayoutppField46: TppField;
    ppLayoutppField47: TppField;
    ppLayoutppField48: TppField;
    ppLayoutppField49: TppField;
    ppLayoutppField50: TppField;
    ppLayoutppField51: TppField;
    ppLayoutppField52: TppField;
    ppLayoutppField53: TppField;
    ppLayoutppField54: TppField;
    ppLayoutppField55: TppField;
    ppLayoutppField56: TppField;
    ppLayoutppField57: TppField;
    rptPromissoria: TppReport;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    ppLabel3: TppLabel;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppLabel4: TppLabel;
    ppDBText8: TppDBText;
    ppLabel5: TppLabel;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppPromissoria: TppDBPipeline;
    dsPromissoria: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    Procedure Imprime ;
    procedure ActVisualizarExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    TIPO : String ;
    PedidoNumero: Integer ;
    Total_Orcamento : Real ;

  end;

var
  FrmImprimePromissoriaTroca: TFrmImprimePromissoriaTroca;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, OBSERVACAO, NomeVendedor, Endereco  , NomeCidade: String;
  NomeBairro, EstadoCep , NumeroFone, Documentos, IERG , Condicoes : String ;
  Opcao, TipoDoc, NUMERO, Fone, Fax : String;
  Empresa, Total, Desconto, Liquido, Peso, Volume, Cep, InscMun, UF : String;
  Vencimento: TDateTime;
  TotPeso, TotVolume: Extended ;
  Item, LocalCobranca: Integer;

  //TOTALIZADORES DA NF
  TOTALNOTA, ICM, IPI, BASECALCULOICM, BASECALCULOSUBSTITUICAO: Extended ;
  VALORTOTAL, ISS, VALORICMSSUB, DESPESAS, VALORFRETE: Extended ;
  SEGURO, FRETE: Extended ;
  MENSAGEMREDUCAO: String ;

implementation

uses Usuarios_DM, Application_DM, Funcoes, Vendas_Dm, Financeiro_Dm2;

{$R *.DFM}

procedure TFrmImprimePromissoriaTroca.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmImprimePromissoriaTroca.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmImprimePromissoriaTroca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmVendas.Consulta_Troca_Itens.Close ;
     DmVendas.Consulta_Troca_Parc.Close ;
     DmVendas.Consulta_Troca.Close ;

     Action := caFree;
     FrmImprimePromissoriaTroca := Nil;
end;

procedure TFrmImprimePromissoriaTroca.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFrmImprimePromissoriaTroca.FormShow(Sender: TObject);
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

procedure TFrmImprimePromissoriaTroca.ActPreviewExecute(Sender: TObject);
begin
     Opcao := 'N' ;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;

Procedure TFrmImprimePromissoriaTroca.Imprime ;
Var
   Dia, Mes, Ano: String;
   D, M,A: WORD ;
   Str, Str2, Nome_Vendedor : String ;
   Dst, Codigo_Cliente  : Integer;
   Pulo: Integer;
   SaldoTroca : Real;
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
      dmFinanceiro2.qryPromissorias.parambyname('tipo').value := 'T';
      dmFinanceiro2.qryPromissorias.open;

      rptPromissoria.Print;
      exit;
   end;


    //abrindo troca e pegando a pessoa
    Proc_Imprime_Troca (PedidoNumero);
    VerPessoa ( Consulta_TrocaPESSOA_FJ.Value );
    Codigo_Cliente := Consulta_TrocaPESSOA_FJ.Value ;
    Nome_Vendedor:= (Consulta_TrocaVENDEDOR.text+'  -  '+Consulta_TrocaNOME_VENDEDOR.text);
    
    Razao        := Ver_PessoaCodigo.Text + '-' + Ver_PessoaNOME_RAZAO.Value  ;
    NomeCliente  := Ver_PessoaFANTASIA.Value;
    Data         := DateToStr(Consulta_TrocaDATA.Value);
    OBSERVACAO   := Consulta_TrocaOBSERVACAO.Value     ;
    If Trim(Observacao )= ''  then
      OBSERVACAO   := Consulta_TrocaOBSERVACAO.Value ;

    //dados gerais sobre operação tal com endereco....etc
    NomeVendedor := Consulta_TrocaNOME_VENDEDOR.Value   ;
    TipoDoc      := Consulta_TrocaTIPO_DOCTO.Value  ;
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
    //colocando máscara cnpj
    If Length(Ver_PessoaCPF_CGC.Value) > 11  then
      Documentos   := mascaracnpj(Ver_PessoaCPF_CGC.Value)
    else
      Documentos   := mascaracpf(Ver_PessoaCPF_CGC.Value);


    IERG              := Ver_PessoaRG_IE.Value + ' IM ' + Ver_PessoaINSC_MUNIC.Value;
    InscMun           := Ver_PessoaINSC_MUNIC.Value ;
    Condicoes         := Consulta_TrocaNOME_FORMA.Value      ;
    NPedido           := preenche(IntToStr(PedidoNumero),'0',6);
    Peso              := Formatfloat('###,###,##0.00', 0);
    Volume            := Formatfloat('###,###,##0.00', 0);
    Total             := Formatfloat('###,###,##0.00', Consulta_TrocaTotal.Value);
    Desconto          := Formatfloat('###,###,##0.00', Consulta_TrocaDESC_ACRESC.Value);
    Liquido           := Formatfloat('###,###,##0.00', Consulta_TrocaTotal.Value + Consulta_TrocaDESC_ACRESC.Value);
    LocalCobranca     := Consulta_TrocaLocal_COBRANCA.Value ;

    NotaPromissoria.open ;
    Promissora.TamanhoQteLinhas := NotaPromissoriaTAMANHOPAGINA.Value ;

    If ( VIAS.Value > 0 ) and ( VIAS.Value < 3 ) then
      Promissora.NumerodeCopias := Trunc( VIAS.Value )
    else
      Promissora.NumerodeCopias := 1;

    Promissora.OpcoesPreview.Preview := TRUE;
    If NotaPromissoriaLPP.Value = 6  Then
      Promissora.TamanhoQteLPP := Seis
    Else
      Promissora.TamanhoQteLPP := Oito ;

    If ( TRIM( NotaPromissoriaPORTA.Value ) <> '' ) AND ( DMAPP.PORTA_PRAZO <> 'LPT1') THEN
    BEGIN
      SetDefaultPrinter( NotaPromissoriaPORTA.Value ) ;
      Promissora.PortaComunicacao  := trim(NotaPromissoriaPORTA.Value ) ;
      Promissora.SetPrinterbyPorta (trim( NotaPromissoriaPORTA.Value )) ;
    END
    ELSE
    BEGIN
      Promissora.PortaComunicacao  := ('LPT1') ;
      Promissora.SetPrinterbyPorta ('LPT1') ;
    END;

    Pulo := 1 ;

    Promissora.Abrir;
    Consulta_Troca_Parc.First ;
    {-------------------olha eu poderia fazer de uma forma mais elegante, no entanto em virtude do tempor vai ser
    tosco mesmo -------------------------------------------
    //Imprimindo primeira Nota das Parces igual a da venda ----------------------------}
    ////CANHOTO
      //Vencimento
      //Venda
    if  NotaPromissoriaIMPRIME_TOTALIZADOR.asString = 'S' then
    begin
        Dst   := NotaPromissoriaVENDA1_DST.Value ;
        IF ( DST > 0 ) AND ( (NotaPromissoriaVENDA1_ALT.Value - 1) > 0 )
        THEN BEGIN
          Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value - 1 , Dst, 'VENDA', [Comp17]);
          Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);
        END;

        //Valor
        Dst := NotaPromissoriaVALOR1_DST.Value ;  //vlrs. de saida                             //vlrs. de entrasa
        SaldoTroca := (Consulta_TrocaTotal_2.asfloat + Consulta_TrocaDESC_ACRESC_2.asfloat) - (Consulta_TrocaTotal.asfloat + Consulta_TrocaDESC_ACRESC.asfloat) -  Consulta_TrocaEntrada.asfloat;
        STR :=  FORMATFLOAT ('###,###,##0.00', (SaldoTroca));
        WHILE LENGTH(STR) < 10 DO
        BEGIN
          STR := ' ' + STR ;
        END;

        IF ( DST > 0 ) AND ( (NotaPromissoriaVALOR1_ALT.Value - 1) > 0)
        THEN BEGIN
          Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value - 1 , Dst, 'VALOR', [Comp17]);
          Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value, Dst, Str, [Comp17]);
        END;


        //Codigo do Cliente
        Dst := NotaPromissoriaSACADO1_DST.Value ;
        IF ( DST > 0 ) AND (( NotaPromissoriaSACADO1_ALT.VALUE - 1 ) > 0)
        THEN BEGIN
          Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE - 1, Dst, 'CLIENTE', [Comp17]);
          Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE, Dst, Copy(Razao,1,17), [Comp17]);
          Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE + 1, Dst, Copy(Razao,18,35), [Comp17]);
        END;

        ////*****NOTA PROMISSORIA
        //Venda
        Dst   := NotaPromissoriaVENDA2_DST.Value ;
        IF DST > 0 THEN
          Promissora.ImpF(NotaPromissoriaVENDA2_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);

        //Parcela
        Dst := NotaPromissoriaPARCELA2_DST.Value ;
        IF DST > 0 THEN
          Promissora.ImpF(NotaPromissoriaPARCELA2_ALT.VALUE, Dst, copy(Consulta_Troca_ParcPARCELA.Text,3,3) , [Comp17]);

        //Valor
        Dst := NotaPromissoriaVALOR2_DST.Value ;
        STR :=  FORMATFLOAT ('###,###,##0.00', SaldoTroca);
        WHILE LENGTH(STR) < 10 DO
        BEGIN
          STR := ' ' + STR ;
        END;

        IF DST > 0 THEN
          Promissora.ImpF(NotaPromissoriaVALOR2_ALT.Value, Dst, Str, [Comp17]);

        //DIA MES E ANO DO VENCIMENTO
        DECODEDATE ( Consulta_Troca_ParcVENCTO.Value, A, M, D );

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

        IF DST > 0 THEN
        BEGIN
          Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst, DIA  , [Comp17]);
          Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+5, MES  , [Comp17]);
          Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+15,ANO  , [Comp17]);
        END;

        //Vencimento por extenso
        Dst := NotaPromissoriaVECTO_EXT_DST.Value ;
        If Dst > 0 THEN
        BEGIN
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
            2011: Str := Str + 'Dois Mil e Onze';
            2012: Str := Str + 'Dois Mil e Doze';
          END;
          Promissora.ImpF( NotaPromissoriaVECTO_EXT_ALT.value ,Dst, STR , [Comp17]);
        END;
        Dst := NotaPromissoriaEMPRESA_DST.Value ;

        //NOME
        IF DST > 0 THEN
          Promissora.ImpF( NotaPromissoriaEMPRESA_ALT.VALUE, Dst, NotaPromissoriaEMPRESA.VALUE , [Comp17]);

        //CODIGO DO CLIENTE
        Dst := NotaPromissoriaCODIGO_DST.Value ;

        IF DST > 0
        THEN BEGIN
             Promissora.ImpF(NotaPromissoriaCODIGO_ALT.VALUE , Dst, inttostr(codigo_Cliente), [Comp17, negrito]);
        END;


  
        //NOME DO VENDEDOR
        Dst := NotaPromissoriaVENDEDOR1_DST.Value ;
        IF DST > 0 THEN
        BEGIN
             Promissora.ImpF(NotaPromissoriaVENDEDOR1_ALT.VALUE , Dst, Nome_Vendedor, [Comp17]);
        END;

        //Codigo do Cliente
        Dst := NotaPromissoriaSACADO2_DST.Value ;

        IF DST > 0 THEN
        BEGIN
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
        EXTENSO.Valor := (SaldoTroca);
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

        IF DST > 0 THEN
          Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value, Dst, Str, [Comp17]);

        IF TRIM(STR2) <> '' THEN
          Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value + 1, Dst, Str2, [Comp17]);

        Promissora.NovaPagina ;
      //-------------------------------------------final d aprimeira nota---------------------------------//
    end;

    While Not Consulta_Troca_Parc.Eof do
    begin
      ////CANHOTO
      //Vencimento
      Dst := NotaPromissoriaVENCIMENTO1_DST.Value ;

      IF DST > 0 THEN
      BEGIN
        Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE - 1 , Dst, 'VENCIMENTO', [Comp17]);
        Promissora.ImpF( NotaPromissoriaVENCIMENTO1_ALT.VALUE ,Dst, DateToStr(Consulta_Troca_ParcVENCTO.Value), [Comp17]);
      END;

      //Venda
      Dst   := NotaPromissoriaVENDA1_DST.Value ;

      IF ( DST > 0 ) AND (( NotaPromissoriaVENDA1_ALT.Value - 1) > 0)
      THEN BEGIN
        Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value - 1 , Dst, 'VENDA', [Comp17]);
        Promissora.ImpF(NotaPromissoriaVENDA1_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);
      END;

      //Parcela
      Dst := NotaPromissoriaPARCELA1_DST.Value ;

      IF ( DST > 0 ) AND ((NotaPromissoriaPARCELA1_ALT.VALUE - 1)> 0)
      THEN BEGIN
        Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE - 1, Dst, 'PARCELA', [Comp17]);
        Promissora.ImpF(NotaPromissoriaPARCELA1_ALT.VALUE, Dst, Consulta_Troca_ParcPARCELA.Text, [Comp17]);
      END;

      //Valor
      Dst := NotaPromissoriaVALOR1_DST.Value ;
      STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Troca_ParcVALOR.Value );
      WHILE LENGTH(STR) < 10 DO
      BEGIN
        STR := ' ' + STR ;
      END;

      IF ( DST > 0 ) AND ((NotaPromissoriaVALOR1_ALT.Value - 1)>0)
      THEN BEGIN
        Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value - 1 , Dst, 'VALOR', [Comp17]);
        Promissora.ImpF(NotaPromissoriaVALOR1_ALT.Value, Dst, Str, [Comp17]);
      END;


      //CODIGO DO CLIENTE
      Dst := NotaPromissoriaCODIGO_DST.Value ;

      IF DST > 0
      THEN BEGIN
           Promissora.ImpF(NotaPromissoriaCODIGO_ALT.VALUE , Dst, inttostr(codigo_Cliente), [Comp17, negrito]);
      END;

      //Código da extrema direita
      Dst := NotaPromissoriaCODIGO2_DST.Value ;
      IF DST > 0
      THEN BEGIN
            Promissora.ImpF(NotaPromissoriaCODIGO2_ALT.VALUE , Dst, inttostr(codigo_Cliente), [Comp17, negrito]);
      END;

      //Codigo do Cliente
      Dst := NotaPromissoriaSACADO1_DST.Value ;
      IF (DST > 0 ) AND ((NotaPromissoriaSACADO1_ALT.VALUE - 1)>0)
      THEN BEGIN
        Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE - 1, Dst, 'CLIENTE', [Comp17]);
        Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE, Dst, Copy(Razao,1,17), [Comp17]);
        Promissora.ImpF(NotaPromissoriaSACADO1_ALT.VALUE + 1, Dst, Copy(Razao,18,35), [Comp17]);
      END;

      ////*****NOTA PROMISSORIA

      //Vencimento
      Dst := NotaPromissoriaVENCIMENTO2_DST.Value ;

      IF DST > 0 THEN
        Promissora.ImpF( NotaPromissoriaVENCIMENTO2_ALT.VALUE ,Dst, DateToStr(Consulta_Troca_ParcVENCTO.Value), [Comp17]);

      //Venda
      Dst   := NotaPromissoriaVENDA2_DST.Value ;

      IF DST > 0 THEN
        Promissora.ImpF(NotaPromissoriaVENDA2_ALT.Value, Dst, IntToStr(PedidoNumero), [Comp17]);

      //Parcela
      Dst := NotaPromissoriaPARCELA2_DST.Value ;

      IF DST > 0 THEN
        Promissora.ImpF(NotaPromissoriaPARCELA2_ALT.VALUE, Dst, Consulta_Troca_ParcPARCELA.Text , [Comp17]);

      //Valor
      Dst := NotaPromissoriaVALOR2_DST.Value ;

      STR :=  FORMATFLOAT ('###,###,##0.00', Consulta_Troca_ParcVALOR.Value );
      WHILE LENGTH(STR) < 10 DO
      BEGIN
        STR := ' ' + STR ;
      END;

      IF DST > 0 THEN
        Promissora.ImpF(NotaPromissoriaVALOR2_ALT.Value, Dst, Str, [Comp17]);

      //DIA MES E ANO DO VENCIMENTO
      DECODEDATE ( Consulta_Troca_ParcVENCTO.Value, A, M, D );

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

      IF DST > 0 THEN
      BEGIN              //AQUI
        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst, DIA  , [Comp17]);
        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+4, MES  , [Comp17]);
        Promissora.ImpF( NotaPromissoriaDATA_ALT.VALUE ,Dst+13,ANO  , [Comp17]);
      END;

      //Vencimento por extenso
      Dst := NotaPromissoriaVECTO_EXT_DST.Value ;

      If Dst > 0 THEN
      BEGIN
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

      //NOME
      IF DST > 0 THEN
        Promissora.ImpF( NotaPromissoriaEMPRESA_ALT.VALUE, Dst, NotaPromissoriaEMPRESA.VALUE , [Comp17]);


      //Codigo do Cliente
      Dst := NotaPromissoriaSACADO2_DST.Value ;

      IF DST > 0 THEN
      BEGIN
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

      EXTENSO.Valor := Consulta_Troca_ParcVALOR.Value ;

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

      IF DST > 0 THEN
        Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value, Dst, Str, [Comp17]);

      IF TRIM(STR2) <> '' THEN
        Promissora.ImpF(NotaPromissoriaEXTENSO_ALT.Value + 1, Dst, Str2, [Comp17]);

      Consulta_Troca_Parc.Next ;
      If Not Consulta_Troca_Parc.Eof Then
        Promissora.NovaPagina ;
    end;
    Promissora.Fechar;
    NotaPromissoria.Close ;
  END;
  Close ;
end;



procedure TFrmImprimePromissoriaTroca.ActVisualizarExecute(Sender: TObject);
begin
     Opcao := 'S' ;

     VALORTOTAL := 0;
     TOTALNOTA  := 0;

     Imprime ;
end;

end.


