 unit FaturaVenda_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Grids, DBGrids, Buttons,
  IBCustomDataSet,
    dxDBGrid, dxDBTLCl, dxGrClms, dxDBCtrl, dxTL,
  Mask, DBCtrls,    cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,  cxTextEdit,
  cxDBEdit;

type
  TFrmFaturaVenda = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    DsParcelas: TDataSource;
    Label28: TcxLabel;
    edHistorico: TdxDBEdit;
    Label8: TcxLabel;
    BtnForma: TcxButton;
    EdEntrada: TdxDBCalcEdit;
    Label34: TcxLabel;
    EdDescAcres: TdxDBCalcEdit;
    Label17: TcxLabel;
    Label29: TcxLabel;
    cmbTipoDocto: TdxDBLookupEdit;
    cmbContaCorrente: TdxDBLookupEdit;
    GRIDFATURAMENTO: TDBGrid;
    Label1: TcxLabel;
    EdDinheiro: TdxDBCalcEdit;
    Label2: TcxLabel;
    EdCheque: TdxDBCalcEdit;
    Label3: TcxLabel;
    EdCartao: TdxDBCalcEdit;
    Label4: TcxLabel;
    EdTicket: TdxDBCalcEdit;
    DataSource: TDataSource;
    Panel2: TPanel;
    RzBitBtn2: TcxButton;
    DsForma: TDataSource;
    Label31: TcxLabel;
    DBCoolText2: TDBText;
    DBCoolText3: TDBText;
    Label32: TcxLabel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    DBCoolText4: TDBText;
    Label33: TcxLabel;
    DsTipoDoc: TDataSource;
    ActImprimir: TAction;
    dxDBEdit1: TdxDBEdit;
    Bevel2: TBevel;
    Label5: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    ActLookUp: TAction;
    Label6: TcxLabel;
    cmbForma: TdxDBLookupEdit;
    DsLocal: TDataSource;
    ActCalcularDesconto: TAction;
    ActlocalizarForma: TAction;
    Label7: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label46: TcxLabel;
    Shape13: TShape;
    lblDescto: TcxLabel;
    cmbcentro: TdxDBLookupEdit;
    BTNCENTRO: TcxButton;
    Label56: TcxLabel;
    DsCentro: TDataSource;
    CmbFormaPgto: TcxDBTextEdit;
    edtDataBase: TdxDBDateEdit;
    Label57: TcxLabel;
    cxButton1: TcxButton;
    Vendas_Parc: TIBDataSet;
    Vendas_ParcCNPJ: TIBStringField;
    Vendas_ParcCODIGO: TIntegerField;
    Vendas_ParcVENCTO: TDateTimeField;
    Vendas_ParcPARCELA: TIBStringField;
    Vendas_ParcVALOR: TFloatField;
    Vendas_ParcBOLETO: TIntegerField;
    Vendas_ParcVALOR_EXTENSO: TIBStringField;
    FaturaVendas: TIBDataSet;
    FaturaVendasCNPJ: TIBStringField;
    FaturaVendasCODIGO: TIntegerField;
    FaturaVendasFECHADA: TIBStringField;
    FaturaVendasHISTORICO: TIBStringField;
    FaturaVendasPESSOA_FJ: TIntegerField;
    FaturaVendasUSUARIO: TIntegerField;
    FaturaVendasVENDEDOR: TIntegerField;
    FaturaVendasNATUREZA: TIntegerField;
    FaturaVendasENVIADA_CX: TIBStringField;
    FaturaVendasNUM_NF: TIntegerField;
    FaturaVendasNUM_CUPOM: TIntegerField;
    FaturaVendasPROPRIEDADE: TIntegerField;
    FaturaVendasCONVENIADO: TIntegerField;
    FaturaVendasTIPO_DOCTO: TIBStringField;
    FaturaVendasLOCAL_COBRANCA: TIntegerField;
    FaturaVendasDESC_ACRES: TFloatField;
    FaturaVendasENTRADA: TFloatField;
    FaturaVendasDINHEIRO: TFloatField;
    FaturaVendasCHEQUE: TFloatField;
    FaturaVendasCARTAO: TFloatField;
    FaturaVendasTICKET: TFloatField;
    FaturaVendasTOTAL: TFloatField;
    FaturaVendasOBSERVACAO: TIBStringField;
    FaturaVendasVLR_PARC_LC: TFloatField;
    FaturaVendasTERCEIRO: TIntegerField;
    FaturaVendasCARGA: TIntegerField;
    FaturaVendasVOLUME: TFloatField;
    FaturaVendasPESO: TFloatField;
    FaturaVendasREQUISICAO: TIBStringField;
    FaturaVendasDESCRICAO: TBlobField;
    FaturaVendasTIPO_VENDA: TIBStringField;
    FaturaVendasNOME_CONSUMIDOR: TIBStringField;
    FaturaVendasORCAMENTO: TIntegerField;
    FaturaVendasTROCO: TFloatField;
    FaturaVendasLOCAL: TIntegerField;
    FaturaVendasNOME: TIBStringField;
    FaturaVendasTotal_Geral: TFloatField;
    FaturaVendasTotal_Parcelar: TFloatField;
    FaturaVendasDiferenca: TFloatField;
    FaturaVendasAVista: TFloatField;
    FaturaVendasFORMA_PGTO: TIntegerField;
    FaturaVendasRECEBIDAS: TFloatField;
    FaturaVendasCONTA_CAIXA: TIntegerField;
    FaturaVendasCANCELADA: TIBStringField;
    FaturaVendasTOTAL_NOTA: TFloatField;
    FaturaVendasBASE_ICM: TFloatField;
    FaturaVendasICM: TFloatField;
    FaturaVendasBASE_ICM_SUBST: TFloatField;
    FaturaVendasVALOR_ICM_SUBST: TFloatField;
    FaturaVendasFRETE: TFloatField;
    FaturaVendasSEGURO: TFloatField;
    FaturaVendasDESPESAS: TFloatField;
    FaturaVendasIPI: TFloatField;
    FaturaVendasAPRAZO: TFloatField;
    FaturaVendasSELECIONADA: TIBStringField;
    FaturaVendasDUPLICATA: TIntegerField;
    FaturaVendasBANCO: TIBStringField;
    FaturaVendasCONTROLA_PLACA: TIBStringField;
    FaturaVendasCONTROLA_KM: TIBStringField;
    FaturaVendasASSINA_NOTA: TIBStringField;
    FaturaVendasKM_ATUAL: TFloatField;
    FaturaVendasNOME_PROPRIEDADE: TIBStringField;
    FaturaVendasNOME_VENDEDOR: TIBStringField;
    FaturaVendasNOME_NATUREZA: TIBStringField;
    FaturaVendasNOME_TERCEIRO: TIBStringField;
    FaturaVendasNOME_FORMA: TIBStringField;
    FaturaVendasUF: TIBStringField;
    FaturaVendasVALIDADE: TDateTimeField;
    FaturaVendasMEDIA_KM: TFloatField;
    FaturaVendasDOCUMENTOS_CONSUMIDOR: TIBStringField;
    FaturaVendasENDERECO_CONSUMIDOR: TIBStringField;
    FaturaVendasTURNO: TIntegerField;
    FaturaVendasHORA: TTimeField;
    FaturaVendasNAO_COBR_JUR_ATE: TIntegerField;
    FaturaVendasSERIE: TIBStringField;
    FaturaVendasDESCONTOS_CONCEDIDOS: TFloatField;
    FaturaVendasNOME_CONVENIO: TIBStringField;
    FaturaVendasDT_EMISSAO_AGRUPADA: TDateTimeField;
    FaturaVendasTRANSPORTADORA: TIntegerField;
    FaturaVendasDATA_CANCELAMENTO: TDateTimeField;
    FaturaVendasTOTAL_FISCAL: TFloatField;
    FaturaVendasCONS_REV: TIBStringField;
    FaturaVendasIRRF: TFloatField;
    FaturaVendasINSS: TFloatField;
    FaturaVendasPIS_COFINS_CSLL: TFloatField;
    FaturaVendasISS: TFloatField;
    FaturaVendasVALE_TROCO: TIBStringField;
    FaturaVendasCIDADE_CONSUMIDOR: TIBStringField;
    FaturaVendasPGTO_FRETE: TIBStringField;
    FaturaVendasBAIRRO_CONSUMIDOR: TIBStringField;
    FaturaVendasFONE_CONSUMIDOR: TIBStringField;
    FaturaVendasMESA: TIntegerField;
    FaturaVendasDESCTO_RES: TFloatField;
    FaturaVendasCOMPROMETER_ESTOQUE: TIBStringField;
    FaturaVendasID_AGRUPADOR: TIntegerField;
    FaturaVendasDESCTO_ICMS: TFloatField;
    FaturaVendasPCT_DESCTO_ICMS: TFloatField;
    FaturaVendasTotal_Itens: TFloatField;
    FaturaVendasNF_AGRUPADA: TIBStringField;
    FaturaVendasTRP_QTDE: TFloatField;
    FaturaVendasTRP_ESPECIE: TIBStringField;
    FaturaVendasTRP_PESO_BRUTO: TFloatField;
    FaturaVendasTRP_PESO_LIQUIDO: TFloatField;
    FaturaVendasTRP_NUMERO: TIBStringField;
    FaturaVendasTRP_MARCA: TIntegerField;
    FaturaVendasTRP_NOME: TIBStringField;
    FaturaVendasSTATUS_CARREGAMENTO: TIntegerField;
    FaturaVendasORDEM_CARGA: TIntegerField;
    FaturaVendasENTREGA_FUTURA: TIBStringField;
    FaturaVendasPCT_COMISSAO: TFloatField;
    FaturaVendasCENTRO_CUSTO: TIntegerField;
    FaturaVendasGERA_FINANCEIRO: TIBStringField;
    FaturaVendasES: TIBStringField;
    FaturaVendasDATA: TDateField;
    FaturaVendasDATA_CAIXA: TDateTimeField;
    FaturaVendasNFE_CHAVE: TIBStringField;
    FaturaVendasNFE_SELECIONADO: TIBStringField;
    FaturaVendasDT_PREV_ENTREGA: TDateField;
    FaturaVendasCOD_INDEXADOR: TIntegerField;
    FaturaVendasIDX_DATABASE: TDateField;
    FaturaVendasIDX_COTACAO: TFloatField;
    FaturaVendasIDX_QTDE: TFloatField;
    FaturaVendasCOD_CONFIGTITULO: TIntegerField;
    FaturaVendasNFE_VALIDADA: TIBStringField;
    FaturaVendasNFE_ASSINADA: TIBStringField;
    FaturaVendasNFE_TRANSMITIDA: TIBStringField;
    FaturaVendasNFE_AUTORIZADA: TIBStringField;
    FaturaVendasNFE_DANFE_IMPRESSO: TIBStringField;
    FaturaVendasCLI_SUB_TRIBUTARIO: TIBStringField;
    FaturaVendasDT_EMISSAO_NF: TDateField;
    FaturaVendasDT_EMISSAO_CF: TDateField;
    FaturaVendasN_SEQ_ECF: TIBStringField;
    FaturaVendasN_SERIE_ECF: TIBStringField;
    FaturaVendasNFE_PROTOCOLO: TIBStringField;
    FaturaVendasNFE_RECIBO: TIBStringField;
    FaturaVendasNFE_XML: TMemoField;
    FaturaVendasNFE_CANC_MOTIVO: TIBStringField;
    FaturaVendasNFE_CANC_STATUS: TIBStringField;
    FaturaVendasNFE_CANC_PROTOCOLO: TIBStringField;
    FaturaVendasNFE_CANC_XML: TMemoField;
    FaturaVendasPLACA: TIBStringField;
    FaturaVendasUF_PLACA: TIBStringField;
    FaturaVendasBCH_COD_FILIAL: TIntegerField;
    FaturaVendasDESCTO_SERVICO: TFloatField;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ValorExit(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure BtnFormaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GRIDFATURAMENTOEnter(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure CmbFormaPgtoExit(Sender: TObject);
    procedure EdDescAcresExit(Sender: TObject);
    procedure edHistoricoEnter(Sender: TObject);
    procedure edHistoricoExit(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
    procedure GRIDFATURAMENTOExit(Sender: TObject);
    procedure ActCalcularDescontoExecute(Sender: TObject);
    procedure ActlocalizarFormaExecute(Sender: TObject);
    procedure CmbFormaPgtoEnter(Sender: TObject);
    procedure EdTicketExit(Sender: TObject);
    procedure BTNCENTROClick(Sender: TObject);
    procedure FaturaVendasBeforeOpen(DataSet: TDataSet);
    procedure FaturaVendasCalcFields(DataSet: TDataSet);
    procedure FaturaVendasPESSOA_FJValidate(Sender: TField);
    procedure FaturaVendasFORMA_PGTOValidate(Sender: TField);
    procedure FaturaVendasTICKETValidate(Sender: TField);
    procedure FaturaVendasCARTAOValidate(Sender: TField);
    procedure FaturaVendasCHEQUEValidate(Sender: TField);
    procedure FaturaVendasDINHEIROValidate(Sender: TField);
    procedure FaturaVendasENTRADAValidate(Sender: TField);
    procedure FaturaVendasDESC_ACRESValidate(Sender: TField);
    procedure Vendas_ParcBeforePost(DataSet: TDataSet);
    procedure Vendas_ParcNewRecord(DataSet: TDataSet);
    procedure Vendas_ParcVALORValidate(Sender: TField);

  private
    { Private declarations }
    Ven_Dia_Pref_Fat, Ven_Limite_Tempo, NDocto: integer;
    Ven_Limite_Credito : Real;
    Bloqueado, Ven_Requisicao, Classificacao: String[1];
    procedure DescontoRestante;
  public
    { Public declarations }
    LocForma, VendaParcelada: Boolean  ;
    CodVenda: Integer ;
    Boleto, Duplicata: Boolean         ;

    Procedure Habilita ;
    Procedure Calcular_Parcelas;
    Procedure Calcular_Itens;
  end;

var
  FrmFaturaVenda: TFrmFaturaVenda;
  SOMATOTAL     : REAL ;
  QUANTIDADE    : INTEGER ;

implementation

uses
    Application_DM,
    Funcoes,
    Vendas_Dm,
    Main,
    Cadastros_DM,
    FormasPagto_Form,
    SelFaturaVendas_Form,
    EnviaCaixa_FRel,
    Financeiro_Dm,
    Procedures_DM,
    Dados_Desconto_Form,
    Localizar_Forma,
    MensagemClassificacao_Form,
    VendasPdv_Form, Vendas_DM2, Centro_Custo_Form,
  MensagemFaturamento_Form, Entra_Valor_Form;

{$R *.DFM}


procedure TFrmFaturaVenda.Calcular_itens;
Var
    tProdutos            : Extended ;
    tFProdutos           : Extended ;
    tPesos               : Extended ;
    tVolumes             : Extended ;
    tDesconto            : Extended ;
    BaseIcm, BaseIcmSubst: Extended ;
    Icm, IcmSubst        : Extended ;
    TotalNota            : Extended ;
    Estado               : String[1];
    Desconto             : real;
    pctAcerto            : real;
begin
  Estado := 'B' ;
  If DataSource.DataSet.State in [ dsinsert, dsedit ] then
  begin
    Estado := 'E' ;
    DataSource.DataSet.Post ;
  end;

  with dmVendas2 do
  begin
    qryParcItens.close;
    qryParcItens.parambyname('cnpj').value := dmapp.cnpj;
    qryParcItens.parambyname('codigo').value := DataSource.DataSet.FieldByName('codigo').value;
    qryParcItens.Open;

    qryParcItens.First;
    While Not qryParcItens.Eof Do
    Begin
      BaseIcm       := BaseIcm  + qryParcItensBASECALCULOICM.Value ;
      BaseIcmSubst  := BaseIcmSubst + qryParcItensBASECALCULOSUBSTITUICAO.Value;

      //ESTADUAL OU INTERESTADUAL
      if DataSource.DataSet.FieldByName('UF').Value = DmaPP.UF THEN
        Icm      := Icm + ((qryParcItensALIQUOTA_EST.Value * qryParcItensBASECALCULOICM.Value) / 100 )
      else
        Icm := Icm + ((qryParcItensALIQUOTA_INT.Value * qryParcItensBASECALCULOICM.Value)/ 100);

      IcmSubst := IcmSubst  + (qryParcItensICM_SUBS.Value);
      qryParcItens.Next;
    end;
  end;

  //Debitando o desconto total do pedido dos totais da NF
  Desconto := DataSource.DataSet.FieldByName('DESC_ACRES').value;
  pctAcerto := (Desconto * 100)/DataSource.DataSet.FieldByName('TOTAL').value;

  //Acertando os valores
  DataSource.DataSet.Edit ;
  DataSource.DataSet.FieldByName('BASE_ICM').Value              := BASEICM + ((BASEICM * pctAcerto)/100);
  DataSource.DataSet.FieldByName('ICM').Value                   := ICM + ((ICM * pctAcerto)/100);
  DataSource.DataSet.FieldByName('BASE_ICM_SUBST').Value        := BASEICMSUBST + ((BASEICMSUBST * pctAcerto)/100);
  DataSource.DataSet.FieldByName('VALOR_ICM_SUBST').Value       := ICMSUBST + ((ICMSUBST * pctAcerto)/100) ;

  if Dmapp.DIF_FIS_FISC = 'S' then
    TotalNota := DataSource.DataSet.FieldByName('TOTAL_FISCAL').Value
  else
    TotalNota := DataSource.DataSet.FieldByName('TOTAL').Value;

  TotalNota := TotalNota + DataSource.DataSet.FieldByName('VALOR_ICM_SUBST' ).Value ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('FRETE'   ).Value ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('SEGURO'  ).Value ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('DESPESAS').Value ;
  TotalNota := TotalNota + DataSource.DataSet.FieldByName('IPI'     ).Value ;
  DataSource.DataSet.FieldByName('TOTAL_NOTA').Value     := TotalNota + ((TotalNota * pctAcerto)/100) ;
  DataSource.DataSet.Post ;

  If Estado = 'E' then
    DataSource.DataSet.Edit ;

end;

procedure TFrmFaturaVenda.ActFecharExecute(Sender: TObject);
begin
     If DsParcelas.State in [ DsInsert, DsEdit ]  then
        DsParcelas.DataSet.Cancel
     else
        Modalresult := mrCancel ;
end;

procedure TFrmFaturaVenda.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFaturaVenda.ValorExit(Sender: TObject);
begin
//     Total.Value := Valor.Value - Desconto.Value + Juros.Value ;
end;

procedure TFrmFaturaVenda.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmFaturaVenda.ActiveControl = EdDinheiro
     Then begin
          DataSource.DataSet.FieldByName('Dinheiro').AsFloat := Calculadora ;
     end;

     If FrmFaturaVenda.ActiveControl = EdCheque
     Then begin
          DataSource.DataSet.FieldByName('Cheque').AsFloat := Calculadora ;
     end;

     If FrmFaturaVenda.ActiveControl = EdCartao
     Then begin
          DataSource.DataSet.FieldByName('Cartao').AsFloat := Calculadora ;
     end;

     If FrmFaturaVenda.ActiveControl = EdTicket
     Then begin
          DataSource.DataSet.FieldByName('Ticket').AsFloat := Calculadora ;
     end;

     If FrmFaturaVenda.ActiveControl = EdDescAcres
     Then begin
          DataSource.DataSet.FieldByName('DESC_ACRES').AsFloat := Calculadora ;
     end;

     If FrmFaturaVenda.ActiveControl = EdEntrada
     Then begin
          DataSource.DataSet.FieldByName('Entrada').AsFloat := Calculadora ;
     end;
end;

procedure TFrmFaturaVenda.BtnFormaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);


  DsForma.DataSet.Tag := DsForma.DataSet.Tag + 1;

  //
  FrmFormasPagto := TFrmFormasPagto.Create(Application);
  FrmFormasPagto.Showmodal ;

  Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := FrmMain.Codigo_Int;

  DsForma.DataSet.Tag := DsForma.DataSet.Tag - 1;
  cmbForma.SetFocus;
  DsForma.DataSet.Close;
  DsForma.DataSet.Open;
end;

procedure TFrmFaturaVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     //passando o valor do cartão para o desdobramento de carta, no procedure do tef
     if ((FrmVendasPdv <> nil) and (EdCartao.text <> '')) then
        FrmVendasPdv.ValorCartao := strTofloat(EdCartao.text)
     else if FrmSelFaturaVendas <> nil then
       FrmSelFaturaVendas.ValorCartao := strTofloat(EdCartao.text);


     If DsParcelas.DataSet.Tag = 0 Then
       DsParcelas.DataSet.Close
     else
       DsParcelas.DataSet.tag := DsParcelas.DataSet.tag - 1;

     If DsForma.DataSet.Tag = 0 Then
       DsForma.DataSet.Close
     else
       DsForma.DataSet.tag := DsForma.DataSet.tag - 1;

     If DsTipoDoc.DataSet.Tag = 0 Then
       DsTipoDoc.DataSet.Close
     else
       DsTipoDoc.DataSet.tag := DsTipoDoc.DataSet.tag - 1;

     If DsLocal.DataSet.Tag = 0 Then
       DsLocal.DataSet.Close
     else
       DsLocal.DataSet.tag := DsLocal.DataSet.tag - 1;

end;

procedure TFrmFaturaVenda.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     IF DMAPP.IMP_VND_FAT = 'N' then
       ActImprimir.Enabled := FALSE ;

     DsLocal.DataSet := DmFinanceiro.SelPlano ;

     If Not(DsForma.DataSet.Active) Then
        DsForma.DataSet.Open
     else
        DsForma.DataSet.tag := DsForma.DataSet.tag + 1;

     If Not(DataSource.DataSet.Active) Then
        DataSource.DataSet.Open
     else
        DataSource.DataSet.tag := DataSource.DataSet.tag + 1;

     If Not(DsParcelas.DataSet.Active) Then
        DsParcelas.DataSet.Open
     else
        DsParcelas.DataSet.tag := DsParcelas.DataSet.tag + 1;

     If Not(DsTipoDoc.DataSet.Active) Then
        DsTipoDoc.DataSet.Open
     else
        DsTipoDoc.DataSet.tag := DsTipoDoc.DataSet.tag + 1;

     If Not(DsLocal.DataSet.Active) Then
        DsLocal.DataSet.Open
     else
        DsLocal.DataSet.tag := DsLocal.DataSet.tag + 1;

     with dmFinanceiro do
     begin
      SelCentro.close;
      SelCentro.open;
      SelCentro.FetchAll;
     end;

     edHistorico.SetFocus ;

     Habilita ;
     DescontoRestante;


end;

procedure TFrmFaturaVenda.DescontoRestante;
var
  DesctoRes : Currency;
begin
    DesctoRes := dmapp.DescontoRestante(DataSource.DataSet.FieldByName('CODIGO').asInteger,DataSource.DataSet.FieldByName('DESC_ACRES').asfloat,TIBDataSet(DataSource.DataSet).transaction);
    if (DesctoRes > 0) then
      lblDescto.Style.Font.Color := clGreen
    else
      lblDescto.Style.Font.Color := clRed;

    lblDescto.caption :=  formatfloat('###,##0.00',DesctoRes);
end;

procedure TFrmFaturaVenda.GRIDFATURAMENTOEnter(Sender: TObject);
begin
  if GRIDFATURAMENTO.Enabled then
  begin
    if DataSource.DataSet.State In [ DsEdit, DsInsert ] then
       DataSource.DataSet.Post ;

    //Parcela vendas
    if Vendas_Parc.RecordCount <= 0 then
      DmVendas2.Parcela_Vendas(FaturaVendasNATUREZA.asInteger, FaturaVendasFORMA_PGTO.asInteger,FaturaVendasCODIGO.Value,FaturaVendas,Vendas_Parc);

    if (FaturaVendasES.value = 'E') then
      GRIDFATURAMENTO.FixedColor := $00566DEF
    else
      GRIDFATURAMENTO.FixedColor := $00CAF0D7;

    DsParcelas.DataSet.Append ;
  end;
end;

procedure TFrmFaturaVenda.ActOkExecute(Sender: TObject);
VAR
  TotalVenda : currency;
  motivo : integer;
begin
  { Essa tela so irá encerrar a venda e gerar o financeiro, somente isso nenhuma impressão}

  if (DmVendas.SelFormaPgtoAVISTA.Value = 'N') then
  begin
    Vendas_Parc.FetchAll;

    if Vendas_Parc.RecordCount = 0 then
    begin
      application.messagebox('Defina o parcelamento','Aviso',mb_ok+mb_iconerror);
      EdDescAcres.setfocus;
      exit;
    end;


      {se for uma entrada que irá gerar financeiro (devolucao ou algo do genero)}
      if ((FaturaVendasES.value = 'E') and (FaturaVendasGERA_FINANCEIRO.asString = 'S') and (cmbcentro.text = '')) then
      begin
        application.messagebox('Defina o Centro de Custo para o parcelamento','Aviso',mb_ok+mb_iconerror);
        cmbcentro.setfocus;
        exit;
      end;

      if (FaturaVendasGERA_FINANCEIRO.asString = 'N') then
      begin
        Application.MessageBox('CFOP do faturamento relacionado não permite parcelamento. Verifique','Aviso',mb_iconerror+mb_ok);
        exit;
      end;
  end;

  if DsParcelas.DataSet.State In [ DsEdit, DsInsert ] then
    DsParcelas.DataSet.Cancel ;

  {Se houver um valor mínimo nos valores da parcela}
  if (DmVendas.Valor_Minimo_Parcelamento(DsParcelas) = true) then
    exit;

  if DsParcelas.DataSet.State In [ DsEdit, DsInsert ] then
    DsParcelas.DataSet.Cancel ;

  if not dmapp.VerificaDesconto(DataSource.DataSet.FieldByName('CODIGO').asInteger,DataSource.DataSet.FieldByName('DESC_ACRES').asfloat,TIBDataSet(DataSource.DataSet).transaction) then
  begin
    if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
    begin
      abort;
      exit;
    end;
  end;


  TotalVenda := (DataSource.DataSet.FieldByName('TOTAL').asfloat + DataSource.DataSet.FieldByName('DESC_ACRES').asfloat);
  motivo := dmapp.VerificaLimite2(DataSource.DataSet.FieldByName('PESSOA_FJ').asInteger, DataSource.DataSet.FieldByName('FORMA_PGTO').asInteger, TotalVenda,TIBDataSet(DataSource.DataSet).transaction);
    case motivo of
      1:begin
          if not PedirSenha('Limite de tempo', 'ultrapassado','') THEN
          begin
            abort;
            exit;
          end;
        end;
      2:begin
          if not PedirSenha('Limite de crédito', 'ultrapassado','') THEN
          begin
            abort;
            exit;
          end;
        end;
      3:begin
          if not PedirSenha('Limites de tempo e crédito', 'ultrapassados','') THEN
          begin
            abort;
            exit;
          end;
        end;
    end;


  if DataSource.DataSet.FieldByName('Tipo_Venda').Value = 'Con' then
  begin
    Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
    FrmMensagemClassificacao.MEMO.Lines.Add ('SENHA GERENCIAL');
    FrmMensagemClassificacao.EdSenha.Visible := true ;
    FrmMensagemClassificacao.Label6.Visible  := true ;
    //Se o Nível ou a Classificacao exigir senha e não foi digitada

    if FrmMensagemClassificacao.Showmodal = MrCancel then
    Begin
      MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
      Abort ;
    end;

    FrmMensagemClassificacao.Free ;
    FrmMensagemClassificacao := Nil;
  end;


     With DMVendas do
     begin
          If arredonda(DataSource.DataSet.FieldByName('AVista').AsFloat,2) <> arredonda( (DataSource.DataSet.FieldByName('Dinheiro').AsFloat
                                                                                         + DataSource.DataSet.FieldByName('Cheque').AsFloat
                                                                                         + DataSource.DataSet.FieldByName('Cartao').AsFloat
                                                                                         + DataSource.DataSet.FieldByName('Ticket').AsFloat
                                                                                         + DataSource.DataSet.FieldByName('Troco').AsFloat)  ,2 )
          then begin
               MessageDlg('O Valor desdobrado não confere. Verifique', mtError, [mbOK], 0);
               EdDinheiro.SetFocus ;
               Abort ;
          end
          else begin
               //Valor Parcelado Não Confere

               if Arredonda(DataSource.DataSet.FieldByName('Diferenca').AsFloat,2) <> 0 then
               begin
                 MessageDlg('O Valor Desdobrado no Parcelamento Não Confere, Verifique!', mtError, [mbOK], 0);
                 GRIDFATURAMENTO.SetFocus ;
                 Abort ;
               end
               else
               begin
                    //Se o tipo de documento exige impressão de boletos, logo é obrigatorio a seleção de uma conta corrente
                   if (dmApp.VerificaTipoDoctoBoleto(DataSource.DataSet.FieldByName('TIPO_DOCTO').AsString) and (DataSource.DataSet.FieldByName('LOCAL_COBRANCA').AsInteger = 0)) then
                   begin
                     Application.MessageBox('Defina uma conta corrente para vínculo dos boletos','Aviso',mb_ok+mb_iconerror);
                     cmbContaCorrente.SetFocus;
                     exit;
                   end;

                    If DataSource.DataSet.State in [ dsinsert, dsedit ]  then
                        DataSource.DataSet.Post ;

                    ModalResult := MrOk ;
               end;
          end;
     end;
end;

procedure TFrmFaturaVenda.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );

     IF (( CmbFormaPgto.Text = '0' ) or ( CmbFormaPgto.Text = '' ) )AND( DataSource.State in [ dsinsert, dsedit ]) then
       ActlocalizarForma.Execute ;

     habilita;

     IF NOT (DataSource.DataSet.State in [ dsedit ]) then
       DataSource.DataSet.Edit ;

     DataSource.DataSet.FieldByName('Dinheiro').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;
end;

procedure TFrmFaturaVenda.Habilita;
var
  ES : string;
begin
     If Not ( DataSource.State in [ dsedit ] )   then
         DataSource.DataSet.Edit ;

     DmVendas.SelFormaPgto.LOCATE ( 'CODIGO', FaturaVendasFORMA_PGTO.VALUE, []);

     IF ( DmVendas.SelFormaPgtoNPARCELAS.VALUE > 0 ) AND ( DmVendas.SelFormaPgtoAVISTA.Value <> 'S' )
     THEN BEGIN
          //CONFERE SE O CLIENTE ESTA HABILITADO PARA VENDAS A PRAZO
          IF BLOQUEADO = 'S'
          THEN BEGIN
               Showmessage('Este Cliente Está Bloqueado Para Vendas a Prazo, Verifique!');
               ABORT ;
          END
          ELSE
              VENDAPARCELADA := TRUE ;
     END;

     if DmVendas.SelFormaPgtoAVISTA.Value = 'S' then
     begin
          cmbContaCorrente.Enabled     := false ;
          EDENTRADA.Enabled    := false ;
          cmbTipoDocto.Enabled := false ;

          DataSource.DataSet.FieldByName('LOCAL_COBRANCA').Clear ;
          DataSource.DataSet.FieldByName('ENTRADA').Clear        ;
          DataSource.DataSet.FieldByName('TIPO_DOCTO').Clear     ;

          EdDinheiro.Enabled := true ;
          EdCheque.Enabled   := true ;
          EdTicket.Enabled   := true ;
          EdCartao.Enabled   := true ;

          GRIDFATURAMENTO.Enabled := FALSE ;
     end
     else
     begin
        cmbContaCorrente.Enabled     := true ;
        EDENTRADA.Enabled    := true ;
        cmbTipoDocto.Enabled := true ;
        GRIDFATURAMENTO.Enabled := TRUE ;

        //faturamento

        if ((FaturaVendasES.value = 'E') and (FaturaVendasGERA_FINANCEIRO.asString = 'S')) then
        begin
          cmbcentro.enabled := true;
          BTNCENTRO.enabled := true;
        end
        else
        begin
          cmbcentro.enabled := false;
          BTNCENTRO.enabled := false;
        end;

        if (DmVendas.SelFormaPgtoCOMENTRADA.Value = 'N') then
        begin
          EDENTRADA.Enabled    := false ;
          DataSource.DataSet.FieldByName('ENTRADA').AsFloat := 0  ;

          EdDinheiro.Enabled := false ;
          EdCheque.Enabled   := false ;
          EdTicket.Enabled   := false ;
          EdCartao.Enabled   := false ;
        END
        else
        begin
          EDENTRADA.Enabled    := TRUE ;

          EdDinheiro.Enabled := true ;
          edCheque.Enabled   := true ;
          EdTicket.Enabled   := true ;
          EdCartao.Enabled   := true ;
        end;
     END;

     //DESCONTO E ACRESCIMO AQUI
     DataSource.DataSet.FieldByName('DINHEIRO').AsFloat := ARREDONDA(DataSource.DataSet.FieldByName('AVista').AsFloat,2) ;

//     DataSource.DataSet.Post ;
     if (FaturaVendasES.value = 'E') then
       GRIDFATURAMENTO.FixedColor := $00566DEF
     else
       GRIDFATURAMENTO.FixedColor := $00CAF0D7;
end;

procedure TFrmFaturaVenda.EdDescAcresExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
     IF NOT ( DataSource.DataSet.State in [ dsedit ]) then
         DataSource.DataSet.Edit ;

     if DataSource.DataSet.FieldByname('DESC_ACRES').value <> 0 then
       Calcular_itens;

     DataSource.DataSet.FieldByName('Dinheiro').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;
     DescontoRestante;
end;

procedure TFrmFaturaVenda.edHistoricoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFaturaVenda.edHistoricoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFaturaVenda.ActLookUpExecute(Sender: TObject);
begin
     If (FrmFaturaVenda.ActiveControl = CmbFormaPgto) Then
     BtnForma.OnClick(BtnForma);
end;

procedure TFrmFaturaVenda.GRIDFATURAMENTOExit(Sender: TObject);
begin
     Calcular_Parcelas ;
end;

Procedure TFrmFaturaVenda.Calcular_Parcelas;
Var bReg: Pointer;
    eTotal: Extended;
begin
  //
   If DsParcelas.DataSet.RecordCount > 0 Then
     bReg := DsParcelas.DataSet.GetBookmark;
  //
  DsParcelas.DataSet.DisableControls;
  //
  eTotal := 0;
  //
  DsParcelas.DataSet.First;
  //
  While Not DsParcelas.DataSet.Eof Do
        Begin
          //
          eTotal := eTotal + DsParcelas.DataSet.FieldByName('VALOR').asFloat;
          //
          DsParcelas.DataSet.Next;
        End;
  //
  DataSource.DataSet.Edit ;
  DataSource.DataSet.FieldByName('VLR_PARC_LC').asFloat := eTotal;
  DataSource.DataSet.Post ;

  //
  If DsParcelas.DataSet.RecordCount > 0 Then
     Begin
       DsParcelas.DataSet.GotoBookmark(bReg);
       DsParcelas.DataSet.FreeBookmark(bReg);
     End;
  //
  DsParcelas.DataSet.EnableControls;
End;

procedure TFrmFaturaVenda.ActCalcularDescontoExecute(Sender: TObject);
begin
     If not (FaturaVendas.State in [ DsInsert, DsEdit ]) then
         FaturaVendas.Edit ;

     Application.CreateForm(TFrmDadosDesconto, FrmDadosDesconto);

     FrmDadosDesconto.EdNome.Text        := FaturaVendasNOME.value ;
     FrmDadosDesconto.EdDocumento.Text   := FaturaVendasCodigo.AsString  ;
     FrmDadosDesconto.Desconto.Value     := FaturaVendasDESC_ACRES.Value ;
     FrmDadosDesconto.DescontoPorc.Value := 0;
     FrmDadosDesconto.Valor.Value        := FaturaVendasTotal.Value ;

     If FrmDadosDesconto.Showmodal = MrOk
     then begin
//        EdPorcentagem.Text := FORMATFLOAT('###,###,##0.00',ARREDONDA(FrmDadosDesconto.DescontoPorc.VALUE,2)) ;

          If ARREDONDA ( FrmDadosDesconto.Desconto.value, 2) > 0
          then begin
               FaturaVendasDESC_ACRES.Value := -1 * ARREDONDA ( FrmDadosDesconto.Desconto.value,2) ;
          end;

          If ARREDONDA ( FrmDadosDesconto.Acrescimo.value, 2) > 0
          then begin
               FaturaVendasDESC_ACRES.Value := ARREDONDA ( FrmDadosDesconto.Acrescimo.value,2) ;
          end;
     end;

     FrmDadosDesconto.Free   ;
     FrmDadosDesconto := Nil ;

     EdDescAcres.SetFocus ;
end;

procedure TFrmFaturaVenda.ActlocalizarFormaExecute(Sender: TObject);
begin
     try
        If ((FrmFaturaVenda.ActiveControl = CmbFormaPgto)or(LocForma)or ( CmbFormaPgto.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             LocForma := False ;

             //Chama a Tela Para Localizar Formas

             Application.CreateForm(TFrm_Localizar_FormaPagto, Frm_Localizar_FormaPagto);
             Frm_Localizar_FormaPagto.DSource.dataset := DmVendas.SelFormaPgto ;

             if ( Frm_Localizar_FormaPagto.showmodal = mrOk )
             Then Begin
                  FaturaVendasFORMA_PGTO.Value := (Frm_Localizar_FormaPagto.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_FormaPagto.Cad = 'S'
                  THEN
                      BtnForma.OnClick(BtnForma);
             end;
             Frm_Localizar_FormaPagto.free   ;
             Frm_Localizar_FormaPagto := Nil ;
        end;
  Except
  end;
end;

procedure TFrmFaturaVenda.CmbFormaPgtoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );//AQUI
    // HABILITA ;
end;

procedure TFrmFaturaVenda.EdTicketExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
  
end;

procedure TFrmFaturaVenda.BTNCENTROClick(Sender: TObject);
begin

  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmCCusto', False);
  FrmCCusto := TFrmCCusto.Create(Self);
  FrmCCusto.ShowModal;

  Datasource.DataSet.FieldByName('CENTRO_CUSTO').asInteger := FrmMain.Codigo_Int;

  FrmCCusto.Free;
  FrmCCusto := Nil;

  dsCentro.DataSet.Close ;
  dsCentro.DataSet.Open  ;

  cmbCentro.SetFocus;
end;

procedure TFrmFaturaVenda.FaturaVendasBeforeOpen(DataSet: TDataSet);
begin
 (DataSet as TIBDataSet).ParamByName('CNPJ').asString       := DMApp.Cnpj;
 (DataSet as TIBDataSet).ParamByName('CODIGO').asInteger    := CodVenda;
end;

procedure TFrmFaturaVenda.FaturaVendasCalcFields(DataSet: TDataSet);
begin
     with dmVendas2 do
     begin
       qryAux.close;
       qryAux.sql.text := ' select sum(coalesce(QUANTIDADE,0) * (coalesce(PRC_UNITARIO,0) - coalesce(DESCONTO,0))) total '+
                          ' from fat_vendas_itens vdi where vdi.cnpj = :cnpj and vdi.codigo = :codigo';
       qryAux.parambyname('cnpj').value :=  dmApp.cnpj;
       qryAux.parambyname('codigo').value := CodVenda;
       qryAux.Open;
     end;

     FaturaVendasTotal_Itens.Value := dmVendas2.qryAux.fieldbyname('total').asfloat;
     FaturaVendasTotal_Geral.Value := arredonda(FaturaVendasTOTAL_NOTA.Value,2) ;
     FaturaVendasTotal_Parcelar.Value := arredonda(FaturaVendasTotal_Geral.Value - FaturaVendasENTRADA.Value - FaturaVendasDESCTO_SERVICO.Value ,2) ;

     dmvendas.SelFormaPgto.Open;
     dmvendas.SelFormaPgto.Locate('CODIGO',FaturaVendasFORMA_PGTO.value,[loCaseInsensitive]);

     //DIFERENCA DO TOTAL A PARCELAR COM O TOTAL PARCELADO
     if (dmvendas.SelFormaPgtoAVISTA.Value <> 'S') then
       FaturaVendasDiferenca.Value := arredonda(FaturaVendasTotal_Parcelar.Value - FaturaVendasVlr_Parc_Lc.Value ,2)
     else
       FaturaVendasDiferenca.Value := 0 ;

     if dmvendas.SelFormaPgtoAVISTA.Value = 'S' then
       FaturaVendasAVista.Value := arredonda(FaturaVendasTotal_Geral.Value - FaturaVendasDESCTO_SERVICO.Value,2)
     else
       FaturaVendasAVista.Value := arredonda(FaturaVendasENTRADA.Value,2);
end;

procedure TFrmFaturaVenda.FaturaVendasPESSOA_FJValidate(Sender: TField);
Var
   Clas: Integer;
   NomeClas, Dig_Senha: String;
begin
     If (not ( FaturaVendas.State in [ DsInsert, DsEdit] )) or ( FaturaVendasPessoa_Fj.IsNull ) then
         Exit;

     If ( DmApp.CLIAVISTA = FaturaVendasPessoa_Fj.Value )
     Then begin
          FaturaVendasNOME_CONSUMIDOR.Value := Uppercase(InputBox ('Nome do Consumidor', 'Nome',''));

          If trim(FaturaVendasNOME_CONSUMIDOR.Value) = ''
          then begin
               FaturaVendasNOME.Value := 'Consumidor' ;
          end
          else begin
               FaturaVendasNOME.Value := FaturaVendasNOME_CONSUMIDOR.Value ;
          end;

          Exit ;
     end;

     dmVendas2.Valida_Cliente.Close ;
     dmVendas2.Valida_Cliente.ParamByName ('CNPJ').AsString  := DmApp.Cnpj   ;
     dmVendas2.Valida_Cliente.ParamByName ('CODIGO').AsInteger := FaturaVendasPessoa_Fj.Value ;
     dmVendas2.Valida_Cliente.Open ;

     if dmVendas2.Valida_ClientePESSOA_FJ.isNull then
     begin
          Showmessage ('Cliente Inexistente!');
          Abort;
     end;

     If Not dmVendas2.Valida_ClienteCOD_VEND.isNull then
       FaturaVendasVENDEDOR.Value    := dmVendas2.Valida_ClienteCOD_VEND.Value ;

     If Not dmVendas2.Valida_ClienteCOD_FPAGTO.isNull then
       FaturaVendasFORMA_PGTO.Value  := dmVendas2.Valida_ClienteCOD_FPAGTO.Value ;

     If Not dmVendas2.Valida_ClienteREQUISICAO.isNull then
       Ven_Requisicao  := dmVendas2.Valida_ClienteREQUISICAO.Value
     else
       Ven_Requisicao  := 'N' ;

     If Not dmVendas2.Valida_ClienteDIA_PREF_FAT.isNull then
       Ven_Dia_Pref_Fat  := dmVendas2.Valida_ClienteDIA_PREF_FAT.Value
     else
       Ven_Dia_Pref_Fat  := 0 ;

     If Not dmVendas2.Valida_ClienteLIMITE_TEMPO.isNull then
       Ven_Limite_Tempo  := dmVendas2.Valida_ClienteLIMITE_TEMPO.Value
     else
       Ven_Limite_Tempo  := 0 ;

     If Not dmVendas2.Valida_ClienteLIMITE_CREDITO.isNull then
        Ven_Limite_Credito  := dmVendas2.Valida_ClienteLIMITE_CREDITO.Value
     else
        Ven_Limite_Credito  := 0 ;

     If Not dmVendas2.Valida_ClienteCLASSIF.isNull then
       Classificacao  := dmVendas2.Valida_ClienteCLASSIF.Value
     else
       Classificacao  := 'B' ;


     If Not dmVendas2.Valida_ClienteOBS.isNull
     then Begin
          Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
          FrmMensagemFaturamento.Showmodal ;
          FrmMensagemFaturamento.Free ;
          FrmMensagemFaturamento  := Nil;
     end
     else begin
          If Not dmVendas2.Valida_ClienteOBS2.isNull
          then Begin
               Application.CreateForm(TFrmMensagemFaturamento, FrmMensagemFaturamento);
               FrmMensagemFaturamento.dxDBMemo1.DataField := 'OBS2' ;
               FrmMensagemFaturamento.Showmodal ;
               FrmMensagemFaturamento.Free ;
               FrmMensagemFaturamento  := Nil;
          end;
     end;

     If Not dmVendas2.Valida_ClienteCLASSIFICACAO.isNull
     then Begin
          Clas := dmVendas2.Valida_ClienteCLASSIFICACAO.Value ;

          //Confere se a Classificacao Pede Senha
          with dmVendas2 do
          begin
            Geral.Close ;
            Geral.Sql.Clear ;
            Geral.Params.Clear ;

            Geral.Params.CreateParam ( FtString , 'E', PtInput );
            Geral.Params.CreateParam ( FtInteger, 'C', PtInput );

            Geral.Sql.Add (' Select Nome, Dig_Senha from Glo_Classificacao Where Codigo = :C and CNPJ = :E ');

            Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
            Geral.ParamByName ('C').AsInteger := Clas         ;

            Geral.Prepare ;
            Geral.Open ;

            If Not Geral.Fields[0].isNull
            then Begin
                 NomeClas := Geral.Fields[0].Value ;
            end
            Else
                NomeClas := 'Não Informada';

            If Not Geral.Fields[1].isNull
            then Begin
                 Dig_Senha := Geral.Fields[1].Value ;
            end
            else begin
                 Dig_Senha := 'N' ;
            end;

            Geral.Close ;

            Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

            FrmMensagemClassificacao.MEMO.Lines.Add (NomeClas);

            If Dig_Senha = 'S'
            Then Begin
                 FrmMensagemClassificacao.EdSenha.Visible := true ;
                 FrmMensagemClassificacao.Label6.Visible  := true ;
                 //Se o Nível ou a Classificacao exigir senha e não foi digitada
                 if FrmMensagemClassificacao.Showmodal = MrCancel
                 then Begin
                      MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
                       Sender.Clear ;
                      Abort ;
                 end;
            end
            else begin
                 FrmMensagemClassificacao.EdSenha.Visible := false ;
                 FrmMensagemClassificacao.Label6.Visible  := false ;
                 FrmMensagemClassificacao.Showmodal ;
            end;

            FrmMensagemClassificacao.Free ;
            FrmMensagemClassificacao := Nil;
        end;    
     end;

     If Not dmVendas2.Valida_ClienteNOME.isNull
     then Begin
          FaturaVendasNOME.Value := dmVendas2.Valida_ClienteNOME.Value ;
     end ;

     //Seta o Estado da Pessoa
     dmVendas2.UfPessoa := dmvendas.SelPessoasFJUF.Value ;

     //Seleciona as Naturezas Estaduais ou Interestaduais
     dmVendas2.Valida_Cliente.Close ;

     If Ven_Limite_Credito > 0 then
     begin
       //Verifica os Limites de Crédito ( Tempo e Valor )
       If Not DmApp.Verifica_Limite ( DmApp.Cnpj, FaturaVendasPessoa_Fj.Value, FaturaVendasNome.Value, Ven_Limite_Tempo, Ven_Limite_Credito, FaturaVendasDATA.Value, 0) then
       Begin
         MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
         Sender.Clear ;
         Abort ;
       end
     end;
end;

procedure TFrmFaturaVenda.FaturaVendasFORMA_PGTOValidate(Sender: TField);
Var
   Vlr_Entrada: Real ;
begin
  If Sender.IsNull Then
    Exit;

  with dmVendas2 do
  begin
    Geral.Close ;
    Geral.Sql.Clear ;
    Geral.Params.CreateParam ( FtString , 'E', PtInput );
    Geral.Params.CreateParam ( FtInteger, 'C', PtInput );
    Geral.Sql.Add (' Select ACRESCIMO, DESCONTO, AVISTA, COMENTRADA From Fin_Formas_Pagto Where Codigo = :C and CNPJ = :E ');
    Geral.ParamByName ('E').AsString  := DmApp.Cnpj   ;
    Geral.ParamByName ('C').AsInteger := Sender.Value ;
    Geral.Open ;
  end;

  If dmVendas2.Geral.Fields[0].isNull then
  Begin
    Showmessage ('Forma de Pagto Inexistente!');
    Abort;
  end
  else
  begin
    dmVendas2.Valida_Cliente.Close ;
    dmVendas2.Valida_Cliente.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
    dmVendas2.Valida_Cliente.ParamByName ('CODIGO').AsInteger := FaturaVendasPESSOA_FJ.VALUE ;
    dmVendas2.Valida_Cliente.Open ;

    if ((dmVendas2.Valida_ClienteBLOQUEADO.VALUE = 'S') AND (dmVendas2.GERAL.FIELDBYNAME('AVISTA').Value <> 'S')) then
    begin
      Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
      FrmMensagemClassificacao.MEMO.Lines.Add ('BLOQUEADO');
      FrmMensagemClassificacao.EdSenha.Visible := true ;
      FrmMensagemClassificacao.Label6.Visible  := true ;

      //Se o Nível ou a Classificacao exigir senha e não foi digitada
      if FrmMensagemClassificacao.Showmodal = MrCancel then
      begin
        MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
        Sender.Clear ;
        Abort ;
        EXIT;
      end;
    end;

    if ((DmApp.Inclui_Venda_Lim = 'S') and (dmVendas2.GERAL.FIELDBYNAME('AVISTA').Value <> 'S')) then
    begin
      if Not dmVendas2.Valida_ClienteLIMITE_TEMPO.isNull then
        Ven_Limite_Tempo  := dmVendas2.Valida_ClienteLIMITE_TEMPO.Value
      else
        Ven_Limite_Tempo  := 0;

      if Not dmVendas2.Valida_ClienteLIMITE_CREDITO.isNull then
        Ven_Limite_Credito  := dmVendas2.Valida_ClienteLIMITE_CREDITO.Value
      else
        ven_Limite_Credito  := 0;

      if ((Ven_Limite_Credito > 0 ) or ( Ven_Limite_Tempo > 0 )) then
      begin
        Vlr_Entrada := 0;

        if dmVendas2.GERAL.FIELDBYNAME('COMENTRADA').Value = 'S'  then
        begin
          Application.CreateForm(TFrmEntraValor, FrmEntraValor);
          FrmEntraValor.lbltitulo.caption := 'Entrada:';
          if FrmEntraValor.Showmodal = MrOk then
          begin
            if FrmEntraValor.Valor.value > 0 then
              Vlr_Entrada := FrmEntraValor.Valor.value
            else
              Vlr_Entrada := 0;

          end;

          FrmEntraValor.Free   ;
          FrmEntraValor := Nil ;
        end;

        FaturaVendasENTRADA.value := Vlr_Entrada ;
        //Verifica os Limites de Crédito ( Tempo e Valor )
        if Not DmApp.Verifica_Limite(DmApp.Cnpj, FaturaVendasPESSOA_FJ.VALUE, FaturaVendasNOME.VALUE, Ven_Limite_Tempo, Ven_Limite_Credito, FaturaVendasDATA.Value, (FaturaVendasTotal_Geral.Value - Vlr_Entrada)) then
        begin
          MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
          Abort ;
        end;
      end;
    end;

          //Apaga Parcelas
    DmApp.Apaga_Parcelas_Venda ( DmApp.Cnpj, FaturaVendasCODIGO.Value );
    Vendas_Parc.Close ;
    Vendas_Parc.Open  ;

    if(dmVendas2.Geral.Fields[1].Value > 0) then
      FaturaVendasDESC_ACRES.Value := ARREDONDA(-1 * ((FaturaVendasTOTAL.Value * dmVendas2.Geral.Fields[1].VALUE)/100),2)
    else
    begin
      if (dmVendas2.Geral.Fields[0].Value > 0 ) and ( FaturaVendasDESC_ACRES.Value <= 0) then
        FaturaVendasDESC_ACRES.Value := ARREDONDA(((FaturaVendasTOTAL.Value * dmVendas2.Geral.Fields[0].value)/100),2)
      else
      begin
        if (dmVendas2.Geral.Fields[1].Value = 0 ) then
          FaturaVendasDESC_ACRES.Value := 0;
      end;
    end;
  end;
end;

procedure TFrmFaturaVenda.FaturaVendasTICKETValidate(Sender: TField);
begin
  If ARREDONDA(Sender.Value + FaturaVendasDinheiro.Value + FaturaVendasCHEQUE.Value + FaturaVendasCARTAO.Value,2) > FaturaVendasAVista.Value
    then begin
      FaturaVendasTROCO.Value  := ARREDONDA(FaturaVendasAVista.Value - Sender.Value - FaturaVendasDinheiro.Value - FaturaVendasCHEQUE.Value  - FaturaVendasCARTAO.Value,2);
    end
    else begin
      FaturaVendasTROCO.Value := 0 ;
    END;
end;

procedure TFrmFaturaVenda.FaturaVendasCARTAOValidate(Sender: TField);
begin
   If ARREDONDA(Sender.Value + FaturaVendasDinheiro.Value + FaturaVendasCHEQUE.Value,2) > FaturaVendasAVista.Value then
  begin
    FaturaVendasTICKET.Value := 0 ;
    FaturaVendasTROCO.Value  := ARREDONDA(FaturaVendasAVista.Value - Sender.Value - FaturaVendasDinheiro.Value - FaturaVendasCHEQUE.Value ,2) ;
  end
  else begin
    FaturaVendasTICKET.Value := Arredonda((FaturaVendasAVista.Value - FaturaVendasCHEQUE.Value - FaturaVendasDinheiro.Value - Sender.Value),2) ;
    FaturaVendasTROCO.Value := 0 ;
  END;
end;

procedure TFrmFaturaVenda.FaturaVendasCHEQUEValidate(Sender: TField);
begin
   If ARREDONDA(FaturaVendasDinheiro.Value + Sender.Value,2) > ARREDONDA(FaturaVendasAVista.Value,2) then
  begin
    FaturaVendasCARTAO.Value := 0 ;
    FaturaVendasTROCO.Value  := ARREDONDA( FaturaVendasAVista.Value - Sender.Value - FaturaVendasDINHEIRO.Value ,2) ;
  end
  else
  begin
    FaturaVendasCARTAO.Value := Arredonda((FaturaVendasAVista.Value - FaturaVendasDinheiro.Value - Sender.Value),2) ;
    FaturaVendasTROCO.Value := 0 ;
  end;
end;

procedure TFrmFaturaVenda.FaturaVendasDINHEIROValidate(Sender: TField);
begin
  If ARREDONDA(Sender.Value,2) > ARREDONDA(FaturaVendasAVista.Value,2) then
  begin
    FaturaVendasCHEQUE.Value := 0 ;
    FaturaVendasTROCO.Value  := ARREDONDA(FaturaVendasAVista.Value - Sender.Value ,2) ;
  end
  else
  begin
    FaturaVendasCHEQUE.Value := Arredonda((FaturaVendasAVista.Value - Sender.Value),2) ;
    FaturaVendasTROCO.Value := 0 ;
  end;
end;

procedure TFrmFaturaVenda.FaturaVendasENTRADAValidate(Sender: TField);
begin
  FaturaVendasDinheiro.Value := Arredonda(FaturaVendasAVista.Value,2) ;
end;

procedure TFrmFaturaVenda.FaturaVendasDESC_ACRESValidate(Sender: TField);
begin
  FaturaVendasDinheiro.Value := FaturaVendasAVista.Value ;
  //Apaga Parcelas
  DmApp.Apaga_Parcelas_Venda ( DmApp.Cnpj, FaturaVendasCODIGO.Value );
  Vendas_Parc.Close ;
  Vendas_Parc.Open  ;
end;

procedure TFrmFaturaVenda.Vendas_ParcBeforePost(DataSet: TDataSet);
begin
   //Validando dt. de vencto inferior a dt. corrente
  if (Vendas_ParcVENCTO.value < dmApp.DataServidor ) then
  begin
    if Application.MessageBox(Pchar('Parcela com dt. de vencto inválida'+#13+'Confirmar parcela?'),'Aviso',mb_yesno+mb_iconquestion) = id_no then
      abort;
  end;
end;

procedure TFrmFaturaVenda.Vendas_ParcNewRecord(DataSet: TDataSet);
begin
  Vendas_ParcVALOR.Value := 0;
  Vendas_ParcCNPJ.Value   := FaturaVendasCNPJ.AsString    ;
  Vendas_ParcCODIGO.Value := FaturaVendasCODIGO.AsInteger ;
end;

procedure TFrmFaturaVenda.Vendas_ParcVALORValidate(Sender: TField);
begin
 dmapp.Extenso.Valor := Sender.value;
 Vendas_ParcVALOR_EXTENSO.value := dmapp.Extenso.texto;
end;

end.
