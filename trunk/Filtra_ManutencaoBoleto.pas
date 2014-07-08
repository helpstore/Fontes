 unit Filtra_ManutencaoBoleto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask,      ppDB, ppDBPipe,
  ppParameter, ppModule, raCodMod, ppCtrls, ppBands, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt,
    ppRegion, cxGraphics, cxControls, cxLookAndFeels,
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
  TfrmFiltraManBoleto = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActPreview: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    GroupBox2: TGroupBox;
    Label11: TcxLabel;
    Label9: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label12: TcxLabel;
    cmbRegiao: TdxLookupEdit;
    cmbClassificacao: TdxLookupEdit;
    cmbCliente: TdxLookupEdit;
    cmbLocalCob: TdxLookupEdit;
    cmbVendedor: TdxLookupEdit;
    gbSituacao: TGroupBox;
    Rd4: TRadioButton;
    Rd5: TRadioButton;
    Rd6: TRadioButton;
    GroupBox4: TGroupBox;
    rd9: TRadioButton;
    rd10: TRadioButton;
    rd11: TRadioButton;
    gbValor: TGroupBox;
    Label1: TcxLabel;
    Label6: TcxLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    DsClientes: TDataSource;
    dsClassificao: TDataSource;
    dsLocalCob: TDataSource;
    dsVendedor: TDataSource;
    dsRegiao: TDataSource;
    gpAgendamentos: TGroupBox;
    Label2: TcxLabel;
    Label3: TcxLabel;
    rdAgend1: TcxSpinEdit;
    rdAgend2: TcxSpinEdit;
    GroupBox1: TGroupBox;
    RzNumericEdit1: TcxCurrencyEdit;
    Label13: TcxLabel;
    gbData: TGroupBox;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Rd1: TRadioButton;
    Rd2: TRadioButton;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    Rd3: TRadioButton;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPreviewExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure Rd1Click(Sender: TObject);
    procedure CmbCobradorExit(Sender: TObject);
    procedure CmbCobradorEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure HabilitaHeader(Sender: TObject);
    procedure ImprimeHistorico(Sender: TObject);
  private
    { Private declarations }
    sqlOriginal : string;
    Historico : boolean;
  public
    { Public declarations }
  end;

var
  frmFiltraManBoleto: TfrmFiltraManBoleto;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
     Relatorios_DM, Usuarios_DM, Main;

{$R *.DFM}

procedure TfrmFiltraManBoleto.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmFiltraManBoleto.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmFiltraManBoleto.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraManBoleto.ActPreviewExecute(Sender: TObject);
var
  sFiltro, sOrder, tipo, filtro : string;
begin
  filtro := '';
  sfiltro := '';

  if (DataInicial.date <= 0) then
  begin
    application.messagebox('Defina a data inicial','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  if (DataFinal.date <= 0) then
  begin
    application.messagebox('Defina a data final','Aviso',mb_ok + mb_iconinformation);
    DataFinal.setfocus;
    exit;
  end;

  if (DataFinal.date < DataInicial.date) then
  begin
    application.messagebox('Intervalo de datas inválido','Aviso',mb_ok + mb_iconinformation);
    DataInicial.setfocus;
    exit;
  end;

  //-------------------------------------Filtrando as Combos------------------------------------------//
  if (cmbCliente.text <> '') then
    sfiltro := sfiltro + ' PSA_CODIGO ='+intToStr(cmbCliente.LookupKeyValue);

  if (cmbClassificacao.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Classificação: '+cmbClassificacao.text;
    sfiltro := sfiltro + ' COD_CLASSIFICACAO ='+intToStr(cmbClassificacao.LookupKeyValue);
  end;

  if (cmbLocalCob.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Local Cobrança: '+cmbLocalCob.text;
    sfiltro := sfiltro + ' COD_LOCALCOBRANCA ='+intToStr(cmbLocalCob.LookupKeyValue);
  end;

  if (cmbVendedor.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Vendedor: '+cmbVendedor.text;
    sfiltro := sfiltro + ' COD_VENDEDOR ='+intToStr(cmbVendedor.LookupKeyValue);
  end;

  if (cmbRegiao.text <> '') then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    if (filtro <> '') then
      filtro := filtro + ' - ';

    filtro := filtro + 'Região: '+cmbRegiao.text;
    sfiltro := sfiltro + ' COD_REGIAO ='+intToStr(cmbRegiao.LookupKeyValue);
  end;



  //------------------------------------Tipo de Baixa (Parcial..)------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd4.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Situação: BX. PARCIALMENTE';
    sfiltro := sfiltro + ' BX_PARCIAL > 0 ';
  end
  else if (rd5.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Situação: INTEGRAL';
    sfiltro := sfiltro + ' BX_PARCIAL = 0 ';
  end
  else
    filtro := filtro + 'Situação: AMBOS';

  //------------------------------------Arquivo morto------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd9.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Arq. Morto: SIM';
    sfiltro := sfiltro + ' arq_morto = ''S''';
  end
  else if (rd10.checked) then
  begin
    if (sfiltro <> '') then
      sfiltro := sFiltro + ' and ';

    filtro := filtro + 'Arq. Morto: NÃO';
    sfiltro := sfiltro +' arq_morto = ''N''';
  end
  else
    filtro := filtro + 'Arq. Morto: AMBOS';


  //------------------------------------"Documentos"-------------------------------------------------//
  //Ndocto

  //Ndocto
  if filtro <> '' then
    filtro := filtro + ' - ';

  //-------------------------------------valores-------------------------------------------------------//
  if (sfiltro <> '') then
    sfiltro := sFiltro + ' and ';

  if (filtro <> '') then
    filtro := filtro + ' - ';

  sfiltro := sfiltro + ' ( saldo between '+StringReplace(edtVlrInicial.Text,'.','',[rfReplaceAll])+' and '+StringReplace(edtVlrFinal.Text,'.','',[rfReplaceAll])+')';
  sfiltro := StringReplace(sfiltro,',','.',[rfReplaceAll]);
  filtro := filtro + 'Valores: '+edtVlrInicial.Text+' à '+edtVlrFinal.text;


  //-------------------------------------Tipo de Data-------------------------------------------------//
  if (filtro <> '') then
    filtro := filtro + ' - ';

  if (rd1.checked) then
  begin
    filtro := filtro + 'Tipo de Data: VENCIMENTO';
    tipo := 'V';
  end
  else if (rd2.checked) then
  begin
    filtro := filtro + 'Tipo de Data: LANÇAMENTO';
    tipo := 'L'
  end
  else
  begin
    filtro := filtro + 'Tipo de Data: EMISSÃO';
    tipo := 'E'
  end;

  //-------------------------------------Depois-------------------------------------------------------//
  //Análitico e Sintético
  //Exibir Histórico
  //ckComplementar

    //---------------------------------------Relatório--------------------------------------------------//


  with dmRelatorios do
  begin
    qryRelReceber.Close;
    qryRelReceber.sql.text := sqlOriginal;
    if sFiltro <> '' then
      qryRelReceber.sql.text := sqlOriginal + ' where '+sfiltro+sOrder;

    qryRelReceber.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelReceber.paramByName('data1').asDate := DataInicial.date;
    qryRelReceber.paramByName('data2').asDate := DataFinal.date;
    qryRelReceber.paramByName('dt_cx').asDate := dmApp.DataCaixa;
    qryRelReceber.paramByName('tipo').value := tipo;
    qryRelReceber.Open;
    //----recebidas------
    qryRelRecebidas.close;
    qryRelRecebidas.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelRecebidas.Open;

    //----Cobranças------
    qryRelCobRec.close;
    qryRelCobRec.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelCobRec.Open;

    //----Vendas------
    qryRelVDRec.close;
    qryRelVDRec.paramByName('cnpj').value := dmApp.Cnpj;
    qryRelVDRec.Open;
  end;

  dmrelatorios.qryRelReceber.sql.text := sqlOriginal;
end;

procedure TfrmFiltraManBoleto.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbCliente.setfocus;

  pnlClient.color := clWhite;
end;

procedure TfrmFiltraManBoleto.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmFiltraManBoleto.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmFiltraManBoleto.Rd1Click(Sender: TObject);
begin
{  if Rd1.Checked then
  begin
     tedtCobrar.Enabled := false;
     tedtCobrado.Enabled := false;
     gpAgendamentos.Enabled := false;
  end
  else
  begin
    tedtCobrar.Enabled := true;
    tedtCobrado.Enabled := true;
    gpAgendamentos.Enabled := true;
  end;}
end;

procedure TfrmFiltraManBoleto.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraManBoleto.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraManBoleto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraManBoleto.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
     
  with DmFinanceiro do
  begin
    SelPessoasFJ.close;
    SelPessoasFJ.Open;;
    SelPessoasFJ.fetchAll;
  end;

  with DMRelatorios do
  begin
    SelVendedor.close;
    SelVendedor.open;
    SelVendedor.FetchAll;

    SelClassif.close;
    SelClassif.open;
    SelClassif.FetchAll;

    SelLocalCob.close;
    SelLocalCob.open;
    SelLocalCob.FetchAll;

    SelRota.close;
    SelRota.open;
    SelRota.FetchAll;

    SelRegiao.close;
    SelRegiao.open;
    SelRegiao.FetchAll;

    SelTipoDocto.close;
    SelTipoDocto.open;
    SelTipoDocto.fetchAll;
  end;
  sqlOriginal := dmRelatorios.qryRelReceber.sql.text;
end;

procedure TfrmFiltraManBoleto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if owner = FrmMain then
  begin
    DMAPP.UsuarioCaixa := 0;
    DMAPP.TurnoCaixa   := 0;
    DmApp.ContaCaixa   := 0;
  end;
  ACTION := cAFree;

end;

procedure TfrmFiltraManBoleto.HabilitaHeader(Sender: TObject);
begin
  TppHeaderBand(Sender).visible := true;
end;

procedure TfrmFiltraManBoleto.ImprimeHistorico(Sender: TObject);
begin
 //Se chekbox complementar estiver marcado.. então terei de almentar o tamanho do detalhe
end;

end.
