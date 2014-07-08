unit Entra_Conciliacao_Cheque_Form;

interface
                       
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  dxDBEdtr, dxDBELib, Db, RemessaD5,ComCtrls, RDprint,
     ppCtrls, ppBands, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe,  Remessa, ppParameter,
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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, cxGroupBox, cxRadioGroup;

type
  TFrmConciliacaoCheque = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DATA: TdxDateEdit;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    BtnConciliar: TcxButton;
    ActOk: TAction;
    ActSomar: TAction;
    Label1: TcxLabel;
    DsConta: TDataSource;
    Label12: TcxLabel;
    cmbConta: TdxLookupEdit;
    Label2: TcxLabel;
    ANDA: TProgressBar;
    Print: TRDprint;
    Guia: TRDprint;
    Label4: TcxLabel;
    lblTotalVista: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    lblTotalPrazo: TcxLabel;
    Label10: TcxLabel;
    Label11: TcxLabel;
    Label13: TcxLabel;
    lblTotal: TcxLabel;
    LblDescartados: TcxLabel;
    rgbConciliacao: tcxRadioGroup;
    cmbFornecedor: TdxLookupEdit;
    Label5: TcxLabel;
    dsFornecedor: TDataSource;
    rptListagemCheques: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppShape8: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppTitleBand1: TppTitleBand;
    ppShape6: TppShape;
    lblRelatorio: TppLabel;
    lblEmpresaAna: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppListagemCheques: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBCalc1: TppDBCalc;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLine4: TppLine;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText7: TppDBText;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DATAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DATAEnter(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure ActSomarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbContaExit(Sender: TObject);
    procedure rgbConciliacaoClick(Sender: TObject);
    procedure BtnImprimeClick(Sender: TObject);
    procedure BtnGuiaClick(Sender: TObject);
  private
    { Private declarations }
    procedure VerificaOpcao;
    procedure ImprimeListagem(Destino:String);//listagem de cheques tanto p/Conciliação como p/custódia
  public
    { Public declarations }
    Conta: Integer;
  end;

var
  FrmConciliacaoCheque: TFrmConciliacaoCheque;
  Arquivos, Linha, Pagina: Integer;
  Codigo_Banco, Nome_Banco_Guia:String;
implementation

uses Funcoes, Application_DM, Financeiro_Dm;

{$R *.DFM}

procedure TFrmConciliacaoCheque.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmConciliacaoCheque.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmConciliacaoCheque.DATAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConciliacaoCheque.ActOkExecute(Sender: TObject);
begin
  if ((rgbConciliacao.ItemIndex = 0 ) and  (cmbConta.text = '')) then
  begin
    showmessage('Selecione o Banco!');
    cmbConta.setfocus ;
    exit ;
  end
  else
  begin
    if (( rgbConciliacao.ItemIndex = 1 ) and ( cmbFornecedor.Text = '' )) then
    begin
      Showmessage('Selecione o Fornecedor!');
      cmbFornecedor.setfocus ;
      exit;
    end;
  end;

  if Application.MessageBox('Confirma conciliação dos cheques marcados?','Aviso',mb_yesno+mb_iconquestion) = id_yes then
  begin
    if ( trim(cmbconta.text) = '' ) then                              //fornecedor
      dmapp.processa_conciliacao_cheque(dmapp.datacaixa, cmbFornecedor.lookupkeyvalue,'F')
    else                                                              //banco
      dmapp.processa_conciliacao_cheque(data.date, cmbconta.lookupkeyvalue,'B');

    if Application.MessageBox('Desmarcar os cheques conciliados?','Aviso',mb_yesno+mb_iconquestion) = id_yes then
      with DmFinanceiro.upDesmarcarTodos do
      begin
        if not Transaction.active then
          Transaction.startTransaction;
        ParamByName('cnpj').Value := dmApp.Cnpj;
        ExecQuery;
        Transaction.CommitRetaining;
      end;
    modalresult := mrok ;
  end;

end;

procedure TFrmConciliacaoCheque.FormShow(Sender: TObject);
begin
  IniciaComponentes (Self as TForm );
  DsConta.dataset.Open ;
  ActSomar.Execute;
  rgbconciliacao.itemindex := 0;
  VerificaOpcao;
end;

procedure TFrmConciliacaoCheque.DATAEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmConciliacaoCheque.DATAExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmConciliacaoCheque.ActSomarExecute(Sender: TObject);
begin
  with DmFinanceiro do
    try
      qTotalConc.Open;
      lblDescartados.Caption := FormatFloat('###,##0.00', qTotalConcDESCARTADOS.Value);
      lblTotalVista.Caption := FormatFloat('###,##0.00', qTotalConcAVISTA.Value);
      lblTotalPrazo.Caption := FormatFloat('###,##0.00', qTotalConcAPRAZO.Value);
      lblTotal.Caption := FormatFloat('###,##0.00', qTotalConcTOTAL.Value);
      qTotalConc.Close;
    except
      qTotalConc.Close;
      Application.HandleException(self);
    end;
end;

procedure TFrmConciliacaoCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DsConta.dataset.Close ;
end;

procedure TFrmConciliacaoCheque.cmbContaExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );

     IF (( cmbConta.LookupKeyValue = Conta ) and ( DATA.Date <> dmapp.datacaixa ))
     THEN BEGIN
          MESSAGEDLG('A Conta Selecionada é de Um Caixa, Selecione a Data Correta!', mterror, [mbok],0);
          DATA.Date := dmapp.datacaixa ;
          DATA.SETFOCUS ;
     END;
end;

procedure TFrmConciliacaoCheque.rgbConciliacaoClick(Sender: TObject);
begin
  VerificaOpcao;
end;

procedure TFrmConciliacaoCheque.VerificaOpcao;
begin
  if rgbConciliacao.itemIndex = 0 then
  begin
    cmbFornecedor.enabled := false;
    cmbConta.enabled := True;
  end
  else
  begin
    cmbFornecedor.enabled := true;
    cmbConta.enabled := False;
  end

end;

procedure TFrmConciliacaoCheque.BtnImprimeClick(Sender: TObject);
begin
  ImprimeListagem('');
end;

procedure TFrmConciliacaoCheque.BtnGuiaClick(Sender: TObject);
begin
  ImprimeListagem('CST');
end;

procedure TFrmConciliacaoCheque.ImprimeListagem(Destino:String);
begin
  if (Destino = 'CST') then
    lblRelatorio.text := 'Relação de Cheques Enviados p/Custódia'
  else
    lblRelatorio.text := 'Relação de Cheques Conciliados';

  with dmFinanceiro do
  begin
    qryListagemCheques.close;
    qryListagemCheques.Open;
  end;
  lblEmpresaAna.text := dmapp.nome;
  rptListagemCheques.print;
end;

end.
