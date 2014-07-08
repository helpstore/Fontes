 unit FornecedoresRes_FRel;

interface

uses
  Windows,  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, cxGraphics,
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
  TFRelFornecedoresRes = class(TForm)
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    dsClientes: TDataSource;
    pnlClient: TPanel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    edCodigoInicial: TdxCurrencyEdit;
    edCodigoFinal: TdxCurrencyEdit;
    cbTipoPessoa: TdxPickEdit;
    cmbClienteIni: TdxLookupEdit;
    cmbClienteFim: TdxLookupEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edCodigoInicialExit(Sender: TObject);
    procedure edCodigoInicialEnter(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelFornecedoresRes: TFRelFornecedoresRes;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelFornecedoresRes.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelFornecedoresRes.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelFornecedoresRes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FRelFornecedoresRes := Nil;
end;

procedure TFRelFornecedoresRes.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelFornecedoresRes.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelFornecedoresRes.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, '  Codigo Nome                                               Telefone              Fax                 Celular                           ', [Comp17]);
  Print.ImpF(06, 01, '         Endereco                                           Bairro                                    Cidade/MS                         ', [Comp17]);
  Print.ImpF(07, 01, Replicate('-', 136), [Comp17]);
  linha  := 8;
end;

procedure TFRelFornecedoresRes.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  If Not(dsClientes.DataSet.Active) Then
     dsClientes.DataSet.Open;

  DMRelatorios.SelFornecedor.FetchAll;
  edCodigoInicial.setfocus;
end;

procedure TFRelFornecedoresRes.ActPreviewExecute(Sender: TObject);
var
  sSql : string;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Print.TitulodoRelatorio := 'Listagem Resumida de Fornecedores';
  with dmRelatorios do
  begin
    FornecedoresAlf.sql.text := ' select f.cnpj, f.pessoa_fj, p.nome_razao, l.nome endereco, p.numero, p.complemento, '+
                                ' b.nome bairro, cd.nome || ''/'' || cd.uf cidade, p.cep, p.cpf_cgc, p.rg_ie, p.fone, '+
                                ' p.fax, p.celular, p.email from glo_fornecedores f'+
                                ' inner join glo_pessoas_fj p on (p.cnpj = f.cnpj and p.codigo = f.pessoa_fj)'+
                                ' left join glo_logradouros l on (l.cnpj = p.cnpj and l.codigo = p.endereco)'+
                                ' left join glo_bairros b on (b.cnpj = p.cnpj and b.codigo = p.bairro)'+
                                ' left join glo_cidades cd on (cd.cnpj = p.cnpj and cd.codigo = p.cidade) '+
                                ' where f.cnpj = :cnpj ';



    If edCodigoInicial.Value <> 0 Then
      sSql := ' and F.PESSOA_FJ >= '+inttostr(trunc(edCodigoInicial.Value));


    If edCodigoFinal.Value <> 0 Then
      sSql := sSql + ' and F.PESSOA_FJ <= '+inttostr(trunc(edCodigoFinal.Value));

    If cmbClienteIni.Text <> '' Then
      sSql := sSql + ' and P.NOME_RAZAO >='''+cmbClienteIni.text+'''';

    If cmbClienteFim.text <> '' Then
      sSql := sSql + ' and P.NOME_RAZAO <='''+cmbClienteFim.Text+'''';

    case cbTipoPessoa.ItemIndex of
       1: sSql := ssql + ' and P.PESSOA IN (''F'', ''M'')';
       2: sSql := ssql + ' and P.PESSOA = ''J''';
    end;

    FornecedoresAlf.sql.add(ssql+ ' order by p.nome_razao ');
    FornecedoresAlf.ParamByName('CNPJ').asString     := DMApp.Cnpj;
    FornecedoresAlf.Open;
  end;//end whith
  If DMRelatorios.FornecedoresAlf.RecordCount = 0 Then
     Begin
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.FornecedoresAlf.Close;
       //
       edCodigoInicial.SetFocus;
       Exit;
     End
     Else
     Begin
          LblStatus.Visible := False ;
          Anda.Max := DMRelatorios.FornecedoresAlf.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     End;
   //
  print.Abrir;
  //
  DMRelatorios.FornecedoresAlf.First;
  While Not DMRelatorios.FornecedoresAlf.Eof Do
        Begin
          //
          Print.ImpF(Linha    , 01, Format('%8s %-50s %-20s %-20s %-20s',
                                          [DMRelatorios.FornecedoresAlfPESSOA_FJ.Text,
                                           DMRelatorios.FornecedoresAlfNOME_RAZAO.Text,
                                           DMRelatorios.FornecedoresAlfFONE.Text,
                                           DMRelatorios.FornecedoresAlfFAX.Text,
                                           DMRelatorios.FornecedoresAlfCELULAR.Text]), [Comp17]);
          Print.ImpF(Linha + 1, 01, Format('%8s %-50s %-41s %-30s',
                                          ['',
                                           DMRelatorios.FornecedoresAlfENDERECO.Text + ', ' + DMRelatorios.FornecedoresAlfNUMERO.Text,
                                           DMRelatorios.FornecedoresAlfBAIRRO.Text,
                                           DMRelatorios.FornecedoresAlfCIDADE.Text]), [Comp17]);
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.FornecedoresAlf.Next;
          //
          Linha := Linha + 3;
          //
          If Linha >= 60 Then
             Print.Novapagina;
        End;
  //
  DMRelatorios.FornecedoresAlf.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelFornecedoresRes.edCodigoInicialExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
end;

procedure TFRelFornecedoresRes.edCodigoInicialEnter(Sender: TObject);
begin
   CORFUNDO ( SENDER );
end;

end.
