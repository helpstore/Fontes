 unit MovimentoCaixa_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,  
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelMovimentosCaixa = class(TForm)
    pnlClient: TPanel;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
  private
    { Private declarations }
    PROCEDURE IMPRIME ;
    procedure IncLinhaRel;

  public
    { Public declarations }
  end;

var
  FRelMovimentosCaixa: TFRelMovimentosCaixa;
  Linha, Pagina: Integer;
  Cod_Vendedor: Integer;
  Soma_Data, Total_Vendedor, Total_Geral: Real;
  STR: String;
  UltData: TDateTime ;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelMovimentosCaixa.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelMovimentosCaixa.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelMovimentosCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelMovimentosCaixa := Nil;
end;

procedure TFRelMovimentosCaixa.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelMovimentosCaixa.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelMovimentosCaixa.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Data       Nome                                Documento            Historico                                                      Valor', [Comp17]);

  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelMovimentosCaixa.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
       //
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

procedure TFRelMovimentosCaixa.ActPreviewExecute(Sender: TObject);
begin
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***

  //CUPOM FISCAL
  DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.Close ;
  DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.SQL.Clear ;

  DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.SQL.Add ( ' Select * from VER_FAT_CAIXAS_MOVIMENTOS      ' );
  DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.SQL.Add ( ' (  :CNPJ,  :DINI,  :DFIM )                   ' );
  DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.SQL.Add ( ' order by DATA, DOCUMENTO                     ' );

  DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ')
  Then begin
       MessageDlg('Informe o Período', MtError, [MbOk],0);
       EXIT ;
  end
  Else Begin
       DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.ParamByName('DINI').asDate  := Ini.Date;
       DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.ParamByName('DFIM').asDate  := Fim.Date;
  End;

  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.VER_FAT_CAIXAS_MOVIMENTOS.Open;
  //
  print.TitulodoRelatorio:='Relatorio de Movimentos no Caixa de ' + Ini.text + ' a ' + Fim.text;

  print.Abrir;
  //

  Total_Geral    := 0;

  IMPRIME ;

  Linha := Linha - 1;

  //
  Print.ImpF(Linha+1, 01, Format('%106s Total       : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);

  //
  Anda.Visible:= False;

  print.Fechar;

end;

procedure TFRelMovimentosCaixa.IMPRIME;
begin
  //
  WITH DMRelatorios DO
  BEGIN
       VER_FAT_CAIXAS_MOVIMENTOS.First;

       UltData := VER_FAT_CAIXAS_MOVIMENTOSDATA.Value ;

       While Not VER_FAT_CAIXAS_MOVIMENTOS.Eof
       Do Begin
          //
          Print.ImpF(Linha,01,Format('%8s %-35s %-20s %-52s %15s',
                  [
                   VER_FAT_CAIXAS_MOVIMENTOSDATA.Text,
                   COPY(VER_FAT_CAIXAS_MOVIMENTOSNOME.Text,1,35),
                   COPY(VER_FAT_CAIXAS_MOVIMENTOSDOCUMENTO.Text,1,20),
                   VER_FAT_CAIXAS_MOVIMENTOSHISTORICO.Text,
                   VER_FAT_CAIXAS_MOVIMENTOSVALOR.Text]),[Comp17]);

          Total_Geral:= Total_Geral + VER_FAT_CAIXAS_MOVIMENTOSVALOR.value;

          Soma_Data  := Soma_Data   + VER_FAT_CAIXAS_MOVIMENTOSVALOR.Value;

          //
          Anda.Position := Anda.Position + 1;

          VER_FAT_CAIXAS_MOVIMENTOS.Next;

          If ( VER_FAT_CAIXAS_MOVIMENTOSDATA.Value <> UltData ) or ( VER_FAT_CAIXAS_MOVIMENTOS.Eof )
          then begin
               UltData   := VER_FAT_CAIXAS_MOVIMENTOSDATA.Value ;

               Print.ImpF(Linha+1, 01, Format('%106s Soma da Data: %15s', ['', FormatFloat('#,##0.00', SOMA_DATA )]), [Comp17, Negrito]);

               IncLinhaRel;

               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);

               Soma_Data := 0;

               IncLinhaRel;
          end;
          //

          IncLinhaRel;
       END;
  End;
end;


procedure TFRelMovimentosCaixa.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

end;

procedure TFRelMovimentosCaixa.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelMovimentosCaixa.IncLinhaRel;
begin
     Linha := Linha + 1;

     If (Linha >= 63)
     Then
         Print.Novapagina;
end;

end.
