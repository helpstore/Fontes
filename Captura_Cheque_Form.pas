 unit Captura_Cheque_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Buttons, dxBar, CMC7, serial,
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
  dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter, cxClasses, cxButtons,
  cxLabel;

type
  TConexao = (tcSerial, tcTeclado);
type
  TFrmCapturaCheque = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    ActCaptura: TAction;
    Captura: TTimer;
    Label5: TcxLabel;
    CMBpessoa: TdxDBButtonEdit;
    BtnPessoa: TcxButton;
    EDNOME: TdxDBEdit;
    Label6: TcxLabel;
    Label1: TcxLabel;
    EdConta: TdxDBEdit;
    Label10: TcxLabel;
    EdAgencia: TdxDBEdit;
    Label7: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdValor: TdxDBCalcEdit;
    Label8: TcxLabel;
    EdVencimento: TdxDBDateEdit;
    Label2: TcxLabel;
    Label4: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    EdBanco: TdxDBEdit;
    DataSource: TDataSource;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBDateEdit1: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    ActSalvar: TAction;
    ActCancelar: TAction;
    BarManager: TdxBarManager;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    BtnFechar: TdxBarButton;
    ActLookUp: TAction;
    lblComando: TcxLabel;
    edtCheque: TdxEdit;
    dxDBEdit6: TdxDBEdit;
    Label9: TcxLabel;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pagoEnter(Sender: TObject);
    procedure HISTORICOExit(Sender: TObject);
    procedure DataExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CapturaTimer(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
    procedure LeTeclado(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    LeituraLiberada :Boolean;
    Conexao :TConexao;
    PortaSerial :String;
    procedure CapturaCheque(Data :String);
    procedure ConfiguraPorta;
    function ConverteBaudRate(Texto :String):TBaudRate;
    function ConverteDataBits(Texto :String):TDataBits;
//    function ConverteParity(Texto :String):TParity;
    function ConverteStopBits(Texto :String):TStopBits;
    Procedure Valida_Banco ( Banco: String );

  public
    { Public declarations }
    Valor_Total: Extended ;
  end;

var
  FrmCapturaCheque: TFrmCapturaCheque;
  Data_Cheque: TDateTime ;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Financeiro_Dm,
  SelFin_Cheques_Form, Localizar_Cliente, Clientes_Form, Main;

{$R *.DFM}

procedure TFrmCapturaCheque.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmCapturaCheque.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmCapturaCheque.ActOkExecute(Sender: TObject);
begin
  Modalresult := mrok;
end;

procedure TFrmCapturaCheque.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  {if Conexao = tcSerial then
  begin
    edtCheque.Visible := False;
    try
      ComPort.Open;
      Comport.ClearDTR;
      ComPort.ClearRTS;
      LeituraLiberada := True;
    except
      beep;
      MensagemPdv('Erro ao Abrir a Porta COM1');
      LeituraLiberada := False;
    end;
  end
  else }
  edtCheque.Visible := True;
end;

procedure TFrmCapturaCheque.pagoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmCapturaCheque.HISTORICOExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmCapturaCheque.DataExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TFrmCapturaCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {if Conexao = tcSerial then
    try
      ComPort.Close
    except
      beep;
      MensagemPdv('Erro ao Fechar a Porta Leitor');
    end;
  Action := caFree;}
end;

procedure TFrmCapturaCheque.CapturaTimer(Sender: TObject);
begin
  {if LeituraLiberada then
    if Conexao = tcSerial then
      CapturaCheque(Copy(ComPort.ReadString,2,34));}
end;

procedure TFrmCapturaCheque.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If Not ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             DataSource.DataSet.Edit ;
        end;

        //Chama a Tela Para Localizar Cliente
        Frm_Localizar_Cliente.DSource.dataset := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             DmFinanceiro.ChequePESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho) ;
        end
        else begin
             If Frm_Localizar_Cliente.Cad = 'S'
             THEN
                 BtnPessoa.OnClick(BtnPessoa)
             else
                 edvalor.setfocus ;
        end;


     Except
     end;
end;

procedure TFrmCapturaCheque.ActSalvarExecute(Sender: TObject);
begin
  try
    DataSource.DataSet.Post;

    DATA_CHEQUE := DMFINANCEIRO.CHEQUEPRE_DATE.VALUE ;

    DMApp.Transaction.CommitRetaining;
    lblComando.Caption := 'Aguardando...';
    LeituraLiberada := True;
  except
    On E:EDataBaseError Do
    begin
      ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
      exit;
    end
    else
    begin
      ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
      exit;
    end;
    LeituraLiberada := False;
  end;
end;

procedure TFrmCapturaCheque.ActCancelarExecute(Sender: TObject);
begin
  if DataSource.DataSet.State in dsEditModes  then
  begin
    DataSource.DataSet.Cancel ;
    lblComando.Caption := 'Aguardando...';
    LeituraLiberada := true;
  end else
    BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmCapturaCheque.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmCapturaCheque.BtnPessoaClick(Sender: TObject);
begin
     Try
        //
        If Datasource.DataSet.State = dsBrowse
        Then
            Datasource.DataSet.Edit;

        //
        { * * * * * }
        DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);

        { * * * * * }
{        If DMCadastros = Nil
        then
            DMCadastros := TDMCadastros.Create(Self)
        else
            DMCadastros.Tag := DMCadastros.Tag + 1;}

        //
        FrmClientes := TFrmClientes.Create(Application);

        FrmClientes.Showmodal ;
        //
        Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

        If DMCadastros <> Nil
        then
            DMCadastros.Tag := DMCadastros.Tag - 1;

        //
        edvalor.SetFocus;
     except
          If DMCadastros <> Nil
          then
              DMCadastros.Tag := DMCadastros.Tag - 1;
     end;
end;

procedure TFrmCapturaCheque.ActLookUpExecute(Sender: TObject);
begin
     If FrmCapturaCheque.ActiveControl = cmbPessoa Then
        btnPessoa.OnClick(btnPessoa);
end;

procedure TFrmCapturaCheque.CapturaCheque(Data: String);
var pessoa :Integer;
begin
  if Data <> '' then

   { if CMC7.RegistrarCheque(Data) then //teste cmc7 e carrega cheque no componente cmc7
    begin
      lblComando.Caption := 'Cheque OK';
      LeituraLiberada := False;

      with DmFinanceiro do
      begin
        Cheque.Append ;

        edvalor.SETFOCUS ;

        IF DATA_CHEQUE > STRTODATE('01/01/1900')
        THEN
            CHEQUEPRE_DATE.VALUE := DATA_CHEQUE ;

        //VALIDA BANCO
        Valida_Banco ( CMC7.Banco );

        ChequeCheque.Value         := Copy(CMC7.NumeroCheque,1,6);
        ChequeBANCO.Value          := CMC7.Banco;
        ChequeCONTA.Value          := Copy(CMC7.ContaCorrente,1,6);
        ChequeEMISSAO.Value        := DmApp.Data_Servidor       ;
        ChequeCOMPENSACAO.Value    := CMC7.Compensacao;
        ChequeAgencia.Value        := Copy(CMC7.Agencia,1,3);
        ChequeDIGITO_AGENCIA.Value := Copy(CMC7.Agencia,4,1);
        CHEQUEDIGITO_CONTA.Value   := Copy(CMC7.ContaCorrente,7,1);
        CHEQUECMC7.Value           := CMC7.CMC7 ;

        Pessoa := DmaPP.Pessoa_Conta(ChequeBANCO.Value,ChequeAgencia.Value,ChequeCONTA.Value);
        if Pessoa > 0 then
        begin
          ChequePessoa_Fj.Value := Pessoa;
        end;
      end;
    end
    else begin
      lblComando.Caption := 'Leitura Incorreta!';
      Delay(3);
      lblComando.Caption := 'Aguardando...';
      LeituraLiberada := True;
    end;}
end;

procedure TFrmCapturaCheque.LeTeclado(Sender: TObject);
begin
  if LeituraLiberada then
    CapturaCheque(edtCheque.Text);
end;

procedure TFrmCapturaCheque.FormCreate(Sender: TObject);
begin
  ConfiguraPorta;
  Data_Cheque := STRTODATE('01/01/1900') ;
end;

procedure TFrmCapturaCheque.ConfiguraPorta;
begin
  PortaSerial :=  DMApp.Perfil_ComputadorPORTALEITORCHEQUE.Value;
  if PortaSerial = 'TECLADO' then
    Conexao := tcTeclado
  else
  begin
    Conexao := tcSerial;
   { with ComPort do
    begin
      DeviceName := PortaSerial;
      BaudRate := ConverteBaudRate(DMApp.Perfil_ComputadorLEITOR_BITSPORSEGUNDO.Value);
      DataBits := ConverteDataBits(DMApp.Perfil_ComputadorLEITOR_BITSDADOS.Value);
      Parity := ConverteParity(DMApp.Perfil_ComputadorLEITOR_PARIDADE.Value);
      StopBits := ConverteStopBits(DMApp.Perfil_ComputadorLEITOR_BITSPARADA.Value);
    end;}
  end;
end;

function TFrmCapturaCheque.ConverteBaudRate(Texto: String): TBaudRate;
begin
  if Texto = '2400' then
    Result := br2400
  else if Texto = '4800' then
      Result := br4800
    else if Texto = '9600' then
        Result := br9600
      else if Texto = '14400' then
          Result := br14400
        else if Texto = '19200' then
            Result := br19200
          else if Texto = '38400' then
              Result := br38400
            {else if Texto = '57600' then
                Result := br57600
              else Result := brDefault;}
end;

function TFrmCapturaCheque.ConverteDataBits(Texto: String): TDataBits;
begin
  if Texto = '4' then
    Result := db4
  else if Texto = '5' then
      Result := db5
    else if Texto = '6' then
        Result := db6
      else if Texto = '7' then
          Result := db7
        else if Texto = '8' then
            Result := db8
//          else Result := dbDefault;
end;
{function TFrmCapturaCheque.ConverteParity(Texto: String): TParity;
begin
  if Texto = 'Even' then
    Result := paEven
  else if Texto = 'Odd' then
      Result := paOdd
    else if Texto = 'Nenhum' then
        Result := paNone
      else if Texto = 'Space' then
          Result := paSpace
        else if Texto = 'Mark' then
            Result := paMark
          else Result := paDefault;
end;}
function TFrmCapturaCheque.ConverteStopBits(Texto: String): TStopBits;
begin
  {if Texto = '1' then
    Result := sb1
  else if Texto = '1,5' then
      Result := sb1_5
    else if Texto = '2' then
        Result := sb2
      else Result := sbDefault;}
end;

procedure TFrmCapturaCheque.Valida_Banco(Banco: String);
Var
   Insere: Boolean ;
   NOME : String;
begin
     with DmFinanceiro do
     Begin
          Insere := False ;

          Geral.Close ;
          Geral.Sql.Clear ;
          Geral.Params.Clear ;

          Geral.Params.CreateParam ( FtString , 'B', PtInput );

          Geral.Sql.Add (' Select CODIGO, NOME    ');
          Geral.Sql.Add (' from Fin_Banco Where Codigo = :B               ');

          Geral.ParamByName ('B').AsString  := Banco        ;

          Geral.Prepare ;
          Geral.Open ;

          If Geral.Fields[0].isNull
          then Begin
               //BANCO NAO CADASTRADO
               Insere := true ;
          end;

          Geral.close ;

          IF INSERE
          THEN BEGIN
               NOME := '';

               WHILE TRIM(NOME) = '' DO
               BEGIN
                    NOME := TRIM(INPUTBOX('BANCO', 'NOME DO BANCO',''));
               END;

               Geral.Close ;
               Geral.Sql.Clear ;
               Geral.Params.Clear ;

               Geral.Params.CreateParam ( FtString , 'C', PtInput );
               Geral.Params.CreateParam ( FtString , 'G', PtInput );
               Geral.Params.CreateParam ( FtString , 'B', PtInput );

               Geral.Sql.Add (' INSERT INTO FIN_BANCO ');

               Geral.Sql.Add (' ( GERA_ARQUIVO_MAGNETICO, CODIGO, NOME, BOLETO ) ');

               Geral.Sql.Add (' VALUES ');

               Geral.Sql.Add (' ( :G, :C, :B, 0 ) ');

               Geral.ParamByName ('G').AsString  := 'N'   ;
               Geral.ParamByName ('C').AsString  := Banco ;
               Geral.ParamByName ('B').AsString  := Nome  ;

               Geral.Prepare ;
               Geral.ExecSQL ;
          END;
     end;
end;

end.
