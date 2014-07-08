unit Filtra_Cobranca_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList, Db, dxDBEdtr, dxDBELib, ComCtrls, 
  Mask, cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxCurrencyEdit, cxSpinEdit, Menus, cxButtons,
  cxTimeEdit;

type
  TfrmFiltraCobranca = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsPessoas: TDataSource;
    Panel2: TPanel;
    BtnOk: tcxButton;
    RzBitBtn2: tcxButton;
    gbData: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    Rd1: TRadioButton;
    Rd2: TRadioButton;
    gbSituacao: TGroupBox;
    Rd4: TRadioButton;
    Rd5: TRadioButton;
    Rd6: TRadioButton;
    gpAgendamentos: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    gbValor: TGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    GroupBox2: TGroupBox;
    CmbLocal: TdxLookupEdit;
    CmbCobrador: TdxLookupEdit;
    Label10: TLabel;
    Label11: TLabel;
    rdAgend1: TcxSpinEdit;
    rdAgend2: TcxSpinEdit;
    edAs1: TLabel;
    edAs3: TLabel;
    edAs2: TLabel;
    edtVlrInicial: TcxCurrencyEdit;
    edtVlrFinal: TcxCurrencyEdit;
    DsCobrador: TDataSource;
    DsLocal: TDataSource;
    Label9: TLabel;
    cmbCliente: TdxLookupEdit;
    Rd3: TRadioButton;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    stgfrmFiltraCobranca: TcxPropertiesStore;
    DataInicial: TcxDateEdit;
    DataFinal: TcxDateEdit;
    tedtCobrar: TcxTimeEdit;
    tedtCobrado: TcxTimeEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure Rd1Click(Sender: TObject);
    procedure CmbCobradorExit(Sender: TObject);
    procedure CmbCobradorEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    filtro : string;
  end;

var
  frmFiltraCobranca: TfrmFiltraCobranca;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
  ConsultaCobrancas_Form, Cadastros_Dm2;

{$R *.DFM}

procedure TfrmFiltraCobranca.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TfrmFiltraCobranca.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TfrmFiltraCobranca.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraCobranca.ActOkExecute(Sender: TObject);
begin
  if (cmbCobrador.text = '') then
  begin
    application.messagebox('Defina um cobrador','Aviso',mb_ok + mb_iconinformation);
    cmbCobrador.setfocus;
    exit;
  end;

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

  if (cmbCliente.text <> '') then
    filtro := filtro + ' and pessoa_fj ='+intToStr(cmbCliente.LookupKeyValue);

  if (CmbLocal.text <> '') then
    filtro := filtro + ' and local_cobranca ='+intToStr(CmbLocal.LookupKeyValue);

  //----------------------------------Filtrando pela Data-------------------------------//
      // Dt. de Vencimento
      if Rd1.Checked then
        filtro := filtro + ' and (data between '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataInicial.date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataFinal.date))+')';

      // Dt. de Agendamento
      if Rd2.Checked then
      begin
        filtro := filtro + ' and (cobrar_em between '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataInicial.date))+' and '+QuotedStr(FormatDateTime('mm/dd/yyyy',DataFinal.date))+')';

        filtro := filtro + ' and  (hr_cobrar_em between  '+QuotedStr(TimeToStr(tedtCobrar.time))+' and '+QuotedStr(TimeToStr(tedtCobrado.time))+')';
      end;

   //----------------------------------Filtrando pela Situação-------------------------------//
      //baixadas Parcialmente
      if Rd4.Checked then
         filtro := filtro + ' and contpagas > 0 ';

      //baixadas Parcialmente
      if Rd5.Checked then
         filtro := filtro + ' and contpagas = 0 ';

    //----------------------------------Nº de Agendamentos------------------------------------//
    if gpAgendamentos.Enabled then
      filtro := filtro + ' and ( contagendamentos between '+rdAgend1.Text+' and '+rdAgend2.Text+')';


    //----------------------------------Valores-----------------------------------------------//
    filtro := filtro + ' and ( soma between '+StringReplace(edtVlrInicial.Text,'.','',[rfReplaceAll])+' and '+StringReplace(edtVlrFinal.Text,'.','',[rfReplaceAll])+')';
    filtro := StringReplace(filtro,',','.',[rfReplaceAll]);

    FrmManutencaoCobranca.CodCobrador :=  CmbCobrador.LookupKeyValue;
    FrmManutencaoCobranca.NomeLocal := CmbLocal.text;
    FrmManutencaoCobranca.NomeCobrador := CmbCobrador.text;
    FrmManutencaoCobranca.NomeCliente := cmbCliente.text;
    FrmManutencaoCobranca.DtInicial := DataInicial.date;
    FrmManutencaoCobranca.DtFinal := DataFinal.date;
  modalresult := mrOk;
end;

procedure TfrmFiltraCobranca.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  cmbCobrador.setfocus;

  pnlClient.color := clWhite;
  edAs1.Font.color := clred;
  edAs2.Font.color := clred;
  edAs3.Font.color := clred;
end;

procedure TfrmFiltraCobranca.IniEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TfrmFiltraCobranca.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TfrmFiltraCobranca.Rd1Click(Sender: TObject);
begin
  if Rd1.Checked then
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
  end;
end;

procedure TfrmFiltraCobranca.CmbCobradorExit(Sender: TObject);
begin
  TIRACORFUNDO(SENDER);
end;

procedure TfrmFiltraCobranca.CmbCobradorEnter(Sender: TObject);
begin
  CORFUNDO(SENDER);
end;

procedure TfrmFiltraCobranca.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
       Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmFiltraCobranca.FormCreate(Sender: TObject);
begin
  with dmFinanceiro do
  begin
    SelPessoasFJ.close;
    SelPessoasFJ.Open;

    Local_Cobranca.Close;
    Local_Cobranca.Open;

    dmCadastros2.SelCobrador.Close;
    dmCadastros2.SelCobrador.Open;

    SelCobrador.FetchAll;
    SelPessoasFJ.FetchAll;
    Local_Cobranca.FetchAll;
  end;
end;

end.
