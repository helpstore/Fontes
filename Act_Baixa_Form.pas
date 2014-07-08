unit Act_Baixa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Buttons, dxBar,
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmAct_Baixa = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsPessoas: TDataSource;
    gbSituacao: TGroupBox;
    Rd1: TRadioButton;
    Rd2: TRadioButton;
    Rd3: TRadioButton;
    Rd4: TRadioButton;
    GroupBox1: TGroupBox;
    Label2: TcxLabel;
    BarManager: TdxBarManager;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    ActCancelar: TAction;
    stgFrmAcertoBaixa: TcxPropertiesStore;
    Label1: TcxLabel;
    CmbPessoa: TdxLookupEdit;
    Label4: TcxLabel;
    edtHistorico: TdxEdit;
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmbPessoaExit(Sender: TObject);
    procedure CmbPessoaEnter(Sender: TObject);
    procedure CmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure BaixarTitulos(Acerto: Integer;TipoAcerto: String);
  end;

var
  FrmAct_Baixa: TFrmAct_Baixa;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm2,
   SerieCustomizaveis_DM, SeriesCustomizaveis,
  Cadastros_Dm2, Act_Contas_Form, Act_Renegociacao_Form,
  Cheque_Acerto_Form, Mov_Banc_Acerto_Form;

{$R *.DFM}

procedure TFrmAct_Baixa.ActFecharExecute(Sender: TObject);
begin
   Modalresult := mrCancel ;
end;

procedure TFrmAct_Baixa.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAct_Baixa.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  with DMCadastros do
  begin
    Pessoas_FJ.Close;
    Pessoas_FJ.Open;
    CmbPessoa.LookupKeyValue := frmAct_Contas.Pessoa;
  end;
end;

procedure TFrmAct_Baixa.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmAct_Baixa.IniExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmAct_Baixa.ActOkExecute(Sender: TObject);
var
  VlrBxNominal: Real;
  planilha : integer;
  Rotulo : string;
  Tipo : Integer;
begin
  if (cmbPessoa.Text = '') then
  begin
    Application.Messagebox('Defina a pessoa do recibo','Aviso',mb_ok + mb_iconerror);
    CmbPessoa.SetFocus;
    exit;
  end;

  frmAct_Contas.Pessoa := CmbPessoa.LookupKeyValue;
  frmAct_Contas.Historico := edtHistorico.Text;
  
  try
    if Rd1.Checked then
      tipo := 1
    else if Rd2.Checked then
      tipo := 2
    else if Rd3.Checked then
      tipo := 3
    else if Rd4.Checked then
      tipo := 4;

    with dmFinanceiro2 do
    begin
      ACT_GERA_ACERTO.Close;
      ACT_GERA_ACERTO.Open;

      ACT_GERA_ACERTO.Insert;

      ACT_GERA_ACERTOCNPJ.value := DmApp.Cnpj;
      ACT_GERA_ACERTODATA.value := Date;
      ACT_GERA_ACERTODATA_CX.value := dmApp.DataCaixa;
      ACT_GERA_ACERTOHISTORICO.value     := Copy(edtHistorico.text,1,100);
      ACT_GERA_ACERTOUSUARIO.value       := dmApp.UsuarioCaixa;
      ACT_GERA_ACERTOTIPO_ACERTO.value   := tipo;
      ACT_GERA_ACERTOVALOR_PAGAR.value   := frmAct_Contas.TotalPagar;
      ACT_GERA_ACERTOVALOR_RECEBER.value := frmAct_Contas.TotalReceber;
      ACT_GERA_ACERTOPESSOA_RECIBO.value := CmbPessoa.LookupKeyValue;
      ACT_GERA_ACERTO.post;
      //Baixa por caixa
      if Rd1.Checked then
        BaixarTitulos(dmFinanceiro2.ACT_GERA_ACERTOCODIGO.value,'1')
      else if Rd2.Checked then //Cheques
      begin
        if (frmAct_Contas.TotalPagar > frmAct_Contas.TotalReceber) then
          Rotulo := 'Cheques - Emissão '
        else
          Rotulo := 'Cheques - Recebimento';

        //Desdobramento de Cheques
        FrmCheque_Acerto := TFrmCheque_Acerto.Create(Self);
        FrmCheque_Acerto.Caption := Rotulo;
        FrmCheque_Acerto.LblTitulo.Caption := Rotulo;
        FrmCheque_Acerto.TotalCheques := frmAct_Contas.Saldo;
        FrmCheque_Acerto.ShowModal;
        if FrmCheque_Acerto.modalresult = mrok then
          BaixarTitulos(dmFinanceiro2.ACT_GERA_ACERTOCODIGO.value,'2')
        else
          raise Exception.Create('Operação cancelada pelo usuário');
      end
      else if Rd3.Checked then
      begin
        if (frmAct_Contas.TotalPagar > frmAct_Contas.TotalReceber) then
          Rotulo := 'Aviso Bancário - Débito '
        else
          Rotulo := 'Aviso Bancário - Crédito ';

        //Desdobramento de Cheques
        FrmMovAvisoBancario := TFrmMovAvisoBancario.Create(Self);
        FrmMovAvisoBancario.Caption := Rotulo;
        FrmMovAvisoBancario.LblTitulo.Caption := Rotulo;
        FrmMovAvisoBancario.TotalMovimento := frmAct_Contas.Saldo;
        FrmMovAvisoBancario.ShowModal;
        if FrmMovAvisoBancario.modalresult = mrok then
          BaixarTitulos(dmFinanceiro2.ACT_GERA_ACERTOCODIGO.value,'3')
        else
          raise Exception.Create('Operação cancelada pelo usuário');
      end
      else if Rd4.Checked then
      begin
        FrmAct_Renegociacao := TFrmAct_Renegociacao.Create(Self);
        FrmAct_Renegociacao.ShowModal;
        FrmAct_Renegociacao.free;
        FrmAct_Renegociacao := nil;
        exit;
      end;
    end;

    Application.Messagebox('Acerto realizado com sucesso','Aviso',mb_ok + mb_iconinformation);
    frmAct_Contas.Filtrar;
    FrmAct_Baixa.Close;
  except
    On E:Exception Do
    begin
      Application.Messagebox(Pchar('Erro: '+E.Message),'Aviso',mb_ok + mb_iconerror);
      DMApp.Transaction.RollbackRetaining;
    end;

  end;
end;

procedure TFrmAct_Baixa.ActCancelarExecute(Sender: TObject);
begin
  ActFechar.Execute;
end;

procedure TFrmAct_Baixa.BaixarTitulos(Acerto: Integer;TipoAcerto: String);
var
  VlrBxNominal: real;
  tipo : string;
begin
  with dmFinanceiro2 do
  begin
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
        PCD_ACT_RECEBER.ParamByName('PLANILHA').value := Acerto;
        PCD_ACT_RECEBER.ParamByName('MOEDA').value := mtbAcertoReceberSALDO_MOEDA.value;
        PCD_ACT_RECEBER.ParamByName('ACT_TIPO_BAIXA').value := TipoAcerto;
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
      {  if (tipoAcerto = '2') then //cheque, não pode aparecer no caixa como baixa convencional
          PCD_ACT_PAGAR.ParamByName('CONTA').value :=  0
        else }
          PCD_ACT_PAGAR.ParamByName('CONTA').value :=  dmApp.ContaCaixa;
          
        PCD_ACT_PAGAR.ParamByName('BANCO').value :=  0;
        PCD_ACT_PAGAR.ParamByName('TURNO').value :=  dmApp.TurnoCaixa;
        PCD_ACT_PAGAR.ParamByName('DATA_BAIXA').value := dmApp.DataCaixa;
        PCD_ACT_PAGAR.ParamByName('VALOR_NOMINAL_BX').value := vlrBxNominal;
        PCD_ACT_PAGAR.ParamByName('JUROS').value := mtbAcertoPagarJuros.value;
        PCD_ACT_PAGAR.ParamByName('MULTA').value := mtbAcertoPagarMultas.Value;
        PCD_ACT_PAGAR.ParamByName('DESCONTO').value := (-1 * mtbAcertoPagarDesconto.value);   
        PCD_ACT_PAGAR.ParamByName('VARIACAO').value := 0;//mtbAcertoPagarVariacao.value;
        PCD_ACT_PAGAR.ParamByName('PLANILHA').value := Acerto;
        PCD_ACT_PAGAR.ParamByName('MOEDA').value := mtbAcertoPagarSALDO_MOEDA.value;
        PCD_ACT_PAGAR.ParamByName('ACT_TIPO_BAIXA').value := TipoAcerto;
        PCD_ACT_PAGAR.ExecProc;
      end;
      mtbAcertoPagar.next;
    end;
    ImprimeReciboAcerto(Acerto);

  end;
end;

procedure TFrmAct_Baixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmAct_Contas.Filtrar;
end;

procedure TFrmAct_Baixa.CmbPessoaExit(Sender: TObject);
begin
  TIRACORFUNDO( SENDER );
end;

procedure TFrmAct_Baixa.CmbPessoaEnter(Sender: TObject);
begin
CORFUNDO( SENDER );
end;

procedure TFrmAct_Baixa.CmbPessoaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
