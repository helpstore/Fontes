unit Act_Renegociacao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Buttons, dxBar,
  cxPropertiesStore, dxDBTLCl, dxGrClms, dxDBGrid, dxTL, dxDBCtrl, Mask,
      dxmdaset, 
  DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, Menus, cxButtons, cxLabel, cxPC;

type
  TFrmAct_Renegociacao = class(TForm)
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsPessoas: TDataSource;
    ActCancelar: TAction;
    stgFrmAcertoBaixa: TcxPropertiesStore;
    PageControl: TcxPageControl;
    tbsParcelar: TcxTabSheet;
    tbsParcelas: TcxTabSheet;
    pnlClient: TPanel;
    Panel2: TPanel;
    Label3: TcxLabel;
    Label8: TcxLabel;
    Label6: TcxLabel;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label9: TcxLabel;
    Label30: TcxLabel;
    Label1: TcxLabel;
    EdData: TdxDateEdit;
    CmbPessoa: TdxLookupEdit;
    CmbTipo: TdxLookupEdit;
    EdDocumento: TdxEdit;
    EdHistorico: TdxEdit;
    CmbCentro_Custo: TdxLookupEdit;
    edtParcela: TdxSpinEdit;
    Intervalo: TdxSpinEdit;
    Panel3: TPanel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    mtbRenegociao: TdxMemData;
    Panel7: TPanel;
    Panel1: TPanel;
    edtDataBase: TdxDBDateEdit;
    dxDBEdit7: TdxDBEdit;
    Label28: TcxLabel;
    edtDuplicata: TdxDBEdit;
    Label33: TcxLabel;
    Label31: TcxLabel;
    edtValor: TdxDBCalcEdit;
    Label4: TcxLabel;
    dbCmbPessoa: TdxDBLookupEdit;
    Label5: TcxLabel;
    dsParcelas: TDataSource;
    cmbCCusto: TdxDBLookupEdit;
    Label10: TcxLabel;
    Panel4: TPanel;
    RzButton17: tcxButton;
    btnProximo: tcxButton;
    btnAnterior: tcxButton;
    GridFaturamento: TdxDBGrid;
    mtbRenegociaoCOD_PESSOA: TIntegerField;
    mtbRenegociaoDUPLICATA: TStringField;
    mtbRenegociaoDT_VENCTO: TDateField;
    mtbRenegociaoHISTORICO: TStringField;
    mtbRenegociaoVALOR: TFloatField;
    mtbRenegociaoCOD_CCUSTO: TIntegerField;
    GridFaturamentoRecId: TdxDBGridColumn;
    GridFaturamentoCOD_PESSOA: TdxDBGridMaskColumn;
    GridFaturamentoDUPLICATA: TdxDBGridMaskColumn;
    GridFaturamentoDT_VENCTO: TdxDBGridDateColumn;
    GridFaturamentoHISTORICO: TdxDBGridMaskColumn;
    GridFaturamentoVALOR: TdxDBGridMaskColumn;
    GridFaturamentoCOD_CCUSTO: TdxDBGridMaskColumn;
    tbsConfigTitulo: TcxTabSheet;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    btnMoeda: TcxButton;
    cmbMoeda: TdxDBLookupEdit;
    Label11: TcxLabel;
    dxDBDateEdit1: TdxDBDateEdit;
    Label12: TcxLabel;
    dxDBDateEdit2: TdxDBDateEdit;
    Label13: TcxLabel;
    edtCotacao: TdxDBCalcEdit;
    Label14: TcxLabel;
    GroupBox3: TGroupBox;
    Label18: TcxLabel;
    dxDBDateEdit3: TdxDBDateEdit;
    edtJurosCarencia: TdxDBSpinEdit;
    Label20: TcxLabel;
    rdTipoJuros: TDBRadioGroup;
    GroupBox4: TGroupBox;
    SpeedButton1: TcxButton;
    Label17: TcxLabel;
    Label19: TcxLabel;
    Label22: TcxLabel;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBDateEdit4: TdxDBDateEdit;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBCalcEdit3: TdxDBCalcEdit;
    Label23: TcxLabel;
    edtJurosVigencia: TdxDBSpinEdit;
    Label24: TcxLabel;
    GroupBox2: TGroupBox;
    Label16: TcxLabel;
    Label15: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    edtMultaCarencia: TdxDBSpinEdit;
    GroupBox5: TGroupBox;
    dxDBCalcEdit4: TdxDBCalcEdit;
    Label21: TcxLabel;
    dxDBCalcEdit5: TdxDBCalcEdit;
    Label25: TcxLabel;
    rdDesconto: TDBRadioGroup;
    mtbConfigTitulo: TdxMemData;
    dsConfigTitulo: TDataSource;
    mtbConfigTituloDATAINICIOVARIACAO: TDateField;
    mtbConfigTituloCOD_INDEXADOR: TIntegerField;
    mtbConfigTituloQUANTIDADEINDEXADOR: TFloatField;
    mtbConfigTituloDATAFIMVARIACAO: TDateField;
    ckConfigFin: TCheckBox;
    dsMoeda: TDataSource;
    mtbConfigTitulo_COTACAO: TFloatField;
    mtbConfigTituloTAXAMULTA: TFloatField;
    mtbConfigTituloPERCDESCONTOANTECIPADO: TFloatField;
    mtbConfigTituloPERCDESCONTOPONTUALIDADE: TFloatField;
    mtbConfigTituloTIPODESCONTO: TStringField;
    dsMoeda2: TDataSource;
    mtbConfigTituloCOD_JURO_POS_FIXADO: TIntegerField;
    mtbConfigTituloTAXARISCO: TFloatField;
    mtbConfigTituloJUROSIMPLES: TStringField;
    mtbConfigTituloDATAINICIOJUROS: TDateField;
    mtbConfigTituloCARENCIAJUROS: TIntegerField;
    mtbConfigTituloTAXAJUROS: TFloatField;
    mtbConfigTituloVIGENCIA: TIntegerField;
    dsCCusto: TDataSource;
    dsCCusto2: TDataSource;
    dsPessoas2: TDataSource;
    Label26: TcxLabel;
    lblTotal: TcxLabel;
    mtbRenegociaoPARCELA: TStringField;
    ActEditar: TAction;
    GridFaturamentoPessoa: TdxDBGridMaskColumn;
    GridFaturamentoCentroCusto: TdxDBGridMaskColumn;
    GridFaturamentoPARCELA: TdxDBGridMaskColumn;
    mtbRenegociaoPessoa: TStringField;
    mtbRenegociaoCentroCusto: TStringField;
    mtbConfigTituloCARENCIAMULTA: TIntegerField;
    DsTipoDocto: TDataSource;
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnMoedaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure mtbConfigTituloNewRecord(DataSet: TDataSet);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckConfigFinExit(Sender: TObject);
    procedure ActEditarExecute(Sender: TObject);
    procedure mtbRenegociaoCOD_PESSOAValidate(Sender: TField);
    procedure mtbRenegociaoCOD_CCUSTOValidate(Sender: TField);
    procedure RzButton17Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtParcelaEnter(Sender: TObject);
    procedure edtParcelaExit(Sender: TObject);
  private
    { Private declarations }
    procedure parcelar;
  public

  end;

var
  FrmAct_Renegociacao: TFrmAct_Renegociacao;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm2,
  SerieCustomizaveis_DM, SeriesCustomizaveis,
  Cadastros_Dm2, Moedas_Form, Main, Act_Contas_Form, Financeiro_Dm,
  Act_Baixa_Form;

{$R *.DFM}

procedure TFrmAct_Renegociacao.ActFecharExecute(Sender: TObject);
begin
   Modalresult := mrCancel ;
end;

procedure TFrmAct_Renegociacao.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAct_Renegociacao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  with dmFinanceiro2 do
  begin
    Moeda.Close;
    Moeda.Open;

    Moeda2.Close;
    Moeda2.Open;
  end;

  with DMCadastros do
  begin
    {Pessoas_FJ.Close;
    Pessoas_FJ.Open;}

    SelPessoas.Close;
    SelPessoas.Open;

    SelCentroCusto.Close;
    SelCentroCusto.Open;

    Centro_Custo.Close;
    Centro_Custo.Open;

    Tipo_Documento.Close;
    Tipo_Documento.Open;
  end;

  CmbPessoa.LookupKeyValue := frmAct_Contas.Pessoa;
  EdHistorico.text := frmAct_Contas.Historico;

  PageControl.ActivePageIndex := 0;

  if  (frmAct_Contas.Saldo > 0) then
  begin
    lblTotal.caption := 'R$ '+FormatFloat('###,##0.00',frmAct_Contas.Saldo)+ ' (Receber) ';
    CmbCentro_Custo.Enabled := false;
    cmbCCusto.Enabled := false;
  end
  else
  begin
    lblTotal.caption := 'R$ '+FormatFloat('###,##0.00',(frmAct_Contas.Saldo * -1))+ ' (Pagar) ';
    CmbCentro_Custo.Enabled := true;
    cmbCCusto.Enabled := false;
  end;

end;

procedure TFrmAct_Renegociacao.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmAct_Renegociacao.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmAct_Renegociacao.ActOkExecute(Sender: TObject);
var
  VlrBxNominal: Real;
  planilha : integer;
begin
  with dmFinanceiro2 do
  begin
    If Not DmaPP.TransactionProc.InTransaction then
      DmaPP.TransactionProc.StartTransaction ;

    if (DmApp.EXIBE_ACERTO = 'S') then
      Planilha := DMApp.GerarCodigo('ACERTO',0 ) + 1
    else
      Planilha := DMApp.GerarCodigo('PLANILHA', 1);

    try
      mtbAcertoReceber.first;
      while not mtbAcertoReceber.eof do
      begin
        if mtbAcertoReceberSELECIONADO.value = 'S' then
        begin
          //Valor a ser baixado do nominal
          VlrBxNominal := mtbAcertoReceberTotal_Baixar.value - (mtbAcertoReceberMultas.Value + mtbAcertoReceberVariacao.value + mtbAcertoReceberJuros.value - mtbAcertoReceberDesconto.value);
          PCD_ACT_RECEBER.ParamByName('cnpj').value := dmApp.cnpj;
          PCD_ACT_RECEBER.ParamByName('CODIGO').value := mtbAcertoReceberCODIGO.value;
          PCD_ACT_RECEBER.ParamByName('USUARIO').value := dmApp.UsuarioCaixa;
          PCD_ACT_RECEBER.ParamByName('CONTA').value :=  dmApp.ContaCaixa;
          PCD_ACT_RECEBER.ParamByName('BANCO').value :=  0;
          PCD_ACT_RECEBER.ParamByName('TURNO').value :=  dmApp.TurnoCaixa;
          PCD_ACT_RECEBER.ParamByName('DATA_BAIXA').value := dmApp.DataCaixa;
          PCD_ACT_RECEBER.ParamByName('VALOR_NOMINAL_BX').value := vlrBxNominal;
          PCD_ACT_RECEBER.ParamByName('JUROS').value :=  mtbAcertoReceberJuros.value;
          PCD_ACT_RECEBER.ParamByName('MULTA').value := mtbAcertoReceberMultas.Value;
          PCD_ACT_RECEBER.ParamByName('DESCONTO').value := (mtbAcertoReceberDesconto.value);
          PCD_ACT_RECEBER.ParamByName('VARIACAO').value := mtbAcertoReceberVariacao.value;
          PCD_ACT_RECEBER.ParamByName('PLANILHA').value := planilha;
          PCD_ACT_RECEBER.ParamByName('MOEDA').value := mtbAcertoReceberSALDO_MOEDA.value;
          PCD_ACT_RECEBER.ExecProc;
        end;
        mtbAcertoReceber.next;
      end;


      mtbAcertoPagar.first;
      while not mtbAcertoPagar.eof do
      begin
        if mtbAcertoPagarSELECIONADO.value = 'S' then
        begin
          //Valor a ser baixado do nominal
          //Ha necessidade de implementar Juros,Variacao, e os outros detalhes
          VlrBxNominal := mtbAcertoPagarTotal_Baixar.value - (mtbAcertoPagarMultas.Value + mtbAcertoPagarVariacao.value + mtbAcertoPagarJuros.value - mtbAcertoPagarDesconto.value);
          PCD_ACT_PAGAR.ParamByName('cnpj').value := dmApp.cnpj;
          PCD_ACT_PAGAR.ParamByName('CODIGO').value := mtbAcertoPagarCODIGO.value;
          PCD_ACT_PAGAR.ParamByName('USUARIO').value := dmApp.UsuarioCaixa;
          PCD_ACT_PAGAR.ParamByName('CONTA').value :=  dmApp.ContaCaixa;
          PCD_ACT_PAGAR.ParamByName('BANCO').value :=  0;
          PCD_ACT_PAGAR.ParamByName('TURNO').value :=  dmApp.TurnoCaixa;
          PCD_ACT_PAGAR.ParamByName('DATA_BAIXA').value := dmApp.DataCaixa;
          PCD_ACT_PAGAR.ParamByName('VALOR_NOMINAL_BX').value := vlrBxNominal;
          PCD_ACT_PAGAR.ParamByName('JUROS').value := 0;/// mtbAcertoPagarJuros.value;
          PCD_ACT_PAGAR.ParamByName('MULTA').value := 0;//mtbAcertoPagarMultas.Value;
          PCD_ACT_PAGAR.ParamByName('DESCONTO').value := 0;//(-1 * mtbAcertoPagarDesconto.value);
          PCD_ACT_PAGAR.ParamByName('VARIACAO').value := 0;//mtbAcertoPagarVariacao.value;
          PCD_ACT_PAGAR.ParamByName('PLANILHA').value := planilha;
          PCD_ACT_PAGAR.ParamByName('MOEDA').value := mtbAcertoPagarSALDO_MOEDA.value;

          PCD_ACT_PAGAR.ExecProc;
        end;
        mtbAcertoPagar.next;
      end;

      // Imprimindo o recibo do acerto
      with DmSerie_Customizaveis do
      begin
        edtLayoutActRecibo.close;
        edtLayoutActRecibo.parambyname('cnpj').value := dmApp.cnpj;
        edtLayoutActRecibo.Open;

        FrmSeriesCustomizaveis := TFrmSeriesCustomizaveis.Create(Self);
        FrmSeriesCustomizaveis.rptAcerto.Template.DatabaseSettings.Name := edtLayoutActReciboCNPJ.asstring;;
        FrmSeriesCustomizaveis.rptAcerto.Template.LoadFromDatabase;

        dmCadastros2.QryAcerto.Close;
        dmCadastros2.QryAcerto.parambyname('cnpj').value := dmApp.cnpj;
        dmCadastros2.QryAcerto.parambyname('planilha').value := PLANILHA;
        dmCadastros2.QryAcerto.Open;

        FrmSeriesCustomizaveis.rptAcerto.print;
        FrmSeriesCustomizaveis.free;
        FrmSeriesCustomizaveis :=  nil;
      end;

      DMApp.Transaction.CommitRetaining;
      Application.Messagebox('Acerto realizado com sucesso','Aviso',mb_ok + mb_iconinformation);
//      frmAcertoContas.Filtrar;
    except
      DMApp.Transaction.RollbackRetaining;
      Application.Messagebox('Erro ao realizar o acerto de contas','Aviso',mb_ok + mb_iconerror);
    end
  end;
end;

procedure TFrmAct_Renegociacao.ActCancelarExecute(Sender: TObject);
begin
  ActFechar.FreeInstance;
end;

procedure TFrmAct_Renegociacao.btnMoedaClick(Sender: TObject);
begin
  If dsConfigTitulo.DataSet.State = dsBrowse Then
     dsConfigTitulo.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMoedas', False);

  FrmMoedas := TFrmMoedas.Create(Self);

  FrmMoedas.ShowModal;
  FrmMoedas.Free;
  FrmMoedas := Nil;
  dsConfigTitulo.DataSet.FieldByName('COD_INDEXADOR').value := FrmMain.Codigo_Int ;
  DmFinanceiro2.Moeda.Close;
  DmFinanceiro2.Moeda.Open;
  cmbMoeda.SetFocus;
end;

procedure TFrmAct_Renegociacao.SpeedButton1Click(Sender: TObject);
begin
  If dsConfigTitulo.DataSet.State = dsBrowse Then
     dsConfigTitulo.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmMoedas', False);

  FrmMoedas := TFrmMoedas.Create(Self);

  FrmMoedas.ShowModal;
  FrmMoedas.Free;
  FrmMoedas := Nil;
  dsConfigTitulo.DataSet.FieldByName('COD_JURO_POS_FIXADO').value := FrmMain.Codigo_Int ;
  DmFinanceiro2.Moeda2.Close;
  DmFinanceiro2.Moeda2.Open;
  cmbMoeda.SetFocus;
end;

procedure TFrmAct_Renegociacao.mtbConfigTituloNewRecord(DataSet: TDataSet);
begin
 mtbConfigTituloJUROSIMPLES.value := '0';
 mtbConfigTituloTIPODESCONTO.value := '0';
end;

procedure TFrmAct_Renegociacao.btnProximoClick(Sender: TObject);
var
  xcod_receber, xcod_pagar : integer;
begin
  xcod_receber := 0;
  if (EdData.Date <= 0) then
  begin
    Application.MessageBox('Defina uma Data Inicial para o parcelamento','Aviso',mb_iconerror+mb_ok);
    EdData.SetFocus;
    exit;
  end;

  if (CmbPessoa.Text = '') then
  begin
    Application.MessageBox('Defina uma Pessoa para o parcelamento ','Aviso',mb_iconerror+mb_ok);
    CmbPessoa.Setfocus;
    exit;
  end;

  if ((CmbCentro_Custo.Text = '') and (CmbCentro_Custo.enabled)) then
  begin
    Application.MessageBox('Defina um Centro de Custo para o parcelamento ','Aviso',mb_iconerror+mb_ok);
    CmbCentro_Custo.Setfocus;
    exit;
  end;

  case PageControl.ActivePageIndex of
    0 : begin
          if ckConfigFin.Checked then
          begin
            mtbConfigTitulo.Close;
            mtbConfigTitulo.Open;
            mtbConfigTitulo.data.Values.Clear;
            mtbConfigTitulo.Insert;

            LblTitulo.Caption := 'Renegociação de Títulos - Configuração Financeira';
            PageControl.ActivePageIndex := 1;
            cmbMoeda.SetFocus;
          end
          else
          begin
            LblTitulo.Caption := 'Renegociação de Títulos - Edição de Parcelas';
            PageControl.ActivePageIndex := 2;
            parcelar;
            dbCmbPessoa.SetFocus;
          end;
        end;
    1 : begin
          LblTitulo.Caption := 'Renegociação de Títulos - Edição de Parcelas';
          PageControl.ActivePageIndex := 2;
          parcelar;
          dbCmbPessoa.SetFocus;
        end;
    2 : begin
         if Application.MessageBox('Deseja realmente realizar a renegociação dos títulos?','Aviso',mb_iconquestion + mb_yesno) = id_no then
            exit;

         If Not DmaPP.Transaction.InTransaction then
            DmaPP.Transaction.StartTransaction;

         try
           //Gerando títulos novos
           mtbRenegociao.First;
           while not mtbRenegociao.eof do
           begin
             xcod_receber :=  0;
             xcod_pagar :=  0;

             //Gerando a configuração dos novos títulos
             if (ckConfigFin.Checked) then
             begin
               with dmFinanceiro2 do
               begin
                 ACT_CFG_TITULO.Close;
                 ACT_CFG_TITULO.Open;
                 ACT_CFG_TITULO.Append;

                 ACT_CFG_TITULOCNPJ.value :=  dmApp.cnpj;
                 ACT_CFG_TITULODATAINICIOVARIACAO.value := mtbConfigTituloDATAINICIOVARIACAO.value;
                 ACT_CFG_TITULODATAFIMVARIACAO.value := mtbConfigTituloDATAFIMVARIACAO.value;
                 if (mtbConfigTituloCOD_INDEXADOR.value >0) then
                   ACT_CFG_TITULOCOD_INDEXADOR.value := mtbConfigTituloCOD_INDEXADOR.value;
                 ACT_CFG_TITULOQUANTIDADEINDEXADOR.value := mtbConfigTituloQUANTIDADEINDEXADOR.value;
                 ACT_CFG_TITULOJUROSIMPLES.value := mtbConfigTituloJUROSIMPLES.asInteger;
                 ACT_CFG_TITULOTAXAMULTA.value := mtbConfigTituloTAXAMULTA.value;
                 ACT_CFG_TITULOCARENCIAMULTA.value := mtbConfigTituloCARENCIAMULTA.value;
                 ACT_CFG_TITULOTIPODESCONTO.value := mtbConfigTituloTIPODESCONTO.asInteger;
                 ACT_CFG_TITULOPERCDESCONTOANTECIPADO.value := mtbConfigTituloPERCDESCONTOANTECIPADO.value;
                 ACT_CFG_TITULOPERCDESCONTOPONTUALIDADE.value := mtbConfigTituloPERCDESCONTOPONTUALIDADE.value;
                 if (mtbConfigTituloCOD_JURO_POS_FIXADO.value > 0) then
                    ACT_CFG_TITULOCOD_JURO_POS_FIXADO.value := mtbConfigTituloCOD_JURO_POS_FIXADO.value;

                 ACT_CFG_TITULODATAINICIOJUROS.value := mtbConfigTituloDATAINICIOJUROS.value;
                 ACT_CFG_TITULOCARENCIAJUROS.value := mtbConfigTituloCARENCIAJUROS.value;
                 ACT_CFG_TITULOTAXARISCO.value := mtbConfigTituloTAXARISCO.value;
                 ACT_CFG_TITULOTAXAJUROS.value := mtbConfigTituloTAXAJUROS.value;
                 ACT_CFG_TITULOVIGENCIA.value := mtbConfigTituloVIGENCIA.Value;
                 ACT_CFG_TITULO.post;
               end;
             end;

             with dmFinanceiro do
             begin
               if (frmAct_Contas.Saldo < 0 ) then
               begin
                 Contas_Pagar.Close;
                 Contas_Pagar.Open;
                 Contas_Pagar.Append;
                 if (dmFinanceiro2.ACT_CFG_TITULOCODIGO.VALUE > 0) then
                   Contas_PagarCOD_CONFIG_TITULO.value := dmFinanceiro2.ACT_CFG_TITULOCODIGO.VALUE;
                 Contas_PagarPESSOA_FJ.Value    := mtbRenegociaoCOD_PESSOA.value;
                 Contas_PagarDT_EMISSAO.Value   := DmApp.DataCaixa;
                 Contas_PagarDT_VENCTO.Value    := mtbRenegociaoDT_VENCTO.value;
                 Contas_PagarDT_LANCTO.Value    := DmApp.DataCaixa;
                 Contas_PagarDOCTO.Value        := 'ACT '+dmFinanceiro2.ACT_GERA_ACERTOCODIGO.asString;
                 Contas_PagarPARCELA.Value      := mtbRenegociaoPARCELA.value;
                 Contas_PagarHISTORICO.Value    := mtbRenegociaoHISTORICO.value;
                 Contas_PagarVALOR.Value        := mtbRenegociaoVALOR.value;
                 Contas_PagarBOLETO.Value       := 'N';
                 Contas_PagarORIGEM.Value       := 'ACT';
                 Contas_PagarCentro_Custo.Value := mtbRenegociaoCOD_CCUSTO.value;
                 Contas_Pagar.Post;

                 xcod_pagar := Contas_PagarCODIGO.value;
               end
               else
               begin
                 Contas_Receber.Close;
                 Contas_Receber.Open;
                 Contas_Receber.Append;
                 if (dmfinanceiro2.ACT_CFG_TITULOCODIGO.VALUE > 0) then
                 Contas_ReceberCOD_CONFIG_TITULO.value := dmfinanceiro2.ACT_CFG_TITULOCODIGO.VALUE;
                 Contas_ReceberPESSOA_FJ.Value  := mtbRenegociaoCOD_PESSOA.value;
                 Contas_ReceberDT_EMISSAO.Value := dmapp.DataCaixa;
                 Contas_ReceberDT_VENCTO.Value  := mtbRenegociaoDT_VENCTO.value;
                 Contas_ReceberDT_LANCTO.Value  := dmapp.DataCaixa;
                 Contas_ReceberDOCTO.Value      := 'ACT '+dmfinanceiro2.ACT_GERA_ACERTOCODIGO.asString;
                 Contas_ReceberPARCELA.Value    := mtbRenegociaoPARCELA.value;
                 Contas_ReceberHISTORICO.Value  := mtbRenegociaoHISTORICO.value;
                 Contas_ReceberVALOR.Value      := mtbRenegociaoVALOR.value;
                 Contas_ReceberBOLETO.Value     := 'N';
                 Contas_ReceberORIGEM.Value     := 'ACT';
                 Contas_Receber.Post;

                 xcod_receber := Contas_ReceberCODIGO.value;
               end;
             end;

             //Gerando relação títulos gerados X Acerto
             with dmFinanceiro2 do
             begin
               ACT_TITULO_GERADO.Close;
               ACT_TITULO_GERADO.Open;
               ACT_TITULO_GERADO.Append;

               ACT_TITULO_GERADOCNPJ.value := dmApp.cnpj;
               ACT_TITULO_GERADOCOD_ACERTOCONTA.value :=  ACT_GERA_ACERTOCODIGO.value;
               ACT_TITULO_GERADOCOD_RECEBER.value :=  xcod_receber;
               ACT_TITULO_GERADOCOD_PAGAR.value :=  xcod_pagar;
               ACT_TITULO_GERADO.post;
             end;

             mtbRenegociao.next;
           end;
           //Baixando os Antigos titulos
           FrmAct_Baixa.BaixarTitulos(dmFinanceiro2.ACT_GERA_ACERTOCODIGO.value,'4');

           DmaPP.Transaction.CommitRetaining;
           Application.MessageBox('Títulos renegociados com sucesso','Aviso',mb_ok + mb_iconinformation);
           close;
         except
           DmaPP.Transaction.RollbackRetaining;
           Application.MessageBox('Erro ao tentar renegociar os títulos','Aviso',mb_ok + mb_iconerror);
         end;
       end;
  end;
end;

procedure TFrmAct_Renegociacao.btnAnteriorClick(Sender: TObject);
begin
  case PageControl.ActivePageIndex of
    2 : begin
          if ckConfigFin.Checked then
          begin
            PageControl.ActivePageIndex := 1;
            LblTitulo.Caption := 'Renegociação de Títulos - Configuração Financeira';
          end
          else
          begin
            PageControl.ActivePageIndex := 0;
            LblTitulo.Caption := 'Renegociação de Títulos';
            edtParcela.setfocus;
          end
        end;
    1 : begin
          PageControl.ActivePageIndex := 0;
          LblTitulo.Caption := 'Renegociação de Títulos';
          edtParcela.SetFocus;
        end
  end;
end;

procedure TFrmAct_Renegociacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAct_Renegociacao.ckConfigFinExit(Sender: TObject);
begin
  btnProximo.Click;
end;

procedure TFrmAct_Renegociacao.ActEditarExecute(Sender: TObject);
begin
  if (PageControl.ActivePageIndex = 2) then
  begin
    mtbRenegociao.Edit;
    dbCmbPessoa.SetFocus;
  end;
end;

procedure TFrmAct_Renegociacao.mtbRenegociaoCOD_PESSOAValidate(
  Sender: TField);
begin
  mtbRenegociaoPessoa.value := DMCadastros.SelPessoasNOME_RAZAO.value;
end;

procedure TFrmAct_Renegociacao.mtbRenegociaoCOD_CCUSTOValidate(
  Sender: TField);
begin
  mtbRenegociaoCentroCusto.value := cmbCCusto.Text;
end;

procedure TFrmAct_Renegociacao.RzButton17Click(Sender: TObject);
begin
  close;
end;

procedure TFrmAct_Renegociacao.parcelar;
var
  DtVencimento : TDate;
  ValorParcela : Real;
  i : integer;
begin
  //Verificando se já existem parcelas geradas
  if  mtbRenegociao.RecordCount > 0 then
  begin
   if (Application.Messagebox('Deseja regerar o parcelamento?','Aviso',mb_yesno + mb_iconquestion) = id_no) then
     exit;
  end;

  //Parcelando os registos
  mtbRenegociao.Close;
  mtbRenegociao.Open;
  mtbRenegociao.data.Values.Clear;

  if (frmAct_Contas.Saldo > 0) then
    ValorParcela := frmAct_Contas.Saldo
  else
    ValorParcela := (frmAct_Contas.Saldo * -1);

  ValorParcela := (arredonda((ValorParcela / edtParcela.Value),2));
  i := 1;
  while (i <= edtParcela.Value) do
  begin
    mtbRenegociao.Append;
    mtbRenegociaoCOD_PESSOA.value := CmbPessoa.LookupKeyValue;
    mtbRenegociaoPessoa.value := CmbPessoa.text;
    //Definindo a data de vencimento
    if (i = 1) then
      mtbRenegociaoDT_VENCTO.AsDateTime := EdData.Date
    else
      mtbRenegociaoDT_VENCTO.AsDateTime := DtVencimento + Intervalo.Value;

    DtVencimento := mtbRenegociaoDT_VENCTO.AsDateTime;

    mtbRenegociaoHISTORICO.value := EdHistorico.Text;
    if (CmbCentro_Custo.text <> '') then
    begin
      mtbRenegociaoCOD_CCUSTO.value :=  CmbCentro_Custo.LookupKeyValue;
      mtbRenegociaoCentroCusto.value :=  CmbCentro_Custo.text;
    end;
    mtbRenegociaoPARCELA.value := IntToStr(i)+'/'+edtParcela.Text;
    mtbRenegociaoVALOR.value := ValorParcela;
    mtbRenegociao.Post;

    i := i + 1;
  end;
end;

procedure TFrmAct_Renegociacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmAct_Baixa.Close;
end;

procedure TFrmAct_Renegociacao.edtParcelaEnter(Sender: TObject);
begin
   CORFUNDO( SENDER ); 
end;

procedure TFrmAct_Renegociacao.edtParcelaExit(Sender: TObject);
begin
   TIRACORFUNDO( SENDER );
end;

end.
