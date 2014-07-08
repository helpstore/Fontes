 unit FornecedoresAlf_FRel;

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
  TFRelFornecedoresAlf = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Label2: TcxLabel;
    Print: TRDprint;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    edCodigoInicial: TdxCurrencyEdit;
    edCodigoFinal: TdxCurrencyEdit;
    Label5: TcxLabel;
    cbTipoPessoa: TdxPickEdit;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    dsClientes: TDataSource;
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
    procedure edCodigoInicialEnter(Sender: TObject);
    procedure edCodigoFinalExit(Sender: TObject);
    procedure edCodigoInicialExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelFornecedoresAlf: TFRelFornecedoresAlf;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelFornecedoresAlf.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelFornecedoresAlf.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelFornecedoresAlf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  //
  Action := caFree;
  FRelFornecedoresAlf := Nil;
end;

procedure TFRelFornecedoresAlf.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelFornecedoresAlf.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelFornecedoresAlf.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 62, 'Data : '+ DateTimeToStr(now()), [Comp17]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, '  Codigo Nome                                     Endereco                                 Numero          Complemento                  ', [Comp17]);
  Print.ImpF(06, 01, '         Bairro                    Cidade/UF                      CEP      Cnpj/Cpf        Insc. Est./RG                                ', [Comp17]);
  Print.ImpF(07, 01, '         Telefone             Fax                 Celular                  EMail                                                        ', [Comp17]);
  Print.ImpF(08, 01, Replicate('-', 136), [Comp17]);
  linha  := 9;
end;

procedure TFRelFornecedoresAlf.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);

  If Not(dsClientes.DataSet.Active) Then
     dsClientes.DataSet.Open;

  DMRelatorios.SelFornecedor.FetchAll;
  edCodigoInicial.setfocus;
end;

procedure TFRelFornecedoresAlf.ActPreviewExecute(Sender: TObject);
var
  sSql : string;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Print.TitulodoRelatorio := 'Listagem Alfabetica de Fornecedores';
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
      sSql := sSql + ' and P.NOME_RAZAO >='''+cmbClienteIni.Text+'''';

    If cmbClienteFim.Text <> '' Then
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
        lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.FornecedoresAlf.Close;
       //
       edCodigoInicial.SetFocus;
       Exit;
     End
     Else
     Begin
        lblStatus.Visible := False ;
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
          Print.ImpF(Linha    , 01, Format('%8s %-40s %-40s %-15s %-29s',
                                           [DMRelatorios.FornecedoresAlfPESSOA_FJ.Text,
                                            Copy(DMRelatorios.FornecedoresAlfNOME_RAZAO.Text, 1, 40),
                                            Copy(DMRelatorios.FornecedoresAlfENDERECO.Text, 1, 40),
                                            DMRelatorios.FornecedoresAlfNUMERO.Text,
                                            DMRelatorios.FornecedoresAlfCOMPLEMENTO.Text]), [Comp17]);
          Print.ImpF(Linha + 1, 01, Format('%8s %-25s %-30s %-8s %-14s %14s',
                                           ['',
                                            Copy(DMRelatorios.FornecedoresAlfBAIRRO.Text, 1, 25),
                                            Copy(DMRelatorios.FornecedoresAlfCIDADE.Text, 1, 25),
                                            DMRelatorios.FornecedoresAlfCEP.Text,
                                            DMRelatorios.FornecedoresAlfCPF_CGC.Text,
                                            DMRelatorios.FornecedoresAlfRG_IE.Text]), [Comp17]);
          Print.ImpF(Linha + 2, 01, Format('%8s %-20s %-19s %-24s %-60s',
                                           ['',
                                            DMRelatorios.FornecedoresAlfFONE.Text,
                                            Copy(DMRelatorios.FornecedoresAlfFAX.Text, 1, 19),
                                            DMRelatorios.FornecedoresAlfCELULAr.Text,
                                            DMRelatorios.FornecedoresAlfEMAIL.Text]), [Comp17]);
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.FornecedoresAlf.Next;
          //
          Linha := Linha + 4;
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

procedure TFRelFornecedoresAlf.edCodigoInicialEnter(Sender: TObject);
begin
  CORFUNDO ( SENDER );
end;

procedure TFRelFornecedoresAlf.edCodigoFinalExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
end;

procedure TFRelFornecedoresAlf.edCodigoInicialExit(Sender: TObject);
begin
  TIRACORFUNDO ( SENDER );
end;

end.
