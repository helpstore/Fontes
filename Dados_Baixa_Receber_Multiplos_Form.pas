unit Dados_Baixa_Receber_Multiplos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,  dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  Mask,  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel,   cxTextEdit;

type
  TFrmDadosBaixaReceberSelecao = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    ActLocalizar: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    Label10: TcxLabel;
    lblNome: TcxLabel;
    LBLCLIENTE: TcxLabel;
    BtnOk: TcxButton;
    Bevel3: TBevel;
    ActSeleciona: TAction;
    DBGrid1: TDBGrid;
    Label16: TcxLabel;
    Label14: TcxLabel;
    LBLNUMARQ: TcxLabel;
    Data: TdxDateEdit;
    Label3: TcxLabel;
    Label2: TcxLabel;
    Valor: TdxCurrencyEdit;
    Label4: TcxLabel;
    Desconto: TdxCurrencyEdit;
    Label5: TcxLabel;
    Juros: TdxCurrencyEdit;
    Label1: TcxLabel;
    Total: TdxCurrencyEdit;
    HISTORICO: TdxEdit;
    Label6: TcxLabel;
    RxLabel1: TcxLabel;
    ActCalculadora: TAction;
    ActCancelar: TAction;
    Label7: TcxLabel;
    Dinheiro: TdxCurrencyEdit;
    Label8: TcxLabel;
    Cheque: TdxCurrencyEdit;
    Label9: TcxLabel;
    Cartao: TdxCurrencyEdit;
    Label11: TcxLabel;
    TROCO: TdxCurrencyEdit;
    DsConta: TDataSource;
    Label12: TcxLabel;
    cmbConta: TdxLookupEdit;
    Label13: TcxLabel;
    edtDescto: tcxtextedit;
    procedure FormShow(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure DescontoExit(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure DescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActCancelarExecute(Sender: TObject);
    procedure DescontoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DinheiroExit(Sender: TObject);
    procedure ChequeExit(Sender: TObject);
    procedure CartaoExit(Sender: TObject);
    procedure DinheiroValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure ChequeValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure CartaoValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure JurosExit(Sender: TObject);
  private
    { Private declarations }
    JurosIni, DesctoIni : real;
    Procedure Soma_Receber (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
    procedure SelecionaLancamento ;
    procedure SelecionaVencimento ;

  public
    { Public declarations }
    SOMATOTAL  : REAL ;
    QUANTIDADE : INTEGER ;
  end;

var
  FrmDadosBaixaReceberSelecao: TFrmDadosBaixaReceberSelecao;
implementation

uses
     Cadastros_DM,
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Financeiro_Dm,
     Procedures_DM, Baixa_Receber_Multiplos_Parc_Form;

{$R *.DFM}
procedure TFrmDadosBaixaReceberSelecao.SelecionaLancamento ;
begin
     WITH DmFinanceiro DO
     BEGIN
          VERRECEBER.Close ;
         { VERRECEBER.SQL.CLEAR ;
          VERRECEBER.Params.CLEAR ;

          VERRECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERRECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERRECEBER.SQL.ADD ( ' SELECT * FROM VER_RECEBER_LANCAMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERRECEBER.ParamByName ( 'DINI' ).AsDate := FrmBaixaReceberSelecao.DATAINICIAL.Date ;
          VERRECEBER.ParamByName ( 'DFIM' ).AsDate := FrmBaixaReceberSelecao.DATAFINAL.Date ;

          VERRECEBER.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

          VERRECEBER.SQL.Add (' Where PESSOA_FJ = :PES ');

          VERRECEBER.ParamByName ('PES').asInteger := STRTOINT(trim(FrmBaixaReceberSelecao.EdClienteInicial.Text)) ;

          VERRECEBER.Params.CreateParam ( FtString, 'SEL', PtInputOutPut );

          VERRECEBER.SQL.Add (' and SELECIONADO = :SEL ');

          VERRECEBER.ParamByName ('SEL').asString := 'S' ;

          VERRECEBER.SQL.ADD ( ' ORDER BY  DT_LANCTO, DOCTO ' );

          VERRECEBER.Prepare ;
          VERRECEBER.Open ;}
     END;
END;


procedure TFrmDadosBaixaReceberSelecao.SelecionaVencimento ;
begin
     WITH DMFINANCEIRO DO
     BEGIN
          VERRECEBER.Close ;
          VERRECEBER.SQL.CLEAR ;
          VERRECEBER.Params.CLEAR ;

          {VERRECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERRECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERRECEBER.SQL.ADD ( ' SELECT * FROM VER_RECEBER_VENCIMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERRECEBER.ParamByName ( 'DINI' ).AsDate := FrmBaixaReceberSelecao.DATAINICIAL.Date ;
          VERRECEBER.ParamByName ( 'DFIM' ).AsDate := FrmBaixaReceberSelecao.DATAFINAL.Date ;

          VERRECEBER.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

          VERRECEBER.SQL.Add (' Where PESSOA_FJ = :PES ');

          VERRECEBER.ParamByName ('PES').asInteger := STRTOINT(trim(FrmBaixaReceberSelecao.EdClienteInicial.Text)) ;

          VERRECEBER.Params.CreateParam ( FtString, 'SEL', PtInputOutPut );

          VERRECEBER.SQL.Add (' and SELECIONADO = :SEL ');

          VERRECEBER.ParamByName ('SEL').asString := 'S' ;

          VERRECEBER.SQL.ADD ( ' ORDER BY DT_VENCTO, DOCTO ' );}

          VERRECEBER.Prepare ;
          VERRECEBER.Open ;
     END;
END;

procedure TFrmDadosBaixaReceberSelecao.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     If Desconto.Enabled
     then
         Desconto.SetFocus
     Else
         Dinheiro.SetFocus ;

     DsConta.DataSet.Open ;
     JurosIni := Juros.value;
     DesctoIni := Desconto.value;
     //Para evitarmos disparmos a validação de desconto após sairmos do campo juros
     //a menos é claro que este tenha sido modificado
end;

procedure TFrmDadosBaixaReceberSelecao.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmDadosBaixaReceberSelecao.dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosBaixaReceberSelecao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmDadosBaixaReceberSelecao.ActFecharExecute(Sender: TObject);
begin
     Close;
end;

Procedure TFrmDadosBaixaReceberSelecao.Soma_Receber (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
begin
  //
{ If DMProcs = Nil Then
     DMProcs := TDMProcs.Create(Self);}

  //PARA SABER QUAL PROCEDURE PEGAR
  DMProcs.Soma_Selecionadorec.StoredProcName := 'SOMA_RECEBER_' + TIPO;
  //
  DMProcs.Soma_Selecionadorec.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
  DMProcs.Soma_Selecionadorec.ParamByName('DINI').asDate        := DIni       ;
  DMProcs.Soma_Selecionadorec.ParamByName('DFIM').asDate        := DFim       ;
  DMProcs.Soma_Selecionadorec.ParamByName('PESSOA').asInteger   := Pessoa     ;

  DMProcs.Soma_Selecionadorec.ExecProc;

  SOMATOTAL  := DMProcs.Soma_Selecionadorec.ParamByName('SOMA').asFloat;
  QUANTIDADE := DMProcs.Soma_Selecionadorec.ParamByName('QUANTIDADE').asInteger;

  LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE);
  Valor.Value       := SOMATOTAL;

  //
  //
 {DMProcs.Free;
  DMProcs := Nil;}
end;


procedure TFrmDadosBaixaReceberSelecao.ActSelecionaExecute(Sender: TObject);
begin
     with DmFinanceiro do
     begin
          Seleciona_Receber (VerReceberCODIGO.VALUE, VerReceberANO.VALUE, VerReceberSELECIONADO.VALUE);

         { IF FrmBaixaReceberSelecao.EdTipo.Text = 'Lancamento'
          THEN BEGIN
               SELECIONALANCAMENTO ;
               //SOMA OS VALORES
               FrmDadosBaixaReceberSelecao.SOMA_RECEBER ( 'LANCAMENTO', FrmBaixaReceberSelecao.DATAINICIAL.Date , FrmBaixaReceberSelecao.DATAFINAL.Date, STRTOINT(trim(FrmBaixaReceberSelecao.EdClienteInicial.Text)) );
          END
          ELSE BEGIN
               SELECIONAVENCIMENTO ;
               //SOMA OS VALORES
               FrmDadosBaixaReceberSelecao.SOMA_RECEBER ( 'VENCIMENTO', FrmBaixaReceberSelecao.DATAINICIAL.Date , FrmBaixaReceberSelecao.DATAFINAL.Date, STRTOINT(trim(FrmBaixaReceberSelecao.EdClienteInicial.Text)) );
          END;}
     end;
end;

procedure TFrmDadosBaixaReceberSelecao.DescontoExit(Sender: TObject);
begin
     TIRACORFUNDO (SENDER) ;
     if DesctoIni <> Desconto.value then
     begin
         if not dmapp.VerificaDescontoReceber((Valor.value+Juros.value),Desconto.value) then
         begin
           if not PedirSenha('Desconto Acima do ', 'Máximo Permitido!','') THEN
           begin
              Desconto.setfocus;
              abort;
              exit;
           end;
         end;
     end;

     Total.Value := arredonda(Valor.Value - Desconto.Value + Juros.Value,2) ;
     Dinheiro.Value := arredonda(Total.Value ,2);
end;

procedure TFrmDadosBaixaReceberSelecao.ActCalculadoraExecute( Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmDadosBaixaReceberSelecao.ActiveControl = Desconto
     Then begin
          Desconto.Value := Calculadora ;
     end;

     If FrmDadosBaixaReceberSelecao.ActiveControl = Juros
     Then begin
          Juros.Value := Calculadora ;
     end;

     If FrmDadosBaixaReceberSelecao.ActiveControl = Dinheiro
     Then begin
          Dinheiro.Value := Calculadora ;
     end;

     If FrmDadosBaixaReceberSelecao.ActiveControl = Cheque
     Then begin
          Cheque.Value := Calculadora ;
     end;

     If FrmDadosBaixaReceberSelecao.ActiveControl = Cartao
     Then begin
          Cartao.Value := Calculadora ;
     end;
end;

procedure TFrmDadosBaixaReceberSelecao.BtnOkClick(Sender: TObject);
begin
  if ((Data.Text <> '  /  /  ') and (Data.Text <> '  /  /    ')) then
  BEGIN
    IF Total.Value > 0 THEN
    BEGIN
      If Arredonda(Total.value,2) <> Arredonda( Dinheiro.Value + Cheque.Value + Cartao.Value + Troco.Value ,2)then
      begin
          MessageDlg('O Total Desdobrado Não Confere com o Valor Pago', mtError, [mbOK], 0);
          Dinheiro.SetFocus ;
      end
      else
          Modalresult := mrok ;
    END
    ELSE
    BEGIN
      messageDlg('O Valor Digitado Não Pode Ser Zero!',MtError,[MbOk],0);
      Abort;
    END;
  END
  ELSE
  BEGIN
    MessageDlg('Digite a Data!',MtInformation,[MbOk],0);
    Data.SetFocus ;
    Abort;
  END;

end;

procedure TFrmDadosBaixaReceberSelecao.DescontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmDadosBaixaReceberSelecao.ActCancelarExecute(Sender: TObject);
begin
     ModalResult := MrCancel ;
end;

procedure TFrmDadosBaixaReceberSelecao.DescontoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmDadosBaixaReceberSelecao.HISTORICOExit(Sender: TObject);
begin
     TIRACORFUNDO ( sender );
end;

procedure TFrmDadosBaixaReceberSelecao.DinheiroExit(Sender: TObject);
begin
     TIRACORFUNDO ( sender );

end;

procedure TFrmDadosBaixaReceberSelecao.ChequeExit(Sender: TObject);
begin
     TIRACORFUNDO ( sender );

end;

procedure TFrmDadosBaixaReceberSelecao.CartaoExit(Sender: TObject);
begin
     TIRACORFUNDO ( sender );
end;

procedure TFrmDadosBaixaReceberSelecao.DinheiroValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
     If ARREDONDA(Dinheiro.Value, 2) > arredonda(Total.Value, 2)
     then begin
          Cheque.value := 0;
          Troco.Value  := arredonda(Total.Value - Dinheiro.Value,2) ;
     end
     else begin
          Cheque.Value := arredonda(Total.Value - Dinheiro.Value,2) ;
          Troco.Value  := 0;
     end;
end;

procedure TFrmDadosBaixaReceberSelecao.ChequeValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
     If Arredonda( Dinheiro.Value + Cheque.Value, 2 ) > arredonda( Total.Value , 2)
     then begin
          Troco.Value  := arredonda(Total.Value - Dinheiro.Value - Cheque.Value,2) ;
          Cartao.Value := 0;
     end
     else begin
          Cartao.Value := arredonda(Total.Value - Dinheiro.Value - Cheque.Value,2) ;
          Troco.Value  := 0;
     end;
end;

procedure TFrmDadosBaixaReceberSelecao.CartaoValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
     If Arredonda( Dinheiro.Value + Cheque.value + Cartao.Value , 2 ) > arredonda(Total.Value, 2)
     then begin
          Troco.Value  := arredonda(Total.Value - Dinheiro.Value - Cheque.Value - Cartao.Value,2) ;
     end
     else begin
          troco.Value  := 0;
     end;
end;

procedure TFrmDadosBaixaReceberSelecao.JurosExit(Sender: TObject);
begin
  TIRACORFUNDO (SENDER) ;
  if JurosIni <> Juros.value then
  begin
    if not dmapp.VerificaDescontoReceber((Valor.value+Juros.value),Desconto.value) then
    begin
      if not PedirSenha('Descontos Acima do ', 'Máximo Permitido!','') THEN
      begin
        juros.setfocus;
        abort;
        exit;
      end;
    end;
  end;
  Total.Value := arredonda(Valor.Value - Desconto.Value + Juros.Value,2) ;
  Dinheiro.Value := arredonda(Total.Value ,2);
end;

end.
