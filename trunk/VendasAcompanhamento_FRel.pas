 unit VendasAcompanhamento_FRel;

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
  TFRelVendasAcompanhamento = class(TForm)
    pnlClient: TPanel;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Ini: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
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
    Grupo, SubGrupo: Integer;

    PROCEDURE IMPRIME ;
    procedure IncLinhaRel;

  public
    { Public declarations }
  end;

var
  FRelVendasAcompanhamento: TFRelVendasAcompanhamento;
  Linha, Pagina: Integer;
  Total_Geral: Real;
  STR: String;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasAcompanhamento.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasAcompanhamento.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasAcompanhamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasAcompanhamento := Nil;
end;

procedure TFRelVendasAcompanhamento.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasAcompanhamento.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasAcompanhamento.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Data               Valor', [Comp17]);

  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelVendasAcompanhamento.FormShow(Sender: TObject);
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

procedure TFRelVendasAcompanhamento.ActPreviewExecute(Sender: TObject);
begin
     With DmRelatorios do
     begin
          ACOMPANHAMENTO_VENDAS.close ;

          ACOMPANHAMENTO_VENDAS.ParamByName ('CNPJ').ASSTRING := DMAPP.Cnpj ;
          ACOMPANHAMENTO_VENDAS.ParamByName ('DATA').ASDATE   := INi.date   ;

          ACOMPANHAMENTO_VENDAS.open  ;

          TOTAL_GERAL := 0;

          ACOMPANHAMENTO_VENDAS.FIRST ;

          WHILE NOT ACOMPANHAMENTO_VENDAS.EOF DO
          BEGIN
               TOTAL_GERAL := TOTAL_GERAL + ACOMPANHAMENTO_VENDASvalor.VALUE ;

               ACOMPANHAMENTO_VENDAS.NEXT ;
          END;

          If ACOMPANHAMENTO_VENDAS.RecordCount > 0
          then begin
               IMPRIME ;
          end
          else begin
               ShowMessage('Não Existem Documentos neste Período!');
          end;

          ACOMPANHAMENTO_VENDAS.close ;
     end;

end;

procedure TFRelVendasAcompanhamento.IMPRIME ;
VAR
   TOTAL, PORCENTAGEM: REAL ;
begin
     with DMRelatorios do
     begin
          Print.TitulodoRelatorio := 'ACOMPANHAMENTO DE VENDAS DO MES DE ' + MesExtenso ( STRTOINT (COPY(INI.TEXT, 4,2)));

          Print.Abrir ;

          TOTAL := 0;

          ACOMPANHAMENTO_VENDAS.First;

          While Not ACOMPANHAMENTO_VENDAS.Eof
          Do Begin
             PORCENTAGEM := 0;

             IF TOTAL_GERAL > 0
             THEN
                 PORCENTAGEM :=  ACOMPANHAMENTO_VENDASvalor.VALUE / TOTAL_GERAL * 100;

             Str := FormatFloat ('###,##0.00', PORCENTAGEM );

             //
             Print.ImpF(Linha,01,Format('%-8s %14s %14s %2s',
                  [ACOMPANHAMENTO_VENDASCAIXA.Text,
                   ACOMPANHAMENTO_VENDASvalor.Text,
                   STR,
                   '%'
                   ]),[Comp17]);

             TOTAL := TOTAL + ACOMPANHAMENTO_VENDASvalor.VALUE ;

             IncLinhaRel;

             ACOMPANHAMENTO_VENDAS.NEXT ;
          END;

          Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);

          Print.ImpF(Linha+1, 01, Format('%-10s %14s', ['', FormatFloat('#,##0.00', TOTAL )]), [Comp17, Negrito]);

          print.Fechar;
     end;
end;


procedure TFRelVendasAcompanhamento.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

end;

procedure TFRelVendasAcompanhamento.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelVendasAcompanhamento.IncLinhaRel;
begin
     Linha := Linha + 1;

     If (Linha >= 63)
     Then
         Print.Novapagina;
end;

end.
