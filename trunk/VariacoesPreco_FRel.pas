 unit VariacoesPreco_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
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
  TFRelVariacoesPreco = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVariacoesPreco: TFRelVariacoesPreco;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVariacoesPreco.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVariacoesPreco.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVariacoesPreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVariacoesPreco := Nil;
end;

procedure TFRelVariacoesPreco.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVariacoesPreco.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVariacoesPreco.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Data       Codigo          Produto                                  Vendedor         Preco Unit.Original  Preco Unit.Venda   Variacao(%)',[Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelVariacoesPreco.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
//
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;


end;

procedure TFRelVariacoesPreco.ActPreviewExecute(Sender: TObject);
Var
    STR: String;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***
  DMRelatorios.VariacoesPreco.ParamByName('CNPJ').asString:= DMApp.Cnpj;
  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ') Then
     MessageDlg('Informe o Período', MtError, [MbOk],0)
  Else
     Begin
        DMRelatorios.VariacoesPreco.ParamByName('DATAINI').asString:= Ini.Text;
        DMRelatorios.VariacoesPreco.ParamByName('DATAFIM').asString:= Fim.Text;
     End;
  // *** fim da Passagem de Parametros ***
  //
  DMRelatorios.VariacoesPreco.Open;
  //
  If DMRelatorios.VariacoesPreco.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.VariacoesPreco.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       Anda.Max := DMRelatorios.VariacoesPreco.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.TitulodoRelatorio:='Relatorio de Variacao de Preco';
  print.Abrir;
  //
  DMRelatorios.VariacoesPreco.First;
  While Not DMRelatorios.VariacoesPreco.Eof Do
        Begin
          Print.ImpF(Linha,01,Format('%-10s %-15s %-40s %-15s %19s %18s %12s',
                  [DMRelatorios.VariacoesPrecoDATA.Text,
                   DMRelatorios.VariacoesPrecoPRODUTO.Text,
                   copy(DMRelatorios.VariacoesPrecoNOME_PRODUTO.Text,1,40),
                   copy(DMRelatorios.VariacoesPrecoNOME_VENDEDOR.Text,1,15),
                   DMRelatorios.VariacoesPrecoPRC_UNIT_ORIGINAL.Text,
                   DMRelatorios.VariacoesPrecoPRC_UNITARIO.Text,
                   DMRelatorios.VariacoesPrecoVARIACAO.Text]),[Comp17]);
           //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.VariacoesPreco.Next;
          //
          Linha := Linha + 1;
          //
          If (Linha >= 63) Then
             Print.Novapagina;
        End;
  //
  DMRelatorios.VariacoesPreco.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelVariacoesPreco.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVariacoesPreco.IniExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
