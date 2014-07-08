unit TipoFaturaVenda_Form;

interface


uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  DBCtrls,
    ppBands, ppCtrls, ppPrnabl, ppClass, ppVar, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, ppParameter, ppStrtch,
  ppRegion,   ppMemo, ppRichTx, cxPropertiesStore, 
  IBCustomDataSet, IBQuery, ppEndUsr, ppModule, raCodMod, ppSubRpt,
  myChkBox, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, ACBrBase, ACBrExtenso;

type
  TFrmTipoFaturaVenda = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    LBLPEDIDO: TcxLabel;
    Label4: TcxLabel;
    EdTipo: TdxPickEdit;
    DSource: TDataSource;
    Label9: TcxLabel;
    Label3: TcxLabel;
    CmbTipo: TdxPickEdit;
    edNumNF: TdxEdit;
    EdCodigo: TdxEdit;
    ActImprimir: TAction;
    ppSerieNF: TppDBPipeline;
    rptSerieNF: TppReport;
    ppLayout: TppDBPipeline;
    ppParameterList1: TppParameterList;
    ppCT13: TppDBPipeline;
    rptCT13: TppReport;
    ppDetailBand2: TppDetailBand;
    ppParameterList2: TppParameterList;
    ppLayoutCT: TppDBPipeline;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLayoutGrafNF: TppDBPipeline;
    rptGrafNF: TppReport;
    ppParameterList4: TppParameterList;
    ppGrafNF: TppDBPipeline;
    rptDuplicata: TppReport;
    ppDetailBand5: TppDetailBand;
    ppDBText122: TppDBText;
    ppDBText123: TppDBText;
    ppDBText125: TppDBText;
    ppParameterList5: TppParameterList;
    ppDuplicata: TppDBPipeline;
    ppLayoutDuplicata: TppDBPipeline;
    ppDBText107: TppDBText;
    ppDBText108: TppDBText;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppDBText112: TppDBText;
    ppDBText113: TppDBText;
    ppDBText114: TppDBText;
    ppDBText117: TppDBText;
    ppHeaderBand3: TppHeaderBand;
    ppDBText60: TppDBText;
    ppDBText62: TppDBText;
    ppDBText67: TppDBText;
    ppDBText81: TppDBText;
    ppDBText63: TppDBText;
    ppDBText82: TppDBText;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBMemo4: TppDBMemo;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppVariable1: TppVariable;
    ppDBText85: TppDBText;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDetailBand4: TppDetailBand;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText86: TppDBText;
    ppDBText87: TppDBText;
    ppDBText88: TppDBText;
    ppDBMemo3: TppDBMemo;
    ppDBMemo5: TppDBMemo;
    ppFooterBand3: TppFooterBand;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppDBText92: TppDBText;
    ppDBText93: TppDBText;
    ppDBText94: TppDBText;
    ppDBText95: TppDBText;
    ppDBText96: TppDBText;
    ppDBText97: TppDBText;
    ppDBText98: TppDBText;
    ppDBText99: TppDBText;
    ppDBText100: TppDBText;
    ppDBText101: TppDBText;
    ppDBText102: TppDBText;
    ppDBText103: TppDBText;
    ppDBText104: TppDBText;
    ppDBText105: TppDBText;
    ppDBText106: TppDBText;
    ppDBText156: TppDBText;
    ppDBText157: TppDBText;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBText160: TppDBText;
    ppDBMemo2: TppDBMemo;
    ppDBText161: TppDBText;
    ppDBText162: TppDBText;
    ppDBText163: TppDBText;
    ppDBText164: TppDBText;
    ppDBText165: TppDBText;
    ppDBText166: TppDBText;
    ppDBText167: TppDBText;
    ppDBText168: TppDBText;
    ppLabel110: TppLabel;
    ppDBMemo7: TppDBMemo;
    ppDBText169: TppDBText;
    ppDBText170: TppDBText;
    ppMemo1: TppMemo;
    DataSource: TDataSource;
    dsPedidos: TDataSource;
    LayoutSERV: TppDBPipeline;
    rptServico: TppReport;
    ppHeaderBand2: TppHeaderBand;
    ppSystemVariable2: TppSystemVariable;
    ppLabel3: TppLabel;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText42: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText39: TppDBText;
    ppDBText47: TppDBText;
    ppLabel4: TppLabel;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppDBText55: TppDBText;
    ppDetailBand3: TppDetailBand;
    ppDBText41: TppDBText;
    ppDBText43: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBMemo1: TppDBMemo;
    ppSummaryBand1: TppSummaryBand;
    RegionPIS: TppRegion;
    ppDBText35: TppDBText;
    ppLabel5: TppLabel;
    ppDBText36: TppDBText;
    ppLabel6: TppLabel;
    ppDBText37: TppDBText;
    RegionIRRS: TppRegion;
    ppDBText44: TppDBText;
    ppLabel7: TppLabel;
    ppDBText40: TppDBText;
    ppLabel8: TppLabel;
    ppDBText38: TppDBText;
    RegionINSS: TppRegion;
    ppDBText58: TppDBText;
    ppLabel10: TppLabel;
    ppDBText57: TppDBText;
    ppLabel9: TppLabel;
    ppDBText56: TppDBText;
    RegionDescto: TppRegion;
    ppDBText59: TppDBText;
    ppDBText32: TppDBText;
    ppDBText61: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLabel11: TppLabel;
    ppDBText71: TppDBText;
    ppDBText115: TppDBText;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppParameterList3: TppParameterList;
    ppServico: TppDBPipeline;
    ppSubIndice: TppDBPipeline;
    ppTitleBand1: TppTitleBand;
    ppDBText1: TppDBText;
    ppLabel113: TppLabel;
    ppLabel124: TppLabel;
    ppLabel114: TppLabel;
    ppLabel116: TppLabel;
    ppLabel118: TppLabel;
    ppLabel125: TppLabel;
    ppLabel126: TppLabel;
    ppLine15: TppLine;
    ppLabel129: TppLabel;
    ppLabel130: TppLabel;
    ppLabel131: TppLabel;
    ppLine16: TppLine;
    ppLabel132: TppLabel;
    ppVariable2: TppVariable;
    ppLine17: TppLine;
    ppLabel133: TppLabel;
    ppLabel134: TppLabel;
    ppLine18: TppLine;
    ppDetailBand1: TppDetailBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText2: TppDBText;
    ppDBText11: TppDBText;
    ppLabel121: TppLabel;
    ppDBText6: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    SubIndice: TppSubReport;
    ppChildReport1: TppChildReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel123: TppLabel;
    ppLine22: TppLine;
    ppLabel127: TppLabel;
    ppLabel135: TppLabel;
    ppDetailBand7: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    myDBCheckBox1: TmyDBCheckBox;
    ppFooterBand1: TppFooterBand;
    ppRegion1: TppRegion;
    ppLabel122: TppLabel;
    ppDBText5: TppDBText;
    ppLabel128: TppLabel;
    ppLine19: TppLine;
    ppDBCalc1: TppDBCalc;
    ppLine20: TppLine;
    ppLabel115: TppLabel;
    ppLabel117: TppLabel;
    ppLabel119: TppLabel;
    ppLabel120: TppLabel;
    ppLine21: TppLine;
    ppRegion2: TppRegion;
    ppLine23: TppLine;
    ppLabel136: TppLabel;
    ppLine24: TppLine;
    DATANF: TdxDateEdit;
    Extenso: TACBrExtenso;
    btnimprimir: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    Procedure ImprimePed ;
    Procedure ImprimeNf  ;
    Procedure ImprimeCf  ;
    Procedure ImprimeServico;
    Procedure ImprimeNFGrafica;
    procedure EdTipoChange(Sender: TObject);
    procedure EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdTipoExit(Sender: TObject);
    procedure ImprimeOrcamentoSerie;
    procedure Duplicata    ;

    procedure CmbTipoExit(Sender: TObject);
    procedure EdTipoEnter(Sender: TObject);
    procedure CmbTipoEnter(Sender: TObject);
    procedure edNumNFEnter(Sender: TObject);
    procedure edNumNFExit(Sender: TObject);
    procedure Imprime;
    procedure EDISSExit(Sender: TObject);
    procedure dxPickEdit1Exit(Sender: TObject);
    procedure ButtonClickEvent(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    NotaImpressa, FinalArq, FinalCli : Boolean ;
    UltNumero: Integer;
    procedure ImprimeDoctoRecebimento(CodVenda:Integer);
  public
    { Public declarations }
    PedidoNumero: Integer ;
    PessoaFJ : Integer ;
    PessoaNFGraf : Integer ;
    IDNFGraf    : Integer ;
    NumeroNf    : Integer ;
    Tipo        : String  ;
    NumeroCf    : Integer ;
    AcumuladoNf : Extended;//PARA NOTAS COM MAIS DE UMA PAGINA
    VendaParcelada : Boolean ;
  end;

var
  FrmTipoFaturaVenda: TFrmTipoFaturaVenda;
  Linha, Pagina: Integer;
  NPEdido, EndEmpresa, TRANSPORTADORA_ESPECIE, PedFechado: String;
  Razao, Vendedor, Condicao, Motorista, NomeCliente, Data, Data_Caixa, OBSERVACAO, NomeVendedor, Endereco  , NomeCidade,
  NomeCidadeProp, UFPROP, ENDERECOPROP: String;
  NomeBairro, EstadoCep , NumeroFone, Documentos, IERG , Condicoes : String ;
  Opcao, TipoDoc, Cep, Fone, Fax, InscMun, UF, Numero : String;
  Empresa, Total, Desconto, Liquido, Peso, Volume: String;
  Vencimento: TDateTime;
  TotPeso, TotVolume: Extended ;
  LocalCobranca, NumeroBoleto, Item: Integer;
  Str: String;
  TotProdutos, TotDesconto: Extended ;
  Detransporte: Boolean ;
  Tot_Volumes: Real;

  //TOTALIZADORES DA NF
  TOTALNOTA, ICM, IPI, BASECALCULOICM, BASECALCULOSUBSTITUICAO: Extended ;
  VALORTOTAL, ISS, IRRF, INSS, PIS, VALORICMSSUB, DESPESAS, VALORFRETE: Extended ;
  SEGURO, FRETE, DESC_ACRESC: Extended ;
  MENSAGEMREDUCAO: String ;
implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Vendas_Dm,
     SelFaturaVendas_Form,
     Cadastros_DM,
     NotaPromissoria_FRel, Vendas_Form, Vendas_DM2, Cadastros_Dm2,
  ConfiguraDuplicata_Form, Procedures_DM;

{$R *.DFM}

procedure TFrmTipoFaturaVenda.FormCreate(Sender: TObject);
begin
     DATANF.date := Date;
     If DMUsuarios.Direito = 'SUPERVISOR'
     Then
         DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
     Else
         If DMUsuarios.Objeto = Self.Name
         Then
             AtivaActions(Actions, DMUsuarios.Direito);

     
end;

procedure TFrmTipoFaturaVenda.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmTipoFaturaVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmVendas.Consulta_Venda_Itens.Close ;
     DmVendas.Consulta_Venda_Parc.Close  ;
     DmVendas.Consulta_Venda.Close       ;
     DmVendas.Serie.Close                ;

     IF DMAPP.PDV_PORTA <> 'N'
     THEN BEGIN
//          FUNCOES.FechaPortaSerial ;
     END;

     Action := caFree;

     FrmTipoFaturaVenda := Nil;
end;

procedure TFrmTipoFaturaVenda.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTipoFaturaVenda.FormShow(Sender: TObject);
Var
   Str: String;
begin
     //
     IniciaComponentes(Self as TForm);

     Try
        dmApp.Perfil_Computador.Close;
        dmApp.Perfil_Computador.Open;
        dmApp.Perfil_Computador.FetchAll;
        
        if (dmApp.EDITA_NUM_NF = 'S') then
          edNumNF.enabled := true
        else
          edNumNF.enabled := false;


        EdTipo.Items.Clear ;
        EdTipo.Items.Add ('1-Nota');
        //EdTipo.Items.Add ('2-Cupom');
        EdTipo.Items.Add ('3-Pedido');



         DmVendas.Serie.open ;

         if Not DmVendas.SerieSERIE.IsNull
         then begin
              CmbTipo.Items.Clear ;

              DmVendas.Serie.First ;

              While nOT DmVendas.Serie.eof do
              begin
                   CmbTipo.Items.Add (DmVendas.SerieSerie.Value);
                   DmVendas.Serie.Next ;
              end;

              CmbTipo.EditText := DmVendas.SerieSERIE.value ;

              EdCodigo.Text    := DmVendas.SerieTipo.value ;

              if DmaPP.DIGITA_NUM_NOTA = 'S' then
              begin
                if ((NumeroNf >0) and (IDNFGraf > 0 )) then
                  edNumNF.Text  :=  IntToStr(NumeroNf)
                else
                  edNumNF.Text  := inttostr(DmVendas.SerieUltimo_Numero.value);
              end
         end;

         DmVendas.Serie.Close ;

        Str := '';

        Str := Str + IntToStr(PedidoNumero);

        WHILE LENGTH(STR) < 11 DO
        BEGIN
             STR := ' ' + STR ;
        END;

        if (IDNFGraf = 0) then
          Str := 'Pedido => Agrupado'
        else
          Str := 'Pedido => Ùnico';

        LBLPEDIDO.Caption := Str;

        Tipo := 'FATURA' ;

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

        IF DMAPP.PDV_PORTA <> 'N'
        THEN BEGIN
             If Not ImpressoraLigada
             then begin
                  MessageDlg('Erro na Comunicação Com a Impressora Fiscal', mtError, [mbOK], 0);
                  Exit ;
             END;
        end;

        IF DMAPP.PDV_PORTA <> 'N'
        THEN BEGIN
             //ABRE O CUPOM FISCAL
//             AbrePorta ;
        END;
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

Procedure TFrmTipoFaturaVenda.ImprimePed ;
Var
   Str : String ;
begin
     With DmVendas do
     begin
      //ORÇAMENTOS POR SÉRIE E TAMBÉM POR CT13
       dmvendas2.Proc_Imprime_Venda (PedidoNumero);
       ImprimeOrcamentoSerie ;
     End;
end;

Procedure TFrmTipoFaturaVenda.ImprimeNf ;
var
   Cst, Str : String;
   Tamanho, Dst,DstComplemento, Alt : Integer;
   VlrItem : Currency;
begin
  With DmVendas do
  begin
    //Impressão do CT13
    if (EdCodigo.text = 'C') then
    begin
      DMCadastros.edtCT13.close;
      DMCadastros.edtCT13.parambyname('cnpj').value := dmapp.cnpj;
      DMCadastros.edtCT13.open;

      rptCT13.Template.DatabaseSettings.Name := dmapp.cnpj;
      rptCT13.Template.LoadFromDatabase;

      DmVendas2.qryCT13.close;
      DmVendas2.qryCT13.ParamByName('cnpj').value := dmApp.cnpj;
      DmVendas2.qryCT13.ParamByName('venda').value := PedidoNumero;
      DmVendas2.qryCT13.ParamByName('pessoa_fj').value := PessoaFJ;
      DmVendas2.qryCT13.open;

      rptCT13.print;
      exit;

    end //NF Serviço gráfica
    else if (EdCodigo.text = 'S') then
    begin
       Serie.Open ;
       if dmvendas.SerieNFSERV_GRAFICA.value = 'S' then
       begin
         ImprimeServico;

         exit;
       end;
    end
    else
    begin
       Serie.Open ;
       dmvendas2.Proc_Imprime_Venda (PedidoNumero);
       if dmvendas.SerieNF_GRAFICA2.value = 'S' then
       begin
         ImprimeNFGrafica;
         exit;
       end;
    end;
  end;
end;

Procedure TFrmTipoFaturaVenda.ImprimeCf ;
begin
     //verificando estoque fiscal
   { If DmApp.BlqQtdeFiscal = 'S' then
    begin
      Prod := trim(DmApp.verifica_quantidade_Fiscal (PedidoNumero)) ;

      If Trim(Prod) <> '' then
      begin
        MessageDlg(Prod + ' ,Este Produto Não Possui Estoque Fiscal, Verifique', mtConfirmation, [mbOK], 0);
        EdTipo.setfocus ;
        exit ;
      end;
    end;}

     if (dmApp.BCH_ATIVO = 'S') then
       DmApp.ImpECF_Bemacash(dmApp.cnpj,PedidoNumero)
     else
       DmVendas.ImprimeCf (PedidoNumero);

     ImprimeDoctoRecebimento(PedidoNumero);
     Close ;
end;

procedure TFrmTipoFaturaVenda.EdTipoChange(Sender: TObject);
begin
     IF EdTipo.Text = '1-Nota' then
     begin
       DSource.DataSet.Open     ;
       CmbTipo.Enabled := True  ;
       CmbTipo.Text    := DmVendas.SerieSERIE.Value ;
     end
     else
     begin
        DSource.DataSet.Close    ;
        CmbTipo.Enabled := False ;
     end;

end;

procedure TFrmTipoFaturaVenda.EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTipoFaturaVenda.EdTipoExit(Sender: TObject);
begin
     TIRACORFUNDO(Sender);

     IF EDTIPO.TEXT =''
     THEN BEGIN
          MessageDlg('Selecione a Saída', mtError, [mbOK], 0);
          EdTipo.SetFocus ;
          Abort;
     END;

     IF ((EDTIPO.TEXT = '1-Nota') and (dmApp.EDITA_NUM_NF = 'S')) then
       edNumNF.ENABLED := TRUE
     ELSE
       edNumNF.ENABLED := FALSE ;
end;



Procedure TFrmTipoFaturaVenda.ImprimeOrcamentoSerie ;
Var
   Str, parcelamento: String ;
   Dst : Integer;
   Pulo: Integer;
begin
     With DmVendas do
     begin
          dmCadastros.serie.close;
          dmCadastros.serie.parambyname('cnpj').value := dmapp.cnpj;
          dmCadastros.serie.open;

          //impressão gráfica
          if dmCadastros.SerieNF_GRAFICA.value = 'S' then
          begin
            if (dmVendas.Consulta_VendaIMP_PEDIDO.value = 'N') then
            begin
              Application.messagebox('Operação interna do faturamento não permite impressão de pedidos','Aviso',mb_iconerror + mb_ok);
              Exit;
            end;

            DMCadastros.EdtSerieNF.close;
            DMCadastros.EdtSerieNF.parambyname('cnpj').value := dmapp.cnpj;
            DMCadastros.EdtSerieNF.open;

            DMCadastros.QryIndices.close;
            DMCadastros.QryIndices.parambyname('venda').value := PedidoNumero;
            DMCadastros.QryIndices.open;

            rptSerieNF.Template.DatabaseSettings.Name := dmapp.cnpj;
            rptSerieNF.Template.LoadFromDatabase;

            DmVendas2.qrySeriesNF.Close;
            DmVendas2.qrySeriesNF.sql.clear;
            DmVendas2.qrySeriesNF.sql.text :=' select * from PCD_IMPRIME_SERIE_NF(:venda,:cnpj)';
            DmVendas2.qrySeriesNF.ParamByName('cnpj').value := dmApp.cnpj;
            DmVendas2.qrySeriesNF.ParamByName('venda').value := PedidoNumero;
            DmVendas2.qrySeriesNF.open;

            DMCadastros.QryIndices.close;
            DMCadastros.QryIndices.parambyname('venda').value := PedidoNumero;
            DMCadastros.QryIndices.parambyname('data').value := dmApp.DataCaixa;
            DMCadastros.QryIndices.parambyname('total').value := DmVendas2.qrySeriesNFTOTAL.value;
            DMCadastros.QryIndices.open;

            rptSerieNF.print;


            ImprimeDoctoRecebimento(PedidoNumero);

            close;
          end;
    end;

end;


procedure TFrmTipoFaturaVenda.CmbTipoExit(Sender: TObject);
begin
     TIRACORFUNDO(Sender);

     DmVendas.Serie.Open ;
     DmVendas.Serie.Locate ( 'SERIE', CmbTipo.Text, [] );

     EdCodigo.Text    := DmVendas.SerieTipo.value ;

     IF DmaPP.DIGITA_NUM_NOTA = 'S'   THEN
     begin
        //Faturando no caixa, já com numeração e sem ser pedido agrupado
        if (( NumeroNf >0 ) and (IDNFGraf > 0 )) then
          edNumNF.Text  :=  IntToStr(NumeroNf)
        else
          edNumNF.Text  := inttostr(DmVendas.SerieUltimo_Numero.value);
     end;

     DmVendas.Serie.Close ;
end;

procedure TFrmTipoFaturaVenda.EdTipoEnter(Sender: TObject);
begin
     CORFUNDO(Sender);
end;

procedure TFrmTipoFaturaVenda.CmbTipoEnter(Sender: TObject);
begin
     CORFUNDO(Sender);
end;

procedure TFrmTipoFaturaVenda.edNumNFEnter(Sender: TObject);
begin
   if TRIM(edNumNF.TEXT) <> '' then
     ULTNUMERO := STRTOINT(edNumNF.TEXT)
   else
     ULTNUMERO  := 0;

   CORFUNDO(Sender);
end;

procedure TFrmTipoFaturaVenda.edNumNFExit(Sender: TObject);
begin
     TRY
        IF (( STRTOINT(edNumNF.TEXT) > ULTNUMERO + 10 ) OR
           (( STRTOINT(edNumNF.TEXT)) < ULTNUMERO - 10 )) AND (ULTNUMERO <> 0)
        THEN BEGIN
             MESSAGEDLG('Atenção, Número Fora da Sequencia, Verifique!', MtInformation, [MbOk],0);
        END;
     EXCEPT

     END;

     TIRACORFUNDO(Sender);
end;


procedure TFrmTipoFaturaVenda.Imprime;
var
   Prod: String ;
begin
    DmApp.DATA_NF := DATANF.date;

    If Trim(EdTipo.Text) = '' then
    Begin
      Showmessage('Selecione a Saída!');
      EdTipo.SetFocus ;
      Exit ;
    end;

    if EdTipo.Text = '3-Pedido' then
      ImprimePed;


    if EdTipo.Text = '1-Nota' then
    begin
      If (trim(edNumNF.TEXT ) = '') then
      begin
        MessageDlg('Digite o número da Nota!', mtError, [mbOK], 0);
        edNumNF.SETFOCUS ;
        exit;
      end;

      If ((NumeroNf > 0) and (IDNFGraf > 0)) then
      begin
        if MessageDlg('Esta Nota Já Foi Impressa, Deseja Reimprimir?', mtConfirmation, [mbOK, mbCancel], 0) = MrCancel then
          Exit ;
      end  //se possui cumpom
      else if ((NumeroCf > 0)  and (IDNFGraf > 0)) then
      begin
        If MessageDlg('Esta Venda Possui Cupom Fiscal Vinculado, Deseja Imprimir Nota ?', mtConfirmation, [mbOK, mbCancel], 0) = MrCancel then
            Exit ;
      end;

      ImprimeNf ;
    end;

    if EdTipo.Text = '2-Cupom' then
    begin
      if NumeroCf > 0 then
      begin
         MESSAGEDLG('Cupom de Nº ' + INTTOSTR(numeroCF) + ' Já Impresso para esta Fatura, Verifique!', MtError, [MbOk],0 );
         EdTipo.SetFocus ;
         exit;
      end;

      if NumeroNf > 0 then
      begin
         If MessageDlg('Esta Venda Possui Nota Impressa, Deseja Imprimir Cupom?', mtConfirmation, [mbOK, mbCancel], 0) = MrCancel then
             Exit ;
      end;

      DmApp.Marca_NumCupom( DmApp.Cnpj, PedidoNumero );
      ImprimeCf ;
    end;
end;

Procedure TFrmTipoFaturaVenda.Duplicata ;
Var
   Vencimento, Str: String  ;
   Bol    : Integer ;
   Parcela: Integer ;
   Data : TDate;
begin
  with DmVendas do
  begin
    if MessageDlg('Posicione a Duplicata!', mtWarning, [mbOK, mbcancel], 0) <> MrOk then
      Exit ;

    With DmCadastros2 do
    begin
      Duplicata.Close;
      Duplicata.Open ;
      //Duplicata grafica
      if (DuplicataDPL_GRAFICA.asString = 'S') then
      begin
        rptDuplicata.Template.DatabaseSettings.Name := dmapp.cnpj;
        rptDuplicata.Template.LoadFromDatabase;

        SelDuplicatas.Close;
        SelDuplicatas.parambyname('cnpj').value := dmapp.cnpj;
        SelDuplicatas.parambyname('venda').value := Consulta_VendaCODIGO.value;
        SelDuplicatas.parambyname('cod_receber').value := 0;
        SelDuplicatas.parambyname('pessoa_fj').value := Consulta_VendaPESSOA_FJ.value;
        SelDuplicatas.Open;
        SelDuplicatas.FetchAll;

        rptDuplicata.print;

        exit;
      end;
    end;
  end;
end;


procedure TFrmTipoFaturaVenda.EDISSExit(Sender: TObject);
begin
     TIRACORFUNDO(Sender);
end;

procedure TFrmTipoFaturaVenda.ImprimeServico;
begin
  with dmVendas do
  begin
    try
        with DMCadastros do
        begin
          edtServicoNF.close;
          edtServicoNF.parambyname('cnpj').value := dmapp.cnpj;
          edtServicoNF.open;
        end;

        with dmvendas2 do
        begin
          qryServico.close;
          qryServico.ParamByName('cnpj').value := dmApp.cnpj;
          qryServico.ParamByName('venda').value := PedidoNumero;
          qryServico.ParamByName('pessoa').value := PessoaFJ;
          qryServico.open;
        end;

        rptServico.Template.DatabaseSettings.Name := dmapp.cnpj;
        rptServico.Template.LoadFromDatabase;
        rptServico.print;

        if (strtoint(trim(edNumNF.Text)) <> NumeroNf) then
        begin
          DMProcs.Marca_NumNota.transaction := dmApp.Transaction;
          DMProcs.Marca_NumNota.ParamByName('CNPJ').asString     := DmApp.Cnpj;
          DMProcs.Marca_NumNota.ParamByName('CODIGO').asInteger    := PedidoNumero;
          DMProcs.Marca_NumNota.ParamByName('ULTNUMERO').asInteger    := strtoint(trim(edNumNF.Text)) ;
          DMProcs.Marca_NumNota.ParamByName('SERIE').asString     := trim(CmbTipo.Text);
          DMProcs.Marca_NumNota.ParamByName('DATA_NF').asDate     :=  DmApp.DATA_NF;
          DMProcs.Marca_NumNota.ExecProc;
        end;

        dmApp.Transaction.Commit;
        close;
    except
      On E:Exception Do
      begin
        Application.messagebox(Pchar('Erro ao tentar realizar a impressão do documento:  '+E.Message),'Aviso',mb_iconerror + mb_ok);
        dmApp.Transaction.Rollback;
      end;
    end;

    if not (dmApp.Transaction.Active) then
      dmApp.Transaction.StartTransaction;
  end;

  //aqui
  ImprimeDoctoRecebimento(PedidoNumero);
end;

procedure TFrmTipoFaturaVenda.dxPickEdit1Exit(Sender: TObject);
begin
 TIRACORFUNDO(Sender);
end;

procedure TFrmTipoFaturaVenda.ImprimeNFGrafica;
var
    i, NUM_NF :integer;
    SNFe: string;
begin
  with dmVendas2 do
  begin
    try
        {verificando estoque fiscal
        Vou deixar comentada pq ainda é preciso resolver a questão da reimpressão,
        if DmApp.BlqQtdeFiscal = 'S' then
        begin
          Prod := trim(DmApp.verifica_quantidade_Fiscal (PedidoNumero)) ;
          If Trim(Prod) <> '' then
          begin
            MessageDlg(Prod + ' ,Este Produto Não Possui Estoque Fiscal, Verifique', mtConfirmation, [mbOK], 0);
            EdTipo.setfocus ;
            exit ;
          end;
        end;}

        qryAux.close;
        qryAux.SQL.text := 'select coalesce(s.nfe_impressao,''S'') nfe_impressao from sis_serienf s where s.cnpj = '+QuotedStr(dmApp.cnpj)+' and s.serie = '+QuotedStr(Trim(CmbTipo.Text));
        qryAux.Open;

        SNFe := qryAux.fieldbyname('nfe_impressao').value;
        NUM_NF := StrToInt(edNumNF.Text);

        if ((DmApp.EXIBE_NFE = 'S') and (SNFe = 'S')) then
          DmApp.ImprimeNFE(dmApp.Cnpj, IDNFGraf, NUM_NF, DmApp.DATA_NF, Trim(CmbTipo.Text))
        else
        begin
          if (IDNFGraf=0) then
          begin
            if Application.MessageBox(Pchar('Impressão agrupada, os pedidos precisarão possuir as mesmas configurações para serem impressos corretamente.'
                                         +#13+'Deseja continuar?'),'Aviso',mb_iconquestion + mb_yesno) =  id_no then
                                         exit;

            ppGrafNF.DataSource := dsNFAgrup;
            qryNFAgrup.close;
            qryNFAgrup.ParamByName('cnpj').value := dmApp.cnpj;
            qryNFAgrup.ParamByName('pessoa_fj').value := PessoaNFGraf;
            qryNFAgrup.ParamByName('dt_nf').asDate := DmApp.DATA_NF;
            qryNFAgrup.open;
          end
          else
          begin
            ppGrafNF.DataSource := dsQryGrafNF;
            qryGrafNF.close;
            qryGrafNF.ParamByName('cnpj').value := dmApp.cnpj;
            qryGrafNF.ParamByName('venda').value := IDNFGraf;
            qryGrafNF.ParamByName('pessoa').value := PessoaNFGraf;
            qryGrafNF.ParamByName('dt_nf').asDate := DmApp.DATA_NF;
            qryGrafNF.ParamByName('num_nf').value := num_nf;
            qryGrafNF.open;
            qryGrafNF.FetchAll;
          end;

          DMCadastros.SerieLeiute.Close;
          DMCadastros.SerieLeiute.parambyname('indice').value := Trim(dmApp.cnpj)+Trim(CmbTipo.text);
          DMCadastros.SerieLeiute.Open;

          rptGrafNF.Template.DatabaseSettings.Name := DMCadastros.SerieLeiuteINDICE.value;
          rptGrafNF.Template.LoadFromDatabase;
          rptGrafNF.print;
        end;

        //Marcando a numeração da NF
        If (EdCodigo.Text <> 'C')then
        begin
          if (IDNFGraf = 0 ) then
          begin
            DMProcs.PCD_SET_NF_AGRUPADA.transaction := dmApp.Transaction;
            DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('CNPJ'     ).asString     := DmApp.Cnpj   ;
            DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('PESSOA_FJ'   ).asInteger    := PessoaNFGraf;
            DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('NUMERO').asInteger    := strtoint(trim(edNumNF.Text)) ;
            DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('SERIE').asString     := trim(CmbTipo.Text) ;
            DMProcs.PCD_SET_NF_AGRUPADA.ParamByName('DATA_NF').asDate     :=  DmApp.DATA_NF;
            DMProcs.PCD_SET_NF_AGRUPADA.ExecProc;
          end
          else
          begin
            //se for igual trata-se de uma reimpressão
            if (strtoint(trim(edNumNF.Text)) <> NumeroNf) then
            begin
              DMProcs.Marca_NumNota.transaction := dmApp.Transaction;
              DMProcs.Marca_NumNota.ParamByName('CNPJ').asString     := DmApp.Cnpj;
              DMProcs.Marca_NumNota.ParamByName('CODIGO').asInteger    := PedidoNumero;
              DMProcs.Marca_NumNota.ParamByName('ULTNUMERO').asInteger    := strtoint(trim(edNumNF.Text)) ;
              DMProcs.Marca_NumNota.ParamByName('SERIE').asString     := trim(CmbTipo.Text);
              DMProcs.Marca_NumNota.ParamByName('DATA_NF').asDate     :=  DmApp.DATA_NF;
              DMProcs.Marca_NumNota.ExecProc;
            end
          end
        end;


        ImprimeDoctoRecebimento(IDNFGraf);

        dmApp.Transaction.Commit;

        close;
    except
        On E:Exception Do
        begin
          Application.messagebox(Pchar('Erro ao tentar realizar a impressão do documento:  '+E.Message),'Aviso',mb_iconerror + mb_ok);
          dmApp.Transaction.Rollback;
        end
    end;

    if not (dmApp.Transaction.Active) then
      dmApp.Transaction.StartTransaction;
  end;
end;

procedure TFrmTipoFaturaVenda.ButtonClickEvent(Sender: TObject);
var
    i:integer;
begin
     For i := 0 to ComponentCount - 1 do
     begin
           //
           if( Components[I] is TppDBText ) then
             ( Components[I] as TppDBText ).Visible := true;
           //
           If ( Components[I] is tppmemo ) then
              if( Components[I] as tppmemo ).username = dmapp.NF_CONTINUO_NOME_CAMPO_TRUE then
                  (Components[I] as tppmemo ).Visible := false;
           //
          if(rptGrafNF.Page < rptGrafNF.PageCount)then
          begin
             //
             if( Components[I] is TppDBText )and(rptGrafNF.Page <> rptGrafNF.PageCount)then
               ( Components[I] as TppDBText ).Visible := False;
             //
             If ( Components[I] is tppmemo ) then
             begin
                if( Components[I] as tppmemo ).username = dmapp.NF_CONTINUO_NOME_CAMPO_TRUE then
                    (Components[I] as tppmemo ).Visible := true;
             end;
             //
          end;
     end;
end;

procedure TFrmTipoFaturaVenda.ActImprimirExecute(Sender: TObject);
begin
    //Em caso de reimpressão de uma nota de serviço, pode causar
  //problemas no contas a receber, porque serão reaplicados os vlres de retenção
  if (NotaImpressa) then
    exit;

  try
    Imprime;
    NotaImpressa := true;
  except
    On E:Exception Do
    begin
      Application.messagebox(Pchar('Erro ao tentar realizar a impressão do documento:  '+E.Message),'Aviso',mb_iconerror + mb_ok);
      NotaImpressa := false;
      Exit;
    end;
  end;
end;

procedure TFrmTipoFaturaVenda.ImprimeDoctoRecebimento(CodVenda:Integer);
begin
   dmvendas2.Proc_Imprime_Venda(CodVenda);

   //Imprime Duplicata
   if dmApp.VerificaTipoDoctoBoleto(dmVendas.Consulta_VendaTIPO_DOCTO.AsString) then
   begin
     if (dmVendas.Consulta_VendaLOCAL_COBRANCA.AsInteger = 0) then
     begin
       Application.MessageBox('Defina uma conta corrente para vínculo dos boletos','Aviso',mb_ok+mb_iconerror);
       exit;
     end;

     dmapp.ImprimeTitulo(CodVenda,dmVendas.Consulta_VendaLOCAL_COBRANCA.AsInteger,'V');
   end
   else if UPPERCASE( TipoDoc ) = 'DPL' then
     Duplicata;

   if ((DMvENDAS.Consulta_Venda_Parc.RecordCount > 0) AND ( DMAPP.Perfil_ComputadorIMPRIME_PROMISSORIA.VALUE = 'S' )) then
   begin
     FrmImprimePromissoria := TFrmImprimePromissoria.Create(Self);
     FrmImprimePromissoria.PedidoNumero := PedidoNumero ;
     FrmImprimePromissoria.Showmodal ;
   end;
end;

end.


