 unit Transfere_Cadastros_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  dxDBELib, Db, IBCustomDataSet, IBQuery, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TFrmTransfereCadastros = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Label3: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    BtnTransferir: TcxButton;
    ActOk: TAction;
    CmbTabela: TdxPickEdit;
    Geral: TIBQuery;
    Destino: TdxEdit;
    Label5: TcxLabel;
    Label4: TcxLabel;
    Origem: TdxEdit;
    Label2: TcxLabel;
    Label1: TcxLabel;
    pnlProp: TPanel;
    Label7: TcxLabel;
    Label6: TcxLabel;
    PDestino: TdxEdit;
    POrigem: TdxEdit;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure OrigemEnter(Sender: TObject);
    procedure OrigemExit(Sender: TObject);
    procedure OrigemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure DestinoExit(Sender: TObject);
    procedure CmbTabelaExit(Sender: TObject);
  private
    { Private declarations }
    function nome ( Codigo: String ):String;
    function nomepropriedade( codigo, pessoa:string):string;
  public
    { Public declarations }
  end;

var
  FrmTransfereCadastros: TFrmTransfereCadastros;

implementation

uses Funcoes, Application_DM, Usuarios_DM, MensagemClassificacao_Form;

{$R *.DFM}

procedure TFrmTransfereCadastros.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmTransfereCadastros.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmTransfereCadastros.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTransfereCadastros.ActOkExecute(Sender: TObject);
Var
   Tab: String;
begin
  if CmbTabela.TEXT = '' then
  begin
    showmessage('Selecione a Tabela');
    CmbTabela.SetFocus ;
    Exit ;
  end;

  if pos('CODIGO NAO ENCONTRADO', Label4.caption) > 0 then
  begin
    showmessage('Selecione uma Origem Válida!');
    origem.SetFocus ;
    Exit ;
  end;

  if pos('CODIGO NAO ENCONTRADO', Label5.caption) > 0 then
  begin
    showmessage('Selecione um Destino Válido!');
    destino.SetFocus ;
    exit ;
  end;

  if CmbTabela.TEXT = 'Atividades' then
    tab := 'TRANSFERIR_ATIVIDADE' ;

  if CmbTabela.TEXT = 'Propriedades' then
    tab := 'TRANSFERIR_PROPRIEDADE';


  if CmbTabela.TEXT = 'Bairros' then
    tab := 'TRANSFERIR_BAIRRO' ;

  if CmbTabela.TEXT = 'Cidades' then
    tab := 'TRANSFERIR_CIDADE' ;

  if CmbTabela.TEXT = 'Logradouros' then
    tab := 'TRANSFERIR_LOGRADOURO' ;

  if CmbTabela.TEXT = 'Pessoas' then
    tab := 'TRANSFERIR_PESSOA_FJ' ;

  if CmbTabela.TEXT = 'Produtos' then
    tab := 'TRANSFERIR_PRODUTO' ;

  if ((TAB <> 'TRANSFERIR_PRODUTO') and (TAB <> 'TRANSFERIR_PROPRIEDADE')) then
    DmApp.Transfere_Cadastros(STRTOINT(Origem.text),STRTOINT(Destino.text),Tab)
  else if (TAB = 'TRANSFERIR_PROPRIEDADE') then
    DmApp.Transfere_Cadastros_Propriedade(STRTOINT(Origem.text),STRTOINT(Destino.text),STRTOINT(POrigem.text),STRTOINT(PDestino.text),Tab)
  else
  begin
    Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
    FrmMensagemClassificacao.MEMO.Lines.Add ('DIGITE A SENHA GERENCIAL');
    FrmMensagemClassificacao.EdSenha.Visible := true ;
    FrmMensagemClassificacao.Label6.Visible  := true ;

    //Se o Nível ou a Classificacao exigir senha e não foi digitada
    if FrmMensagemClassificacao.Showmodal = MrCancel then
    Begin
      MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
      exit;
    end
    else
    begin
      dmApp.Transfere_Produtos(Origem.text, Destino.text,Tab);

      FrmMensagemClassificacao.Free ;
      FrmMensagemClassificacao := Nil;
    end;
  end;

  Origem.SetFocus ;
  origem.Clear ;
  LABEL4.CAPTION := '' ;
  LABEL5.CAPTION := '' ;
  destino.clear ;
end;

procedure TFrmTransfereCadastros.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     CMBTABELA.SETFOCUS ;
end;

procedure TFrmTransfereCadastros.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmTransfereCadastros.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmTransfereCadastros.OrigemEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmTransfereCadastros.OrigemExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     IF TRIM(Origem.text) <> ''  THEN
     begin
       if (CmbTabela.Text = 'Propriedades') then
       begin
         if (POrigem.Text = '') then
         begin
           Application.MessageBox('Defina o código da pessoa de Origem','Aviso',mb_ok+mb_iconerror);
           POrigem.SetFocus;
           exit;
         end;
         label4.CAPTION := nomepropriedade(Origem.text,pOrigem.text);
       end
       else
         label4.CAPTION := Nome ( Origem.text );
     end
end;

procedure TFrmTransfereCadastros.OrigemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTransfereCadastros.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

function TFrmTransfereCadastros.nome(Codigo: String): String;
Var
   Nome, campo, sql :String;
begin
     campo := ' nome ';
     if CmbTabela.Text = 'Produtos' then
         Nome := 'EST_PRODUTOS';

     if CmbTabela.Text = 'Pessoas' then
     begin
         Nome := 'GLO_PESSOAS_FJ';
         campo := ' nome_razao ';
     end;

     if CmbTabela.Text = 'Logradouros' then
         Nome := 'GLO_LOGRADOUROS';

     if CmbTabela.Text = 'Cidades' then
         Nome := 'GLO_CIDADES';

     if CmbTabela.Text = 'Propriedades' then
         Nome := 'GLO_PROPRIEDADES';

     if CmbTabela.Text = 'Atividades' then
         Nome := 'GLO_ATIVIDADES';

     if CmbTabela.Text = 'Bairros' then
         Nome := 'GLO_BAIRROS';


     sql := 'SELECT '+campo+' FROM '+ NOME+' WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO ';

     GERAL.close;
     GERAL.SQL.text := sql;
     GERAL.ParamByName('CNPJ').ASSTRING := DMAPP.CNPJ;
     GERAL.ParamByName('CODIGO').VALUE  := CODIGO;
     GERAL.open;

     if GERAL.Fields[0].ISNULL then
       RESULT := 'CODIGO NAO ENCONTRADO EM ' + CMBTABELA.TEXT
     else
       RESULT := GERAL.Fields[0].VALUE ;

     GERAL.CLOSE ;
end;

procedure TFrmTransfereCadastros.DestinoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
    if (CmbTabela.Text = 'Propriedades') then
    begin
      if (PDestino.Text = '') then
      begin
        Application.MessageBox('Defina o código da pessoa de Destino','Aviso',mb_ok+mb_iconerror);
        PDestino.SetFocus;
        exit;
      end;
      label5.CAPTION := nomepropriedade(destino.text,pDestino.text);
    end
    else IF TRIM(Origem.text) <> ''  THEN
      label5.CAPTION := nome(Destino.text);
end;

procedure TFrmTransfereCadastros.CmbTabelaExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
     if (CmbTabela.Text = 'Propriedades') then
       pnlProp.visible := true
     else
       pnlProp.visible := false;

end;

function TFrmTransfereCadastros.nomepropriedade(codigo,
  pessoa: string): string;
Var
   Nome, campo, sql :String;
begin

   sql := 'SELECT NOME FROM GLO_PROPRIEDADES WHERE CNPJ = :CNPJ AND PROPRIEDADE = :CODIGO and pessoa_fj = :pessoa_fj';

   GERAL.close;
   GERAL.SQL.text := sql;
   GERAL.ParamByName('CNPJ').ASSTRING := DMAPP.CNPJ;
   GERAL.ParamByName('CODIGO').VALUE  := CODIGO;
   GERAL.ParamByName('PESSOA_FJ').VALUE  := pessoa;
   GERAL.open;

   if GERAL.Fields[0].ISNULL then
     RESULT := 'CODIGO NAO ENCONTRADO EM ' + CMBTABELA.TEXT
   else
     RESULT := GERAL.Fields[0].VALUE ;

   GERAL.CLOSE ;
end;

end.
